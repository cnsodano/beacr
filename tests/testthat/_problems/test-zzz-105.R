# Extracted from test-zzz.R:105

# setup ------------------------------------------------------------------------
library(testthat)
test_env <- simulate_test_env(package = "beacr", path = "..")
attach(test_env, warn.conflicts = FALSE)

# test -------------------------------------------------------------------------
it(" has data directory already built", {
    # Makes sure one load has already occurred
    .setup_second_load()

    curr_data_dir <- .get_option("data_dir_location")
    expect_true(fs::dir_exists(curr_data_dir))

    # Load in a fresh R session
    default_data_dir <- callr::r(
      func = function(exterior_data_dir_path) {
        library(testthat)

        expect_true(fs::dir_exists(exterior_data_dir_path))
        devtools::load_all() #!_RETURN In future, update to load not from source

        default_data_dir <- .get_option("data_dir_location")
        expect_equal(exterior_data_dir_path, default_data_dir)

        return(default_data_dir)
      },
      args = list(exterior_data_dir_path = curr_data_dir),
      cmdargs = "--vanilla"
    )

    # Assert
    expect_true(fs::dir_exists(default_data_dir))
  })
