class DockerMachineDriverHyperkit < Formula
  version 'v1.23.2'
  homepage 'https://github.com/kubernetes/minikube'
  if OS.mac?
    url "https://github.com/kubernetes/minikube/releases/download/v1.23.2/docker-machine-driver-hyperkit"
    sha256 'c3beabc1b201b2519e0ac22770b7bdb648329db20815c5aef195f17724060937'
  end
  head 'https://github.com/kubernetes/minikube.git'

  depends_on "mix3/tap/docker-machine"
  depends_on "linuxkit/linuxkit/hyperkit"

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'out/docker-machine-driver-hyperkit'
    else
      mkdir "out"
      system 'mv', 'docker-machine-driver-hyperkit', 'out/docker-machine-driver-hyperkit'
    end
    bin.install 'out/docker-machine-driver-hyperkit'
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
