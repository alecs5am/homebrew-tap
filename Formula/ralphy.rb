class Ralphy < Formula
  desc "Open-source UGC video factory CLI — one prompt to finished mp4"
  homepage "https://github.com/alecs5am/ralphy"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alecs5am/ralphy/releases/download/v0.0.1/ralphy-darwin-arm64"
      sha256 "d23ecbe1d2f424fde880e3d44298b71b9a377af2101edcb17fb66f6a37827e9b"

      def install
        bin.install "ralphy-darwin-arm64" => "ralphy"
      end
    end
    on_intel do
      url "https://github.com/alecs5am/ralphy/releases/download/v0.0.1/ralphy-darwin-x64"
      sha256 "8b61e5e41ff522d54b64b99c6d067c19ec8579e6cdb5111e516c01127faa9fa1"

      def install
        bin.install "ralphy-darwin-x64" => "ralphy"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alecs5am/ralphy/releases/download/v0.0.1/ralphy-linux-arm64"
      sha256 "e31200a9bfabfab6be3c2fbaf07ab62630e5d49eab3b9922e1e88771d710c22b"

      def install
        bin.install "ralphy-linux-arm64" => "ralphy"
      end
    end
    on_intel do
      url "https://github.com/alecs5am/ralphy/releases/download/v0.0.1/ralphy-linux-x64"
      sha256 "da8109ae4800dd37e9786e6475a07eb1c4e2267d1750547b319f846d5b652e2a"

      def install
        bin.install "ralphy-linux-x64" => "ralphy"
      end
    end
  end

  test do
    assert_match "0.0.1", shell_output("#{bin}/ralphy --version")
  end
end
