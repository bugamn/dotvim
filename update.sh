root=.vim/bundle

declare -A mercurial_repos
mercurial_repos=(
["ropevim"]="https://bitbucket.org/agr/ropevim"
)

git submodule foreach git pull
for repo in ${!mercurial_repos[@]}
do
    if [ -e $root/$repo ]
    then
        cd $root/$repo
        hg pull
        cd -
    else
        hg clone ${mercurial_repos["$repo"]} $root/$repo
        echo $repo/ >> .gitignore
    fi
done

