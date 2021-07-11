library(tidyverse)

kbo <- read.csv('kbo.csv')
head(kbo)


kbo <- as_tibble(kbo)
kbo


kbo %>% mutate(타율=안타/타수)



kbo %>% mutate(타율=안타/타수) %>%
  select(이름, 타율)


kbo %>% mutate(타율=안타/타수) %>%
  select(이름, 타율) %>%
  arrange(타율)


kbo %>% mutate(타율=안타/타수) %>%
  select(이름, 타율) %>%
  arrange(desc(타율))



kbo %>% mutate(타율=안타/타수) %>%
  select(이름, 타율) %>%
  arrange(-타율)



kbo %>% mutate(타율=안타/타수) %>%
  select(이름, 구단, 타율) %>%
  filter(구단=='키움') %>%
  arrange(-타율)



kbo %>% group_by(구단) %>%
  summarise(안타=sum(안타), 타수=sum(타수))



kbo %>% group_by(구단) %>%
  summarise(안타=sum(안타), 타수=sum(타수), 타율=안타/타수)




kbo %>% group_by(구단) %>%
  summarise(안타=sum(안타), 타수=sum(타수), 타율=안타/타수) %>%
  arrange(-타율)




kbo %>% mutate(타율=안타/타수, 
                 출루율=(안타+볼넷+사구)/(타수+볼넷+사구+희생플라이), 
                 장타력=총루타/타수,
                 ops=출루율+장타력) -> kbo2


kbo2 %>% arrange(-ops)



kbo2 %>% arrange(-ops) %>% 
  head(10) %>%
  select(이름, ops)



kbo2 %>% arrange(-ops) %>% 
  head(10) %>%
  select(이름, ops) %>%
  ggplot(aes(x=이름, y=ops)) +
  geom_bar()
