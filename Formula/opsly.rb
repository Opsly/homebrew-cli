# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Opsly < Formula
  desc ""
  homepage "https://opslycloud.com/"
  version "0.0.1-alpha.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Opsly/homebrew-cli/releases/download/v0.0.1-alpha.19/opsly_Darwin_x86_64", using: CurlDownloadStrategy
      sha256 "7f78258ac9ed98f4d4f02527ff962358ef941bc80da55e4db807f11e9fdec8da"

      def install
        bin.install "opsly_Darwin_x86_64" => "opsly"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Opsly/homebrew-cli/releases/download/v0.0.1-alpha.19/opsly_Darwin_arm64", using: CurlDownloadStrategy
      sha256 "fc6a887e9bf1a8263fa2e18a8232e1755b149ecd96f8ca7b8de7e9f222009567"

      def install
        bin.install "opsly_Darwin_arm64" => "opsly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Opsly/homebrew-cli/releases/download/v0.0.1-alpha.19/opsly_Linux_arm64", using: CurlDownloadStrategy
      sha256 "421b759302687b5b7a3d2c4b83364c2763b545273fe74c221dab100dff00c1b7"

      def install
        bin.install "opsly_Linux_arm64" => "opsly"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Opsly/homebrew-cli/releases/download/v0.0.1-alpha.19/opsly_Linux_x86_64", using: CurlDownloadStrategy
      sha256 "69be70d48cedb8cae9737a8ad5f135d01fa66f686cc16f610e2f564a4c3c306b"

      def install
        bin.install "opsly_Linux_x86_64" => "opsly"
      end
    end
  end
end
