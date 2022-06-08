# GIT-FLOW


## The repo

 - https://github.com/petervanderdoes/gitflow-avh

## Installation

- https://github.com/petervanderdoes/gitflow-avh/wiki/Installation

### Manjaro 

```
pamac install gitflow-avh
```

## HOW TO USE IT ? 

```
'Examples to start
git flow feature start "#854"
git flow bugfix start "#855"
git flow release start "1.6.9"
git flow hotfix start "1.6.9-1"

'Feature workflow
git flow feature start "#854"
[... your modifications ...]
git add . && git commit -m "your commit message"
git flow feature publish
git flow feature finish

'Bugfix workflow
git flow bugfix start "#855"
[... your modifications ...]
git add . && git commit -m "your commit message"
git flow bugfix publish
git flow bugfix finish

'Release workflow
git flow release start "1.6.9"
[... your modifications ...]
git add . && git commit -m "your commit message"
git flow release publish
git flow release finish

'Hotfix workflow
git flow hotfix start "1.6.9-1"
[... your modifications ...]
git add . && git commit -m "your commit message"
git flow hotfix publish
git flow hotfix finish
```

## BONUS :

Use aliases in 0. __BONUS__

```
gfrs "1.6.9" && gfrp && gfrf
```


