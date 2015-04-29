alias p='pushd > /dev/null'
alias o='popd > /dev/null'
alias d='dirs -v'

ZSH_THEME_DIRSTACK_PROMPT_DELIMITER=" "

function dirstack_prompt_info {
    extra_dirs=$(echo -n "$(dirs -p | tail -n +2)")
    extra_dirs=${extra_dirs//$'\n'/$ZSH_THEME_DIRSTACK_PROMPT_DELIMITER}
    if [ "$extra_dirs" ]; then
        echo "$ZSH_PROMPT_BASE_COLOR$ZSH_THEME_DIRSTACK_PROMPT_PREFIX$ZSH_THEME_DIRSTACK_NAME_COLOR$extra_dirs$ZSH_PROMPT_BASE_COLOR$ZSH_THEME_DIRSTACK_PROMPT_SUFFIX$ZSH_PROMPT_BASE_COLOR"
    fi
}
