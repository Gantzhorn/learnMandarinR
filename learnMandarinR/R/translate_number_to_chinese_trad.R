translate_number_to_chinese_trad <- function(number) {
  # Define a lookup table for the Chinese characters for numbers 0 to 9
  chinese_numbers <- c("零", "壹", "貳", "參", "肆", "伍", "陸", "柒", "捌", "玖")

  # Translate the number to Chinese characters
  if (number == 0) {
    return(chinese_numbers[1])
  } else {
    digits <- strsplit(as.character(number), "")[[1]]
    chinese_digits <- sapply(digits, function(digit) chinese_numbers[as.numeric(digit) + 1])
    return(paste(chinese_digits, collapse = ""))
  }
}
