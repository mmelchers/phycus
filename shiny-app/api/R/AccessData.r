# Haplotype Frequency Curation Service
#
# Allows to store and return haplotype frequency data
#
# OpenAPI spec version: 1.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' AccessData Class
#'
#' @field typeOfAccess 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AccessData <- R6::R6Class(
  'AccessData',
  public = list(
    `typeOfAccess` = NULL,
    initialize = function(`typeOfAccess`){
      if (!missing(`typeOfAccess`)) {
        stopifnot(is.character(`typeOfAccess`), length(`typeOfAccess`) == 1)
        self$`typeOfAccess` <- `typeOfAccess`
      }
    },
    toJSON = function() {
      AccessDataObject <- list()
      if (!is.null(self$`typeOfAccess`)) {
        AccessDataObject[['typeOfAccess']] <- self$`typeOfAccess`
      }

      AccessDataObject
    },
    fromJSON = function(AccessDataJson) {
      AccessDataObject <- jsonlite::fromJSON(AccessDataJson)
      if (!is.null(AccessDataObject$`typeOfAccess`)) {
        self$`typeOfAccess` <- AccessDataObject$`typeOfAccess`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "typeOfAccess": %s
        }',
        self$`typeOfAccess`
      )
    },
    fromJSONString = function(AccessDataJson) {
      AccessDataObject <- jsonlite::fromJSON(AccessDataJson)
      self$`typeOfAccess` <- AccessDataObject$`typeOfAccess`
    }
  )
)
