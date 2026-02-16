cask "one-time-editor" do
  version "1.0.7"
  sha256 "f6e35373edbf73ed696422bf0652965ad9c6ab20100869c4d3c776c69a45c915"

  url "https://github.com/lef237/one-time-editor/releases/download/v#{version}/One-Time.Editor-#{version}-arm64.dmg"
  name "One-Time Editor"
  desc "A lightweight scratchpad that lives one shortcut away"
  homepage "https://github.com/lef237/one-time-editor"

  app "One-Time Editor.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/One-Time Editor.app"]
  end
end
