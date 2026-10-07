cask "pinwire" do
  version "1.0.0"
  sha256 "9e8ab1e4e0493526d169c75f2c07648ebb9d3fbf9a5c63ef4e73fc26eeb1a570"

  url "https://github.com/GausPeerzade/pinwire/releases/download/v#{version}/Pinwire-#{version}.dmg"
  name "Pinwire"
  desc "Pins everything you copy and every screenshot to a wire under the menu bar"
  homepage "https://github.com/GausPeerzade/pinwire"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Pinwire.app"

  uninstall quit: "app.pinwire.Pinwire"

  zap trash: [
    "~/Library/Application Support/Pinwire",
    "~/Library/Preferences/app.pinwire.Pinwire.plist",
  ]
end
