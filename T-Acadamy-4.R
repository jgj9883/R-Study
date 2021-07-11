#install.packages('waffle')
library(waffle)

w <- c(43, 11, 46)
waffle(w)

waffle(w, rows=5)


waffle(w, colors=c('#e0b151', '#1d93bc', '#2dbbdd'))


w <- c(가=43, 나=11, 다=46)
waffle(w)

waffle(w, legend_pos='bottom')


kovo <- read.csv('kovo.csv') %>% as_tibble
kovo


ggplot(kovo, aes(x=구단, y=퀵오픈)) +
  geom_segment(aes(xend=구단, yend=0))



ggplot(kovo, aes(x=구단, y=퀵오픈)) +
  geom_segment(aes(xend=구단, yend=0)) +
  geom_point(size=5)



ggplot(kovo, aes(x=reorder(구단, 퀵오픈), y=퀵오픈)) +
  geom_segment(aes(xend=구단, yend=0)) +
  geom_point(size=5)


ggplot(kovo, aes(x=reorder(구단, 퀵오픈), y=퀵오픈, color=남녀부)) +
  geom_segment(aes(xend=구단, yend=0)) +
  geom_point(size=5)


ggplot(kovo, aes(x=reorder(구단, 퀵오픈), y=퀵오픈, color=남녀부)) +
  geom_segment(aes(xend=구단, yend=0)) +
  geom_point(size=5) +
  facet_grid(~남녀부)


ggplot(kovo, aes(x=reorder(구단, 퀵오픈), y=퀵오픈, color=남녀부)) +
  geom_segment(aes(xend=구단, yend=0)) +
  geom_point(size=5) +
  facet_grid(~남녀부, scales='free_x')


ggplot(kovo, aes(x=reorder(구단, 퀵오픈), y=퀵오픈, color=남녀부)) +
  geom_segment(aes(xend=구단, yend=0)) +
  geom_point(size=5) +
  coord_flip() +
  facet_grid(~남녀부, scales='free_x')



ggplot(kovo, aes(x=reorder(구단, 퀵오픈), y=퀵오픈, color=남녀부)) +
  geom_segment(aes(xend=구단, yend=0)) +
  geom_point(size=5) +
  coord_flip() +
  facet_grid(남녀부~., scales='free_x')


ggplot(kovo, aes(x=reorder(구단, 퀵오픈), y=퀵오픈, color=남녀부)) +
  geom_segment(aes(xend=구단, yend=0)) +
  geom_point(size=5) +
  coord_flip() +
  facet_grid(남녀부~., scales='free_y')


ggplot(kovo, aes(x=reorder(구단, 퀵오픈), y=퀵오픈, color=남녀부)) +
  geom_segment(aes(xend=구단, yend=0)) +
  geom_point(size=5) +
  coord_flip() +
  labs(x='') +
  facet_grid(남녀부~., scales='free_y')


ggplot(kovo, aes(x=reorder(구단, 퀵오픈), y=퀵오픈, color=남녀부)) +
  geom_segment(aes(xend=구단, yend=0)) +
  geom_point(size=5) +
  scale_color_manual(values=c('darkblue', 'darkred')) +
  coord_flip() +
  labs(x='') +
  facet_grid(남녀부~., scales='free_y')




fifa <- read.csv('fifa.csv') %>% as_tibble
fifa


fifa %>% filter(confederation=='AFC') %>%
  select(country_full, rank) %>%
  group_by(country_full) %>%
  summarise(최저=max(rank), 최고=min(rank)) %>%
  ggplot(aes(x=country_full, y=최고)) +
  geom_point()


fifa %>% filter(confederation=='AFC') %>%
  select(country_full, rank) %>%
  group_by(country_full) %>%
  summarise(최저=max(rank), 최고=min(rank)) %>%
  ggplot(aes(x=reorder(country_full, 최고), y=최고)) +
  geom_point()


fifa %>% filter(confederation=='AFC') %>%
  select(country_full, rank) %>%
  group_by(country_full) %>%
  summarise(최저=max(rank), 최고=min(rank)) %>%
  ggplot(aes(x=reorder(country_full, 최고), y=최고)) +
  geom_point() +
  coord_flip()



fifa %>% filter(confederation=='AFC') %>%
  select(country_full, rank) %>%
  group_by(country_full) %>%
  summarise(최저=max(rank), 최고=min(rank)) %>%
  ggplot(aes(x=reorder(country_full, 최고), y=최고)) +
  scale_y_reverse() +
  geom_point() +
  coord_flip()



