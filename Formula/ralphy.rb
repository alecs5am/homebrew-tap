class Ralphy < Formula
  desc "Open-source UGC video factory CLI — one prompt to finished mp4"
  homepage "https://github.com/alecs5am/ralphy"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alecs5am/ralphy/releases/download/v0.0.2/ralphy-darwin-arm64"
      sha256 "9d38a8fb4b5339332051fb99bec5b256b4bc71240b12664b8a12d7adc7376131"

      def install
        bin.install "ralphy-darwin-arm64" => "ralphy"
      end
    end
    on_intel do
      url "https://github.com/alecs5am/ralphy/releases/download/v0.0.2/ralphy-darwin-x64"
      sha256 "c468d31565678eef09c3d744efccff350e1ada6e5ef8464c4fc2837d753447d6"

      def install
        bin.install "ralphy-darwin-x64" => "ralphy"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alecs5am/ralphy/releases/download/v0.0.2/ralphy-linux-arm64"
      sha256 "9cfbcbf703721c10ae36dcafec0f9155cec1d6c5188cec0c9b06415dfa6813c3"

      def install
        bin.install "ralphy-linux-arm64" => "ralphy"
      end
    end
    on_intel do
      url "https://github.com/alecs5am/ralphy/releases/download/v0.0.2/ralphy-linux-x64"
      sha256 "e8639b50300903ad2e9422d96d0da3dc32012129da2067021915163077237f51"

      def install
        bin.install "ralphy-linux-x64" => "ralphy"
      end
    end
  end

  test do
    assert_match "0.0.2", shell_output("#{bin}/ralphy --version")
  end
end
