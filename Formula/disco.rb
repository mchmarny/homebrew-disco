# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Disco < Formula
  desc "Utility for bulk image, license, and vulnerability discovery in containerize workloads on GCP."
  homepage "https://github.com/mchmarny/disco"
  version "1.0.5"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/mchmarny/disco/releases/download/v1.0.5/disco_1.0.5_darwin_all"
    sha256 "3f015d9c71dd5f08fb454807cfc6eb59754b2e43f85b7ae3fc629701bf2704bc"

    def install
      bin.install "disco_1.0.5_darwin_all" => "disco"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mchmarny/disco/releases/download/v1.0.5/disco_1.0.5_linux_arm64"
      sha256 "c70280d7ffc250344bd79347e5d155f07e75e9d51b343ee0541723013e5ffe7b"

      def install
        bin.install "disco_1.0.5_linux_arm64" => "disco"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mchmarny/disco/releases/download/v1.0.5/disco_1.0.5_linux_amd64"
      sha256 "f91739dc2715ee2cab517e16655809be979d03a908a919cd40920542a362f157"

      def install
        bin.install "disco_1.0.5_linux_amd64" => "disco"
      end
    end
  end

  test do
    system "#{bin}/disco --version"
  end
end
