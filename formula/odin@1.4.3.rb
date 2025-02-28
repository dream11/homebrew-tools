# typed: false

class OdinAT143 < Formula
  desc "Interface for service definitions & deployments into self-managed environments"
  homepage "https://github.com/dream11/odin"
  version "1.4.3"
  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.4.3/odin_darwin_amd64.tar.gz"
    sha256 "8c012920d66e061f56c915e424f3c79350bc7dbc799540cfa8569d294e1ebfd8"
  end
  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/odin/releases/download/1.4.3/odin_darwin_arm64.tar.gz"
    sha256 "78fa234da5b82623932295daea6c674921c04ae71fdb0a29c9cba185d0f8b66d"
  end
  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.4.3/odin_linux_amd64.tar.gz"
    sha256 "0d765fa897d73fe2a969373c77a3eb291b3152000600213f11e3f01e06fb8375"
  end

  def install
    bin.install "odin"
  end

  test do
    system "#{bin}/odin --version && #{bin}/odin --help"
  end

end
