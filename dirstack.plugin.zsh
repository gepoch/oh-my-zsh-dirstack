alias p='pushd > /dev/null'
alias o='popd > /dev/null'
alias d='dirs -v'

function dirstack_prompt_info {
    extra_dirs=$(dirs -v | cut -d'	' -f2- | tail -n +2 |  tr "\\n" " ")
    if [ "$extra_dirs" ]; then
        echo "$ZSH_PROMPT_BASE_COLOR$ZSH_THEME_DIRSTACK_PROMPT_PREFIX$ZSH_THEME_DIRSTACK_NAME_COLOR$extra_dirs$ZSH_PROMPT_BASE_COLOR$ZSH_THEME_DIRSTACK_PROMPT_SUFFIX$ZSH_PROMPT_BASE_COLOR"
    fi
}