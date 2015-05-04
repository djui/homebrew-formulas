class Ponyc < Formula
  homepage "http://www.ponylang.org/"
  url "https://github.com/CausalityLtd/ponyc/archive/0.1.2.tar.gz"
  sha256 "c19e30b96fe96634ffc5b1456ab32f45c713814d506963d2243b52577e35d241"

  depends_on "llvm36"

  def install
    system "make", "install", "config=release", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/ponyc", "--version"
  end
end
