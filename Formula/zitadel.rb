# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.com"
  version "v2.58.0"
  license "Apache 2.0"

  depends_on "go" => :optional
  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.58.0/zitadel-darwin-arm64.tar.gz"
      sha256 "69b6f7dcead479057dfc2725d6188dbf3f5165bac706dae75b76022463ab7e59"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.58.0/zitadel-darwin-amd64.tar.gz"
      sha256 "2c1b84c1febf6faca1803447c6c992945dbcfcf7d653e655725ff34f12af49a2"

      def install
        bin.install "zitadel"
      end
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.58.0/zitadel-linux-arm64.tar.gz"
      sha256 "0919983bff1ebc23932b07e65ad67c1c1f5e2376274849b0b8338e3f9598eb0b"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.58.0/zitadel-linux-amd64.tar.gz"
      sha256 "2b62bf069851e0d9785a18a039362ff033ec902f37a1fa9f5115d5b1c0a6ebca"

      def install
        bin.install "zitadel"
      end
    end
  end

  test do
    system "#{bin}/zitadel -v"
  end
end
  