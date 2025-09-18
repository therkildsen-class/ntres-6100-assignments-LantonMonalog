install.packages("tidyverse")
library(tidyverse)

mpg
?mpg

?cars

View(mpg)
head (cars)
tail(cars)

ggplot(data=mpg, mapping = aes(x = displ, y = hwy))+
  geom_point(mapping = aes(color = class, size = cyl),
             shape = 1)+
  geom_smooth()+
facet_wrap(~ year, nrow = 2)

ggplot(data=mpg, mapping = aes(x = displ, y = hwy))+
  geom_point(mapping = aes(color = class, size = cyl),
             shape = 1)+
  geom_smooth()+
  facet_wrap(~ class, nrow = 2)+
  theme_gray()

#these don't work so well
ggplot(data=mpg)+
  geom_point(mapping = aes(x = cyl, y =hwy))

ggplot(data=mpg)+
  geom_bar(mapping = aes(x = class, y = drv))

?geom_point
?geom_bar
