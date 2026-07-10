class Gst < Formula
  desc "Read-only Git status visualizer for the terminal"
  homepage "https://github.com/lef237/gst"
  url "https://github.com/lef237/gst/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "0b33cd9c82591240e9ffb37f1c161c529325d04c771d3e337c7bab3898343349"
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
