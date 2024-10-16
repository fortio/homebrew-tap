# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nocolor < Formula
  desc "Fortio terminal nocolor (and no other ansi code either) filter"
  homepage "https://fortio.org/"
  version "0.27.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/fortio/terminal/releases/download/v0.27.0/nocolor_0.27.0_darwin_amd64.zip"
      sha256 "59ffd0f1adfbb2dbd9a05e1911562d5cdfe72510d47edd97d8f870bfe3c7f205"

      def install
        bin.install "nocolor"
      end
    end
    on_arm do
      url "https://github.com/fortio/terminal/releases/download/v0.27.0/nocolor_0.27.0_darwin_arm64.zip"
      sha256 "522fabb858120a9e35e45600c6322bd70f903ac93a689b3fc4c88ff05695bf8c"

      def install
        bin.install "nocolor"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fortio/terminal/releases/download/v0.27.0/nocolor_0.27.0_linux_amd64.tar.gz"
        sha256 "ada82c1cc8fadd47b9a2182bc22ccfb66ec62d3c9c9382e4318526a87226ea86"

        def install
          bin.install "nocolor"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fortio/terminal/releases/download/v0.27.0/nocolor_0.27.0_linux_arm64.tar.gz"
        sha256 "e730bd44b321788018d6ec8853e905fd7cff97aecebcfd3ecd9135ddf3732da1"

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
