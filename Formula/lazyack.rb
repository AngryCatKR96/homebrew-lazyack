class Lazyack < Formula
  desc "Global hotkey to approve AI coding agent prompts via cmux"
  homepage "https://github.com/AngryCatKR96/lazyack"
  url "https://github.com/AngryCatKR96/lazyack/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "a3220a4b67bef223ce7760acaa4dd394aebbd4d155932203fa64d81773910194"
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
