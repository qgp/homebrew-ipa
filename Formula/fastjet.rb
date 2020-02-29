class Fastjet < Formula
  desc "Software package for jet finding"
  homepage "http://fastjet.fr"
  url "http://fastjet.fr/repo/fastjet-3.3.3.tar.gz"
  sha256 "30b0a0282ce5aeac9e45862314f5966f0be941ce118a83ee4805d39b827d732b"

  # depends_on "cmake" => :build

  def install
    system "./configure", "--enable-allcxxplugins",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "false"
  end
end
