function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end
# https://superuser.com/questions/719531/what-is-the-equivalent-of-bashs-and-in-the-fish-shell

