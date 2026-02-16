class Rampart < Formula
  desc "Open-source firewall for AI agents"
  homepage "https://rampart.sh"
  url "https://github.com/peg/rampart/archive/refs/tags/v0.2.26.tar.gz"
  sha256 "8367a06630a8f0647afa436a5b92d27828461445f0e98384f0617d695c44662a"
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
