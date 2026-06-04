class Gst < Formula
  desc "Read-only Git status visualizer for the terminal"
  homepage "https://github.com/lef237/gst"
  url "https://github.com/lef237/gst/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "19256f3e53e8ae822878d2412b694d87062e6fcf112c69106598581275f685a9"
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
