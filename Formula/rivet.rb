class Rivet < Formula
  desc "Robust Independent Validation of Experiment and Theory"
  homepage "https://rivet.hepforge.org"
  url "https://rivet.hepforge.org/downloads/Rivet-3.1.0.tar.bz2"
  sha256 "4e156daee5eb10bd1573ef32d4a6a6df74788cd9180fc977db93ef4cb281000c"

  depends_on "FastJet" => :build
  depends_on "HepMC3" => :build
  depends_on "YODA" => :build

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "rivet", "--analyses"
  end
end
