# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.com"
  version "v2.53.1"
  license "Apache 2.0"

  depends_on "go" => :optional
  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.53.1/zitadel-darwin-arm64.tar.gz"
      sha256 "bc35bf8acc394f213dc2f2a82b1f0c34bf1bbdf9515ad067198d952d48bf0d28"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.53.1/zitadel-darwin-amd64.tar.gz"
      sha256 "b309063e3adbd75f4984932f99bf94a896559f71de7259311655fafc0757d568"

      def install
        bin.install "zitadel"
      end
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.53.1/zitadel-linux-arm64.tar.gz"
      sha256 "8d0074b05ae3c1bad360e40c817f85fe845c773770918c3c29f5bc9ea932087d"

      def install
        bin.install "zitadel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.53.1/zitadel-linux-amd64.tar.gz"
      sha256 "ef10aa2040793f215f187f107bb321eb7a05d67f5c6f9e11859437a38233a841"

      def install
        bin.install "zitadel"
      end
    end
  end

  test do
    system "#{bin}/zitadel -v"
  end
end
  