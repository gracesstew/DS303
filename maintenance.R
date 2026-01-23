########################################################################
## This is a script for checking and updating my R version
## using the installer package
## We will also look at package versions and install updates (maybe)
## by Grace Stewart
## 23 Jan 2026
########################################################################

## use installR package to update R to latest version

#install.packages("installr")
installr::updater()

sessionInfo()

old.packages()

.libPaths()

packageVersion("ggplot2")
