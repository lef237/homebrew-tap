class Gst < Formula
  desc "Read-only Git status visualizer for the terminal"
  homepage "https://github.com/lef237/gst"
  url "https://github.com/lef237/gst/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "0fec86e57b3a6540de7ffe40c5b71988de71ae4332428bfdb2c43d600c9423c1"
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
