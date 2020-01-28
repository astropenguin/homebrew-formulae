class Am < Formula
  desc "Tool for radiative transfer computations at microwave to submillimeter wavelengths"
  homepage "https://www.cfa.harvard.edu/~spaine/am/index.html"
  url "https://zenodo.org/record/3406483/files/am-11.0.tgz"
  sha256 "2b0ba95eab759f8813f517197a77c52c4e1fe36379ed3facec5941c0fa552995"

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
