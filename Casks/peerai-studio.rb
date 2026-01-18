cask "peerai-studio" do
  version "0.6.4"
  sha256 "21d15db9c24c0283ab6c13ecd08dd94746050c48cc87590973b4e7efd7800333"

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
