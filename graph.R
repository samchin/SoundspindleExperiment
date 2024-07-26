source(soundspindle.R)

# sleep_stage_correct
ggplot(df_long, aes(x = as.factor(correctStage), y =isCorrect, fill = as.factor(sound))) + 
  geom_bar(stat = "summary", fun = "mean", position = "dodge") + 
  labs(title = "Average Correct Responses \nby Sleep Stage",
       y = "Likelihood of Correct Response") +
  scale_x_discrete("Sleep Stage", labels=c("0" = "WAKE", "1" = "N1", 
                                           "2" = "N2", "3" = "N3", "5" = "REM")) + 
  scale_fill_discrete("Condition", labels = c("0" = "No Sound", "1" = "Sound")) + 
  theme(plot.title = element_text(size=22),
        axis.title.x = element_text(size = 20),
        axis.title.y = element_text(size = 20),
        legend.title = element_text(size = 18),
        legend.text = element_text(size = 15),
        axis.text = element_text(size = 18, color = "grey30"))

