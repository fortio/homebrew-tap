# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Logc < Formula
  desc "Fortio log JSON to (colorized) text converter"
  homepage "https://fortio.org/"
  version "1.3.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fortio/logc/releases/download/v1.3.7/logc_1.3.7_darwin_amd64.zip"
      sha256 "e91ea259cf163b7f49d881568ec9c837dad19866802c8b846d8559defd95ae46"

      def install
        bin.install "logc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fortio/logc/releases/download/v1.3.7/logc_1.3.7_darwin_arm64.zip"
      sha256 "627377f8102f165344ca53468ac747547fe15d6eed660114bd03154203a54a44"

      def install
        bin.install "logc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fortio/logc/releases/download/v1.3.7/logc_1.3.7_linux_amd64.tar.gz"
        sha256 "bac555056cd461d360cdc5ffae4544b25bca5d97df2e6ed523c2e6cb3efe2a8e"

        def install
          bin.install "logc"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fortio/logc/releases/download/v1.3.7/logc_1.3.7_linux_arm64.tar.gz"
        sha256 "3c94952118613cc452d8a870a428748be8866c152d1485a362e30c64a271c4e3"

        def install
          bin.install "logc"
        end
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/logc -version")
  end
end
