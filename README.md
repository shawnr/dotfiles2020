# Dotfiles 2020
This is a MacOS dotfiles repo updated for using ZSH and with an attempt to remove clutter from my system that I don't actually use as much.

![Example screen shot.](screen.png?raw=true)

## Setup

### Install Homebrew-managed dependencies and tools

To install the dotfiles you will need to have [Homebrew](https://brew.sh/) available. Install Homebrew using one of the methods described on the project site and continue with these directions.

Once you have installed Homebrew, run the `brew.sh` script.

```./brew.sh```

### Set Up ZSH

This setup uses Oh-My-Zsh. Install it with the following command:

```sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"```

Once that has installed, *restart your terminal* and then install the PowerLevel 10k Theme for Oh-My-Zsh:

```git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k```

When those files have been downloaded, run the `update-files.sh` script:

```./update-files.sh```

Note: If you wish to customize the theme for the PS1 prompt, PowerLevel 10K offers many options. You can run `p10k configure` or delete the `$HOME/.p10k.zsh` file to re-do the theme configuration and experiment with alternative settings. Be sure to save your final preferred configuration by copying the `.p10k.zsh` file into this repo after you have made changes.

### Optional: Set Up Mac Defaults

Some useful MacOS defaults have been added to `macos.sh`. Run it to install those settings:

```./macos.sh```

## Customizing the Dotfiles

Fork this repository and customize the files to your liking. When you have modified the files in the repository, or updated from upstream changes, you can re-run the `update-files.sh` script to re-copy the files. Be aware, this will overwrite any changes you have made directly to files in your `$HOME` directory.

## Updating

All of the installation commands are idempotent so they can be run again to update with no issues.

Note: The `~/.extra` file will be sourced at runtime, but will never be overwritten by updates.

## Troubleshooting

If you receive an error when using SSH after running the installation scripts about "Bad Configuration," it can be fixed. The error includes:

```Bad configuration option: usekeychain```

And the fix is to add the `IgnoreUnknown` command above the reference to the keychain in your .ssh file:

```
Host *
AddKeysToAgent yes
IgnoreUnknown UseKeychain
UseKeychain yes
IdentityFile ~/.ssh/id_rsa
```

## Due Credit

This repository is based largely off the [dotfiles](https://github.com/mathiasbynens/dotfiles) repository created by Mathias Bynens. 