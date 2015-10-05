for(a in letters) {
  if(a %in% c('a','e','l','o','u')) {
    print(a)
  }
}

temperature = read.csv('weather_data.csv', encoding = 'UTF-8', stringsAsFactors = FALSE)
str(temperature)
#library(dplyr)
temperature$date %>% as.Date("%Y-%m-%d")
temperature2 = mutate(temperature, dateAsDate = as.Date(date, "%Y-%m-%d"))
temperature2
seoul_temp = temperature[temperature$location == '서울',]
seoul_temp
seoul_temp = filter(temperature, location == '서울')

#t() is to transpose
summarise(iris, mean(Sepal.Width))
summarise(iris, mean(Sepal.Length))
group_by(iris, Species) %>% 
  summarise(max(Petal.Width), min(Petal.Width)) %>% 
  plot()
#arrange()

US_Population = read.csv('NC-EST2014-AGESEX-RES.csv', encoding = 'UTF-8')
mutate(US_Population, AGE_sec = floor(AGE / 10) * 10) %>% 
  group_by(AGE_sec) %>% 
  summarise(mean(AGE))
