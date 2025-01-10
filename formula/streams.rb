# typed: false

class Streams < Formula
  desc "Streamverse - Streams cli"
  homepage "https://github.com/dream11/streams-cli"
  version "0.0.5-alpha"
  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/streams-cli/releases/download/0.0.5-alpha/streamverse_darwin_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "ce22b8b2a425bb7ce8ea1ce14cd99f6190bd50215799cdfbeb37741cbba9d4ce"
  end
  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/streams-cli/releases/download/0.0.5-alpha/streamverse_darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "e450486ca88152bedabb9a3f34557012ba4707496ff9d21be694c29c5a03a0a4"
  end
  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/streams-cli/releases/download/0.0.5-alpha/streamverse_linux_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "ea13ec76594da9537027bd13fb0e1b3572d4e5a987473a4ea136eb8eca7b8b7c"
  end

  def install
    bin.install "streams"
  end

  test do
    system "#{bin}/streams --version && #{bin}/streams --help"
  end

end
