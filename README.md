# homebrew-tools :beer:

Homebrew tap formula(s) for Dream11 internal tools.

## Tap

```shell
# Github API Token is required to fetch private github repositories
export HOMEBREW_GITHUB_API_TOKEN=<your github access token>

brew tap dream11/tools
```

## Install

```shell
brew install dream11/tools/<formula name>
```

Example

```shell
brew install dream11/tools/odin
```

## Development

### Repository structure

```shell
+-- homebrew-tools
    +-- formula
        +-- tool.rb
        +-- lib
            +-- function.rb
```

#### `formula`

Contains all installation formula(s).

#### `formula/lib`

Contains all library functions required by the formula(s).

### Writing a formula

#### Importing libraries

Importing library from `formula/lib/library.rb`

```ruby
require_relative "lib/library"
```

#### Initiating a formula class

```ruby
class Odin < Formula
  desc "Formula description"
  homepage "https://github.com/dream11/tool-name"
  version "1.0.0"

  # add installation steps here

end
```

### Example: Formula for installing a binary

#### Pre-requisites

For a repository `github.com/dream11/tool` -

1. Create a tag `1.0.0`.
2. Create a release, from above tag.
3. Attach the compiled binary `tool`, compressed within `tool_os_arch.tar.gz`.

#### Formula

Create a formula, `homebrew-tools/formula/tool.rb`,

```ruby
# typed: false
require_relative "lib/github"

class Tool < Formula
  desc "Tool description"
  homepage "https://github.com/dream11/tool"
  version "1.0.0"

  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/tool/releases/download/1.0.0/tool_darwin_amd64.tar.gz", :using GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "<sha256 of tool_darwin_amd64.tar.gz>"
  end

  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/tool/releases/download/1.0.0/tool_darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "<sha256 of tool_darwin_arm64.tar.gz>"
  end

  conflicts_with "tool"
  
  def install
    bin.install "tool"
  end

  test do
    system "#{bin}/tool --version"
  end

end
```

#### Installation

```shell
export HOMEBREW_GITHUB_API_TOKEN=<your github access token>
brew tap dream11/tools
brew install dream11/tools/tool
```
