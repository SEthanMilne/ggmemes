#' Title
#'
#' @param data A dataframe
#' @param x The x-axis variable
#' @param y The y-axis variable
#' @param size Optional size aesthetic variable
#' @param scale Scale of plot. Default is -1 to 1
#' @param top Top title
#' @param bottom Bottom title
#' @param left Left title
#' @param right Right title
#'
#' @return A political compass ggplot object
#' @export
#'
#' @examples
#'
gg_politicalcompass <-
  function(data,
           x,
           y,
           size = 1,
           scale = 1,
           top = "Authoritarian",
           bottom = "Libertarian",
           left = "Left",
           right = "Right"
  ) {
    ggplot(data, aes(x = x, y = y, size = size)) +
      scale_x_continuous(limits = c(-1.2*scale, 1.2*scale)) +
      scale_y_continuous(limits = c(-1.2*scale, 1.2*scale)) +
      theme(
        axis.text = element_blank(),
        axis.ticks = element_blank(),
        axis.title = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        aspect.ratio = 1,
        legend.position = "none",
        panel.background = element_rect(fill = "white")
      ) +
      geom_rect(aes(
        ymin = -1*scale,
        ymax = 0,
        xmin = -1*scale,
        xmax = 0
      ),
      fill = rgb(
        r = 205,
        g = 228,
        b = 189,
        maxColorValue = 255
      )) +
      geom_rect(aes(
        ymin = -1*scale,
        ymax = 0,
        xmin = 0,
        xmax = 1*scale
      ),
      fill = rgb(
        r = 244,
        g = 246,
        b = 177,
        maxColorValue = 255
      )) +
      geom_rect(aes(
        ymin = 0,
        ymax = 1*scale,
        xmin = 0,
        xmax = 1*scale
      ),
      fill = rgb(
        r = 161,
        g = 217,
        b = 246,
        maxColorValue = 255
      )) +
      geom_rect(aes(
        ymin = 0,
        ymax = 1*scale,
        xmin = -1*scale,
        xmax = 0
      ),
      fill = rgb(
        r = 241,
        g = 190,
        b = 188,
        maxColorValue = 255
      )) +
      geom_segment(aes(
        x = 0,
        xend = 1*scale,
        y = 0,
        yend = 0
      ),
      size = 0.5,
      arrow = arrow(length = unit(0.5, "cm"))) +
      geom_segment(aes(
        x = 0,
        xend = -1*scale,
        y = 0,
        yend = 0
      ),
      size = 0.5,
      arrow = arrow(length = unit(0.5, "cm"))) +
      geom_segment(aes(
        x = 0,
        xend = 0,
        y = 0,
        yend = 1*scale
      ),
      size = 0.5,
      arrow = arrow(length = unit(0.5, "cm"))) +
      geom_segment(aes(
        x = 0,
        xend = 0,
        y = 0,
        yend = -1*scale
      ),
      size = 0.5,
      arrow = arrow(length = unit(0.5, "cm"))) +
      geom_text(label = top,
                y = (1.15*scale),
                x = 0,
                size = 6) +
      geom_text(
        label = bottom,
        y = (-1.15*scale),
        x = 0,
        size = 6
      ) +
      geom_text(
        label = right,
        y = 0,
        x = (1.15*scale),
        size = 6,
        angle = -90
      ) +
      geom_text(
        label = left,
        y = 0,
        x = (-1.15*scale),
        size = 6,
        angle = 90
      ) +
      geom_point()
  }

