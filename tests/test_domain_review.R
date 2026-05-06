source("R/domain_review.R")

item <- list(signal=78, slack=40, drag=10, confidence=87)
stopifnot(domain_review_score(item) == 253)
stopifnot(domain_review_lane(item) == "ship")
