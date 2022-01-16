class Activemonitor < Formula
  version '0.2.0'
  homepage 'https://github.com/mix3/activemonitor'
  url "https://github.com/mix3/activemonitor/releases/download/v0.2.0/activemonitor"
  sha256 'd332757d80fcf071d74c7d22c6ca4b96036c2fec40e38ef5af0b19889ac333ed'
  head 'https://github.com/mix3/activemonitor.git'

  plist_options manual: "activemonitor"

  def plist
    <<~EOS
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
      <dict>
          <key>Label</key>
          <string>#{plist_name}</string>
          <key>ProgramArguments</key>
          <array>
              <string>#{opt_bin}/activemonitor</string>
              <string>rec</string>
          </array>
          <key>RunAtLoad</key>
          <true/>
          <key>StartInterval</key>
          <integer>60</integer>
      </dict>
      </plist>
    EOS
  end

  def install
    bin.install "activemonitor"
  end
end
