# Run this file with the Source button in RStudio.
# It renders the Quarto site, stages changes, commits, and pushes to GitHub.

run <- function(command, args = character()) {
  result <- system2(command, args, stdout = TRUE, stderr = TRUE)
  cat(paste(result, collapse = "\n"), "\n")
  if (!identical(attr(result, "status"), NULL) && attr(result, "status") != 0) stop("Command failed: ", command, call. = FALSE)
}

run("quarto", "render")
run("git", c("add", "."))

status <- system2("git", "status", stdout = TRUE)
if (!any(grepl("Changes to be committed", status))) {
  message("Nothing new to publish. The site rendered successfully.")
} else {
  message_text <- readline("Commit message: ")
  if (!nzchar(trimws(message_text))) stop("Publishing cancelled: a commit message is required.", call. = FALSE)
  run("git", c("commit", "-m", shQuote(message_text)))
  run("git", "push")
  message("Published to GitHub. Netlify will deploy this update automatically.")
}
