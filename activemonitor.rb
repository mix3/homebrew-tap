class Activemonitor < Formula
  version '0.1.0'
  homepage 'https://github.com/mix3/activemonitor'
  url "https://github.com/mix3/activemonitor/releases/download/v0.1.0/activemonitor"
  sha256 '10bca4afc3fd3d61b726096b7bd5b8eb5178b63b78f75c40a14da8eba1ce3e62'
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
