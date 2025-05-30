# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Brick < Formula
  desc "Fortio terminal brick smashing game in the style of Breakout"
  homepage "https://fortio.org/"
  version "0.37.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fortio/terminal/releases/download/v0.37.0/brick_0.37.0_darwin_amd64.zip"
      sha256 "5f3c87384738a511ff5f46df5cf9c2e71be118d95d73502143bb9605470b37bc"

      def install
        bin.install "brick"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fortio/terminal/releases/download/v0.37.0/brick_0.37.0_darwin_arm64.zip"
      sha256 "bd9c538aeb0c21ce041d326b4d83665e9fe55f6e2ca827af3ce636ebb8f5d623"

      def install
        bin.install "brick"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/fortio/terminal/releases/download/v0.37.0/brick_0.37.0_linux_amd64.tar.gz"
      sha256 "82564ce33940b6ac9ca4e258ee50ffda68d843eb3b0cd01ba627cb18e338438c"
      def install
        bin.install "brick"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/fortio/terminal/releases/download/v0.37.0/brick_0.37.0_linux_arm64.tar.gz"
      sha256 "1ed9957d822503a5f15312d1c337d9abba3d602fd23b24af40db1b749716a91b"
      def install
        bin.install "brick"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brick -version")
  end
end
