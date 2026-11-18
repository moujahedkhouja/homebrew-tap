class PdfMinimizer < Formula
  desc "CLI PDF compressor for scanned documents"
  homepage "https://github.com/moujahedkhouja/pdf-minimizer"
  version "0.1.5"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/moujahedkhouja/pdf-minimizer/releases/download/v0.1.5/pdf-minimizer-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "0c455f6c8d603cee0fa744e2f87d3a3d36889783cb6edcf43f5fb73c193526b8"
    else
      url "https://github.com/moujahedkhouja/pdf-minimizer/releases/download/v0.1.5/pdf-minimizer-v0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "dc8a7462877a459d0100e1296447df9ee203e582b61487e4d0ab367ed160f003"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/moujahedkhouja/pdf-minimizer/releases/download/v0.1.5/pdf-minimizer-v0.1.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2df66890ff1fb972df21807b942d7b652f54d3f25aee599ce232395be2c03a68"
    else
      url "https://github.com/moujahedkhouja/pdf-minimizer/releases/download/v0.1.5/pdf-minimizer-v0.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fe7b61b20e31a5aa3a66c2330ec33cd468401ed9ad78fd3c88b998f5d9f0f89e"
    end
  end

  def install
    bin.install "pdf-minimizer"
    generate_completions_from_executable(bin/"pdf-minimizer", "--completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-minimizer --version")
  end
end
