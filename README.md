# Introduction to `ggmemes`
 
# Political Compass Format

Suppose you have a dataframe df, and want to create a political compass based on it. With `gg_politicalcompass()`, doing this can be done in only a couple lines of code. First, you need to initialize a ggplot object, shown below:

```
gg_politicalcompass(data = df)
```

This results in the following output:
![bare_output](images/bare_example_plot.png)

To add data to this plot, you can use the pre-existing `ggplot` function, `geom_point`:

```
gg_politicalcompass(data = data) +
  geom_point(aes(x = x,
                 y = y,
                 size = value))
```

This results in the following output:
![example_output](images/example_plot.png)
