cask "one-time-editor" do
  version "1.0.6"
  sha256 "8d617fe03a9ba146a17bfd25b8ba6a7654f4f8d9e8000ed31f72620e3594353d"

  url "https://github.com/lef237/one-time-editor/releases/download/v#{version}/One-Time.Editor-#{version}-arm64.dmg"
  name "One-Time Editor"
  desc "A lightweight scratchpad that lives one shortcut away"
  homepage "https://github.com/lef237/one-time-editor"

  app "One-Time Editor.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/One-Time Editor.app"]
  end
end
