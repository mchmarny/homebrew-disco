# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Disco < Formula
  desc "Utility for bulk image, license, and vulnerability discovery in containerize workloads on GCP."
  homepage "https://github.com/mchmarny/disco"
  version "0.5.5"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/mchmarny/disco/releases/download/v0.5.5/disco_0.5.5_darwin_all"
    sha256 "fc0a7700688d65b789892242285336dfcfac2f58c432613536bb77c17150cc37"

    def install
      bin.install "disco_0.5.5_darwin_all" => "disco"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mchmarny/disco/releases/download/v0.5.5/disco_0.5.5_linux_amd64"
      sha256 "13bbe8539869d0187aa9558b53a83604962e552d0861621d829844eb093d3caf"

      def install
        bin.install "disco_0.5.5_linux_amd64" => "disco"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mchmarny/disco/releases/download/v0.5.5/disco_0.5.5_linux_arm64"
      sha256 "ddeabd86dc1a97474395c69748e931080a73184e56b4a21bf43362a8e5da2367"

      def install
        bin.install "disco_0.5.5_linux_arm64" => "disco"
      end
    end
  end

  test do
    system "#{bin}/disco --version"
  end
end
