# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.com"
  version "v2.49.3"
  license "Apache 2.0"

  depends_on "go" => :optional
  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.49.3/zitadel-darwin-arm64.tar.gz"
      sha256 "07813354e00b01f5dcb75ee846d6be7d895397efbeb67384bf05b641daf4cdcf"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.49.3/zitadel-darwin-amd64.tar.gz"
      sha256 "4fb8aec2c85512f09aa7d2355172e99aa22300028bcad7bca277298b796837d3"

      def install
        bin.install "zitadel"
      end
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.49.3/zitadel-linux-arm64.tar.gz"
      sha256 "8698f3dc72d7d2b28ad9bd750ab7fb75bc6b6c950384dc991b6d1bc2d2fa8bf9"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.49.3/zitadel-linux-amd64.tar.gz"
      sha256 "8087d142e174411c95e34e62bd02841a3a98bb29386f1d46f426babdd300b476"

      def install
        bin.install "zitadel"
      end
    end
  end

  test do
    system "#{bin}/zitadel -v"
  end
end
  