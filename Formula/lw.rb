# typed: false
# frozen_string_literal: true

# LightWave CLI formula - pre-built binaries with native Rust integration
class Lw < Formula
  desc "LightWave CLI - Unified command-line interface with native system integration"
  homepage "https://github.com/lightwave-media/lw-tui"
  version "2.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightwave-media/lw-tui/releases/download/v2.1.0/lw_2.1.0_darwin_arm64.tar.gz"
      sha256 "75551080a951a30ce9820dd907879a82969320a3e88ebf6f04e347de4cf1d11e"
    end
    on_intel do
      # Intel Mac build coming soon - using v0.1.0 fallback for now
      url "https://github.com/lightwave-media/lw-tui/releases/download/v0.1.0/lw_0.1.0_darwin_amd64.tar.gz"
      sha256 "d310b09e3950e040d85b53f17af40cb1832cfc1df0f4a78dadf632627872f833"
    end
  end

  on_linux do
    on_intel do
      # Linux build coming soon - using v0.1.0 fallback for now
      url "https://github.com/lightwave-media/lw-tui/releases/download/v0.1.0/lw_0.1.0_linux_amd64.tar.gz"
      sha256 "28d4879757079259f03f4d15a2fccb7c1d5d89b7369fe19cd7c21070fa13add6"
    end
    on_arm do
      url "https://github.com/lightwave-media/lw-tui/releases/download/v0.1.0/lw_0.1.0_linux_arm64.tar.gz"
      sha256 "4f7c85e570e226eec0b78b4e23e9dd8ef848af6b7f7dfac5aea50854e0055c49"
    end
  end

  def install
    bin.install "lw"
  end

  test do
    assert_match "lw version", shell_output("#{bin}/lw version")
  end
end
