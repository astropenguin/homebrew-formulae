class Glafic < Formula
  desc "Gravitational lens adaptive-mesh fitting code"
  homepage "https://www.slac.stanford.edu/~oguri/glafic"
  url "https://www.slac.stanford.edu/~oguri/glafic/download/glafic-1.2.9-mac.tar.gz"
  sha256 "d99c3358d112bb99628a3f11ee9045680cbd2b862288dd2d681d807301036dca"

  def install
    bin.install "glafic"
  end

  test do
    system "true"
  end
end
