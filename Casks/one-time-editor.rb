cask "one-time-editor" do
  arch arm: "arm64", intel: "x64"

  version "1.1.1"
  sha256 arm:   "abece9cea30308960f847d151c7e416406aa8a0efd49f035a83e8937015f484f",
         intel: "8198e5429092c49517797145ac3521dc926755261da16fe89b1945debde5ae00"

  url "https://github.com/lef237/one-time-editor/releases/download/v#{version}/One-Time.Editor-#{version}-#{arch}.dmg"
  name "One-Time Editor"
  desc "Lightweight scratchpad that lives one shortcut away"
  homepage "https://github.com/lef237/one-time-editor"

  depends_on macos: :ventura

  app "One-Time Editor.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/One-Time Editor.app"]
  end
end
