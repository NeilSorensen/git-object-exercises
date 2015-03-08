# git-object-exercises
A series of exercises to help understand the git object model, and explore some of the cool features it provides.

For a simple explanation of the git object model, see http://www.gitguys.com/topics/all-git-object-types-blob-tree-commit-and-tag/.

Each exercise is a different branch of this repository. The relevant portions of the initial state of the exercises are included in the Samples folder in master. Each exercise has a number of changes to the repository described, which you will add as a single commit. Draw the change you expect to see, then use `git cat-file -p` to check your work.

Exercises
=========

Simple edit (simple-edit)
------------------------

In this first exercise, we'll change a single file and see how it changes the git object graph. Be sure to write down your expected state before using cat-file to check your work.

  1. Checkout the simple-edit branch
  2. Open 'file-to-edit.txt' in your editor of choice
  3. Use `git commit -am` to add your changes to your repository
  4. Starting from the diagram in simple-edit.png, draw the changes you just made to the git object graph
  5. Check your diagram, using `git cat-file simple-edit` to look at the commit at the head of the simple-edit branch


Rename (simple-rename)
----------------------

In this exercise, we'll rename a single file without making any other edits.  Once again, make sure to write down how you expect the object state to change before using cat-file to check the results.

  1. Checkout the simple-rename branch
  2. Rename 'file-to-rename.txt' to 'renamed.txt'
  3. Use `git add -A` and then `git commit -m` to add your changes to your repository
  4. Starting from the diagram in simple-rename.png, draw the changes you just made to the git object graph
  5. Check your diagram, using `git cat-file simple-rename` to inspect the commit at the head of the simple-rename branch


Edit a file in a deep sub-directory (directory-edit)
----------------------------------------------------

In this exercise, we'll change a single file in a deeply nested sub-directory.

  1. Checkout the directory-edit branch
  2. Edit deep/sample/directory/structure/file.txt
  3. Use `git commit -am` to add your changes to your repository
  4. Starting from the diagram in directory-edit.png, draw the changes you just made to the git object graph
  5. Check your diagram, using `git cat-file directory-edit` to inspect the commit at the head of the directory-edit branch

Consider the performance implications of the way git handles directories.  What benefits and drawbacks does this cause?


Merge without conflicts (simple-merge)
--------------------------------------

In this exercise, we'll perform a simple merge with no conflicts.  Merging is one of two strategies git supports for combining the changes from two different branches.

  1. Checkout the simple-merge branch
  2. Use `git merge simple-merge-a` to bring in the changes from the simple-merge-a branch
  3. Starting from the diagram in simple-merge.png, draw the changes you just made to the git object graph
  4. Mark which commits are at the head of both simple-merge and simple-merge-a after the merge 
  5. Check your diagram, using `git cat-file simple-merge` to inspect the commit at the head of the simple-merge branch


Merge with conflicts (merge-conflicts)
--------------------------------------

In this exercise, we'll perform a merge with a simple merge conflict.  Before starting, make sure your mergetool is configured in git.

  1. Checkout the merge-conflicts branch
  2. Use `git merge merge-conflicts-a` to bring in the changes from the merge-conflicts a branch
  3. Use `git mergetool` to resolve the merge conflicts (the final file should read 'a man, a plan, a canal, panama'
  4. Use `git commit` to add your merged file to your repository
  5. Starting from the diagram in merge-conflicts.png, draw the changes you just made to the git commit object graph
  6. Mark which commits are at the head of both merge-conflicts and merge-conflicts-a
  7. Check your diagram


Rebase (simple-rebase)
----------------------

In this exercise, we'll perform a simple rebase with no conflicts.  Rebase is the other of the two strategies for sharing work across branches.

  1. Checkout the simple-rebase branch
  2. Use `git rebase rebase-master simple-rebase` to add the changes from simple-rebase to the rebase-master branch
  3. Starting from the diagram in simple-rebase.png, draw the changes you just made to the git object graph.
  4. Mark which commits are at the head of both rebase-master and simple-rebase
  5. Check your diagram
  6. What will happen if you use `git merge simple-rebase` on rebase-master?


Squash (squash)
---------------

In this exercise, we'll use interactive rebase to reduce the number of commits in a local branch before applying them to master. This allows you to take advantage of git's ability to quickly make local commits to save state, while limiting the number of commits that you share.

  1. Checkout the simple-squash branch
  2. Use `git rebase -i HEAD~3`
  3. Change 'pick' to 'squash' for all the commits except the first
  4. Save and quit the editor
  5. Save and quit the modified commit message editor
  6. Starting from the diagram in simple-squash.png, draw the changes you just made to the git object graph.
  7. Check your diagram

Interactive rebase works the same way when rebasing on to a different branch.
