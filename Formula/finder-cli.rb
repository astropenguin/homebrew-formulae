class FinderCli < Formula
  desc "Mini tool to flip through current Finder windows for cd"
  homepage "Command line interface for macOS to operate current Finder windows"
  url "https://github.com/astropenguin/finder-cli/archive/v0.1.tar.gz"
  sha256 "8fa87659e6464478631de5f8e3e2d0f5d60bcd4b60c615f8da663f18bf0eb47e"

  depends_on "fzf"

  def install
    prefix.install Dir["./*"]
    (prefix/"etc/finder-cli").install_symlink prefix/"init.sh"
    (prefix/"etc/finder-cli").install_symlink prefix/"script"
  end

  def caveats
    <<~EOS
      To enable finder-cli, add to your profile:
        source #{etc}/finder-cli/init.sh
    EOS
  end

  test do
    system "true"
  end
end
