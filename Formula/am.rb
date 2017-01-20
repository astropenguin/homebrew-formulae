class Am < Formula
  desc "Tool for radiative transfer computations at microwave to submillimeter wavelengths"
  homepage "https://www.cfa.harvard.edu/~spaine/am/index.html"
  url "https://www.cfa.harvard.edu/~spaine/am/download/am-9.0.tgz"
  sha256 "a00e1664f38a984445a7771beafee19208e7ace7949a6c76089fa0fc9aacf69d"

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
