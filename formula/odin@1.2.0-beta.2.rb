# typed: false

class OdinAT120Beta2 < Formula
    desc "Interface for service definitions & deployments into self-managed environments"
    homepage "https://github.com/dream11/odin"
    version "1.2.0-beta.2"
  
    # For MacOs Intel based systems
    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/dream11/odin/releases/download/1.2.0-beta.2/odin_darwin_amd64.tar.gz"
      sha256 "088099f8e03386eaf0e6f590759d680c0d92d456fbdf9caf521db232d5cf80f0"
    end
  
    # For MacOs M1 based systems
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/dream11/odin/releases/download/1.2.0-beta.2/odin_darwin_arm64.tar.gz"
      sha256 "700daff9c4ce9944fb1b9e6e8f68096eabae91a498a298310039d3d202e560f3"
    end
  
    # For Linux X64 based systems
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/dream11/odin/releases/download/1.2.0-beta.2/odin_linux_amd64.tar.gz"
      sha256 "f74b7c2a7b88674864de0c3a72d3c92bd4689773aaa901a13cb6b790ea498ce1"
    end
  
    def install
      bin.install "odin"
    end
  
    test do
      system "#{bin}/odin --version && #{bin}/odin --help"
    end
  
  end