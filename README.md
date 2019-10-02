# Nhanderu's dotfiles

My own dotfiles. Yay.

## Steps to glory

```sh
# Configures dotfiles.
mkdir --parents ~/projects/nhanderu/dotfiles
cd ~/projects/nhanderu/dotfiles
git clone https://github.com/Nhanderu/dotfiles.git .

# Installs configurations and scripts.
./bootstrap.sh

# Installs my packages.
install-pkgs

# Sets locale.
sudo nvim /etc/locale.gen
sudo nvim /etc/locale.conf
sudo locale-gen
```

Enjoy!

## License

Almost all of this project code is in the public domain. See the [LICENSE file][2].

The only exception is the prompt directory. For more information about that, see the [Prompt's directory][3].

[1]: https://github.com/mathiasbynens/dotfiles
[2]: https://github.com/Nhanderu/dotfiles/blob/master/LICENSE
[3]: https://github.com/Nhanderu/dotfiles/tree/master/prompt
