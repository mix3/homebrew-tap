cask 'font-s2g-love' do
  version :latest
  sha256 :no_check

  url 'https://raw.githubusercontent.com/mix3/homebrew-tap/644eb121f3c5437b83cb9d8271cf3c90c7a3e548/Casks/S2GLoveFont-Regular.ttf',
      verified: 'raw.githubusercontent.com/mix3/homebrew-tap/'
  name 'S2Gらぶ'
  homepage 'http://s2g.jp/'

  font 'S2GLoveFont-Regular.ttf'
end
