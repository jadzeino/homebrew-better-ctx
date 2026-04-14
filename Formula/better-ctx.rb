class BetterCtx < Formula
  desc "Context Intelligence Engine for AI Coding — 24 MCP tools, 90+ shell patterns, cross-session memory. Reduces LLM token consumption by up to 99%."
  homepage "https://betterctx.com"
  version "3.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jadzeino/betterctx-client/releases/download/v#{version}/better-ctx-aarch64-apple-darwin.tar.gz"
      sha256 "b1c0dfd92614b907c01ce775c28635b3b0f66cd335c8335f3a2d75b1e93cdfc5"
    end

    on_intel do
      url "https://github.com/jadzeino/betterctx-client/releases/download/v#{version}/better-ctx-x86_64-apple-darwin.tar.gz"
      sha256 "07859ea508a160717006bdae7e9820e526f67a24cf0dce00a8585054cc4a6891"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jadzeino/betterctx-client/releases/download/v#{version}/better-ctx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fc59cdbca32ac54e8ecf8e5f6e811b9fed08e17862d0590406f7371e1de52198"
    end

    on_intel do
      url "https://github.com/jadzeino/betterctx-client/releases/download/v#{version}/better-ctx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5ee7304e67b1c04248da2dea2bfa27138b6e2aae7dc6f06695bbac727305451c"
    end
  end

  def install
    bin.install "better-ctx"
  end

  test do
    system "#{bin}/better-ctx", "--version"
  end
end
