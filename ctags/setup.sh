#!/bin/bash

brew install ctags

profile_script='
--recurse=yes
--exclude=.git
--exclude=BUILD
--exclude=.svn
--exclude=*.js
--exclude=vendor/*
--exclude=node_modules/*
--exclude=db/*
--exclude=log/*
--exclude=\*.min.\*
--exclude=\*.swp
--exclude=\*.bak
--exclude=\*.pyc
--exclude=\*.class
--exclude=\*.sln
--exclude=\*.csproj
--exclude=\*.csproj.user
--exclude=\*.cache
--exclude=\*.dll
--exclude=\*.pdb

--langdef=typescript
--langmap=typescript:.ts.tsx
--regex-typescript=/^[ \t]*(export[ \t]+([a-z]+[ \t]+)?)?class[ \t]+([a-zA-Z0-9_$]+)/\3/c,classes/
--regex-typescript=/^[ \t]*(declare[ \t]+)?namespace[ \t]+([a-zA-Z0-9_$]+)/\2/c,modules/
--regex-typescript=/^[ \t]*(export[ \t]+)?module[ \t]+([a-zA-Z0-9_$]+)/\2/n,modules/
--regex-typescript=/^[ \t]*(export[ \t]+)?(default[ \t]+)?(async[ \t]+)?function(\*)?[ \t]+([a-zA-Z0-9_$]+)/\5/f,functions/
--regex-typescript=/^[ \t]*export[ \t]+(var|let|const)[ \t]+([a-zA-Z0-9_$]+)/\2/v,variables/
--regex-typescript=/^[ \t]*(var|let|const)[ \t]+([a-zA-Z0-9_$]+)[ \t]*=[ \t]*function[ \t]*[*]?[ \t]*\(\)/\2/v,varlambdas/
--regex-typescript=/^[ \t]*(export[ \t]+)?(public|protected|private)?[ \t]*(static[ \t]+)?(abstract[ \t]+)?(((get|set|readonly)[ \t]+)|(async[ \t]+[*]*[ \t]*))?(#?[a-zA-Z1-9_$]+)[ \t]*[:(]/\9/m,members/
--regex-typescript=/^[ \t]*(export[ \t]+)?interface[ \t]+([a-zA-Z0-9_$]+)/\2/i,interfaces/
--regex-typescript=/^[ \t]*(export[ \t]+)?type[ \t]+([a-zA-Z0-9_$]+)/\2/t,types/
--regex-typescript=/^[ \t]*(export[ \t]+)?enum[ \t]+([a-zA-Z0-9_$]+)/\2/e,enums/
--regex-typescript=/^[ \t]*import[ \t]+([a-zA-Z0-9_$]+)/\1/I,imports/

--langdef=Go
--langmap=Go:.go
--regex-Go=/func([ \t]+\([^)]+\))?[ \t]+([a-zA-Z0-9_]+)/\2/d,func/
--regex-Go=/var[ \t]+([a-zA-Z_][a-zA-Z0-9_]+)/\1/d,var/
--regex-Go=/type[ \t]+([a-zA-Z_][a-zA-Z0-9_]+)/\1/d,type/
'

echo "$profile_script" >> ~/.ctags
