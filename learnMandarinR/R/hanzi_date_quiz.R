hanzi_date_quiz <- function(alphabet = "Simplified") {
  # Generate a random Chinese date
  chinese_date <- generate_chinese_date(alphabet)

  # Display the Chinese date and prompt the user to enter the corresponding European date
  cat("What is the European date corresponding to", chinese_date, "? (DD-MM-YYYY)\n")
  cat("Please enter the date in the format 'DD-MM-YYYY' or type 'quit' to quit.\n")
  user_date <- readline()

  # Allow the user to quit the game
  if (tolower(user_date) == "quit") {
    cat("Thanks for playing!\n")
    return()
  }

  # Translate the Chinese date to a European date
  year <- gsub("[^0-9]", "", gsub("[年月日]", "-", chinese_date))
  european_date <- format(as.Date(user_date, "%d-%m-%Y"), "%d-%m-%Y")

  # Check if the user's answer is correct and display the result
  if (european_date == user_date) {
    cat("Correct!\n\n")
  } else {
    cat("Incorrect. The correct date is", european_date, "\n\n")
  }

  # Ask the user if they want to play again
  cat("Do you want to play again? (yes/no)\n")
  play_again <- readline()

  if (tolower(play_again) == "yes") {
    hanzi_date_quiz(alphabet)
  } else {
    cat("Thanks for playing!\n")
  }
}
