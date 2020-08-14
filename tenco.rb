class Tenco < Formula
  version '0.1.0'
  homepage 'https://github.com/mix3/tenco'
  if OS.mac?
    url "https://github.com/mix3/tenco/releases/download/v0.1.0/tenco-v0.1.0_darwin_amd64.zip"
    sha256 '4e11d47e4f1fa2c804a63292ae6cc463508a1095ff05a0e164e1852be06793d4'
  end
  if OS.linux?
    url "https://github.com/mix3/tenco/releases/download/v0.1.0/tenco-v0.1.0_linux_amd64.zip"
    sha256 '0f76c9b01110e079051ed157deec21ff5b1201224cbdda8b9a735d5122686d74'
  end
  head 'https://github.com/mix3/tenco.git'

  def install
    system 'mv tenco-v*_*_amd64 tenco'
    bin.install 'tenco'
  end
end
