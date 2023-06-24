# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.com"
  version "2.29.1"
  license "Apache 2.0"

  depends_on "go" => :optional
  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.29.1/zitadel_Darwin_arm64.tar.gz"
      sha256 "479ce501e0979d907601483a09f27c37914b7adbc7a41bd00eec5a927b1f32ce"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.29.1/zitadel_Darwin_x86_64.tar.gz"
      sha256 "4754172f8dc3c8697ac3c1dfdb52a733fa8353a768703b39b5096a6b68b7611e"

      def install
        bin.install "zitadel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.29.1/zitadel_Linux_arm64.tar.gz"
      sha256 "5f19ec6497c29dfef699e9b2c15f5c6e7538ad1edbb46cccc2c0ad7322fcb9f9"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.29.1/zitadel_Linux_x86_64.tar.gz"
      sha256 "4a4342fcfbae8066b77896ceec6bc0ac0bd470b40111e8178ec8abb6b8458bb9"

      def install
        bin.install "zitadel"
      end
    end
  end

  test do
    system "#{bin}/zitadel -v"
  end
end
