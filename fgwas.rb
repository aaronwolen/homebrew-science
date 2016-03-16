class Fgwas < Formula
  desc "Integrating functional genomic information into GWAS"
  homepage "https://github.com/joepickrell/fgwas"
  # tag "bioinformatics"
  # doi "10.1016/j.ajhg.2014.03.0047"

  url "https://github.com/joepickrell/fgwas/archive/0.3.6.tar.gz"
  sha256 "40340e7589a4965ad9f216f9f27d6b3ac72aadcc74e585652b1ea2993f580b61"

  depends_on "gsl"
  depends_on "boost"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/fgwas 2>&1 | grep -q fgwas"
  end
end
