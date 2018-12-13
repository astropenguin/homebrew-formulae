class Radex < Formula
  desc "A computer program to calculate the strengths of atomic and molecular lines from interstellar clouds"
  homepage "https://personal.sron.nl/~vdtak/radex/index.shtml"
  url "https://github.com/astropenguin/radex-install/archive/v0.1.1.tar.gz"
  sha256 "55d1cd6ae06f3eeca72f5f81799c7f047cbe6477e4af107b64ed8a826464c42b"

  depends_on "gcc" => :build

  def install
    system "make", "build"
    bin.install "radex-sphere"
    bin.install "radex-lvg"
    bin.install "radex-slab"
  end

  test do
    system "which", "radex-sphere"
  end
end
