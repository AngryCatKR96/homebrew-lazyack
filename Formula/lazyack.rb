class Lazyack < Formula
  desc "Global hotkey to approve AI coding agent prompts via cmux"
  homepage "https://github.com/AngryCatKR96/lazyack"
  url "https://github.com/AngryCatKR96/lazyack/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "51268e8faaca3c9a02d6e11a37dece3d1f7623f1b9ee5f5d26ad066f8c517f6f"
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
