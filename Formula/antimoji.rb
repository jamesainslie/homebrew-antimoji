class Antimoji < Formula
  desc "High-performance emoji detection and removal CLI tool"
  homepage "https://github.com/jamesainslie/antimoji"
  version "0.9.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jamesainslie/antimoji/releases/download/v0.9.3/antimoji-v0.9.3-darwin-amd64"
      sha256 "73e3ac500f23733366adf600e2e9e73bb4ce9d5decb1ddc4df099d66217419f3"

      def install
        bin.install "antimoji-v0.9.3-darwin-amd64" => "antimoji"
      end
    end

    on_arm do
      url "https://github.com/jamesainslie/antimoji/releases/download/v0.9.3/antimoji-v0.9.3-darwin-arm64"
      sha256 "674d5483bbfe9cb2edb363d787f9a159b1fce64da84aa965d8927ab21b3d6b23"

      def install
        bin.install "antimoji-v0.9.3-darwin-arm64" => "antimoji"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jamesainslie/antimoji/releases/download/v0.9.3/antimoji-v0.9.3-linux-amd64"
      sha256 "6061f9a32e9432c4ae6a5d2c1111b14c62f5a69f8ad6f59b81f09bb5ffaf9204"

      def install
        bin.install "antimoji-v0.9.3-linux-amd64" => "antimoji"
      end
    end

    on_arm do
      url "https://github.com/jamesainslie/antimoji/releases/download/v0.9.3/antimoji-v0.9.3-linux-arm64"
      sha256 "2e66731c823bc32f1e048b55c47fc53520cd93d7089f9c2b08eeca00d35bb89f"

      def install
        bin.install "antimoji-v0.9.3-linux-arm64" => "antimoji"
      end
    end
  end

  test do
    system "#{bin}/antimoji", "version"
    
    # Test basic functionality
    (testpath/"test.txt").write("Hello world! 😀")
    output = shell_output("#{bin}/antimoji scan #{testpath}/test.txt")
    assert_match "1", output
  end

  def caveats
    <<~EOS
      Antimoji is a high-performance emoji detection and removal tool.
      
      Basic usage:
        antimoji scan .                    # Scan for emojis
        antimoji clean --backup .          # Remove emojis with backup
        antimoji generate --type=ci-lint . # Generate allowlist config
      
      Documentation: https://github.com/jamesainslie/antimoji
    EOS
  end
end
