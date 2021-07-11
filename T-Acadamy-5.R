kal <- read.csv('kal.csv') %>% as_tibble
kal


kal %>% gather(공격, 점유율, -세터) 


kal %>% gather(공격, 점유율, -세터)%>%
  ggplot(aes(x=세터, y=점유율, group=공격)) +
  geom_point() +
  geom_line()


kal %>% gather(공격, 점유율, -세터)%>%
  ggplot(aes(x=세터, y=점유율, group=공격)) +
  geom_point() +
  geom_text(aes(label=점유율)) +
  geom_line()


kal %>% gather(공격, 점유율, -세터)%>%
  ggplot(aes(x=세터, y=점유율, group=공격)) +
  geom_point() +
  geom_line() +
  geom_text(aes(label=format(점유율, digits=1)))



kal %>% gather(공격, 점유율, -세터)%>%
  ggplot(aes(x=세터, y=점유율, group=공격)) +
  geom_point() +
  geom_line() +
  geom_text(data=. %>% filter(세터=='유광우'), aes(label=format(점유율, digits=1)))



kal %>% gather(공격, 점유율, -세터)%>%
  ggplot(aes(x=세터, y=점유율, group=공격)) +
  geom_point() +
  geom_line() +
  geom_text(data=. %>% filter(세터=='유광우'), 
            aes(label=paste(공격, format(점유율, digits=1))))



kal %>% gather(공격, 점유율, -세터)%>%
  ggplot(aes(x=세터, y=점유율, group=공격)) +
  geom_point() +
  geom_line() +
  geom_text(data=. %>% filter(세터=='유광우'), 
            aes(label=paste(공격, format(점유율*100, digits=2))), hjust=1.1) +
  geom_text(data=. %>% filter(세터=='한선수'), 
            aes(label=format(점유율*100, digits=1), hjust=-0.2))




kal %>% gather(공격, 점유율, -세터)%>%
  ggplot(aes(x=세터, y=점유율, group=공격, color=공격)) +
  geom_point() +
  geom_line() +
  geom_text(data=. %>% filter(세터=='유광우'), 
            aes(label=paste(공격, format(점유율*100, digits=2))), hjust=1.1) +
  geom_text(data=. %>% filter(세터=='한선수'), 
            aes(label=format(점유율*100, digits=1), hjust=-0.2))



