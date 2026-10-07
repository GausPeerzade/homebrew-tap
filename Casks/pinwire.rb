cask "pinwire" do
  version "1.0.0"
  sha256 "53e052a48cd36dff4a44c522ba864781797924a2c63078e727ff6449c79344cf"

  url "https://github.com/GausPeerzade/pinwire/releases/download/v#{version}/Pinwire-#{version}.dmg"
  name "Pinwire"
  desc "Pins everything you copy and every screenshot to a wire under the menu bar"
  homepage "https://github.com/GausPeerzade/pinwire"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Pinwire.app"

  uninstall quit: "app.pinwire.Pinwire"

  zap trash: [
    "~/Library/Application Support/Pinwire",
    "~/Library/Preferences/app.pinwire.Pinwire.plist",
  ]
end
