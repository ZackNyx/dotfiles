function grep --wraps grep --description 'alias grep=grep --color=auto'
    command grep --color=auto $argv
end

