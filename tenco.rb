class Tenco < Formula
  version '0.2.0'
  homepage 'https://github.com/mix3/tenco'
  if OS.mac?
    url "https://github.com/mix3/tenco/releases/download/v0.2.0/tenco-v0.2.0_darwin_amd64.zip"
    sha256 '3e35314aed156df78e6be8facbee765b3f20f85691997057c650b7cf555d0115'
  end
  if OS.linux?
    url "https://github.com/mix3/tenco/releases/download/v0.2.0/tenco-v0.2.0_linux_amd64.zip"
    sha256 'afe62e68eedebd08eacba81457993c7a313b493075c89fc3c35651b149fc645e'
  end
  head 'https://github.com/mix3/tenco.git'

  def install
    system 'mv tenco-v*_*_amd64 tenco'
    bin.install 'tenco'
  end
end
