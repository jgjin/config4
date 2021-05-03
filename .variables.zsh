export GOPATH="$HOME/go"
export PATH="$HOME/.cargo/bin:$GOPATH/bin:/opt/homebrew/bin:/usr/local/bin:/usr/local/opt/arm-gcc-bin@8/bin:/usr/local/opt/avr-gcc@8/bin:$PATH"

export LS_COLORS="$(vivid generate snazzy)"
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/library"
export XDG_CONFIG_HOME="$HOME/.config"
