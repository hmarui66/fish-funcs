function gdel
    git branch --merged | grep -E 'feature|bugfix' | xargs git branch -d
end
