# How to deal with git

## Setup ssh
	ssh-keygen -t ed25519
	
Save to `/local/home/tobiasri/.ssh/id_ed25519_git`

	vim ~/.ssh/config
	
Add

	Host gitlab.ethz.ch
	HostName gitlab.ethz.ch
	User git
	IdentityFile ~/.ssh/id_ed25519_git

Add the public key to your account: 
https://docs.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account

## Diff
Skip deleted files (they only trash up the diff...):

	git diff --diff-filter=d
	
## Log w trees
Git is a tree of commits.
A branch is a pointer to a certain commit.
Detached HEAD state means you have checked out a certain commit (not a branch).
Create another commit on base of detached HEAD -> start a branch there (not labeled yet). 
Label the branch with `git branch label`.
Show the branching hierarchy with

	git log --oneline --all --graph
	
## Changed files

	git diff --name-only 3e5d922cb HEAD

## Checkout a file from another branch

	git checkout experiment -- app.js
	
## Import a range of commits to another branch
https://stackoverflow.com/questions/1994463/how-to-cherry-pick-a-range-of-commits-and-merge-into-another-branch

	git checkout srcbranch
	git log
	git checkout aobranch
	git cherry-pick 401cd3f..bc0c123
	
Commit 401cd3f won't be applied, only what comes after

## Cleanup
Remove unstaged changes

	git reset --hard
	
Remove unstaged files

	git clean -fd
	
Remove ignored files

	git clean -fX

## Easier than below: git subtree
(https://www.atlassian.com/git/tutorials/git-subtree)

	git remote add oh-my-bash git@github.com:ohmybash/oh-my-bash.git
	git subtree add --prefix setup/bash/oh-my-bash oh-my-bash master --squash

## Import thirdparty repo as submodule
In case you will need to do some changes - Fork the 3rd party repo first.
E.g. in gitlab: Import project from url.
My own plan (others might not do it): Create a branch for your changes, say `odk`.
If you have already local changes to the original repo, change the remote:

	git remote set-url origin git@gitlab.ethz.ch:tobiasri/linux-5.1-nova.git
	
Thenn commit & push the changes.
Next go into the parent repo and use 

	git submodule add git@gitlab.ethz.ch:tobiasri/linux-5.1-nova.git
	
Go into the sub-repo and checkout your own branch

	cd linux-5.1-nova; git checkout odk
	
Stage the changes in the parent repo

	git add linux-5.1-nova

## Existing project to Github
https://docs.github.com/en/github/importing-your-projects-to-github/importing-source-code-to-github/adding-an-existing-project-to-github-using-the-command-line
First create an empty repository on github. Then go terminal

	cd ToubisResources/
	git init
	git add .
	git commit -m "Initial commit"
	git branch -M master
	git remote add origin git@github.com:toubi92/ToubisLinuxResources.git
	git push -u origin master
