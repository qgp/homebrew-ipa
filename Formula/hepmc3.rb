class Hepmc3 < Formula
  desc "HepMC event record"
  homepage "https://gitlab.cern.ch/hepmc/HepMC3/-/releases"
  url "https://gitlab.cern.ch/hepmc/HepMC3/-/archive/3.2.0/HepMC3-3.2.0.tar.bz2"
  sha256 "80ea8551195d8e1338d2249b283c7761b885960731d6f46b53af8df75565781c"

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
