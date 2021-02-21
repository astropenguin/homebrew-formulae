class Fls < Formula
  desc "List paths of current macOS Finder windows"
  homepage "https://github.com/astropenguin/fls"
  url "https://github.com/astropenguin/fls/archive/v0.3.tar.gz"
  sha256 "3423653a7e60149cba70d766d37de682eef0a80996c552854279854b1cbb05eb"

  depends_on "fzf"

  def install
    prefix.install "bin"
    prefix.install "etc"
  end

  def caveats
    <<~EOS
      To enable fcd, add it to your shell profile:
        (for bash) source #{etc}/fcd.sh
        (for fish) source #{etc}/fcd.fish
    EOS
  end

  test do
    system "true"
  end
end
