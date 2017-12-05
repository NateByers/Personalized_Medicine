# devtools::install_github("NateByers/pm.helpers")

library(dplyr)
library(pm.helpers)
library(bigrquery)
project <- "tensile-axiom-167413"
test_text <- query_exec("SELECT * FROM [tensile-axiom-167413:cosmic.test_text]",
                        project = project, useLegacySql = FALSE)
test_variants <- query_exec("SELECT * FROM [tensile-axiom-167413:cosmic.test_variants]",
                            project = project, useLegacySql = FALSE)
training_text <- query_exec("SELECT * FROM [tensile-axiom-167413:cosmic.training_text]",
                            project = project, useLegacySql = FALSE)
training_variants <- query_exec("SELECT * FROM [tensile-axiom-167413:cosmic.training_variants]",
                                project = project, useLegacySql = FALSE)