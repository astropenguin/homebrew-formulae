class Am < Formula
  desc "Tool for radiative transfer computations at microwave to submillimeter wavelengths"
  homepage "https://www.cfa.harvard.edu/~spaine/am/index.html"
  url "https://zenodo.org/record/1193771/files/am-10.0.tgz"
  sha256 "cac612c112ff4c5386570088ba90d2f6469b013cd683e712a4b27ea0470f806c"

  depends_on "gcc" => :build

  def install
    Dir.chdir("src")
    system "make", "am", "COMPILER_GCC=gcc-8"
    bin.install "am"
  end

  def caveats
    <<~EOS
      Create a directory for the am cache files (~/.am),
      and set an environment variable to your profile:
        export AM_CACHE_PATH=~/.am
    EOS
  end

  test do
    system "am", "-h"
  end
end
