class Fls < Formula
  desc "List paths of current macOS Finder windows"
  homepage "https://github.com/astropenguin/fls"
  url "https://github.com/astropenguin/fls/archive/v0.2.tar.gz"
  sha256 "10b81121b350e8ae9d4067ed3e11aad17d833a0dda4fd26529896c7673718675"

  depends_on "fzf"

  def install
    prefix.install "bin"
    prefix.install "etc"
  end

  def caveats
    <<~EOS
      To enable fcd, add to your shell profile:
        (bash) source #{etc}/#{prefix}/fcd.sh
        (fish) source #{etc}/#{prefix}/fcd.fish
    EOS
  end

  test do
    system "true"
  end
end
