class Rampart < Formula
  desc "Open-source firewall for AI agents"
  homepage "https://rampart.sh"
  url "https://github.com/peg/rampart/archive/refs/tags/v0.2.23.tar.gz"
  sha256 "391ca9663a4db9db29cab6fb0cb46e226e403c04494b416f198cb6106c84cff9"
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
