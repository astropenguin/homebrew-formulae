class Enhancd < Formula
  desc "A next-generation cd command with an interactive filter"
  homepage "https://github.com/b4b4r07/enhancd"
  url "https://github.com/b4b4r07/enhancd/archive/v2.2.1.tar.gz"
  sha256 "d68c57ce3fe0cb261ee51b8a013c01ec355215df406d8fdb09d80cccfefbc91e"

  def install
    prefix.install Dir["./*"]
    (prefix/"etc/enhancd").install_symlink prefix/"init.sh"
    (prefix/"etc/enhancd").install_symlink prefix/"custom"
    (prefix/"etc/enhancd").install_symlink prefix/"src"
  end

  def caveats
    <<-EOS.undent
      To enable enhancd, add to your profile:
        source #{etc}/enhancd/init.sh
    EOS
  end

  test do
    system "true"
  end
end
