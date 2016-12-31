class Rmsafe < Formula
  desc "Python tool to move files and/or directories to macOS Trash"
  homepage "https://github.com/snoopython/rmsafe"
  url "https://github.com/snoopython/rmsafe/archive/v0.4.tar.gz"
  sha256 "8cbe7e1721006b8c1ee4fdb0c277acc560a6036d9900fec23b7f4ff8d125f61b"

  def install
    prefix.install "bin"
  end

  test do
    system "true"
  end
end
