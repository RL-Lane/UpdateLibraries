# List of packages to check and upgrade

# full file path to the CSV is recommended because of work directory issues in R.
# Windows Users: remember to turn backslashes into forward slashes in the file path.

# You may need to run this several times because some installations require R to restart.
# Rerun this until everything is updated.  It's not a perfect tool, but it can get a new installation up to speed.

csv_file <- "C:/xxx/R_libs.csv"
csv_data <- read.csv(csv_file, header = FALSE)

# Convert each row of csv_data into an item in a list without column names
#list_data <- apply(csv_data, MARGIN = 1, as.list)
list_data <- readLines(csv_file)

packages_to_install <-list_data
print(list_data)

# Loop over the packages and check if they are up-to-date
for (package in packages_to_install) {
  if (package %in% installed.packages()) {
    # If the package is already installed, check if it is up-to-date
    current_version <- packageVersion(package)
    latest_version <- available.packages()[package, "Version"]
    if (current_version < latest_version) {
      # If the package is not up-to-date, upgrade it
      install.packages(package, dependencies = TRUE)
      cat(paste(package, "has been upgraded.\n"))
    } else {
      cat(paste(package, "is up-to-date.\n"))
    }
  } else {
    # If the package is not installed, install it
    install.packages(package, dependencies = TRUE)
    cat(paste(package, "has been installed.\n"))
  }
}
