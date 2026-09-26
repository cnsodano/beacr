- make sure I can build dev container on my machine. Make sure I can use renv s.t. all of my code works correctly, and I don't have any issues chekcing renv::status, etc. May require redoign and init and pulling from lock file into a renv/library/ folder. that's ok. 
    resources: 
    - install w/ pak renv into the .Rlibs folder 

    "containerEnv": {
    "RENV_PATHS_LIBRARY": "${containerWorkspaceFolder}/.Rlibs"
    }

    then check renv::status()  and 
    Sys.getenv("RENV_PATHS_LIBRARY")
    renv::paths$library()   # should resolve to the same path

- try to build it on GitHub codespace, figure out what renv issue is. 


- [ ] make sure that pkgdown build site now has the right hexstrtoraw exmaple. the issue was i wasn't runnign devtools::document()
- [ ] overhaul the getting started page to make it much simpler language. link to a more techie getting started page. change the text outputted to be either 1) simpler language or 2) default to quiet mode (varying levels: default is level 1 but you can set to level 0 which is no output unless error. level 2 is the mode it currently is in now) 
    - [ ] examples on pkgdown page for get_seed, reset_seed, etc


- [ ] set_seed function to do all in one fell swoop 
- [ ] install formatR pkg for dev dependency for formatting rmarkdown chunks 


remove all public #_RETURN's like in the NISTBEacon doc page 
- change my 'usage' for the functions to have an example output as well