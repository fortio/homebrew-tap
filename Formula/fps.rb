# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fps < Formula
  desc "Fortio terminal fps checker"
  homepage "https://fortio.org/"
  version "0.29.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fortio/fps/releases/download/v0.29.2/fps_0.29.2_darwin_amd64.zip"
      sha256 "18a72b4baac33373f85e7831ae86f312152de9766c7fc3e36422b08f4a54ca2d"

      def install
        bin.install "fps"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fortio/fps/releases/download/v0.29.2/fps_0.29.2_darwin_arm64.zip"
      sha256 "784494179568dee5abf0adfb69f87ac7beb69e65275cde7388398fe2ff8f467b"

      def install
        bin.install "fps"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fortio/fps/releases/download/v0.29.2/fps_0.29.2_linux_amd64.tar.gz"
        sha256 "297d503087c4b63720a82cdc3c63f7d0f90cbe9c7f681bc1f5b04681431bd9ee"

        def install
          bin.install "fps"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fortio/fps/releases/download/v0.29.2/fps_0.29.2_linux_arm64.tar.gz"
        sha256 "d0af7d20a6571215ff6f3f3448bb94c0cee474beef325038beb73464f9782d83"

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
