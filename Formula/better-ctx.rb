class BetterCtx < Formula
  desc "Context Intelligence Engine for AI Coding — 24 MCP tools, 90+ shell patterns, cross-session memory. Reduces LLM token consumption by up to 99%."
  homepage "https://betterctx.com"
  version "2.16.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jadzeino/betterctx-client/releases/download/v#{version}/better-ctx-aarch64-apple-darwin.tar.gz"
      sha256 "c6b3cc30109374a4fa1f8fb827b149ec3dc2ab2dec9fba97415146493f9cc4a9"
    end

    on_intel do
      url "https://github.com/jadzeino/betterctx-client/releases/download/v#{version}/better-ctx-x86_64-apple-darwin.tar.gz"
      sha256 "e8366376b3e4620abd4d60a75b10280db1fc6309638176e41531e6b78fee2dc2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jadzeino/betterctx-client/releases/download/v#{version}/better-ctx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2cdd84ed2ae55f0c841b3671e8d5f135556d6f24bc7f5254ed517fbb92e0c544"
    end

    on_intel do
      url "https://github.com/jadzeino/betterctx-client/releases/download/v#{version}/better-ctx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d5921a1e5fe2732621fe7099ed6b5cac231636b7b082f526e0341bea0bd974d"
    end
  end

  def install
    bin.install "better-ctx"
  end

  test do
    system "#{bin}/better-ctx", "--version"
  end
end
