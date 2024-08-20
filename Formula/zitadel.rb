# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.com"
  version "v2.59.0"
  license "Apache 2.0"

  depends_on "go" => :optional
  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.59.0/zitadel-darwin-arm64.tar.gz"
      sha256 "712e88f0158fa93492b98082ea79d5bfad1bb0843aad029e71673c3c5cd201c9"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.59.0/zitadel-darwin-amd64.tar.gz"
      sha256 "629de0ed2f0b778faccc4ef3b8492b584c83d86cc27eda02775f86d9e9dad79f"

      def install
        bin.install "zitadel"
      end
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.59.0/zitadel-linux-arm64.tar.gz"
      sha256 "c2c16c861c86b55a8df4934c1ac8efd5b0caa4f18e124683fc63e7f594190788"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.59.0/zitadel-linux-amd64.tar.gz"
      sha256 "4e6399069eacdc603f43537d1ab62303c630ab5d147aad39e653e7efa6332e4f"

      def install
        bin.install "zitadel"
      end
    end
  end

  test do
    system "#{bin}/zitadel -v"
  end
end
  