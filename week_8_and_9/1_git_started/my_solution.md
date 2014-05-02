I worked on this by myself.

## Basic Git Commands
Define the following commands and describe how they work/what they do.  


#### add
"git add #filename" tells Git to start tracking a file--it stages it for further action.

#### branch
"git branch #nameofbranch" tells Git to create a new branch for our feature or project

#### checkout
"git checkout #nameofbranch" tells Git to switch branches, including switching back to the master

#### clone
"git clone #url" clones a remote repository to the local environment

#### commit
"git commit -m #'message'" takes tracked files in a particular branch and takes a "snapshot" of them in their current state

#### fetch
"git fetch" goes to the remote repository, syncs, but does not merge it with the local version

#### log
"git log" provides a summary of recent changes to the branch

#### merge
"git merge #branchname" merges the specified branch with the current branch

#### pull
"git pull" fetches and syncs the local repository with the remote repository

#### push
"git push" updates the origin/master to be at the same state as the local repository

#### reset
"git reset" reverts the branch to an earlier commit

#### rm
"git rm" removes the file or "-r" folder

#### status
"git status" shows which files are tracked or untracked

## Git Workflow

#### Push files to a remote repository
1) Make a repo on GitHub
2) Create a local folder with the same name
3) Access the local folder
4) Git initialize the local folder OR use git clone <#path>
5) Check status for tracked/untracked files
6) Add untracked files
7) Commit files
8) Add remote origin (link to GitHub repo)
9) Push to remote repo

#### Fetch changes
1) Access local folder of branch you are interested in viewing changes to
2) If you haven't, check remote origin
3) git fetch <#remotename> OR for just a particular branch, git fetch <#remotename> <#branchname>
4) Use checkout or log <#remotename> to view commits

#### Commit locally
1) Make a repo on GitHub
2) Create a local folder with the same name
3) Access the local folder
4) Git initialize the local folder OR use git clone <#path>
5) Check status for tracked/untracked files
6) Add untracked files
7) Commit files
8) Don't push to remote repo quite yet. . .

## Reflect
This exercise was extremely helpful in pushing me towards using Terminal for all my Git needs. I used the Lauren Orsini Readwrite articles, as well as the CodeSchool Try Git and Git Real, to get a handle on what was going on. I noted all the different commands and it will no doubt take time and practice to have them be second-nature, but have a good understanding of commands like status, add, commit, push, and pull. It will definitely take some effort to force myself NOT to use the desktop application, but I can certainly see how using Terminal saves time and has way more options.