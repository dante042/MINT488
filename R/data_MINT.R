# Install necessary package
install.packages("plotly")

# Load library
library(plotly)

# Define nodes with colors (custom colors for nodes)
nodes <- list(
  label = c("Afghanistan", "Morocco", "Pakistan", "Bangladesh", "Guinea",
            "CMR", "EMR", "WAAR", "WMR", "WBR"),
  color = c('rgba(44, 160, 44, 0.8)', 'rgba(255, 127, 14, 0.8)',
            'rgba(31, 119, 180, 0.8)', 'rgba(214, 39, 40, 0.8)',
            'rgba(148, 103, 189, 0.8)', 'rgba(44, 160, 44, 0.8)',
            'rgba(255, 127, 14, 0.8)', 'rgba(31, 119, 180, 0.8)',
            'rgba(214, 39, 40, 0.8)', 'rgba(148, 103, 189, 0.8)')
)

# Define links (flows between nodes)
links <- list(
  source = c(0, 1, 2, 3, 4),  # indices of source nodes
  target = c(5, 6, 7, 8, 9),  # indices of target nodes
  value = c(306, 242, 186, 138, 135),  # values for flow thickness
  color = c('rgba(44, 160, 44, 0.6)', 'rgba(255, 127, 14, 0.6)',
            'rgba(31, 119, 180, 0.6)', 'rgba(214, 39, 40, 0.6)',
            'rgba(148, 103, 189, 0.6)')  # Transparent link colors to simulate gradient
)

# Create the Sankey plot
fig <- plot_ly(
  type = "sankey",
  arrangement = "snap",
  node = list(
    label = nodes$label,
    pad = 15,
    thickness = 20,
    color = nodes$color,  # Apply node colors
    line = list(color = "black", width = 0.5)
  ),
  link = list(
    source = links$source,
    target = links$target,
    value = links$value,
    color = links$color  # Assign specific colors to simulate gradient
  )
)

# Display the figure
fig
