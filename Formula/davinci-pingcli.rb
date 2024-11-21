class DvtfPingctl < Formula
    desc "A simple CLI tool to assist HCL generation and debugging with using the DaVinci Terraform provider from Ping Identity."
    homepage "https://github.com/patrickcping/davinci-pingcli"
    license "MIT"
    version "0.0.1"
  
    head "https://github.com/patrickcping/davinci-pingcli.git"
  
    on_macos do
      on_arm do
        url "https://github.com/patrickcping/davinci-pingcli/releases/download/v#{version}/davinci-pingcli_darwin_arm64.tar.gz"
        sha256 "a3f689e18de679fa18d1879adfd6017e153c9d393708e205f4dd45d6e8a6c2a6"
      end
      on_intel do
        url "https://github.com/patrickcping/davinci-pingcli/releases/download/v#{version}/davinci-pingcli_darwin_amd64.tar.gz"
        sha256 "2e1af7c2b259d0eee3613f9ad56e4c204718e8fb62b9094952bf9acfab86a99b"
      end
    end
  
    on_linux do
      on_arm do
        url "https://github.com/patrickcping/davinci-pingcli/releases/download/v#{version}/davinci-pingcli_linux_arm64.tar.gz"
        sha256 "14d69c1b95d0248b17bbe24779b069a7b5f68c162af76e2cbaa21e33f8979f41"
      end
      on_intel do
        url "https://github.com/patrickcping/davinci-pingcli/releases/download/v#{version}/davinci-pingcli_linux_amd64.tar.gz"
        sha256 "7aafde2113c3ead3074f09d9a7d9e16b28f2fdbfe27bd39891bc420b6b92e7d0"
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