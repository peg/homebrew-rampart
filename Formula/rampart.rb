class Rampart < Formula
  desc "Policy engine for AI agent tool calls"
  homepage "https://rampart.sh"
  url "https://github.com/peg/rampart/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "65b2026d2d06940772cdcda41de3d9a7763f4011f23c678f30adceb2d77bbdc3"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"rampart", "./cmd/rampart"
  end

  test do
    assert_match "rampart version", shell_output("#{bin}/rampart version")
  end
end