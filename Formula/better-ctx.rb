class BetterCtx < Formula
  desc "Context Intelligence Engine for AI Coding — 24 MCP tools, 90+ shell patterns, cross-session memory. Reduces LLM token consumption by up to 99%."
  homepage "https://betterctx.com"
  version "3.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jadzeino/betterctx-client/releases/download/v#{version}/better-ctx-aarch64-apple-darwin.tar.gz"
      sha256 "67230821079d3ef2c1f0c543ea9ed5339771ec26d4da9791abd99e77da2ddd3b"
    end

    on_intel do
      url "https://github.com/jadzeino/betterctx-client/releases/download/v#{version}/better-ctx-x86_64-apple-darwin.tar.gz"
      sha256 "416c06b44c6ece07e512f4ccc1e097ae08a80e91119aa60f306ad19b1ba62d51"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jadzeino/betterctx-client/releases/download/v#{version}/better-ctx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4b4bb02aaed8eabfbdca17d684a5ef32ac4628680dde69a1cb05efac522763e8"
    end

    on_intel do
      url "https://github.com/jadzeino/betterctx-client/releases/download/v#{version}/better-ctx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "384128769b22bfc85af58c8f5f6f269ed5521a5c1defa010e9fbc200d0cf3b50"
    end
  end

  def install
    bin.install "better-ctx"
  end

  test do
    system "#{bin}/better-ctx", "--version"
  end
end
