class Ralphy < Formula
  desc "Open-source UGC video factory CLI — one prompt to finished mp4"
  homepage "https://github.com/alecs5am/ralphy"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alecs5am/ralphy/releases/download/v0.1.0/ralphy-darwin-arm64"
      sha256 "6b3782a0689b219a1783e3f3c89cf76f40fc7c39b470b28d36acebe1c5ec3094"

      def install
        bin.install "ralphy-darwin-arm64" => "ralphy"
      end
    end
    on_intel do
      url "https://github.com/alecs5am/ralphy/releases/download/v0.1.0/ralphy-darwin-x64"
      sha256 "6dbbab5a654a9c6156a17b2d0821f7cccddeac27ec2b35ffe49afbb9c7fd2a69"

      def install
        bin.install "ralphy-darwin-x64" => "ralphy"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alecs5am/ralphy/releases/download/v0.1.0/ralphy-linux-arm64"
      sha256 "d8ca7e0633fecc17945c7df52ffa1aeb98ab1ff8bcf845b7b68513a040783fe4"

      def install
        bin.install "ralphy-linux-arm64" => "ralphy"
      end
    end
    on_intel do
      url "https://github.com/alecs5am/ralphy/releases/download/v0.1.0/ralphy-linux-x64"
      sha256 "1a42e1b5ffa595a96521c9e9e6067aa1aae86e4e56792e3108d49ff45f67d8e2"

      def install
        bin.install "ralphy-linux-x64" => "ralphy"
      end
    end
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/ralphy --version")
  end
end
