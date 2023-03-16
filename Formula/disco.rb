# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Disco < Formula
  desc "Utility for bulk image, license, and vulnerability discovery in containerize workloads on GCP."
  homepage "https://github.com/mchmarny/disco"
  version "1.0.9"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/mchmarny/disco/releases/download/v1.0.9/disco_1.0.9_darwin_all"
    sha256 "9c8061e6f559743e290b60150040ba9d1bc8fb78292cd1d25c748bd5a8592b36"

    def install
      bin.install "disco_1.0.9_darwin_all" => "disco"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mchmarny/disco/releases/download/v1.0.9/disco_1.0.9_linux_amd64"
      sha256 "4cf08b71e10862d141082e32aa9f5f598b5d760feaa72bf34fcbf0ee5527ac47"

      def install
        bin.install "disco_1.0.9_linux_amd64" => "disco"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mchmarny/disco/releases/download/v1.0.9/disco_1.0.9_linux_arm64"
      sha256 "608b4273c3d368d23384b824c0f2f82d4fc90ce92ff11280fab3333a15f3136d"

      def install
        bin.install "disco_1.0.9_linux_arm64" => "disco"
      end
    end
  end

  test do
    system "#{bin}/disco --version"
  end
end
