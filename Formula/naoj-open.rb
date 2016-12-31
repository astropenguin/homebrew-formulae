class NaojOpen < Formula
  desc "Mini tool to connect naoj-open with the weekly key"
  homepage "https://github.com/snoopython/naoj-open"
  url "https://github.com/snoopython/naoj-open/archive/v0.1.tar.gz"
  sha256 "c49c5ada6e25c28c38e5610ed57450fa5f09c8a63df852262760223278b69001"

  def install
    prefix.install "bin"
  end

  test do
    system "true"
  end
end
