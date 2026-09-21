cask "one-time-editor" do
  arch arm: "arm64", intel: "x64"

  version "1.0.11"
  sha256 arm:   "5aabab17693cc3835ba8fb692ea856152a978e0342b63b8934b76f63cb1cfa57",
         intel: "6f3de6bd51e9b521b0f50f273cc0359126761e83e3382499594ccaefb998ac30"

  url "https://github.com/lef237/one-time-editor/releases/download/v#{version}/One-Time.Editor-#{version}-#{arch}.dmg"
  name "One-Time Editor"
  desc "A lightweight scratchpad that lives one shortcut away"
  homepage "https://github.com/lef237/one-time-editor"

  app "One-Time Editor.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/One-Time Editor.app"]
  end
end
