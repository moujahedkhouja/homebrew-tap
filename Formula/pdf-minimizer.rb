class PdfMinimizer < Formula
  desc "CLI PDF compressor for scanned documents"
  homepage "https://github.com/moujahedkhouja/pdf-minimizer"
  version "0.1.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/moujahedkhouja/pdf-minimizer/releases/download/v0.1.3/pdf-minimizer-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "c600b7cbaf9f16353caa55a1094598dc382cac69ffe0eb8a4eed3cc1bc56616e"
    else
      url "https://github.com/moujahedkhouja/pdf-minimizer/releases/download/v0.1.3/pdf-minimizer-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "33079d5f0976e2507041e64652ddcb67ec9a862721ab5faff8bca53ca6213169"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/moujahedkhouja/pdf-minimizer/releases/download/v0.1.3/pdf-minimizer-v0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2919e24be7b25482d1d09b4aa8b683d498aef65091bce7294c7767e0748e5ed0"
    else
      url "https://github.com/moujahedkhouja/pdf-minimizer/releases/download/v0.1.3/pdf-minimizer-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ced8e8ecc314d745457081907653b413437e8b40beb75f3e50e728218a59e4e7"
    end
  end

  def install
    bin.install "pdf-minimizer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-minimizer --version")
  end
end
