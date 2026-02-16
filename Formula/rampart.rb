class Rampart < Formula
  desc "Open-source firewall for AI agents"
  homepage "https://rampart.sh"
  url "https://github.com/peg/rampart/archive/refs/tags/v0.2.24.tar.gz"
  sha256 "37f1d33f5f625e0e3335f32415698e25ec977960ff5a9fa43f8b77a80f054cbb"
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
