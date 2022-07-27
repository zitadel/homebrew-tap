# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.com"
  version "2.0.0-v2-alpha-import.13"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha-import.13/zitadel_Darwin_arm64.tar.gz"
      sha256 "c76899f758a711a31904f574ac629a76b169eac0caf5a7da3b2ae260d9642fea"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha-import.13/zitadel_Darwin_x86_64.tar.gz"
      sha256 "d2d65607467d81a7928788e97edd356b9ac5dc331dff4eea4ef53a72ba789cec"

      def install
        bin.install "zitadel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha-import.13/zitadel_Linux_arm64.tar.gz"
      sha256 "fe14a4addcb0bdebe83fba2b685afda722e96c94b912e1d6cab4af7b935f0336"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha-import.13/zitadel_Linux_x86_64.tar.gz"
      sha256 "7d5a2134c08ec95184fa8df8227aebd512892a17dcde93936d9ebea4961384f2"

      def install
        bin.install "zitadel"
      end
    end
  end

  depends_on "go" => :optional
  depends_on "git"

  test do
    system "#{bin}/zitadel -v"
  end
end
