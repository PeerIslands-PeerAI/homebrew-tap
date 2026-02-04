cask "peerai-studio-alpha" do
  version "0.50.0-alpha.2"
  sha256 "394dd62f459d20ea2e3ac3181920a19da632c9ba77bd450d3d96de51dfa13b5e"

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
