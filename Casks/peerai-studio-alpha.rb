cask "peerai-studio-alpha" do
  version "0.45.0-alpha.2"
  sha256 "097074367a8b7eeed4035ca122d8016e9d244b9874341b3406327187b88ed6cd"

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
