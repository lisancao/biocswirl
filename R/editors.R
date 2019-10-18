# BiocSwirl() R Functions for env setup 


#------------------------------------ EDITORS
#Name: Run Vim
#Description: Runs Vim on the current source file.
#Binding: editInVim
#Interactive: true

#thank god for https://stackoverflow.com/questions/48290952/launching-external-text-editors-from-the-rstudio-editing-window#install packages
install.packages("rstudioapi")

#load libraries
library(rstudioapi)

editInVim <- function()
  rstudioapi::terminalExecute(paste("vim", rstudioapi::getSourceEditorContext()$path))



#---------------------------------- 