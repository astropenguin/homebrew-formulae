class Radex < Formula
  desc "A computer program to calculate the strengths of atomic and molecular lines from interstellar clouds"
  homepage "https://personal.sron.nl/~vdtak/radex/index.shtml"
  url "https://github.com/astropenguin/radex-install/archive/v0.1.tar.gz"
  sha256 "389a967072a0057f27304339bc230d4c6144d4a160119825fb6ee6955510b17c"

  depends_on "gcc" => :build

  def install
    system "make", "install"
    bin.install "radex-sphere"
    bin.install "radex-lvg"
    bin.install "radex-slab"
  end

  test do
    system "which", "radex-sphere"
  end
end
