class Lazyack < Formula
  desc "Global hotkey to approve AI coding agent prompts via cmux"
  homepage "https://github.com/AngryCatKR96/lazyack"
  url "https://github.com/AngryCatKR96/lazyack/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "b139590c00f66c52e1f9bb43409cac8136bc9241cc7b7e435d9b03065d77e6e1"
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
