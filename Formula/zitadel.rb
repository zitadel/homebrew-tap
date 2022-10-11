# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.com"
  version "2.8.2"
  license "Apache 2.0"

  depends_on "go" => :optional
  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.8.2/zitadel_Darwin_x86_64.tar.gz"
      sha256 "de6f2aadff3277f63b06df68bbcd874624bfb9cd9d37d3298ef3e81a4e7e1249"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.8.2/zitadel_Darwin_arm64.tar.gz"
      sha256 "9f94b981e2de90af0af6c36f185d5c045cf1f9ea408467595bbb0c69004b711c"

      def install
        bin.install "zitadel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.8.2/zitadel_Linux_arm64.tar.gz"
      sha256 "c2f8f8e5f879fb44c9e1d2444bef9e4cd6af405548aef1890e51103febe4dae8"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.8.2/zitadel_Linux_x86_64.tar.gz"
      sha256 "5874603dbbc7048df710bcf9a69ee26ca4ba7bd595911a7dca667623b213af95"

      def install
        bin.install "zitadel"
      end
    end
  end

  test do
    system "#{bin}/zitadel -v"
  end
end
