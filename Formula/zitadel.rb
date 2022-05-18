# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.ch"
  version "2.0.0-v2-alpha.2"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha.2/zitadel_2.0.0-v2-alpha.2_darwin_arm64"
      sha256 "e95f687f25fd2ae8919896f16c593b6220609ac432acc2d450ad82cd156bbfec"

      def install
        bin.install "zitadel"
        bash_completion.install "completions/zitadel.bash" => "zitadel"
        zsh_completion.install "completions/zitadel.zsh" => "zitadel"
        fish_completion.install "completions/gorezitadelleaser.fish"
        man1.install "manpages/zitadel.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha.2/zitadel_2.0.0-v2-alpha.2_darwin_amd64"
      sha256 "d6ffd0d9f70d2941b5399147aafd7a672b32894cfbcf47450edd29927b268cc9"

      def install
        bin.install "zitadel"
        bash_completion.install "completions/zitadel.bash" => "zitadel"
        zsh_completion.install "completions/zitadel.zsh" => "zitadel"
        fish_completion.install "completions/gorezitadelleaser.fish"
        man1.install "manpages/zitadel.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha.2/zitadel_2.0.0-v2-alpha.2_linux_amd64"
      sha256 "52c2b0bea88c77fe6ea529c7098bebf93c28eddc97dcdecfeb029b1a3cbc603d"

      def install
        bin.install "zitadel"
        bash_completion.install "completions/zitadel.bash" => "zitadel"
        zsh_completion.install "completions/zitadel.zsh" => "zitadel"
        fish_completion.install "completions/gorezitadelleaser.fish"
        man1.install "manpages/zitadel.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha.2/zitadel_2.0.0-v2-alpha.2_linux_arm64"
      sha256 "e9b7bc290bb07cbdb9b8c3453f7a43a2b4274389f9ec1c1b3b3daa591951883b"

      def install
        bin.install "zitadel"
        bash_completion.install "completions/zitadel.bash" => "zitadel"
        zsh_completion.install "completions/zitadel.zsh" => "zitadel"
        fish_completion.install "completions/gorezitadelleaser.fish"
        man1.install "manpages/zitadel.1.gz"
      end
    end
  end

  depends_on "go" => :optional
  depends_on "git"

  test do
    system "#{bin}/zitadel -v"
  end
end
