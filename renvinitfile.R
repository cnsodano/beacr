renv::init(
  settings = list(
    r.version = "4.5.2",
    use.cache = FALSE, # forces to install locally
    vcs.ignore.library = FALSE # ensures library gets checked in to git
  )
)
