drugis.org
==========

The [drugis.org](https://drugis.org/) website built using
[Jekyll](http://jekyllrb.com/) and
[git annex](https://git-annex.branchable.com/).

Requirements
------------

 - ruby
 - jekyll (gem install jekyll)
 - jekyll scholar (gem install jekyll-scholar)
 - jekyll sass (gem install jekyll-sass)
 - git-annex (sudo apt-get install git-annex)

Building
--------

Clone the git repository:

    git clone git@github.com:drugis/drugis.org.git

Make sure the SASS submodule is present:

    git submodule init
    git submodule update

Build the `_site`:

    jekyll build

If necessary, load /files using git-annex (TODO: HTTP remote from site itself):

    git annex init 'my workstation'
    git config remote.origin.annex-ignore true
    git remote add file-origin ${FILE_ORIGIN}
    git annex sync file-origin

Now serve it using nginx (see the sample nginx.conf).

Deploying
---------

On drugis.org we have a clone of the drugis.org repository with git-annex and
git-submodule initialized, add the remote as follows:

    git remote add deploy jekyll@drugis.org:repository/

On this repository we set `receive.denyCurrentBranch = ignore` to enable
pushing to master, which rebuilds and deploys the site:

    git push deploy master

Using the following `post-receive` hook script:

    unset GIT_DIR
    cd ..   
    git checkout -f master
    git submodule update
    git annex merge
 
    # build the site
    jekyll build --destination _build && \
        mv -v _site _site-`date +%Y%m%dT%H%M%S` && \
        mv -v _build _site
 
    # resource usage
    echo "Space taken by backups:"
    du -hs _site-*
    echo "Space available:"
    df -h /

To update the `_files` git annex, do:

    git annex sync deploy
    git annex copy --to=deploy
