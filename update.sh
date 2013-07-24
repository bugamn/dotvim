root=.vim/bundle
mercurial_repos=(ropevim)

git submodule foreach git pull
for repo in ${mercurial_repos[*]}
do
    if [ -e $root/$repo ]
    then
        cd $root/$repo
        hg pull
        cd -
    fi
done

