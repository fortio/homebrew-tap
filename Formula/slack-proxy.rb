# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SlackProxy < Formula
  desc "Proxy for applications aiming to dispatch messages to Slack nicely"
  homepage "https://fortio.org/"
  version "0.5.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fortio/slack-proxy/releases/download/v0.5.4/slack-proxy_0.5.4_darwin_amd64.tar.gz"
      sha256 "f4d403a5ea75badd0e7f2bcaf0b79c4894b7e45e4a4447b51c6211fc4adc4d3f"

      def install
        bin.install "slack-proxy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fortio/slack-proxy/releases/download/v0.5.4/slack-proxy_0.5.4_darwin_arm64.tar.gz"
      sha256 "90e141d1bcdda75279f95a50351e63590a74e434baa38447870168d2ca29602d"

      def install
        bin.install "slack-proxy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fortio/slack-proxy/releases/download/v0.5.4/slack-proxy_0.5.4_linux_arm64.tar.gz"
      sha256 "5f32d75767009367682c7ec0a8abf7a53e4ecc954ae0174253dd0be887fc96f4"

      def install
        bin.install "slack-proxy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fortio/slack-proxy/releases/download/v0.5.4/slack-proxy_0.5.4_linux_amd64.tar.gz"
      sha256 "ff9fbbcc279bb6f2c02112a6ee942173f5b06700eb598dba6d394ea9d7b12caf"

      def install
        bin.install "slack-proxy"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slack-proxy -version")
  end
end
