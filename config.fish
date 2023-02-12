if status is-interactive
    scmpuff init -s --shell=fish --aliases=false | source

    abbr --add ga git add
    abbr --add gco git checkout
    abbr --add gd git diff
    abbr --add gdc git diff --cached
    abbr --add glg git log --stat
    abbr --add grs git reset
end
