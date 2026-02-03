cask "peerai-studio-alpha" do
  version "0.45.0-alpha.4"
  sha256 "8ae0ff8d0aa656488322a894767456c01d4d7c3f8f87cdd26201fafbcaed521d"

  url "https://github.com/PeerIslands-PeerAI/homebrew-tap/releases/download/studio-v#{version}/PeerAI.Studio_#{version}_aarch64.dmg"
  name "PeerAI Studio Alpha"
  desc "AI-powered development workflows desktop app (Alpha channel)"
  homepage "https://github.com/PeerIslands-PeerAI/peerai-studio"

  app "PeerAI Studio.app", target: "PeerAI Studio Alpha.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/PeerAI Studio Alpha.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.peerai.studio",
    "~/Library/Caches/com.peerai.studio",
    "~/Library/Preferences/com.peerai.studio.plist",
    "~/.peerai",
  ]
end
