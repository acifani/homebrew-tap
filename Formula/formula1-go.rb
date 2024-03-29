# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Formula1Go < Formula
  desc "Command-line application to show Formula1 schedules, standings, and results"
  homepage "https://github.com/acifani/formula1-go"
  version "1.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/acifani/formula1-go/releases/download/v1.3.2/formula1-go_1.3.2_darwin_amd64.tar.gz"
      sha256 "6ac26dfcfee7edc35819905d193dd06d05c4b50be9c68c7a023fab4d34289ca1"

      def install
        bin.install "f1go"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/acifani/formula1-go/releases/download/v1.3.2/formula1-go_1.3.2_darwin_arm64.tar.gz"
      sha256 "03fb2fd4bacaf35b2899c51397ff1d49074c782c2f60dd7320ff1fd6f6f516f1"

      def install
        bin.install "f1go"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/acifani/formula1-go/releases/download/v1.3.2/formula1-go_1.3.2_linux_amd64.tar.gz"
      sha256 "d010ac3cd457ada19dffdd881ac77dacc16d9e04986438a79806c36da8672901"

      def install
        bin.install "f1go"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/acifani/formula1-go/releases/download/v1.3.2/formula1-go_1.3.2_linux_arm64.tar.gz"
      sha256 "ffac4213cfc30567f9ada7b44e0847c432ec498cca0c7a16d6ca9e8daed5b8ec"

      def install
        bin.install "f1go"
      end
    end
  end

  test do
    system "#{bin}/f1go", "version"
  end
end
