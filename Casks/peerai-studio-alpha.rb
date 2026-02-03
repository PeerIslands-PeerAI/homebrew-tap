cask "peerai-studio-alpha" do
  version "0.45.0-alpha.3"
  sha256 "dfc353a2470752580fc622dd241412bf7f52b55aac6a67517fa3229c626c9e8d"

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
