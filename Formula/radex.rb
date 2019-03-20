class Radex < Formula
  desc "Non-LTE molecular radiative transfer in homogeneous interstellar clouds"
  homepage "https://personal.sron.nl/~vdtak/radex/index.shtml"
  url "https://github.com/astropenguin/radex-install/archive/v0.2.1.tar.gz"
  sha256 "f4d3e2d0f239f344850812c1eae2e61a22deabaa4d182cc86c94d8415b383e1f"

  depends_on "gcc" => :build

  def install
    ENV["MOLDAT"] = ENV["HOMEBREW_MOLDAT"]
    system "make", "build"
    bin.install "radex-uni"
    bin.install "radex-lvg"
    bin.install "radex-slab"
  end

  test do
    system "true"
  end
end
