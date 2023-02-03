# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.com"
  version "2.19.1"
  license "Apache 2.0"

  depends_on "go" => :optional
  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.19.1/zitadel_Darwin_arm64.tar.gz"
      sha256 "b98f0020ccb994afd806117138f346c50597968e02f6694271e0739e079fb9a9"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.19.1/zitadel_Darwin_x86_64.tar.gz"
      sha256 "ae05d8198f31de7bc822a783973725eee560e2957aeeb3e4ba62e697c77ea2cb"

      def install
        bin.install "zitadel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.19.1/zitadel_Linux_arm64.tar.gz"
      sha256 "45a674bc2ecd9b99428c90f7395c8bdb4d9640797fa001dbeebf7306cc76a0d6"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.19.1/zitadel_Linux_x86_64.tar.gz"
      sha256 "efdbb0cfceb8c8ea4d12f4cd552f5510531bf3013afe05372742fe518f737598"

      def install
        bin.install "zitadel"
      end
    end
  end

  test do
    system "#{bin}/zitadel -v"
  end
end
