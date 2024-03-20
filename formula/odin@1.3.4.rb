# typed: false

class OdinAT134 < Formula
  desc "Interface for service definitions & deployments into self-managed environments"
  homepage "https://github.com/dream11/odin"
  version "1.3.4"
  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.3.4/odin_darwin_amd64.tar.gz"
    sha256 "dd689a55ece895b9eef50b95bc625b31389e5797016bcaa3a00a03cfcb023766"
  end
  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/odin/releases/download/1.3.4/odin_darwin_arm64.tar.gz"
    sha256 "03ccf4b49691c1cef4e7b7e019c8d9e3c1bf36a076ddf2d814b0d0c0056b499b"
  end
  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.3.4/odin_linux_amd64.tar.gz"
    sha256 "eb5e0fcb5c9a007657cbf400f754731000a8466592a9e5a132d72d80d7b0f258"
  end

  def install
    bin.install "odin"
  end

  test do
    system "#{bin}/odin --version && #{bin}/odin --help"
  end

end
