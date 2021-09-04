class DockerMachineDriverHyperkit < Formula
  version 'v1.0.0'
  homepage 'https://github.com/mix3/docker-machine-driver-hyperkit'
  url "https://github.com/mix3/docker-machine-driver-hyperkit.git"
  head 'https://github.com/mix3/docker-machine-driver-hyperkit.git'

  depends_on "go" => :build
  depends_on "mix3/tap/docker-machine"
  depends_on "linuxkit/linuxkit/hyperkit"

  def install
    ENV["GOPATH"] = buildpath
    ENV["GO111MODULE"] = "auto"

    dir = buildpath/"src/github.com/mix3/docker-machine-driver-hyperkit"
    dir.install buildpath.children

    cd dir do
      system "go", "build", "-o", "#{bin}/docker-machine-driver-hyperkit",
             "-ldflags", "-X main.version=#{version}"
      prefix.install_metafiles
    end
  end

  def caveats
    <<~EOS
      This driver requires superuser privileges to access the hypervisor. To
      enable, execute:
        sudo chown root:wheel #{opt_bin}/docker-machine-driver-hyperkit
        sudo chmod u+s #{opt_bin}/docker-machine-driver-hyperkit
    EOS
  end

  test do
    docker_machine = Formula["docker-machine"].opt_bin/"docker-machine"
    output = shell_output("#{docker_machine} create --driver hyperkit -h")
    assert_match "engine-env", output
  end
end
