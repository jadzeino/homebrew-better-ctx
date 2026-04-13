class BetterCtx < Formula
  desc "Context Intelligence Engine for AI Coding — 24 MCP tools, 90+ shell patterns, cross-session memory. Reduces LLM token consumption by up to 99%."
  homepage "https://betterctx.com"
  version "3.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jadzeino/betterctx-client/releases/download/v#{version}/better-ctx-aarch64-apple-darwin.tar.gz"
      sha256 "28ed70560abcacb9b5eb801426f16588521b8ce50532234e68539f69a0489459"
    end

    on_intel do
      url "https://github.com/jadzeino/betterctx-client/releases/download/v#{version}/better-ctx-x86_64-apple-darwin.tar.gz"
      sha256 "ef49996d6a855d9e85aac3e282a4910651f5d96831c215406a980a895a66b100"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jadzeino/betterctx-client/releases/download/v#{version}/better-ctx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "190e139d4714fd375c96750207014734b5fa98f7171e3fdc6a31cea352942b7a"
    end

    on_intel do
      url "https://github.com/jadzeino/betterctx-client/releases/download/v#{version}/better-ctx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e45cdefdb37f0364cc408517a4d8ec5d0c4cfdba7244a95ae1f635dc2c1ecf8e"
    end
  end

  def install
    bin.install "better-ctx"
  end

  test do
    system "#{bin}/better-ctx", "--version"
  end
end
