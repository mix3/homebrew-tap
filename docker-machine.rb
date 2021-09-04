class DockerMachine < Formula
  version 'v0.16.2-gitlab.12'
  homepage 'https://gitlab.com/gitlab-org/ci-cd/docker-machine'
  url "https://gitlab-docker-machine-downloads.s3.amazonaws.com/v0.16.2-gitlab.12/docker-machine-Darwin-x86_64"
  sha256 'fd6569ed1b866342b08ec26698100a7bd9c536d70f9457eae25ae38c936bf995'
  head 'https://gitlab.com/gitlab-org/ci-cd/docker-machine.git'

  def install
    system 'mv * docker-machine'
    bin.install 'docker-machine'
  end
end
