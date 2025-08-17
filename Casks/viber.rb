cask "viber" do
  version "1.0.6"
  sha256 "f9b4a0dc95484781ac9d8540b775f0c3b22a4bfe96ed5553b17ad0301952fa6f"

  url "https://github.com/jspiner/viber/releases/download/#{version}/Viber-#{version}-arm64-signed.dmg"
  name "Viber"
  desc "Claude conversation data analyzer for macOS"
  homepage "https://github.com/jspiner/viber"

  auto_updates false
  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Viber.app"

  zap trash: [
    "~/Library/Application Support/Viber",
    "~/Library/Preferences/io.jspiner.viber.plist",
    "~/Library/Saved Application State/io.jspiner.viber.savedState",
    "~/Library/Caches/io.jspiner.viber",
    "~/Library/Caches/io.jspiner.viber.ShipIt",
  ]
end
