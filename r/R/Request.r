# GraphHopper Directions API
# 
# You use the GraphHopper Directions API to add route planning, navigation and route optimization to your software. E.g. the Routing API has turn instructions and elevation data and the Route Optimization API solves your logistic problems and supports various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API.
# 
# OpenAPI spec version: 1.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Request Class
#'
#' @field vehicles 
#' @field vehicle_types 
#' @field services 
#' @field shipments 
#' @field relations 
#' @field algorithm 
#' @field objectives 
#' @field cost_matrices 
#' @field configuration 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Request <- R6::R6Class(
  'Request',
  public = list(
    `vehicles` = NULL,
    `vehicle_types` = NULL,
    `services` = NULL,
    `shipments` = NULL,
    `relations` = NULL,
    `algorithm` = NULL,
    `objectives` = NULL,
    `cost_matrices` = NULL,
    `configuration` = NULL,
    initialize = function(`vehicles`, `vehicle_types`, `services`, `shipments`, `relations`, `algorithm`, `objectives`, `cost_matrices`, `configuration`){
      if (!missing(`vehicles`)) {
        stopifnot(is.list(`vehicles`), length(`vehicles`) != 0)
        lapply(`vehicles`, function(x) stopifnot(R6::is.R6(x)))
        self$`vehicles` <- `vehicles`
      }
      if (!missing(`vehicle_types`)) {
        stopifnot(is.list(`vehicle_types`), length(`vehicle_types`) != 0)
        lapply(`vehicle_types`, function(x) stopifnot(R6::is.R6(x)))
        self$`vehicle_types` <- `vehicle_types`
      }
      if (!missing(`services`)) {
        stopifnot(is.list(`services`), length(`services`) != 0)
        lapply(`services`, function(x) stopifnot(R6::is.R6(x)))
        self$`services` <- `services`
      }
      if (!missing(`shipments`)) {
        stopifnot(is.list(`shipments`), length(`shipments`) != 0)
        lapply(`shipments`, function(x) stopifnot(R6::is.R6(x)))
        self$`shipments` <- `shipments`
      }
      if (!missing(`relations`)) {
        stopifnot(is.list(`relations`), length(`relations`) != 0)
        lapply(`relations`, function(x) stopifnot(R6::is.R6(x)))
        self$`relations` <- `relations`
      }
      if (!missing(`algorithm`)) {
        stopifnot(R6::is.R6(`algorithm`))
        self$`algorithm` <- `algorithm`
      }
      if (!missing(`objectives`)) {
        stopifnot(is.list(`objectives`), length(`objectives`) != 0)
        lapply(`objectives`, function(x) stopifnot(R6::is.R6(x)))
        self$`objectives` <- `objectives`
      }
      if (!missing(`cost_matrices`)) {
        stopifnot(is.list(`cost_matrices`), length(`cost_matrices`) != 0)
        lapply(`cost_matrices`, function(x) stopifnot(R6::is.R6(x)))
        self$`cost_matrices` <- `cost_matrices`
      }
      if (!missing(`configuration`)) {
        stopifnot(R6::is.R6(`configuration`))
        self$`configuration` <- `configuration`
      }
    },
    toJSON = function() {
      RequestObject <- list()
      if (!is.null(self$`vehicles`)) {
        RequestObject[['vehicles']] <- lapply(self$`vehicles`, function(x) x$toJSON())
      }
      if (!is.null(self$`vehicle_types`)) {
        RequestObject[['vehicle_types']] <- lapply(self$`vehicle_types`, function(x) x$toJSON())
      }
      if (!is.null(self$`services`)) {
        RequestObject[['services']] <- lapply(self$`services`, function(x) x$toJSON())
      }
      if (!is.null(self$`shipments`)) {
        RequestObject[['shipments']] <- lapply(self$`shipments`, function(x) x$toJSON())
      }
      if (!is.null(self$`relations`)) {
        RequestObject[['relations']] <- lapply(self$`relations`, function(x) x$toJSON())
      }
      if (!is.null(self$`algorithm`)) {
        RequestObject[['algorithm']] <- self$`algorithm`$toJSON()
      }
      if (!is.null(self$`objectives`)) {
        RequestObject[['objectives']] <- lapply(self$`objectives`, function(x) x$toJSON())
      }
      if (!is.null(self$`cost_matrices`)) {
        RequestObject[['cost_matrices']] <- lapply(self$`cost_matrices`, function(x) x$toJSON())
      }
      if (!is.null(self$`configuration`)) {
        RequestObject[['configuration']] <- self$`configuration`$toJSON()
      }

      RequestObject
    },
    fromJSON = function(RequestJson) {
      RequestObject <- jsonlite::fromJSON(RequestJson)
      if (!is.null(RequestObject$`vehicles`)) {
        self$`vehicles` <- lapply(RequestObject$`vehicles`, function(x) {
          vehiclesObject <- Vehicle$new()
          vehiclesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          vehiclesObject
        })
      }
      if (!is.null(RequestObject$`vehicle_types`)) {
        self$`vehicle_types` <- lapply(RequestObject$`vehicle_types`, function(x) {
          vehicle_typesObject <- VehicleType$new()
          vehicle_typesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          vehicle_typesObject
        })
      }
      if (!is.null(RequestObject$`services`)) {
        self$`services` <- lapply(RequestObject$`services`, function(x) {
          servicesObject <- Service$new()
          servicesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          servicesObject
        })
      }
      if (!is.null(RequestObject$`shipments`)) {
        self$`shipments` <- lapply(RequestObject$`shipments`, function(x) {
          shipmentsObject <- Shipment$new()
          shipmentsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          shipmentsObject
        })
      }
      if (!is.null(RequestObject$`relations`)) {
        self$`relations` <- lapply(RequestObject$`relations`, function(x) {
          relationsObject <- Relation$new()
          relationsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          relationsObject
        })
      }
      if (!is.null(RequestObject$`algorithm`)) {
        algorithmObject <- Algorithm$new()
        algorithmObject$fromJSON(jsonlite::toJSON(RequestObject$algorithm, auto_unbox = TRUE))
        self$`algorithm` <- algorithmObject
      }
      if (!is.null(RequestObject$`objectives`)) {
        self$`objectives` <- lapply(RequestObject$`objectives`, function(x) {
          objectivesObject <- Objective$new()
          objectivesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          objectivesObject
        })
      }
      if (!is.null(RequestObject$`cost_matrices`)) {
        self$`cost_matrices` <- lapply(RequestObject$`cost_matrices`, function(x) {
          cost_matricesObject <- CostMatrix$new()
          cost_matricesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          cost_matricesObject
        })
      }
      if (!is.null(RequestObject$`configuration`)) {
        configurationObject <- Configuration$new()
        configurationObject$fromJSON(jsonlite::toJSON(RequestObject$configuration, auto_unbox = TRUE))
        self$`configuration` <- configurationObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "vehicles": [%s],
           "vehicle_types": [%s],
           "services": [%s],
           "shipments": [%s],
           "relations": [%s],
           "algorithm": %s,
           "objectives": [%s],
           "cost_matrices": [%s],
           "configuration": %s
        }',
        lapply(self$`vehicles`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`vehicle_types`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`services`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`shipments`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`relations`, function(x) paste(x$toJSON(), sep=",")),
        self$`algorithm`$toJSON(),
        lapply(self$`objectives`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`cost_matrices`, function(x) paste(x$toJSON(), sep=",")),
        self$`configuration`$toJSON()
      )
    },
    fromJSONString = function(RequestJson) {
      RequestObject <- jsonlite::fromJSON(RequestJson)
      self$`vehicles` <- lapply(RequestObject$`vehicles`, function(x) Vehicle$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`vehicle_types` <- lapply(RequestObject$`vehicle_types`, function(x) VehicleType$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`services` <- lapply(RequestObject$`services`, function(x) Service$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`shipments` <- lapply(RequestObject$`shipments`, function(x) Shipment$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`relations` <- lapply(RequestObject$`relations`, function(x) Relation$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      AlgorithmObject <- Algorithm$new()
      self$`algorithm` <- AlgorithmObject$fromJSON(jsonlite::toJSON(RequestObject$algorithm, auto_unbox = TRUE))
      self$`objectives` <- lapply(RequestObject$`objectives`, function(x) Objective$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`cost_matrices` <- lapply(RequestObject$`cost_matrices`, function(x) CostMatrix$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      ConfigurationObject <- Configuration$new()
      self$`configuration` <- ConfigurationObject$fromJSON(jsonlite::toJSON(RequestObject$configuration, auto_unbox = TRUE))
    }
  )
)