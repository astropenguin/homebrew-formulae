class Radex < Formula
  desc "A computer program to calculate the strengths of atomic and molecular lines from interstellar clouds"
  homepage "https://personal.sron.nl/~vdtak/radex/index.shtml"
  url "https://github.com/astropenguin/radex-install/archive/v0.2.tar.gz"
  sha256 "ae4c15e7e9ad1ce6e41e26c84f6091b3916a50e2161ff67a625d73df99d9ad0c"

  depends_on "gcc" => :build

  def install
    system "make", "build"
    bin.install "radex-uni"
    bin.install "radex-lvg"
    bin.install "radex-slab"
  end

  test do
    system "true"
  end
end
