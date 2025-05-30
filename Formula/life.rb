# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Life < Formula
  desc "Fortio terminal Conway's game of life demo"
  homepage "https://fortio.org/"
  version "0.37.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fortio/terminal/releases/download/v0.37.0/life_0.37.0_darwin_amd64.zip"
      sha256 "a26d4f2d0e7c3b2a040f8c25e2d099fc4aa85f5d0e71e82d0d2ea5b06c51a132"

      def install
        bin.install "life"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fortio/terminal/releases/download/v0.37.0/life_0.37.0_darwin_arm64.zip"
      sha256 "5f16670d837e3bfc19e3fd5ad4bc4ea38ecfe5650c289e1d58578181a0d9d0f1"

      def install
        bin.install "life"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/fortio/terminal/releases/download/v0.37.0/life_0.37.0_linux_amd64.tar.gz"
      sha256 "f4858dbede5f17dd397a3bda79b863f50e2973a6efc3075d66d124d80e8f6cdf"
      def install
        bin.install "life"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/fortio/terminal/releases/download/v0.37.0/life_0.37.0_linux_arm64.tar.gz"
      sha256 "ec3d17b500aed545c179969da900a6fa32e69ef2c70490a32a9dcc7c05a4b47f"
      def install
        bin.install "life"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/life -version")
  end
end
