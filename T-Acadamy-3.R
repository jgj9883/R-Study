#install.packages('ggthemes')
library(ggthemes)


kbo2 %>% arrange(-ops) %>% 
  head(10) %>%
  select(이름, 구단, ops) %>%
  ggplot(aes(x=reorder(이름, ops), y=ops, fill=구단)) +
  geom_bar(stat='identity') +
  geom_text(aes(y=ops-.07, label=format(ops, digits=3))) +
  coord_flip() +
  labs(title='2019 프로야구 OPS 10걸', x="", y="") +
  scale_fill_brewer(palette = 'Spectral') +
  theme_economist() +
  theme(legend.position = 'none')


kbo2 %>% arrange(-ops) %>% 
  head(10) %>%
  select(이름, 구단, ops) %>%
  ggplot(aes(x=reorder(이름, ops), y=ops, fill=구단)) +
  geom_bar(stat='identity') +
  geom_text(aes(y=ops-.07, label=format(ops, digits=3))) +
  coord_flip() +
  labs(title='2019 프로야구 OPS 10걸', x="", y="") +
  scale_fill_economist() +
  theme_economist() +
  theme(legend.position = 'none')



#install.packages('showtext')
library('showtext')

font_add_google('Nanum Pen Script', 'nanumpen')

showtext_auto()


kbo2 %>% arrange(-ops) %>% 
  head(10) %>%
  select(이름, 구단, ops) %>%
  ggplot(aes(x=reorder(이름, ops), y=ops, fill=구단)) +
  geom_bar(stat='identity') +
  geom_text(aes(y=ops-.07, label=format(ops, digits=3))) +
  coord_flip() +
  labs(title='2019 프로야구 OPS 10걸', x="", y="") +
  scale_fill_economist() +
  theme_economist() +
  theme(legend.position = 'none',
        text=element_text(family='nanumpen'))


kbo2 %>% arrange(-ops) %>% 
  head(10) %>%
  select(이름, 구단, ops) %>%
  ggplot(aes(x=reorder(이름, ops), y=ops, fill=구단)) +
  geom_bar(stat='identity') +
  geom_text(aes(y=ops-.07, label=format(ops, digits=3)), family='nanumpen', size=7) +
  coord_flip() +
  labs(title='2019 프로야구 OPS 10걸', x="", y="") +
  scale_fill_economist() +
  theme_economist() +
  theme(legend.position = 'none',
        text=element_text(family='nanumpen', size=15))



kbo2 %>% arrange(-ops) %>% 
  head(10) %>%
  select(이름, 구단, ops) %>%
  ggplot(aes(x=reorder(이름, ops), y=ops, fill=구단)) +
  geom_bar(stat='identity') +
  geom_text(aes(y=ops-.07, label=format(ops, digits=3)), family='nanumpen', size=7, color='#FFFFFF') +
  coord_flip() +
  labs(title='2019 프로야구 OPS 10걸', x="", y="") +
  scale_fill_economist() +
  theme_economist() +
  theme(legend.position = 'none',
        text=element_text(family='nanumpen', size=15),
        axis.text.y=element_text(hjust=1))




theme(line, rect, text, title, aspect.ratio, axis.title, axis.title.x,
      axis.title.x.top, axis.title.x.bottom, axis.title.y, axis.title.y.left,
      axis.title.y.right, axis.text, axis.text.x, axis.text.x.top,
      axis.text.x.bottom, axis.text.y, axis.text.y.left, axis.text.y.right,
      axis.ticks, axis.ticks.x, axis.ticks.x.top, axis.ticks.x.bottom,
      axis.ticks.y, axis.ticks.y.left, axis.ticks.y.right, axis.ticks.length,
      axis.ticks.length.x, axis.ticks.length.x.top, axis.ticks.length.x.bottom,
      axis.ticks.length.y, axis.ticks.length.y.left, axis.ticks.length.y.right,
      axis.line, axis.line.x, axis.line.x.top, axis.line.x.bottom, axis.line.y,
      axis.line.y.left, axis.line.y.right, legend.background, legend.margin,
      legend.spacing, legend.spacing.x, legend.spacing.y, legend.key,
      legend.key.size, legend.key.height, legend.key.width, legend.text,
      legend.text.align, legend.title, legend.title.align, legend.position,
      legend.direction, legend.justification, legend.box, legend.box.just,
      legend.box.margin, legend.box.background, legend.box.spacing,
      panel.background, panel.border, panel.spacing, panel.spacing.x,
      panel.spacing.y, panel.grid, panel.grid.major, panel.grid.minor,
      panel.grid.major.x, panel.grid.major.y, panel.grid.minor.x,
      panel.grid.minor.y, panel.ontop, plot.background, plot.title,
      plot.subtitle, plot.caption, plot.tag, plot.tag.position, plot.margin,
      strip.background, strip.background.x, strip.background.y,
      strip.placement, strip.text, strip.text.x, strip.text.y,
      strip.switch.pad.grid, strip.switch.pad.wrap, ..., complete = FALSE,
      validate = TRUE)
