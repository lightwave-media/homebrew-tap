# typed: false
# frozen_string_literal: true

# LightWave CLI formula - generated from lw-tui v0.1.0
class Lw < Formula
  desc "LightWave CLI - Unified command-line interface with tri-language architecture"
  homepage "https://github.com/lightwave-media/lw-tui"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/lightwave-media/lw-tui/releases/download/v0.1.0/lw_0.1.0_darwin_amd64.tar.gz"
      sha256 "d310b09e3950e040d85b53f17af40cb1832cfc1df0f4a78dadf632627872f833"
    end
    on_arm do
      url "https://github.com/lightwave-media/lw-tui/releases/download/v0.1.0/lw_0.1.0_darwin_arm64.tar.gz"
      sha256 "0c0b8e045f09079a344079934b06a40cf0bb7ecb1792917ff29817b691ee25a2"
    end
  end

  on_linux do
    on_intel do
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
    system "#{bin}/lw", "version"
  end
end
