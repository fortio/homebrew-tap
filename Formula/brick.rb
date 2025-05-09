# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Brick < Formula
  desc "Fortio terminal brick smashing game in the style of Breakout"
  homepage "https://fortio.org/"
  version "0.35.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fortio/terminal/releases/download/v0.35.8/brick_0.35.8_darwin_amd64.zip"
      sha256 "e17198b2e8eba2191622d96564876cd470e7b7b16526f94590a033161da0ed0d"

      def install
        bin.install "brick"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fortio/terminal/releases/download/v0.35.8/brick_0.35.8_darwin_arm64.zip"
      sha256 "cc17020ab97ec2049c8f3b141fd7bfe13f5a4328f926b4ad18e80921dd9481f2"

      def install
        bin.install "brick"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/fortio/terminal/releases/download/v0.35.8/brick_0.35.8_linux_amd64.tar.gz"
      sha256 "84607ef0b629134cf1195766b94f298e42d46f2a6b9b4463e69d93e8ec9a4e97"
      def install
        bin.install "brick"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/fortio/terminal/releases/download/v0.35.8/brick_0.35.8_linux_arm64.tar.gz"
      sha256 "0a0299bab22e743ce1bd63e8b8ccb8a00529d4771cab4294f5e9ef3146a99edf"
      def install
        bin.install "brick"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brick -version")
  end
end
