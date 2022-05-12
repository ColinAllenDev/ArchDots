function fish_greeting
        if not type fortune > /dev/null 2>&1
            sudo pacman -S fortune-mod
        end
        fortune -a
    
end
