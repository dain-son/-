#공격성
## 2명일 때
comm_1127 %>% mutate(polislant_2 = case_when(
	polislant=='cons'~'보수',
	polislant=='lib'~'진보',
	polislant=='neutral'~'중도'
)) %>%
	filter(politician %in% c('송영길', '한동훈')) %>%
	filter(polislant != 'neutral') %>%
	ggplot(aes(x=date, y=profanity, group=interaction(polislant_2, politician))) +
	geom_line(aes(color=interaction(polislant_2, politician)))+
	geom_point(aes(color=interaction(polislant_2, politician))) +
	scale_color_manual(name = '댓글 작성자의 성향 및 정치인 구분', values=c('indianred','darkblue','red','blue')) +
	labs(title='한동훈 & 송영길 댓글 공격성', subtitle='2023-10-01 ~ 2023-11-25',
				x ='날짜', y = '공격성') +
	scale_x_date(breaks = '1 weeks') +
	facet_wrap(~polislant_2) +
	theme_minimal()+
	theme(text = element_text(family = "AppleGothic"),
				plot.title = element_text(hjust=0.5),
				plot.subtitle = element_text(hjust=0.5),
				axis.text.x=element_text(angle=30))


## 1명일 때
comm_1120 %>% filter(politician == '윤석열' & (date>=as_date('2023-10-01'))) %>%
	ggplot(aes(x=date, y=profanity, group=polislant)) +
	geom_line(aes(color=polislant))+
	geom_point(aes(color=polislant)) +
	scale_color_manual('댓글 작성자의 정치성향',
	values=c('red','blue','grey')) +
	labs(title='윤석열 댓글 공격성', subtitle='2023-10-01 ~ 2023-11-18',
				x='날짜', y='공격성') +
	scale_x_date(breaks = '1 weeks') +
	scale_y_continuous(limits=c(0,45)) +
	theme_minimal()+
	theme(text = element_text(family = "AppleGothic"),
				plot.title = element_text(hjust=0.5),
				plot.subtitle = element_text(hjust=0.5))
