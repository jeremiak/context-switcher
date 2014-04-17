# Context switcher

## Purpose

Checks to see if there is a .prompt file in the directory or a README.md and outputs the contents to the shell.

The original idea came from the context switching required when taking a look at a project after a bit of time off. This way, you can store important information such as what the keys are and such, or current state, in a .prompt or just keep a great README.md going

## Installation

This is a simple bash function that overloads the cd() function. Download the file, put it somewhere and then make sure to include
`source {{ PATH_TO_WHERE_YOU_PUT_CD.SH }}` inside of your `.bash_profile`

Or you can give it a test whirl, if you're feeling totally trusting and crazy:
`git clone https://github.com/jeremiak/context-switcher && cd context-switcher && source ./cd.sh && cd .`
