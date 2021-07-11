kbo2 %>% arrange(-ops) %>% 
  head(10) %>%
  select(이름, ops) %>%
  ggplot(aes(x=이름, y=ops)) +
  geom_bar(stat='identity')


kbo2 %>% arrange(-ops) %>% 
  head(10) %>%
  select(이름, ops) %>%
  ggplot(aes(x=reorder(이름, ops), y=ops)) +
  geom_bar(stat='identity')


kbo2 %>% arrange(-ops) %>% 
  head(10) %>%
  select(이름, ops) %>%
  ggplot(aes(x=reorder(이름, -ops), y=ops)) +
  geom_bar(stat='identity')



kbo2 %>% arrange(-ops) %>% 
  head(10) %>%
  select(이름, ops) %>%
  ggplot(aes(x=reorder(이름, -ops), y=ops)) +
  geom_bar(stat='identity') +
  coord_flip()


kbo2 %>% arrange(-ops) %>% 
  head(10) %>%
  select(이름, ops) %>%
  ggplot(aes(x=reorder(이름, ops), y=ops)) +
  geom_bar(stat='identity') +
  coord_flip()

kbo2 %>% arrange(-ops) %>% 
  head(10) %>%
  select(이름, 구단, ops) %>%
  ggplot(aes(x=reorder(이름, ops), y=ops, fill=구단)) +
  geom_bar(stat='identity') +
  coord_flip()



kbo2 %>% arrange(-ops) %>% 
  head(10) %>%
  select(이름, 구단, ops) %>%
  ggplot(aes(x=reorder(이름, ops), y=ops, fill=구단)) +
  geom_bar(stat='identity') +
  coord_flip() +
  scale_fill_manual(values=c('red', 'orange', 'yellow', 'green', 'blue', 'navy', 'purple'))



kbo2 %>% arrange(-ops) %>% 
  head(10) %>%
  select(이름, 구단, ops) %>%
  ggplot(aes(x=reorder(이름, ops), y=ops, fill=구단)) +
  geom_bar(stat='identity') +
  coord_flip() +
  scale_fill_brewer(palette = 'Spectral')


kbo2 %>% arrange(-ops) %>% 
  head(10) %>%
  select(이름, 구단, ops) %>%
  ggplot(aes(x=reorder(이름, ops), y=ops, fill=구단)) +
  geom_bar(stat='identity') +
  geom_text(aes(label=ops)) +
  coord_flip() +
  scale_fill_brewer(palette = 'Spectral')



kbo2 %>% arrange(-ops) %>% 
  head(10) %>%
  select(이름, 구단, ops) %>%
  ggplot(aes(x=reorder(이름, ops), y=ops, fill=구단)) +
  geom_bar(stat='identity') +
  geom_text(aes(label=format(ops, digits=3))) +
  coord_flip() +
  scale_fill_brewer(palette = 'Spectral')




kbo2 %>% arrange(-ops) %>% 
  head(10) %>%
  select(이름, 구단, ops) %>%
  ggplot(aes(x=reorder(이름, ops), y=ops, fill=구단)) +
  geom_bar(stat='identity') +
  geom_text(aes(y=ops-.07, label=format(ops, digits=3))) +
  coord_flip() +
  scale_fill_brewer(palette = 'Spectral')



kbo2 %>% arrange(-ops) %>% 
  head(10) %>%
  select(이름, 구단, ops) %>%
  ggplot(aes(x=reorder(이름, ops), y=ops, fill=구단)) +
  geom_bar(stat='identity') +
  geom_text(aes(y=ops-.07, label=format(ops, digits=3))) +
  coord_flip() +
  labs(title='2019 프로야구 OPS 10걸', x="") +
  scale_fill_brewer(palette = 'Spectral')



kbo2 %>% arrange(-ops) %>% 
  head(10) %>%
  select(이름, 구단, ops) %>%
  ggplot(aes(x=reorder(이름, ops), y=ops, fill=구단)) +
  geom_bar(stat='identity') +
  geom_text(aes(y=ops-.07, label=format(ops, digits=3))) +
  coord_flip() +
  labs(title='2019 프로야구 OPS 10걸', x="", y="") +
  scale_fill_brewer(palette = 'Spectral')


kbo2 %>% arrange(-ops) %>% 
  head(10) %>%
  select(이름, 구단, ops) %>%
  ggplot(aes(x=reorder(이름, ops), y=ops, fill=구단)) +
  geom_bar(stat='identity') +
  geom_text(aes(y=ops-.07, label=format(ops, digits=3))) +
  coord_flip() +
  labs(title='2019 프로야구 OPS 10걸', x="", y="") +
  scale_fill_brewer(palette = 'Spectral') +
  theme(legend.position = 'none')


kbo2 %>% arrange(-ops) %>% 
  head(10) %>%
  select(이름, 구단, ops) %>%
  ggplot(aes(x=reorder(이름, ops), y=ops, fill=구단)) +
  geom_bar(stat='identity') +
  geom_text(aes(y=ops-.07, label=format(ops, digits=3))) +
  coord_flip() +
  labs(title='2019 프로야구 OPS 10걸', x="", y="") +
  scale_fill_viridis_d() +
  theme(legend.position = 'none')


kbo2 %>% arrange(-ops) %>% 
  head(10) %>%
  select(이름, 구단, ops) %>%
  ggplot(aes(x=reorder(이름, ops), y=ops, fill=구단)) +
  geom_bar(stat='identity') +
  geom_text(aes(y=ops-.07, label=format(ops, digits=3))) +
  coord_flip() +
  labs(title='2019 프로야구 OPS 10걸', x="", y="") +
  scale_fill_viridis_d(direction=-1) +
  theme(legend.position = 'none')


kbo2 %>% arrange(-ops) %>% 
  head(10) %>%
  select(이름, 구단, ops) %>%
  ggplot(aes(x=reorder(이름, ops), y=ops, fill=구단)) +
  geom_bar(stat='identity') +
  geom_text(aes(y=ops-.07, label=format(ops, digits=3))) +
  coord_flip() +
  labs(title='2019 프로야구 OPS 10걸', x="", y="") +
  scale_fill_viridis_d(direction=-1, option='magma') +
  theme(legend.position = 'none')





