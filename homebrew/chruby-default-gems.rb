class ChrubyDefaultGems < Formula
  desc "Install a series of gems after every `ruby-install`."
  homepage "https://github.com/jpickwell/chruby-default-gems#readme"
  url "https://github.com/jpickwell/chruby-default-gems/archive/v0.1.0.tar.gz"
  sha256 "392c71b151a9bdb12dc0be2e12999969cba46858808624fa980d40bad17b366f"

  head "https://github.com/jpickwell/chruby-default-gems.git"

  depends_on "chruby"
  depends_on "ruby-install"

  def install
    share.install "chruby-default-gems.sh"
    bin.install "chruby-default-gems"
  end

  def caveats
    %(
      Installation:

      Copy the following line into your .bash_profile or .zshenv:

        source /usr/local/share/chruby-default-gems.sh

      You can also set the DEFAULT_GEMFILE variable if you wish to store
      your default-gems in a location other than ~/.default-$RUBY-gems
      (where $RUBY is the kind of Ruby you're installing: "jruby", "ruby", ...)
    )
  end

  test do
    system "true"
  end
end
