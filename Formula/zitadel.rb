# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.com"
  version "v2.71.5"
  license "Apache 2.0"

  depends_on "go" => :optional
  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.71.5/zitadel-darwin-arm64.tar.gz"
      sha256 "1bc9c3cf73bdbada638341a30ae1384a767ad3fd42f7f7e26db99d2b8b937f0a"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.71.5/zitadel-darwin-amd64.tar.gz"
      sha256 "4a9c10240bb2b625803fa36f8379eb4cee38885d7ec5309d17cc5744c26bfd7c"

      def install
        bin.install "zitadel"
      end
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.71.5/zitadel-linux-arm64.tar.gz"
      sha256 "68fcbc41e1fa90319ac34a6ca0d569ce7bf15c481a92a01740b86c433f9c607c"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.71.5/zitadel-linux-amd64.tar.gz"
      sha256 "23a5be159a4aa9c35256dd93daf0781831d24a81012c8bc065c66e97eba262bb"

      def install
        bin.install "zitadel"
      end
    end
  end

  test do
    system "#{bin}/zitadel -v"
  end
end
  