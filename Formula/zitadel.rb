# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.com"
  version "v2.54.0"
  license "Apache 2.0"

  depends_on "go" => :optional
  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.54.0/zitadel-darwin-arm64.tar.gz"
      sha256 "affb99d2c66fd56b490d9b1b2c64479dcde99c690bf0e896324676146f75b105"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.54.0/zitadel-darwin-amd64.tar.gz"
      sha256 "d58170fad66f3609801ee20173b89ff55fb23b3e74c1fcfc368042b4d280c291"

      def install
        bin.install "zitadel"
      end
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.54.0/zitadel-linux-arm64.tar.gz"
      sha256 "4f51199b47b0adcb15f71b4827454ee4060a17549ae96933c90678901b5cd3e4"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.54.0/zitadel-linux-amd64.tar.gz"
      sha256 "2dd8b7f9dec7cbea32f9f29e367a72ee64a91328b0a34a6787918a39c6552fa8"

      def install
        bin.install "zitadel"
      end
    end
  end

  test do
    system "#{bin}/zitadel -v"
  end
end
  