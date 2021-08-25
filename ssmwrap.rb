class Ssmwrap < Formula
  version '1.1.1'
  homepage 'https://github.com/handlename/ssmwrap'
  if OS.mac?
    url "https://github.com/handlename/ssmwrap/releases/download/v1.1.1/ssmwrap_v1.1.1_darwin_amd64.zip"
    sha256 '3009dedbb4de038dfa7eac6b18101b9fe50f7e57011b6f295a075bbe65024f9b'
  end
  if OS.linux?
    url "https://github.com/handlename/ssmwrap/releases/download/v1.1.1/ssmwrap_v1.1.1_linux_amd64.tar.gz"
    sha256 '4fac35808dd16aa1fb9ed778bef8f716b35207794ccbb4e1e583abd3043dc8eb'
  end
  head 'https://github.com/handlename/ssmwrap.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'ssmwrap'
  end
end
