cask "one-time-editor" do
  version "1.0.3"
  sha256 "207441c3b0aa7bc3de1aaeb78e9063f5045e5db1bef25811f14d329d012f2d75"

  url "https://github.com/lef237/one-time-editor/releases/download/v#{version}/One-Time.Editor-#{version}-arm64.dmg"
  name "One-Time Editor"
  desc "A lightweight scratchpad that lives one shortcut away"
  homepage "https://github.com/lef237/one-time-editor"

  app "One-Time Editor.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/One-Time Editor.app"]
  end
end
