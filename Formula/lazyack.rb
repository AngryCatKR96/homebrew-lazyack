class Lazyack < Formula
  desc "Global hotkey to approve AI coding agent prompts via cmux"
  homepage "https://github.com/AngryCatKR96/lazyack"
  url "https://github.com/AngryCatKR96/lazyack/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "3b30ee456243df472c85fbf13aa6d945e109046628b945ada1ea20e4a9d75161"
  license "MIT"
  head "https://github.com/AngryCatKR96/lazyack.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazyack --version")
  end
end
