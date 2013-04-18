# before you head to a standup: list the logs of what you did in the last 24 hours
alias gstandup='git log --author `git config user.email` --abbrev-commit --since yesterday --pretty=format:"%C(red)%h%Creset:%C(yellow)%d%Creset %s %C(bold green)(%cr)%Creset"'

# a nicely colored log in graph format showing who did what
alias gplog='git log --author `git config user.email` --graph --abbrev-commit --date=local --pretty=format:"%C(red)%h%Creset:%C(yellow)%d%Creset %s %C(bold green)(%cr)%Creset %C(blue)<%an>%Creset"'

# A remote (and tracked) branch is on GitHub / a private (and topic) branch is local, to integrate changes between branches, we merge or rebase.
# By default a pull on a tracked branch performs a fetch then a merge; i.e. topic changes will automatically merge with other peoples' commits
# and this will generate commits in less useful order (imho) in a project history. A git pull --rebase fetches the tracked branch, resets the HEAD
# of your topic branch to the tracked HEAD, and replays your topic commits, avoiding noisy merge messages and maintaining a linear history
alias gpure='git pull --rebase'

# show a single letter that represents the change type and report how far ahead of the remote branch you are
alias gst='git status -sb'

# before a push do an interactive rebase on your unpushed commits for review, rewording messages, and chaining related commits together
gready='git rebase -i @{u}'
