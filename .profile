# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

if [ -n "${BASH_VERSION}" ]; then
    if [ -f "${HOME}/.bashrc" ]; then
	. "${HOME}/.bashrc"
    fi
fi

PATH="${HOME}/bin:${HOME}/.local/bin:$PATH"

if [ -d "${HOME}/.dotfiles" ]; then
    if [ ${PATH} != *".dotfiles/scripts"* ]; then
        PATH="${HOME}/.dotfiles/scripts:${PATH}"
    fi
fi

if [ -z "${ROMANS_PATH}" ]; then
    PATH="${ROMANS_PATH}:${PATH}"
fi
