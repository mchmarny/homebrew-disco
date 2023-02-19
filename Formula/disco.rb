# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Disco < Formula
  desc "Utility for bulk image, license, and vulnerability discovery in containerize workloads on GCP."
  homepage "https://github.com/mchmarny/disco"
  version "1.0.4"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/mchmarny/disco/releases/download/v1.0.4/disco_1.0.4_darwin_all"
    sha256 "b5855ff9022ff180ff5ab61a8001169a0bc348bab0eada68d15076d8aafc150b"

    def install
      bin.install "disco_1.0.4_darwin_all" => "disco"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mchmarny/disco/releases/download/v1.0.4/disco_1.0.4_linux_amd64"
      sha256 "dcca9c84911de4c25ee74fccd322d3b20a7587a88d39cb7f60cac04deb8aa1cb"

      def install
        bin.install "disco_1.0.4_linux_amd64" => "disco"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mchmarny/disco/releases/download/v1.0.4/disco_1.0.4_linux_arm64"
      sha256 "922d3b95fe8088e5f7a9099f21c1467198ba5f0f800c2e296a107ad19a0f4d83"

      def install
        bin.install "disco_1.0.4_linux_arm64" => "disco"
      end
    end
  end

  test do
    system "#{bin}/disco --version"
  end
end
