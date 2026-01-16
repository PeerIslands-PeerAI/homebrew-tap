cask "peerai-markview" do
  version "0.1.0"
  sha256 "5c54fd6e386f2e66d55fa15c77c68440ef57b7adcc8588187961051f8e68d190"

  url "https://github.com/PeerIslands-PeerAI/homebrew-tap/releases/download/v#{version}/PeerAI.MarkView_#{version}_aarch64.dmg"
  name "PeerAI MarkView"
  desc "Desktop app for viewing and annotating markdown files"
  homepage "https://github.com/PeerIslands-PeerAI/peerai-artifact-viewer"

  app "PeerAI MarkView.app"

  zap trash: [
    "~/Library/Application Support/com.peerai.markview",
    "~/Library/Caches/com.peerai.markview",
    "~/Library/Preferences/com.peerai.markview.plist",
  ]
end
