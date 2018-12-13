class Radex < Formula
  desc "A computer program to calculate the strengths of atomic and molecular lines from interstellar clouds"
  homepage "https://personal.sron.nl/~vdtak/radex/index.shtml"
  url "https://github.com/astropenguin/radex-install/archive/v0.1.2.tar.gz"
  sha256 "30b0eb0c6f919350979358b4c13f0f622c657df1af10023449b39f30cd0d675c"

  depends_on "gcc" => :build

  def install
    system "make", "build"
    bin.install "radex-sphere"
    bin.install "radex-lvg"
    bin.install "radex-slab"
  end

  test do
    system "true"
  end
end
