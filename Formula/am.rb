class Am < Formula
  desc "Tool for radiative transfer computations at microwave to submillimeter wavelengths"
  homepage "https://www.cfa.harvard.edu/~spaine/am/index.html"
  url "https://www.cfa.harvard.edu/~spaine/am/download/am-9.2.tgz"
  sha256 "bba9d88da0eef4d632b6f5f107b983a152b394ef6d0dfc6a3fe6c1f5b4082073"

  depends_on "gcc" => :build

  def install
    system "make", "omp"
    bin.install "am"
  end

  def caveats
    <<-EOS.undent
      Create a directory for the am cache files (~/.am),
      and set an environment variable to your profile:
        export AM_CACHE_PATH=~/.am
    EOS
  end

  test do
    system "am", "-h"
  end
end
