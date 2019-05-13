class Radex < Formula
  desc "Non-LTE molecular radiative transfer in homogeneous interstellar clouds"
  homepage "https://personal.sron.nl/~vdtak/radex/index.shtml"
  url "https://github.com/astropenguin/radex-install/archive/v0.3.1.tar.gz"
  sha256 "5ac2ae03eeab8847c7f65dc4e2768e6fc8a95b184e90ff5ecb0baa3eab71edfb"

  depends_on "gcc" => :build

  def install
    ENV["DATADIR"] = ENV["HOMEBREW_DATADIR"]
    ENV["LOGFILE"] = ENV["HOMEBREW_LOGFILE"]
    ENV["MINITER"] = ENV["HOMEBREW_MINITER"]
    ENV["MAXITER"] = ENV["HOMEBREW_MAXITER"]
    system "make", "build"
    bin.install "radex-uni"
    bin.install "radex-lvg"
    bin.install "radex-slab"
  end

  test do
    system "true"
  end
end
