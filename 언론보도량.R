#월요일 아침마다 달라고 요구하기
#시점 언제부터로 할지 선배께 여쭤보기

comm_1127 <- read_csv('여론조사_스토브리그/1127_comments_metric.csv')
news_1127 <- read_csv('여론조사_스토브리그/1127_news_metric.csv')

comm_1127 %>% arrange(desc(date)) %>% View() #0926-1125
news_1127 %>% arrange(desc(date)) %>% View() #0926-1125

#보도량
news_1127 %>% filter(politician %in% c('한동훈','송영길')) %>%
	ggplot(aes(x=date, y=ratio, group=politician)) +
	geom_line(aes(color=politician))+
	geom_point(aes(color=politician)) +
	scale_color_manual(name = '정치인 구분', values=c('blue','indianred')) +
	labs(title='한동훈 & 송영길 언론보도 추이', subtitle='2023-10-01 ~ 2023-11-25',
				x ='날짜', y = '언론 보도량') +
	scale_x_date(breaks = '1 weeks') +
	theme_minimal()+
	theme(text = element_text(family = "AppleGothic"),
				plot.title = element_text(hjust=0.5),
				plot.subtitle = element_text(hjust=0.5))
