#!/bin/sh

travis   compile --skip-version-check   --skip-completion-check $*  |    dos2unix
