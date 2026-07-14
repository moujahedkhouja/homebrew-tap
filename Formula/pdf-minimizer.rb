class PdfMinimizer < Formula
  desc "CLI PDF compressor for scanned documents"
  homepage "https://github.com/moujahedkhouja/pdf-minimizer"
  version "0.1.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/moujahedkhouja/pdf-minimizer/releases/download/v0.1.2/pdf-minimizer-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "0e0f95f6fb042f2db79f8f0aaa383dcf6a5f6cc423b8c4ae266e8dcc5290572a"
    else
      url "https://github.com/moujahedkhouja/pdf-minimizer/releases/download/v0.1.2/pdf-minimizer-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "24433f65c8dac0cf2643939a7ac8e82b6c26b1d02a56c677a81febdd1ca0a221"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/moujahedkhouja/pdf-minimizer/releases/download/v0.1.2/pdf-minimizer-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "94d6880068d808c4bf670f7437b468f353e076bf7e50daacdd10efb8ed20f9e7"
    else
      url "https://github.com/moujahedkhouja/pdf-minimizer/releases/download/v0.1.2/pdf-minimizer-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a465902b0e4d4b2ba1007961d6679870ab4d8866cb31d207b83fbae17978c5c7"
    end
  end

  def install
    bin.install "pdf-minimizer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-minimizer --version")
  end
end
