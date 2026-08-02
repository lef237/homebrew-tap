class Gst < Formula
  desc "Read-only Git status visualizer for the terminal"
  homepage "https://github.com/lef237/gst"
  url "https://github.com/lef237/gst/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "4a66deb914b993ac4d6a33acf8cefd201828e8061c49adb31d25ada80e256df0"
  license "MIT"
  head "https://github.com/lef237/gst.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.version=v#{version}"), "./cmd/gst"
  end

  test do
    assert_match "gst v#{version}", shell_output("#{bin}/gst --version")
  end
end
