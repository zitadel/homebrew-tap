# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.com"
  version "v2.58.1"
  license "Apache 2.0"

  depends_on "go" => :optional
  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.58.1/zitadel-darwin-arm64.tar.gz"
      sha256 "95292cc2bddc5ce10a82dca11383fced98edac4d6a370cc166d1ac853131135b"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.58.1/zitadel-darwin-amd64.tar.gz"
      sha256 "075efacfa4f7485021b16e7b6117f804bd6a0c05818f11700aa26789439a800c"

      def install
        bin.install "zitadel"
      end
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.58.1/zitadel-linux-arm64.tar.gz"
      sha256 "312bdd952e91b8cdd51a55919e1ec81139872f31699446493ce32259186ec284"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.58.1/zitadel-linux-amd64.tar.gz"
      sha256 "878df15129c973fefd55ed2faa78fdf09e994dda390e80470a17ba87017c2fbc"

      def install
        bin.install "zitadel"
      end
    end
  end

  test do
    system "#{bin}/zitadel -v"
  end
end
  