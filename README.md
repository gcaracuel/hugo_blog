Brew
=====

# Step 1: Install brew if you haven’t already

Go to the brew website, http://brew.sh/, and follow the directions there. The most important step is:

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

When I did this, I had some problems with directory permissions. Searches on Google pointed me to pages that walked me through updating permissions on the /usr/local directory. Seemed scary, but it’s worked well since.

# Step 2: Run the brew command to install hugo

First, update the formulae and Homebrew itself by running:

```
$ brew update
```

Then, install Hugo using Homebrew by running:

```
$ brew install hugo
==> Downloading https://homebrew.bintray.com/bottles/hugo-0.13_1.yosemite.bottle.tar.gz
######################################################################## 100.0%
==> Pouring hugo-0.13_1.yosemite.bottle.tar.gz
🍺  /usr/local/Cellar/hugo/0.13_1: 4 files,  14M
(Note: Replace brew install hugo with brew install hugo --HEAD if you want the absolute latest version in development, but beware—there might be bugs!)
```

Brew should have updated your path to include Hugo. Confirm by opening a new terminal window and running a few commands:

```
$ # show the location of the hugo executable
$ which hugo
/usr/local/bin/hugo

$ # show the installed version
$ ls -l $( which hugo )
lrwxr-xr-x  1 mdhender admin  30 Mar 28 22:19 /usr/local/bin/hugo -> ../Cellar/hugo/0.13_1/bin/hugo

$ # verify that hugo runs correctly
$ hugo version
Hugo Static Site Generator v0.13 BuildDate: 2015-03-09T21:34:47-05:00
```
