# typed: false

class OdinAT131 < Formula
    desc "Interface for service definitions & deployments into self-managed environments"
    homepage "https://github.com/dream11/odin"
    version "1.3.1"

    # For MacOs Intel based systems
    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/dream11/odin/releases/download/1.3.1/odin_darwin_amd64.tar.gz"
      sha256 "75839790a7f1685f334e807d72e05dbe614b17a591fe4885f2ae27725288fdfd"
    end

    # For MacOs M1 based systems
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/dream11/odin/releases/download/1.3.1/odin_darwin_arm64.tar.gz"
      sha256 "4bdf5d234cb00486203edc9a2d346b2c97328178fe69c89a61325b95a1ecf5db"
    end

    # For Linux X64 based systems
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/dream11/odin/releases/download/1.3.1/odin_linux_amd64.tar.gz"
      sha256 "af09adaaa6447b7e23a5c2cdba70426f2fa1db3d05f49060821687924daf26ac"
    end

    def install
      bin.install "odin"
    end

    test do
      system "#{bin}/odin --version && #{bin}/odin --help"
    end

  end
