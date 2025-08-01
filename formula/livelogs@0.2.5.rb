# typed: false

class LivelogsAT025 < Formula
  desc "Interface for service owners to check service logs for any environment"
  homepage "https://github.com/dream-sports-labs/livelogs"
  version "0.2.5"

  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream-sports-labs/livelogs/releases/download/0.2.5/livelogs_darwin_amd64.tar.gz"
    sha256 "ce6bcdf6fefdcc113b16f1740d79438027fe6fd1e8ccf06d10e57fa8d8a61197"
  end

  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream-sports-labs/livelogs/releases/download/0.2.5/livelogs_darwin_arm64.tar.gz"
    sha256 "87fc79e174f1feb129cd508b0c17024ba56bd38232d5d39ec8b832dd97b03fd9"
  end

  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream-sports-labs/livelogs/releases/download/0.2.5/livelogs_linux_amd64.tar.gz"
    sha256 "99b39d0908ee1c3432ee8890b61dd2bbb7a1ae96dedcf23a444df92c71c9060b"
  end

  def install
    bin.install "livelogs"
  end

  test do
    system "#{bin}/livelogs --version && #{bin}/livelogs --help"
  end

end
