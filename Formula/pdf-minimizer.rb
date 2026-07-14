class PdfMinimizer < Formula
  desc "CLI PDF compressor for scanned documents"
  homepage "https://github.com/moujahedkhouja/pdf-minimizer"
  version "0.1.4"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/moujahedkhouja/pdf-minimizer/releases/download/v0.1.4/pdf-minimizer-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "4ef43133ae39332523554867b4ff950f902016fe98e952ef3061361c555b3f90"
    else
      url "https://github.com/moujahedkhouja/pdf-minimizer/releases/download/v0.1.4/pdf-minimizer-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "041a8a9bdec7087791dfa1b3f321f030bd0e87294496f5dc67e43c41fc18d0eb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/moujahedkhouja/pdf-minimizer/releases/download/v0.1.4/pdf-minimizer-v0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ace372d9c8db6a5ce4f753351da8eaa2a849c707274fefe574e0054d41674ef3"
    else
      url "https://github.com/moujahedkhouja/pdf-minimizer/releases/download/v0.1.4/pdf-minimizer-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "01768f51b15a50b3fce84c3887572263e7f4e98873b9399b09c03ee901a8ec6e"
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
