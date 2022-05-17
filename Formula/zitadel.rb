# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zitadel < Formula
  desc "Open source identity solution built for the container and cloud era"
  homepage "https://zitadel.ch"
  version "2.0.0-v2-alpha-publish-releases.2"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha-publish-releases.2/zitadel_2.0.0-v2-alpha-publish-releases.2_darwin_arm64"
      sha256 "e42bc6cb9b16579f6c828e56e81d1f96018b89ff02770dceb85622886960d32d"

      def install
        bin.install "zitadel"
        bash_completion.install "completions/zitadel.bash" => "zitadel"
        zsh_completion.install "completions/zitadel.zsh" => "zitadel"
        fish_completion.install "completions/gorezitadelleaser.fish"
        man1.install "manpages/zitadel.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha-publish-releases.2/zitadel_2.0.0-v2-alpha-publish-releases.2_darwin_amd64"
      sha256 "96b9389c101ea1a947f9d93b583d78bc910a6e568818d172134ada530178b091"

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
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha-publish-releases.2/zitadel_2.0.0-v2-alpha-publish-releases.2_linux_amd64"
      sha256 "68e2b9cf5f76f2ac9be8efa0e1149118dfca0c2958ddc003ce3103361532af05"

      def install
        bin.install "zitadel"
        bash_completion.install "completions/zitadel.bash" => "zitadel"
        zsh_completion.install "completions/zitadel.zsh" => "zitadel"
        fish_completion.install "completions/gorezitadelleaser.fish"
        man1.install "manpages/zitadel.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zitadel/zitadel/releases/download/v2.0.0-v2-alpha-publish-releases.2/zitadel_2.0.0-v2-alpha-publish-releases.2_linux_arm64"
      sha256 "f635b374a58cae4136bb7eabd51bf35cbe1a65055ba5994c1e67096dfd223ce3"

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
