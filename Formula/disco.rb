# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Disco < Formula
  desc "Utility for bulk image, license, and vulnerability discovery in containerize workloads on GCP."
  homepage "https://github.com/mchmarny/disco"
  version "1.0.6"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/mchmarny/disco/releases/download/v1.0.6/disco_1.0.6_darwin_all"
    sha256 "a4a466e5552345afbf4bae8e39a55b1864e90c48600c84d5ad4b63560930e7a9"

    def install
      bin.install "disco_1.0.6_darwin_all" => "disco"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mchmarny/disco/releases/download/v1.0.6/disco_1.0.6_linux_amd64"
      sha256 "28b18603c1e006485e0216e49a8af1cebd2cf49afcad9db3395d8dcd02df2a0e"

      def install
        bin.install "disco_1.0.6_linux_amd64" => "disco"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mchmarny/disco/releases/download/v1.0.6/disco_1.0.6_linux_arm64"
      sha256 "e7dec8ff8401ea058f0745bb7b725acb8be9159bded9db3da140be059ecc8908"

      def install
        bin.install "disco_1.0.6_linux_arm64" => "disco"
      end
    end
  end

  test do
    system "#{bin}/disco --version"
  end
end
