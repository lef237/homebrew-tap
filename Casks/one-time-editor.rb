cask "one-time-editor" do
  arch arm: "arm64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "466528a135569a8b3be42fa2e2f5d83a3e77d6189ec4568fab676f8a13bb3bb3",
         intel: "237f791a64437cd6abba1ec93e5e99f2750407baea89350f765c22ec88e607cf"

  url "https://github.com/lef237/one-time-editor/releases/download/v#{version}/One-Time.Editor-#{version}-#{arch}.dmg"
  name "One-Time Editor"
  desc "Lightweight scratchpad that lives one shortcut away"
  homepage "https://github.com/lef237/one-time-editor"

  depends_on :macos

  app "One-Time Editor.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/One-Time Editor.app"]
  end
end
