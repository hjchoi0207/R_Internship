# web_page_data.csv : PageA와 PageB 그룹별로 값이 저장되어있다.

session_times <- read.csv("C:/R/Day5/Day5/data/web_page_data.csv")
head(session_times)

t.test(Time ~ Page, data=session_times,alternative="less") # p-value = 0.1408 귀무