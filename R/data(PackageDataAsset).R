#' data(PackageDataAsset) Function
#' 
#' This function downloads the following data asset .zip, unzips it, and then removes the .zip file.
#' 
#' @param no input
#' @examples
#' data(PackageDataAsset)

data(PackageDataAsset) <- function(PackageDataAsset)
{
  url <- "https://www.dropbox.com/s/5mzc60tbh09ew49/lalonde%20nsw.csv.zip"
  
  # clean URL if from dropbox
  url <- gsub(url, pattern="https://www.dropbox.com",
              replace="https://dl.dropboxusercontent.com")
  url <- gsub(url, pattern="www.dropbox.com", replace="dl.dropboxusercontent.com")
  url <- gsub(url, pattern="dropbox.com", replace="dl.dropboxusercontent.com")

  # download
  download.file(url, destfile = "./asset.zip")

  # unzip into folder
  unzip("./asset.zip",
        junkpaths = T,
        exdir = "./")
  
  # remove zip file
  file.remove("./asset.zip")
}
