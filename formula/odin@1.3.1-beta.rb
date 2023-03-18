# typed: false

class OdinAT131Beta < Formula
    desc "Interface for service definitions & deployments into self-managed environments"
    homepage "https://github.com/dream11/odin"
    version "1.3.1-beta"

    # For MacOs Intel based systems
    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/dream11/odin/releases/download/1.3.1-beta/odin_darwin_amd64.tar.gz"
      sha256 "45ce5dc0f26085d91dcddfe6dd021d9fa28465b043e1bb8b769169f2d0991807"
    end

    # For MacOs M1 based systems
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/dream11/odin/releases/download/1.3.1-beta/odin_darwin_arm64.tar.gz"
      sha256 "48e39a52194db160d68b93f2ee185ff83bf7af2b2f59cb19df6f7e6ca4a96918"
    end

    # For Linux X64 based systems
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/dream11/odin/releases/download/1.3.1-beta/odin_linux_amd64.tar.gz"
      sha256 "9ec270d135f15aace3b4bc49c2f2217fc8bef17ee8912a88fdeeeecca9676b13"
    end

    def install
      bin.install "odin"
    end

    test do
      system "#{bin}/odin --version && #{bin}/odin --help"
    end

  end
