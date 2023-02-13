fish_add_path --global /opt/homebrew/bin ~/.local/bin ~/.cargo/bin ~/.jenv/bin

set -x TERM xterm-256color
set -x HOMEBREW_NO_AUTO_UPDATE 1

if status is-interactive
    scmpuff init -s --shell=fish --aliases=false | source

    abbr --add ga git add
    abbr --add gca git commit --amend
    abbr --add --set-cursor gcm git commit -m '"%"'
    abbr --add gco git checkout
    abbr --add gd git diff
    abbr --add gdc git diff --cached
    abbr --add glg git log --stat
    abbr --add grs git reset
end

# tide prompt
set --global tide_left_prompt_items pwd newline character
set --global tide_right_prompt_items cmd_duration status git
set --global tide_prompt_add_newline_before true

set --global tide_character_icon ❯
set --global tide_character_vi_icon_default ❮
set --global tide_character_vi_icon_replace ❮
set --global tide_character_vi_icon_visual ❮

set --global tide_pwd_color_anchors magenta
set --global tide_pwd_color_dirs blue
set --global tide_pwd_color_truncated_dirs brblack

set --global tide_git_truncation_length 256
set --global tide_git_color_branch magenta
set --global tide_git_color_upstream blue
set --global tide_git_color_staged green
set --global tide_git_color_untracked brblack
