如何忽略提交
  在项目跟目录下编辑.gitignore文件，然后git add .gitignore,然后提交即可

如何新建分支，以及在分支上进行开发。
  项目init后，会有一个master分支，在推送到远程时，如果git push -u origin master，在远程就会创建一个origin/master分支，如果
git push -u origin develop，就会在远程创建一个origin/develop分支。

git clone后，在本地新建一个develop分支，利用git flow进行分支修改。
git checkout -b develop origin/develop
