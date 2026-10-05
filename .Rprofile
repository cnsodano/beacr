# # Create/Register project package library to isolate project-specific installs
# # This avoids the issues that come with using renv and usethis//devtools while
# # still offering package isolation.
# # Must come before sourcing renv/activate.R so that renv will install into the new custom library (#!_RETURN)
# local_lib <- file.path(getwd(), ".Rlibs")
# if (!dir.exists(local_lib)) {
#   dir.create(local_lib)
# }
# .libPaths(local_lib) # replaces entirely, no fallback to user/system lib

# # source("renv/activate.R")

library(devtools) # Ensures devtools is attached whenever I start a R interactive session (for development)
library(usethis)
