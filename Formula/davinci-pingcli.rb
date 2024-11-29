class DavinciPingcli < Formula
    desc "A simple CLI tool to manage PingOne DaVinci environments."
    homepage "https://github.com/patrickcping/davinci-pingcli"
    license "MIT"
    version "0.0.2"
  
    head "https://github.com/patrickcping/davinci-pingcli.git"
  
    on_macos do
      on_arm do
        url "https://github.com/patrickcping/davinci-pingcli/releases/download/v#{version}/davinci-pingcli_darwin_arm64.tar.gz"
        sha256 "d1099e2e32ed35a9a58c03f9339f7a5d169ec5e58aeb4949038d0a6dddfc9f03"
      end
      on_intel do
        url "https://github.com/patrickcping/davinci-pingcli/releases/download/v#{version}/davinci-pingcli_darwin_amd64.tar.gz"
        sha256 "bedf0524e0dc47a45b19a1ec94b5fa58e3e00c3f128d1b990b4ebfcb9cf8bbc0"
      end
    end
  
    on_linux do
      on_arm do
        url "https://github.com/patrickcping/davinci-pingcli/releases/download/v#{version}/davinci-pingcli_linux_arm64.tar.gz"
        sha256 "7cb76af35d24bb44c63acb2234a727b415dd5f2fbaa228efb4fa7ffb8789d363"
      end
      on_intel do
        url "https://github.com/patrickcping/davinci-pingcli/releases/download/v#{version}/davinci-pingcli_linux_amd64.tar.gz"
        sha256 "c76e3e9ad56a91aa72f9c6f5c1789d765dacd269a7ef1f1150f4b5d87f9a2e4b"
      end
    end
  
    def install
      libexec.install Dir["*"]
  
      bin.install_symlink "#{libexec}/davinci-pingcli" => "davinci-pingcli"
    end
  
    test do
      system bin/"davinci-pingcli", "-v"
    end
  end