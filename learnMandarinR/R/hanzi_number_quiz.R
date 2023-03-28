hanzi_number_quiz <- function(alphabet = "Simplified") {
  score <- 0
  num_map <- c("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "30", "40", "50", "60", "70", "80", "90", "100")
  if (alphabet == "Simplified") {
    char_list <- c("零", "一", "二", "三", "四", "五", "六", "七", "八", "九", "十", "十一", "十二", "十三", "十四", "十五", "十六", "十七", "十八", "十九", "二十", "三十", "四十", "五十", "六十", "七十", "八十", "九十", "百")
  } else {
    char_list <- c("零", "壹", "貳", "參", "肆", "伍", "陸", "柒", "捌", "玖", "拾", "拾壹", "拾貳", "拾參", "拾肆", "拾伍", "拾陸", "拾柒", "拾捌", "拾玖", "貳拾", "參拾", "肆拾", "伍拾", "陸拾", "柒拾", "捌拾", "玖拾", "壹佰")
  }

  cat("Translate the following Hanzi character to English:\n")

  repeat {
    target_char <- sample(char_list, 1)
    target_num <- match(target_char, char_list) - 1
    player_num <- readline(paste("What is '", target_char, "' in English? "))
    if (as.character(player_num) == num_map[target_num + 1]) {
      cat("Correct!\n\n")
      score <- score + 1
    } else {
      cat("Incorrect. The correct answer is '", num_map[target_num + 1], "'.\n\n", sep="")
      break
    }
  }

  cat("Game over. Your total score is ", score, ".", sep="")
}
