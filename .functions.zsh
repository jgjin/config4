# Run exa when auto-ls
auto-ls-exa() {
    exa -aF
}
AUTO_LS_COMMANDS=(exa)

# Start exactly one emacsclient window
emacsclient_background() {
    emacsclient -a "" -e "(if (> (length (frame-list)) 1) 't)" 2> /dev/null | grep t &> /dev/null
    if [ "$?" -eq "1" ]; then
        emacsclient -nqc "$@" &> /dev/null
    else
        emacsclient -nq "$@" &> /dev/null
    fi
}
