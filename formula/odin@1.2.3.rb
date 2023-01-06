# typed: false

class OdinAT122 < Formula
    desc "Interface for service definitions & deployments into self-managed environments"
    homepage "https://github.com/dream11/odin"
    version "1.2.3"

    # For MacOs Intel based systems
    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/dream11/odin/releases/download/1.2.2/odin_darwin_amd64.tar.gz"
      sha256 "f3c83f1e89456829f8cfb81dc8e4dfa36e8995fd391fbb461e14915e4d3d4440"
    end

    # For MacOs M1 based systems
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/dream11/odin/releases/download/1.2.2/odin_darwin_arm64.tar.gz"
      sha256 "2f521eca959c8e2dd27a212baae354e3913808fcb6d3fcf5219c6505b42fc20a"
    end

    # For Linux X64 based systems
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/dream11/odin/releases/download/1.2.2/odin_linux_amd64.tar.gz"
      sha256 "3d24dcc6216dc07c6e57c2d5c4230e2d41f0fc7c5a2895857f1fc305e9a0888b"
    end

    def install
      bin.install "odin"
    end

    test do
      system "#{bin}/odin --version && #{bin}/odin --help"
    end

  end
