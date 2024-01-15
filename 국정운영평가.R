library(tidyverse)
library(readxl)
library(lubridate)

gj_1127 <- read.delim(pipe('pbpaste'), header=TRUE)
jd_1127 <- read.delim(pipe('pbpaste'), header=TRUE)

gj_1127$date <- as_date(gj_1127$date)
jd_1127$date <- as_date(jd_1127$date)

#국정지지도
#지금까지는 8월 1일부터 최신 날짜까지로 했고!
#부제목 달 때 꼭 마지막 날짜 언제인지 확인해서 적어주세욤
gj_1127 %>% filter((method=='total') & (date>=as_datetime('2023-08-01'))) %>%
	ggplot(aes(x=date, group=type)) +
	geom_line(aes(y=mean, color=type)) +
	geom_line(aes(y=lower, color=type)) +
	geom_line(aes(y=upper, color=type)) +
	geom_point(aes(y=mean, color=type)) +
	labs(title='국정 지지도', subtitle='2023-08-01 ~ 2023-11-24',
				x='날짜', y='응답 비율') +
	scale_color_manual('국정 운영 평가',values=c('blue','red')) +
	scale_x_date(breaks = '1 weeks') +
	theme_minimal()+
	theme(text = element_text(family = "AppleGothic"),
				plot.title = element_text(hjust=0.5),
				plot.subtitle = element_text(hjust=0.5))
