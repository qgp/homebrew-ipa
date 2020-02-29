class Yoda < Formula
  desc "Yet more Objects for Data Analysis"
  homepage "https://yoda.hepforge.org/"
  url "https://yoda.hepforge.org/downloads/YODA-1.8.0.tar.bz2"
  sha256 "82c62bbaedb4b6b7d50cd42ce5409d453d46c1cc6724047db5efa74d34dd6dc5"

  # depends_on "cmake" => :build

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/yodamerge -h"
  end
end
