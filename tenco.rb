class Tenco < Formula
  version '0.4.0'
  homepage 'https://github.com/mix3/tenco'
  if OS.mac?
    url "https://github.com/mix3/tenco/releases/download/v0.4.0/tenco-v0.4.0_darwin_amd64.zip"
    sha256 'b4890073615f3295fd94f19b4d480a9a400d49d0a465e56b7dc02306ff0aba7e'
  end
  if OS.linux?
    url "https://github.com/mix3/tenco/releases/download/v0.4.0/tenco-v0.4.0_linux_amd64.zip"
    sha256 '6a2398f2c992e80a770b04e7fbde7c764e920469819219edf9ee5da3ab8449e9'
  end
  head 'https://github.com/mix3/tenco.git'

  def install
    system 'mv tenco-v*_*_amd64 tenco'
    bin.install 'tenco'
  end
end
