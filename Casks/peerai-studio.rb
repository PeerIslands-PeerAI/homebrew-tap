cask "peerai-studio" do
  version "0.37.0"
  sha256 "683f66ea25d8f4ac4ed4a7513ac1f6f3d62205f058591345d5d5608852d462c7"

  url "https://github.com/PeerIslands-PeerAI/homebrew-tap/releases/download/studio-v#{version}/PeerAI.Studio_#{version}_aarch64.dmg"
  name "PeerAI Studio"
  desc "AI-powered development workflows desktop app"
  homepage "https://github.com/PeerIslands-PeerAI/peerai-studio"

  app "PeerAI Studio.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/PeerAI Studio.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.peerai.studio",
    "~/Library/Caches/com.peerai.studio",
    "~/Library/Preferences/com.peerai.studio.plist",
    "~/.peerai",
  ]
end
