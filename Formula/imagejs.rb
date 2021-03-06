class Imagejs < Formula
  desc "Tool to hide JavaScript inside valid image files"
  homepage "https://jklmnn.de/imagejs/"
  url "https://github.com/jklmnn/imagejs/archive/0.7.1.tar.gz"
  sha256 "d1a1368ce72a1a7d18d053f82bf19c7af14861588a459f3bf69f2b50a335633f"
  head "https://github.com/jklmnn/imagejs.git"

  bottle do
    cellar :any_skip_relocation
    sha256 "9df7eba8305feb25b5ce50dacb9e9fddb81958c911d84922f40763988b8e04ac" => :sierra
    sha256 "5a7a78dde1c1d658cc34a2a4e0f997cd1c4e242cc877779ea5c4cbd7c74265d2" => :el_capitan
    sha256 "128e1bdbbfbed86c41eff7487fbf65bcea8a17367b8b91077989a56878ab1dcb" => :yosemite
    sha256 "374bd224d00aaa4f11921d81444afc6dbcb23d6df6368c8594886f4172b773eb" => :mavericks
    sha256 "a78dcf76d4df78103aab79d4b35441f7709f31bec5ea8bcd268cac4e780f6037" => :mountain_lion
  end

  def install
    system "make"
    bin.install "imagejs"
  end

  test do
    (testpath/"test.js").write "alert('Hello World!')"
    system "#{bin}/imagejs", "bmp", "test.js", "-l"
  end
end
