class Rdrop < Formula
  desc "P2P streamed file transfer with ring-based access control"
  homepage "https://github.com/rikettsie/ringdrop"
  url "https://github.com/rikettsie/ringdrop/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "31297c051543def78fbd1f803eb55def4fb2bed6dc0cb00af2d886f70d7e2562"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rdrop --version")
  end
end
