class Activemonitor < Formula
  version '0.2.0'
  homepage 'https://github.com/mix3/activemonitor'
  url "https://github.com/mix3/activemonitor/releases/download/v0.2.0/activemonitor"
  sha256 'd332757d80fcf071d74c7d22c6ca4b96036c2fec40e38ef5af0b19889ac333ed'
  head 'https://github.com/mix3/activemonitor.git'

  def install
    bin.install "activemonitor"
  end

  service do
    run ["#{opt_bin}/activemonitor", "rec"]
    run_type :interval
    interval 60
  end
end
