# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nocolor < Formula
  desc "Fortio terminal nocolor (and no other ansi code either) filter"
  homepage "https://fortio.org/"
  version "0.29.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fortio/terminal/releases/download/v0.29.1/nocolor_0.29.1_darwin_amd64.zip"
      sha256 "2b2c838f2f667691a8a09110119a0b439992f450e51c903812483088c83fc161"

      def install
        bin.install "nocolor"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fortio/terminal/releases/download/v0.29.1/nocolor_0.29.1_darwin_arm64.zip"
      sha256 "feb35c0d0b5651708b9f31da4089c71df3553a4f52a01135f3e0a39beee49301"

      def install
        bin.install "nocolor"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fortio/terminal/releases/download/v0.29.1/nocolor_0.29.1_linux_amd64.tar.gz"
        sha256 "08d2802f58b73d23737d04e888c92a31488e77256fbcd6646c362299e0a3cce9"

        def install
          bin.install "nocolor"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fortio/terminal/releases/download/v0.29.1/nocolor_0.29.1_linux_arm64.tar.gz"
        sha256 "d6cd6bd5ad828f221c142e5b22d2c557d3360868fd27d4a9f9ea04cb39b5bddc"

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
