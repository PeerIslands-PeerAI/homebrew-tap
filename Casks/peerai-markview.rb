cask "peerai-markview" do
  version "0.1.2"
  sha256 "c62fdaa92607948ec2803d81742d422ecea58ec1b38a5a689eb409960a721b85"

  url "https://github.com/PeerIslands-PeerAI/homebrew-tap/releases/download/v#{version}/PeerAI.MarkView_#{version}_aarch64.dmg"
  name "PeerAI MarkView"
  desc "Desktop app for viewing and annotating markdown files"
  homepage "https://github.com/PeerIslands-PeerAI/peerai-artifact-viewer"

  app "PeerAI MarkView.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/PeerAI MarkView.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.peerai.markview",
    "~/Library/Caches/com.peerai.markview",
    "~/Library/Preferences/com.peerai.markview.plist",
  ]
end
