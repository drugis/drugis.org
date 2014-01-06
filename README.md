drugis.org
==========

drugis.org website

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

If necessary, load /files using git-annex:

    git annex init 'my workstation'
    git config remote.origin.annex-ignore true
    git remote add file-origin ${FILE_ORIGIN}
    git annex sync file-origin

Now serve it using nginx (see the sample nginx.conf).
