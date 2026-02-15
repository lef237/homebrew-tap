cask "one-time-editor" do
  version "1.0.5"
  sha256 "dfb9afb9996a7bc86657e5291b5cae9a64e854151962204e313a32f709aeed64"

  url "https://github.com/lef237/one-time-editor/releases/download/v#{version}/One-Time.Editor-#{version}-arm64.dmg"
  name "One-Time Editor"
  desc "A lightweight scratchpad that lives one shortcut away"
  homepage "https://github.com/lef237/one-time-editor"

  app "One-Time Editor.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/One-Time Editor.app"]
  end
end
