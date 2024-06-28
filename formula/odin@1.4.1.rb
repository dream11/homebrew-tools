# typed: false

class OdinAT141 < Formula
  desc "Interface for service definitions & deployments into self-managed environments"
  homepage "https://github.com/dream11/odin"
  version "1.4.1"
  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.4.1/odin_darwin_amd64.tar.gz"
    sha256 "12e377d7306ed4819ceb91747c461bc57b83abbe176ed971e3a08f4a960275d9"
  end
  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/odin/releases/download/1.4.1/odin_darwin_arm64.tar.gz"
    sha256 "c0f39a8720551d6669f1d7dcc5b302b38199900e79ba30952e47a7a3d059c474"
  end
  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.4.1/odin_linux_amd64.tar.gz"
    sha256 "4d8bef6288d7e2db457302347e7e88c4fc801b7d92c29ba9d59c0f73e5788ab1"
  end

  def install
    bin.install "odin"
  end

  test do
    system "#{bin}/odin --version && #{bin}/odin --help"
  end

end
