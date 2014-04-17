#!/bin/bash
cd () {
  builtin cd "$@"
  WELCOME_FILES_COUNT=$(ls -a | grep ^.welcome | wc -l)
  README_FILES_COUNT=$(ls -a | grep ^README.md | wc -l)

  if [ $WELCOME_FILES_COUNT -eq 1 ]
  then
    cat .welcome
  elif [ $README_FILES_COUNT -eq 1 ]
  then
    more README.md
  fi
}
