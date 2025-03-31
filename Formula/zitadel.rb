# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.com"
  version "v2.71.6"
  license "Apache 2.0"

  depends_on "go" => :optional
  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.71.6/zitadel-darwin-arm64.tar.gz"
      sha256 "e451847fc661b956a1847f408bf9bada2ea779b05e46f51a7c8d62ead9987442"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.71.6/zitadel-darwin-amd64.tar.gz"
      sha256 "5f6e716931f0d191716094640d902ecd9de0ea4811a8caf2fe7f11e4125bb50c"

      def install
        bin.install "zitadel"
      end
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.71.6/zitadel-linux-arm64.tar.gz"
      sha256 "c68f735ccdf9dc2e8392ca683833d35812d859ee1bd698179018099d60f965eb"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.71.6/zitadel-linux-amd64.tar.gz"
      sha256 "d87b98a9e945528b4d26ee282a5dc41ea62f4285c8e000f6753045311979755f"

      def install
        bin.install "zitadel"
      end
    end
  end

  test do
    system "#{bin}/zitadel -v"
  end
end
  