class Tenco < Formula
  version '0.3.0'
  homepage 'https://github.com/mix3/tenco'
  if OS.mac?
    url "https://github.com/mix3/tenco/releases/download/v0.3.0/tenco-v0.3.0_darwin_amd64.zip"
    sha256 '25115c31330265c41936c07199a887693e58b49c4e98a70cbf073f1e796d6825'
  end
  if OS.linux?
    url "https://github.com/mix3/tenco/releases/download/v0.3.0/tenco-v0.3.0_linux_amd64.zip"
    sha256 '65896bf329e19a03468dd80144d4c9e278f18e1411ca993d36ce1f3914dcbed3'
  end
  head 'https://github.com/mix3/tenco.git'

  def install
    system 'mv tenco-v*_*_amd64 tenco'
    bin.install 'tenco'
  end
end
