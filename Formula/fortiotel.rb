# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fortiotel < Formula
  desc "Fortio + open telemetry tracing"
  homepage "https://fortio.org/"
  version "1.69.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fortio/fortiotel/releases/download/v1.69.1/fortiotel_1.69.1_darwin_amd64.zip"
      sha256 "2b8ba2c028242ba21b352f9776659a5a1c69362bcb198d52de12e5992587bbc3"

      def install
        bin.install "fortiotel"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fortio/fortiotel/releases/download/v1.69.1/fortiotel_1.69.1_darwin_arm64.zip"
      sha256 "b3d59678dff3fb0304aa9f3b91f7d48274e4af94895f0c6c547484dc4888add2"

      def install
        bin.install "fortiotel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fortio/fortiotel/releases/download/v1.69.1/fortiotel_1.69.1_linux_amd64.tar.gz"
        sha256 "90a97c2f4d5fde793089f89de8d83df7661d95bc6b9d0e646a69e3331550ff23"

        def install
          bin.install "fortiotel"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fortio/fortiotel/releases/download/v1.69.1/fortiotel_1.69.1_linux_arm64.tar.gz"
        sha256 "b87b620aea63ee6524f6661206abc39cf4e5ead6a7f79a128aaefbec43d5b272"

        def install
          bin.install "fortiotel"
        end
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fortiotel -version")
  end
end
