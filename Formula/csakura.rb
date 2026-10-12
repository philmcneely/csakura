class Csakura < Formula
  desc "Sakura tree with falling petals for your terminal"
  homepage "https://github.com/realstrawhat/csakura"
  url "https://github.com/realstrawhat/csakura/archive/refs/tags/v3.0.0.tar.gz"
  sha256 "29278bc4101d3da9d090db9d4c3dd715502d3b3339454a4b0c9d0951e33a5cfa"
  license "MIT"
  head "https://github.com/realstrawhat/csakura.git", branch: "main"

  depends_on "pkgconf" => :build
  depends_on "ncurses"

  def install
    system "make"
    bin.install "csakura"
  end

  test do
    assert_match "csakura", shell_output("#{bin}/csakura -v")
  end
end
