class LlmChatifier < Formula
  include Language::Python::Virtualenv

  desc "Universal terminal chat client that auto-detects and connects to any chat API endpoint"
  homepage "https://github.com/fluffypony/llm-chatifier"
  url "https://files.pythonhosted.org/packages/source/l/llm-chatifier/llm-chatifier-0.1.0.tar.gz"
  sha256 "000f2a90ab6706d4e89e6feac8581f4adc5933d8b90da4efd9b948d6ef980b88"
  license "BSD-3-Clause"

  depends_on "python@3.12"

  resource "click" do
    url "https://files.pythonhosted.org/packages/source/c/click/click-8.2.1.tar.gz"
    sha256 "61a3265b914e850b85317d0b3109c7f8cd35a670f963866005d6ef1d5175a12b"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/source/h/httpx/httpx-0.28.1.tar.gz"
    sha256 "d909fcccc110f8c7faf814ca82a9a4d816bc5a6dbfea25d6591d6985b8ba59ad"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/source/r/rich/rich-14.0.0.tar.gz"
    sha256 "1c9491e1951aac09caffd42f448ee3d04e58923ffe14993f6e83068dc395d7e0"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/source/p/prompt-toolkit/prompt_toolkit-3.0.51.tar.gz"
    sha256 "52742911fde84e2d423e2f9a4cf1de7d7ac4e51958f648d9540e0fb8db077b07"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "llm-chatifier", shell_output("#{bin}/llm-chatifier --help")
  end
end
