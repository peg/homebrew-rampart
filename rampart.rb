# typed: false
# frozen_string_literal: true

# Legacy root formula; Formula/rampart.rb is the canonical layout.
class Rampart < Formula
  desc "Open-source firewall for AI agents"
  homepage "https://rampart.sh"
  version "1.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/peg/rampart/releases/download/v1.4.0/rampart_1.4.0_darwin_amd64.tar.gz"
      sha256 "6a7ae640cb89e47fed56648033ba0832cdc77d04ae1e899d77d9241e42f8b0b8"

      define_method(:install) do
        bin.install "rampart"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/peg/rampart/releases/download/v1.4.0/rampart_1.4.0_darwin_arm64.tar.gz"
      sha256 "733c613d6120c3e3fdc0ccd67058cdd674d5da9a381eacc977659181707b6de6"

      define_method(:install) do
        bin.install "rampart"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/peg/rampart/releases/download/v1.4.0/rampart_1.4.0_linux_amd64.tar.gz"
      sha256 "7317505d8a39f874fbc40cd0dbff276be28a212bfb8b7f648dd4b9d62e6dbe5a"
      define_method(:install) do
        bin.install "rampart"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/peg/rampart/releases/download/v1.4.0/rampart_1.4.0_linux_arm64.tar.gz"
      sha256 "8c938ea87fcf59d05c21a90f265331b7d28a1e26e067c1d600089cbf74a3fffe"
      define_method(:install) do
        bin.install "rampart"
      end
    end
  end

  test do
    system "#{bin}/rampart", "version"
  end
end
