# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Life < Formula
  desc "Fortio terminal Conway's game of life demo"
  homepage "https://fortio.org/"
  version "0.35.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fortio/terminal/releases/download/v0.35.8/life_0.35.8_darwin_amd64.zip"
      sha256 "c17803689b0047f8c00e11c861ce480cc714fad70cfec27022690b98b7b21570"

      def install
        bin.install "life"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fortio/terminal/releases/download/v0.35.8/life_0.35.8_darwin_arm64.zip"
      sha256 "76238ad3f27a702a84e61587a3c56f308c6d870f44428d5ac23985bf64b9f532"

      def install
        bin.install "life"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/fortio/terminal/releases/download/v0.35.8/life_0.35.8_linux_amd64.tar.gz"
      sha256 "759151ba1d583c3a2c6703579bea8620ffce425ae678ce050e5f341155f89ecb"
      def install
        bin.install "life"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/fortio/terminal/releases/download/v0.35.8/life_0.35.8_linux_arm64.tar.gz"
      sha256 "594022717d9ba58a67260aa96af8a572aa4f3e07b9385d308cd6601ff9ea57d6"
      def install
        bin.install "life"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/life -version")
  end
end
