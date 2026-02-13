cask "peerai-studio-alpha" do
  version "0.60.0-alpha.4"
  sha256 "aff6f47836493b8513dc99afa715dc0abe8f029a09a80ac9dab09cb40737554e"

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
