class Rmsafe < Formula
  desc "3D fitting tool to derive the kinematics of galaxies from emission-line observations"
  homepage "http://editeodoro.github.io/Bbarolo/"
  url "https://github.com/editeodoro/Bbarolo/releases/download/1.5/BBarolo_MacOSX.zip"
  sha256 "85ec68a5b154226d5a801fbd0a08ea6db85843bfbe33a9097cbf64777e625d06"

  def install
    bin.install "BBarolo"
  end

  test do
    system "true"
  end
end
