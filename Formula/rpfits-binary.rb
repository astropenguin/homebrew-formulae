class RpfitsBinary < Formula
    desc 'Library to access ATCA visibility data in RPFITS format (binary distribution)'
    homepage 'http://www.atnf.csiro.au/computing/software/rpfits.html'
    url 'ftp://ftp.atnf.csiro.au/pub/software/rpfits/rpfits-2.25_darwin.tar.gz'
    sha256 '8c6b490a10a71299cb0527b51cc682eaea24c3a4fe069c421714bbf7eb6a8f68'

    def install
      lib.install ['darwin/librpfits.a']
      bin.install ['darwin/rpfex','darwin/rpfhdr']
      include.install ['darwin/RPFITS.h']
    end
  end