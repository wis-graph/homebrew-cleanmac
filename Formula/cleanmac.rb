class Cleanmac < Formula
  desc "A fast, AI-ready macOS system cleaner CLI with TUI"
  homepage "https://github.com/wis-graph/cleanmac-cli"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/wis-graph/cleanmac-cli/releases/download/v#{version}/cleanmac-aarch64-apple-darwin.tar.gz"
      sha256 "f010476eec913d2a5027e5fd78b7ba999e666d63575fde1c345419b74883a125"
    end
    on_intel do
      url "https://github.com/wis-graph/cleanmac-cli/releases/download/v#{version}/cleanmac-x86_64-apple-darwin.tar.gz"
      sha256 "3f079b56898f1478cb54c861e165479f68247c46bb1ba5517fe2c5b09edf4f4e"
    end
  end

  def install
    bin.install "cleanmac"
  end

  test do
    assert_match "cleanmac", shell_output("#{bin}/cleanmac --version")
  end
end
