cask "viber" do
  version "1.0.5"
  sha256 "60e46c2b23447e973c35679c2cb453f99b9a9aefcffac2d585651d6e0cbd7927"

  url "https://github.com/jspiner/viber/releases/download/v#{version}/Viber-#{version}-arm64.dmg"
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
