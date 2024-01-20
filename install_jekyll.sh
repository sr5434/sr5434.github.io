# Install Ruby
sudo apt-get install ruby-full build-essential zlib1g-dev

# Ensure RubyGems packages are installed under the user account instead of root.
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# Install Jekyll and Bundler:
gem install jekyll bundler