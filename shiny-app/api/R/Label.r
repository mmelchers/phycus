# Haplotype Frequency Curation Service
#
# Allows to store and return haplotype frequency data
#
# OpenAPI spec version: 1.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' Label Class
#'
#' @field value 
#' @field typeOfLabel 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Label <- R6::R6Class(
  'Label',
  public = list(
    `value` = NULL,
    `typeOfLabel` = NULL,
    initialize = function(`value`, `typeOfLabel`){
      if (!missing(`value`)) {
        stopifnot(is.character(`value`), length(`value`) == 1)
        self$`value` <- `value`
      }
      if (!missing(`typeOfLabel`)) {
        stopifnot(is.character(`typeOfLabel`), length(`typeOfLabel`) == 1)
        self$`typeOfLabel` <- `typeOfLabel`
      }
    },
    toJSON = function() {
      LabelObject <- list()
      if (!is.null(self$`value`)) {
        LabelObject[['value']] <- self$`value`
      }
      if (!is.null(self$`typeOfLabel`)) {
        LabelObject[['typeOfLabel']] <- self$`typeOfLabel`
      }

      LabelObject
    },
    fromJSON = function(LabelJson) {
      LabelObject <- jsonlite::fromJSON(LabelJson)
      if (!is.null(LabelObject$`value`)) {
        self$`value` <- LabelObject$`value`
      }
      if (!is.null(LabelObject$`typeOfLabel`)) {
        self$`typeOfLabel` <- LabelObject$`typeOfLabel`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "value": %s,
           "typeOfLabel": %s
        }',
        self$`value`,
        self$`typeOfLabel`
      )
    },
    fromJSONString = function(LabelJson) {
      LabelObject <- jsonlite::fromJSON(LabelJson)
      self$`value` <- LabelObject$`value`
      self$`typeOfLabel` <- LabelObject$`typeOfLabel`
    }
  )
)
