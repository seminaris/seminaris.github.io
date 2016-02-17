library(knitr)

strike_out_until <- Sys.Date() - 1
date <- seq(as.Date('2015-11-09'),
                    as.Date('2015-12-25'),
                    by = 1)
Date <- format(date, '%B %d, %Y')
Price <- seq(3800, 1500, by = -50)

Date[date <= strike_out_until] <- 
  paste0('<del>', Date[date <= strike_out_until], '</del>')

savings <- 3800 - Price
savings[date <= strike_out_until] <- 
  paste0('<del>', savings[date <= strike_out_until], '</del>')



Price[date <= strike_out_until] <- 
  paste0('<del>', Price[date <= strike_out_until], '</del>')


df <- data.frame(Date, Price, savings)
names(df)[3] <- 'Savings (compared to retail)'

kable(df)
