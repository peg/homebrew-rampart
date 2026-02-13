class Rampart < Formula
  desc "Open-source firewall for AI agents"
  homepage "https://rampart.sh"
  url "https://github.com/peg/rampart/archive/refs/tags/v0.1.14.tar.gz"
  sha256 "54550816ef2bef8ded6ca6c4eb4db78df60d8b3a1a0569a8718a0b1feba4872c"
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
