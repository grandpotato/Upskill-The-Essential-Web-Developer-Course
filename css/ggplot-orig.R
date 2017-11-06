ggplot(df, aes(as.factor(Age_Bin), Pop_Percentage, fill = Gender)) +
      geom_bar(stat = "identity") +
      scale_y_continuous(breaks=seq(-100,100,5),labels=abs(seq(-100,100,5)),limits = (c(minx,maxx))) +
      scale_x_discrete(labels = paste0(df$Age_Bin, "-", df$Age_Bin + 4)) +
      coord_flip() +
      ylab("Population (%)") +
      xlab("Age") +
      theme_tufte() +
      scale_fill_economist() +
      ggtitle(str_title_case(paste0(input$indicator," cases - ", input$year))) +
      theme(plot.title = element_text(hjust = 0.5))

      dcd