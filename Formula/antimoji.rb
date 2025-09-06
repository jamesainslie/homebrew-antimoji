class Antimoji < Formula
  desc "High-performance emoji detection and removal CLI tool"
  homepage "https://github.com/jamesainslie/antimoji"
  version "0.9.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jamesainslie/antimoji/releases/download/v0.9.5/antimoji_0.9.5_darwin_amd64.tar.gz"
      sha256 "a2ca60b13f4965ea244090efaae2d3920571fbb06628abd7efd258cf2e30de39"

      def install
        bin.install "antimoji"
      end
    end

    on_arm do
      url "https://github.com/jamesainslie/antimoji/releases/download/v0.9.5/antimoji_0.9.5_darwin_arm64.tar.gz"
      sha256 "37c67e6d0e5fea4c0c72094afe6ecb6f20243cf7a16e58c6f2fc45ea78e1fc29"

      def install
        bin.install "antimoji"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jamesainslie/antimoji/releases/download/v0.9.5/antimoji_0.9.5_linux_amd64.tar.gz"
      sha256 "a1a119d1acce66614d3dad7cb51e913e09ae252626ded4d5be54d53ecec83793"

      def install
        bin.install "antimoji"
      end
    end

    on_arm do
      url "https://github.com/jamesainslie/antimoji/releases/download/v0.9.5/antimoji_0.9.5_linux_arm64.tar.gz"
      sha256 "87bb2b1c91d21ca45474fc58ee744918af60fca9ba0797877e0830925c622890"

      def install
        bin.install "antimoji"
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
        antimoji setup-lint --mode=zero-tolerance  # Setup automated linting
      
      Documentation: https://github.com/jamesainslie/antimoji
    EOS
  end
end
