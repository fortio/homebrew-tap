# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nocolor < Formula
  desc "Fortio terminal nocolor (and no other ansi code either) filter"
  homepage "https://fortio.org/"
  version "0.39.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fortio/terminal/releases/download/v0.39.0/nocolor_0.39.0_darwin_amd64.zip"
      sha256 "dfa0110b1687720dc653cb96d9f0d5170f18d51e2ec060a0c093a603ac4e81c6"

      def install
        bin.install "nocolor"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fortio/terminal/releases/download/v0.39.0/nocolor_0.39.0_darwin_arm64.zip"
      sha256 "913a245ca20ab55ff7795d6d90c90705ae251c17b4903a8bb13c2e8f761adb55"

      def install
        bin.install "nocolor"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/fortio/terminal/releases/download/v0.39.0/nocolor_0.39.0_linux_amd64.tar.gz"
      sha256 "4ca7e001198f5108a724baab40668637a1da85aec8990a1615f926cc16c43370"
      def install
        bin.install "nocolor"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/fortio/terminal/releases/download/v0.39.0/nocolor_0.39.0_linux_arm64.tar.gz"
      sha256 "0f8156852ccb48481b17456620df2e2c1273d10959a5c566af0e21d9499255e1"
      def install
        bin.install "nocolor"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nocolor -version")
  end
end
