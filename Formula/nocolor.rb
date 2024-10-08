# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nocolor < Formula
  desc "Fortio terminal nocolor (and no other ansi code either) filter"
  homepage "https://fortio.org/"
  version "0.26.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/fortio/terminal/releases/download/v0.26.1/nocolor_0.26.1_darwin_amd64.zip"
      sha256 "5cb5e7d188acda2ef039ede04f34b81c5e366da1632d1abb3fd980c075d11085"

      def install
        bin.install "nocolor"
      end
    end
    on_arm do
      url "https://github.com/fortio/terminal/releases/download/v0.26.1/nocolor_0.26.1_darwin_arm64.zip"
      sha256 "ca1d59778836508539f4d41a90eb21267a68d272f30942247d1c9443f8b24b40"

      def install
        bin.install "nocolor"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fortio/terminal/releases/download/v0.26.1/nocolor_0.26.1_linux_amd64.tar.gz"
        sha256 "2b94e470f1bf91415bca8efb026bb0a7eb706cd2da3fb3835336bce0ae9dafe4"

        def install
          bin.install "nocolor"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fortio/terminal/releases/download/v0.26.1/nocolor_0.26.1_linux_arm64.tar.gz"
        sha256 "8f7026067e844428d46a35a0f418753ae83194a7b485cd962962fbd5ae540f39"

        def install
          bin.install "nocolor"
        end
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nocolor -version")
  end
end
