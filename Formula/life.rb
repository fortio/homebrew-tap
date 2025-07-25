# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Life < Formula
  desc "Fortio terminal Conway's game of life demo"
  homepage "https://fortio.org/"
  version "0.40.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fortio/terminal/releases/download/v0.40.0/life_0.40.0_darwin_amd64.zip"
      sha256 "ac54594ba18493f8e0e73851e81b2c9f24f17a4bb87492b60f30083bf42a9131"

      def install
        bin.install "life"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fortio/terminal/releases/download/v0.40.0/life_0.40.0_darwin_arm64.zip"
      sha256 "81794634f6dcdd631c454c9e7784bcf50c5088f916695b657caf4d7378faa74d"

      def install
        bin.install "life"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/fortio/terminal/releases/download/v0.40.0/life_0.40.0_linux_amd64.tar.gz"
      sha256 "7650e4d9b30c5f809bebf764f24cde2b545eaac1ad0056e3f0c9628ac30bd3a7"
      def install
        bin.install "life"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/fortio/terminal/releases/download/v0.40.0/life_0.40.0_linux_arm64.tar.gz"
      sha256 "144f801244a37aa2fc9ff8be11004536909e2b0ae78b0b5705637f5ca4ef3db2"
      def install
        bin.install "life"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/life -version")
  end
end
