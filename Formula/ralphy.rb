class Ralphy < Formula
  desc "Open-source UGC video factory CLI — one prompt to finished mp4"
  homepage "https://github.com/alecs5am/ralphy"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alecs5am/ralphy/releases/download/v0.2.0/ralphy-darwin-arm64"
      sha256 "c3d623322ad5b363ec78b8838ba686fd4557b025a88ea2aa5a6b01a35ea0c79a"

      def install
        bin.install "ralphy-darwin-arm64" => "ralphy"
      end
    end
    on_intel do
      url "https://github.com/alecs5am/ralphy/releases/download/v0.2.0/ralphy-darwin-x64"
      sha256 "124b74ece2ba1ba3cc2e89f93b76f065fe7192b9ff9df87526b20627815ec724"

      def install
        bin.install "ralphy-darwin-x64" => "ralphy"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alecs5am/ralphy/releases/download/v0.2.0/ralphy-linux-arm64"
      sha256 "2d902c376dcdafd07cc55e8b0198aa256409538120cae7575616ef419b478f48"

      def install
        bin.install "ralphy-linux-arm64" => "ralphy"
      end
    end
    on_intel do
      url "https://github.com/alecs5am/ralphy/releases/download/v0.2.0/ralphy-linux-x64"
      sha256 "7c547f8b6e2d75ae110ed6ad78d39c491adcf058dc648a041e9561b5cc6076ad"

      def install
        bin.install "ralphy-linux-x64" => "ralphy"
      end
    end
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/ralphy --version")
  end
end
