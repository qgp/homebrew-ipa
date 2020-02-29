class Jewel < Formula
  desc "Jet Evolution With Energy Loss"
  homepage "https://jewel.hepforge.org"
  url "https://jewel.hepforge.org/downloads/jewel-2.2.0.tar.gz"
  sha256 "48a3df92c2e4478db3dbc4b7675be67a0833918fddb96076e386c076dea84922"

  depends_on "gcc" => :build
  depends_on "lhapdf5"

  def install
    system "make"
  end

  test do
    system "false"
  end
end
