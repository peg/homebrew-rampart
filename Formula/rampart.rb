class Rampart < Formula
  desc "Open-source firewall for AI agents"
  homepage "https://rampart.sh"
  url "https://github.com/peg/rampart/archive/refs/tags/v0.2.25.tar.gz"
  sha256 "0626c7ab87db0c1286d3f5c6d620f5ddf901b2374e23e7bc3678c054d7d601b8"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/peg/rampart/internal/build.Version=#{version}"
    system "go", "build", *std_go_args(ldflags:), "./cmd/rampart"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rampart version")
  end
end
