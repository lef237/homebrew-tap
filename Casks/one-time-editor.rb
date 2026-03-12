cask "one-time-editor" do
  version "1.0.8"
  sha256 "f185fde66262874188f030bed86cd5ba9a7e6f7dbe0f63163d99b1dd9688c78b"

  url "https://github.com/lef237/one-time-editor/releases/download/v#{version}/One-Time.Editor-#{version}-arm64.dmg"
  name "One-Time Editor"
  desc "A lightweight scratchpad that lives one shortcut away"
  homepage "https://github.com/lef237/one-time-editor"

  app "One-Time Editor.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/One-Time Editor.app"]
  end
end
