library(plotly)
df_daily <- read.csv('C:/Users/Documents/Rara/Dataset/daily_productivity.csv')
df_daily
 
fig <- plot_ly(alpha =0.8, df_daily,
               x = ~df_daily$vsn_setup_date,
               y = ~df_daily$qtyf20,
               type = 'bar',
               text = df_daily$qtyf20,
               textfont = list(color = "white"),
               textposition = 'auto',
               marker = list(color = '#FD565D'),
               name = 'Final Check',
               hoverinfo = "none"
)
fig %>% layout(xaxis = list(title = 'Date',
                            side = "bottom",
                            type = "category",
                            showgrid = TRUE,
                            showline = TRUE,
                            zeroline = TRUE,
                            linecolor = "#000000",
                            linewidth = 1),
               yaxis = list(title = 'Qty Tray ID',
                            side = "left",
                            type = "linear",
                            showgrid = TRUE,
                            showline = TRUE,
                            zeroline = FALSE,
                            linecolor = "#000000",
                            linewidth = 1),
               barmode = 'group')
