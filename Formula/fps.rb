# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fps < Formula
  desc "Fortio terminal fps checker"
  homepage "https://fortio.org/"
  version "0.31.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fortio/fps/releases/download/v0.31.0/fps_0.31.0_darwin_amd64.zip"
      sha256 "928d17b565d12970a891a0daa4fdf9a2ea60a77d09b45418e49a3e3deb21dc2d"

      def install
        bin.install "fps"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fortio/fps/releases/download/v0.31.0/fps_0.31.0_darwin_arm64.zip"
      sha256 "d62a80ac9c2865a9f20bc92d0c4b233fa43fa623b937b471ecf0a7df3013f8bb"

      def install
        bin.install "fps"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fortio/fps/releases/download/v0.31.0/fps_0.31.0_linux_amd64.tar.gz"
        sha256 "5073ad377fc0c784a90e336f5e7f5e0dc0337ae52d434f50e79cb0fe995791df"

        def install
          bin.install "fps"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fortio/fps/releases/download/v0.31.0/fps_0.31.0_linux_arm64.tar.gz"
        sha256 "6a4b3d94e86e5d4761224fd6db4fd5bc619f01b1e40fbcaa3372c000e8642bd6"

        def install
          bin.install "fps"
        end
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fps -version")
  end
end
