PRIO
- [ ] making sure I can build and push and deploy/change the github pkg and pkgdown site, and its still downloadable
- [ ] updating an FAQ site / etc (MAKE SURE I REFERENCE MY OBS PROJ SITE TO KNOW WHAT I SHOULD DO NEXT)


LOW PRIO
- [ ] find a way to run the tests in the terminal that skips the output
- [ ] ensure ?beacr and etc works 
- [ ] switch to radian in devcontainer.json
- [ ] redownload pkgs with "--with-keep-source" for debugging stepping into library code? 



TESTS
- [ ] how to do this "simulate loading/installing beacr for the first time in a tempdir and sep R process using callr" 



LOW PRIO:
- [ ] for the 'creates data dir' test what I should do is IN A TEMP DIR, load it (i may have to append the path to the outside location in order to load it but then do that) and then check for new dir, put the expectation IN THE WITHTEMPDIR BLOCK!
- [ ] add vscDebugger to container build process
- [ ] vscDebugg