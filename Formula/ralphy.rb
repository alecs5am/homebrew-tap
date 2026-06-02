class Ralphy < Formula
  desc "Open-source UGC video factory CLI — one prompt to finished mp4"
  homepage "https://github.com/alecs5am/ralphy"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alecs5am/ralphy/releases/download/v0.3.0/ralphy-darwin-arm64"
      sha256 "d2ceab907f82dc2367aec3bbbc4e024b7b2f0ca9080792bb657f6b92f13b50d4"

      def install
        bin.install "ralphy-darwin-arm64" => "ralphy"
      end
    end
    on_intel do
      url "https://github.com/alecs5am/ralphy/releases/download/v0.3.0/ralphy-darwin-x64"
      sha256 "27e746bb506280b41783d24227e2bb177de146d20cd7eaadd0c25586494b02ac"

      def install
        bin.install "ralphy-darwin-x64" => "ralphy"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alecs5am/ralphy/releases/download/v0.3.0/ralphy-linux-arm64"
      sha256 "1bcc2be6fac472428f46d03a5d724195ee21bc61c1b073c1abba228c66dd2da7"

      def install
        bin.install "ralphy-linux-arm64" => "ralphy"
      end
    end
    on_intel do
      url "https://github.com/alecs5am/ralphy/releases/download/v0.3.0/ralphy-linux-x64"
      sha256 "10176c3d0fdbada710814284f31e8ba1b4b7deb8ee8a73d72dc032b66e8552ba"

      def install
        bin.install "ralphy-linux-x64" => "ralphy"
      end
    end
  end

  test do
    assert_match "0.3.0", shell_output("#{bin}/ralphy --version")
  end
end
