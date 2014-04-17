#!/bin/bash
cd () {
  builtin cd "$@"
  PROMPT_FILES_COUNT=$(ls -a | grep ^.prompt | wc -l)
  README_FILES_COUNT=$(ls -a | grep ^README.md | wc -l)

#  echo "prompt files: $PROMPT_FILES_COUNT"
#  echo "readme files: $README_FILES_COUNT"

  if [ $PROMPT_FILES_COUNT -eq 1 ]
  then
    echo '.prompt: '
    cat .prompt
  elif [ $README_FILES_COUNT -eq 1 ]
  then
    echo 'README.md: '
    more README.md
  fi
}
