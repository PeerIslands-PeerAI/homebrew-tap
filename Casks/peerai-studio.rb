cask "peerai-studio" do
  version "0.20.0"
  sha256 "809e7bf1030b98e970092fd652e91ad6ada11b76e12879596ec0207531f55df9"

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
