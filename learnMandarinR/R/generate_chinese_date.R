generate_chinese_date <- function(alphabet) {
  year <- sample(1900:2100, 1)
  month <- sample(1:12, 1)
  if (month == 2) {
    # Check if it's a leap year
    leap_year <- ((year %% 4 == 0) & (year %% 100 != 0)) | (year %% 400 == 0)
    if (leap_year) {
      day <- sample(1:29, 1)
    } else {
      day <- sample(1:28, 1)
    }
  } else if (month %in% c(4, 6, 9, 11)) {
    day <- sample(1:30, 1)
  } else {
    day <- sample(1:31, 1)
  }
  if(alphabet == "Simplified"){
    translate_number_to_chinese <- function(number){translate_number_to_chinese_simplified(number)}
  }
  else{
    translate_number_to_chinese <- function(number){translate_number_to_chinese_trad(number)}
  }
  chinese_year <- translate_number_to_chinese(year)
  chinese_month <- translate_number_to_chinese(month)
  chinese_day <- translate_number_to_chinese(day)
  chinese_date <- paste0(chinese_year, "年", chinese_month, "月", chinese_day, "日")
  return(chinese_date)
}