fifa %>% filter(confederation=='AFC') %>%
  select(country_full, rank) %>%
  group_by(country_full) %>%
  summarise(최저=max(rank), 최고=min(rank)) %>%
  ggplot(aes(x=reorder(country_full, -최고), y=최고)) +
  scale_y_reverse() +
  geom_point() +
  coord_flip()


fifa %>% filter(confederation=='AFC') %>%
  select(country_full, rank) %>%
  group_by(country_full) %>%
  summarise(최저=max(rank), 최고=min(rank)) %>%
  ggplot(aes(x=reorder(country_full, -최고), y=최고)) +
  scale_y_reverse() +
  geom_point() +
  geom_point(aes(y=최저)) +
  coord_flip()



fifa %>% filter(confederation=='AFC') %>%
  select(country_full, rank) %>%
  group_by(country_full) %>%
  summarise(최저=max(rank), 최고=min(rank)) %>%
  ggplot(aes(x=reorder(country_full, -최고), y=최고)) +
  scale_y_reverse() +
  geom_point() +
  geom_point(aes(y=최저)) +
  geom_segment(aes(xend=reorder(country_full, -최고), yend=최저)) +
  coord_flip()



fifa %>% filter(confederation=='AFC') %>%
  select(country_full, rank) %>%
  group_by(country_full) %>%
  summarise(최저=max(rank), 최고=min(rank)) %>%
  ggplot(aes(x=reorder(country_full, -최고), y=최고)) +
  scale_y_reverse() +
  geom_point() +
  geom_point(aes(y=최저)) +
  geom_segment(aes(xend=reorder(country_full, -최고), yend=최저), arrow=arrow()) +
  coord_flip()


fifa %>% filter(confederation=='AFC') %>%
  select(country_full, rank) %>%
  group_by(country_full) %>%
  summarise(최저=max(rank), 최고=min(rank)) %>%
  ggplot(aes(x=reorder(country_full, -최고), y=최고)) +
  scale_y_reverse() +
  geom_point() +
  geom_point(aes(y=최저)) +
  geom_segment(aes(xend=reorder(country_full, -최고), yend=최저), arrow=arrow(length=unit(0.2, 'cm'))) +
  coord_flip()



fifa %>% filter(confederation=='AFC') %>%
  select(country_full, rank) %>%
  group_by(country_full) %>%
  summarise(최저=max(rank), 최고=min(rank)) %>%
  ggplot(aes(x=reorder(country_full, -최고), y=최고)) +
  scale_y_reverse() +
  geom_point() +
  geom_point(aes(y=최저)) +
  geom_segment(aes(xend=reorder(country_full, -최고), y=최저, yend=최고), arrow=arrow(length=unit(0.2, 'cm'))) +
  coord_flip()



fifa %>% filter(confederation=='AFC') %>%
  select(country_full, rank) %>%
  group_by(country_full) %>%
  summarise(최저=max(rank), 최고=min(rank)) %>%
  ggplot(aes(x=reorder(country_full, -최고), y=최고)) +
  scale_y_reverse() +
  geom_point() +
  geom_point(aes(y=최저)) +
  geom_segment(aes(xend=reorder(country_full, -최고), y=최저-1.5, yend=최고+1.5), arrow=arrow(length=unit(0.2, 'cm')), color='gray50') +
  coord_flip()



fifa %>% filter(country_abrv=='KOR') %>%
  select(country_full, rank) %>%
  group_by(country_full) %>%
  summarise(최저=max(rank), 최고=min(rank))




fifa %>% filter(country_abrv=='JPN') %>%
  select(country_full, rank) %>%
  group_by(country_full) %>%
  summarise(최저=max(rank), 최고=min(rank))


fifa %>% filter(country_abrv=='KOR' & rank==17) %>% 
  select(rank_date)


fifa %>% filter(country_abrv=='KOR') %>%
  ggplot(aes(x=rank_date, y=rank, group=country_abrv)) +
  geom_line()




fifa %>% filter(country_abrv=='KOR') %>%
  ggplot(aes(x=rank_date, y=rank, group=country_abrv)) +
  geom_line() +
  scale_y_reverse()


fifa %>% filter(country_abrv=='KOR') %>%
  ggplot(aes(x=as.Date(rank_date), y=rank, group=country_abrv)) +
  geom_line() +
  scale_y_reverse()




