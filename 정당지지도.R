
#정당 지지도_전체
#얘도 마지막 날짜 확인!
jd_1127 %>% filter((method=='total') & (date>=as_datetime('2023-08-01'))) %>%
	ggplot(aes(x=date, group=type)) +
	geom_line(aes(y=mean, color=type)) +
	geom_line(aes(y=lower, color=type)) +
	geom_line(aes(y=upper, color=type)) +
	geom_point(aes(y=mean, color=type)) +
	labs(title='정당 지지도', subtitle='2023-08-01 ~ 2023-11-24',
				x='날짜', y='지지율') +
	scale_color_manual('정당 구분', values=c('red','blue','yellow3')) +
	scale_x_date(breaks = '1 weeks') +
	scale_y_continuous(limits=c(0,45))+
	theme_minimal()+
	theme(text = element_text(family = "AppleGothic"),
				plot.title = element_text(hjust=0.5),
				plot.subtitle = element_text(hjust=0.5))
	
#아래는, 선 겹쳐 보이면 디자인하기 어렵다고 하셔서 정당별로 따로따로 그려서 pdf 뽑아드린 코드입니당!

#국힘
jd_1127 %>% filter((method=='total') & (date>=as_datetime('2023-08-01'))) %>%
	filter(type=='국민의힘') %>%
	ggplot(aes(x=date, group=type)) +
	geom_line(aes(y=mean, color=type)) +
	geom_line(aes(y=lower, color=type)) +
	geom_line(aes(y=upper, color=type)) +
	geom_point(aes(y=mean, color=type)) +
	labs(title='정당 지지도', subtitle='2023-08-01 ~ 2023-10-28',
				x='날짜', y='지지율') +
	scale_color_manual('정당 구분', values=c('red')) +
	scale_x_date(breaks = '1 weeks') +
	scale_y_continuous(limits=c(0,45))+
	theme_minimal()+
	theme(text = element_text(family = "AppleGothic"),
				plot.title = element_text(hjust=0.5),
				plot.subtitle = element_text(hjust=0.5))
	

#민주
jd_1127 %>% filter((method=='total') & (date>=as_datetime('2023-08-01'))) %>%
	filter(type=='더불어민주당') %>%
	ggplot(aes(x=date, group=type)) +
	geom_line(aes(y=mean, color=type)) +
	geom_line(aes(y=lower, color=type)) +
	geom_line(aes(y=upper, color=type)) +
	geom_point(aes(y=mean, color=type)) +
	labs(title='정당 지지도', subtitle='2023-08-01 ~ 2023-10-28',
				x='날짜', y='지지율') +
	scale_color_manual('정당 구분', values=c('blue')) +
	scale_x_date(breaks = '1 weeks') +
	scale_y_continuous(limits=c(0,45))+
	theme_minimal()+
	theme(text = element_text(family = "AppleGothic"),
				plot.title = element_text(hjust=0.5),
				plot.subtitle = element_text(hjust=0.5))
			

#정의
jd_1127 %>% filter((method=='total') & (date>=as_datetime('2023-08-01'))) %>%
	filter(type=='정의당') %>%
	ggplot(aes(x=date, group=type)) +
	geom_line(aes(y=mean, color=type)) +
	geom_line(aes(y=lower, color=type)) +
	geom_line(aes(y=upper, color=type)) +
	geom_point(aes(y=mean, color=type)) +
	labs(title='정당 지지도', subtitle='2023-08-01 ~ 2023-10-28',
		x='날짜', y='지지율') +
	scale_color_manual('정당 구분', values=c('yellow3')) +
	scale_x_date(breaks = '1 weeks') +
	scale_y_continuous(limits=c(0,45))+
	theme_minimal()+
	theme(text = element_text(family = "AppleGothic"),
				plot.title = element_text(hjust=0.5),
				plot.subtitle = element_text(hjust=0.5))
