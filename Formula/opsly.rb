# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Opsly < Formula
  desc ""
  homepage "https://opslycloud.com/"
  version "0.0.1-alpha.12"
  license "MIT"

  depends_on "docker"
  depends_on "docker-compose"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Opsly/homebrew-cli/releases/download/v0.0.1-alpha.12/opsly_Darwin_arm64", using: CurlDownloadStrategy
      sha256 "c6ddbd41b75a899a842774a9ee9ae7724620f4c37fa89d1c6202eee356c6018e"

      def install
        bin.install "opsly_Darwin_arm64" => "opsly"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Opsly/homebrew-cli/releases/download/v0.0.1-alpha.12/opsly_Darwin_x86_64", using: CurlDownloadStrategy
      sha256 "ff52744d76d68341d65f2f17b53cadfe6582f959d5c7265ea6697cbee0e12de3"

      def install
        bin.install "opsly_Darwin_x86_64" => "opsly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Opsly/homebrew-cli/releases/download/v0.0.1-alpha.12/opsly_Linux_armv6", using: CurlDownloadStrategy
      sha256 "98623362e3d7532d27d2b8646a197e183e86c1750eec7c6e98346274ef066fa1"

      def install
        bin.install "opsly_Linux_armv6" => "opsly"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Opsly/homebrew-cli/releases/download/v0.0.1-alpha.12/opsly_Linux_x86_64", using: CurlDownloadStrategy
      sha256 "cfc667f99b855f9ad945decb21ac9871b93d60a08f76758ac68d052ee803b166"

      def install
        bin.install "opsly_Linux_x86_64" => "opsly"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Opsly/homebrew-cli/releases/download/v0.0.1-alpha.12/opsly_Linux_arm64", using: CurlDownloadStrategy
      sha256 "8acd273c8b7f3ef255e56988edacded50bff5c460e3315cd4916ccf80c5feaa7"

      def install
        bin.install "opsly_Linux_arm64" => "opsly"
      end
    end
  end
end
