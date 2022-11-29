# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Formula1Go < Formula
  desc "Command-line application to show Formula1 schedules, standings, and results"
  homepage "https://github.com/acifani/formula1-go"
  version "1.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/acifani/formula1-go/releases/download/v1.2.3/formula1-go_1.2.3_darwin_arm64.tar.gz"
      sha256 "637ddeb2fc6430330a64b0f1a331e28237b2cd4257a28b1d9b8f6d4cbc7b92e1"

      def install
        bin.install "f1go"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/acifani/formula1-go/releases/download/v1.2.3/formula1-go_1.2.3_darwin_amd64.tar.gz"
      sha256 "037780818b20d6932a1603128c68f8afb1b8df77ed8fc8fc4259087b1538496a"

      def install
        bin.install "f1go"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/acifani/formula1-go/releases/download/v1.2.3/formula1-go_1.2.3_linux_arm64.tar.gz"
      sha256 "51e0415e27d71fc44e4ccdcf76c75c89add8793459ae7fd750c4cc2a9a91b410"

      def install
        bin.install "f1go"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/acifani/formula1-go/releases/download/v1.2.3/formula1-go_1.2.3_linux_amd64.tar.gz"
      sha256 "e8676085f889f577f8068197c342df639df5d201416d1efc3adbd8e74efa34ad"

      def install
        bin.install "f1go"
      end
    end
  end

  test do
    system "#{bin}/f1go", "version"
  end
end
