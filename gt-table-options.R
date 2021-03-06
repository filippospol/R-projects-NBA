# My gt table theme:
# library(gt)
# library(gtExtras)
# https://themockup.blog/static/gt-cookbook.html
# https://gt.rstudio.com/articles/intro-creating-gt-tables.html

gt() %>% 
  cols_align(align = "center") %>% 
  cols_label() %>%  # old=new
  tab_header(title=md("**Title**"),
             subtitle=html("<div style='color:#8e8e8e;'>Subtitle</div><br/>")) %>% 
  tab_style(style = cell_text(weight = "bold"),
            locations = cells_column_labels(everything()))  %>%  
  gt_img_rows(columns =, 
              height =) %>%
  fmt_percent(columns = ,
              decimals = 1) %>% 
  tab_footnote(footnote = "",
               locations = cells_column_labels()) %>%
  data_color(
    columns = c(FGA:PF),
    colors = scales::col_numeric(
      palette = paletteer::paletteer_d(palette="ggsci::yellow_material") %>%
        as.character(),domain = NULL)) %>%
  tab_source_note(source_note = "") %>% 
  tab_options(data_row.padding = px(1),
              row.striping.background_color = "#eeeeee",
              heading.align = "left",
              heading.title.font.size = 40,
              heading.subtitle.font.size = 20,
              table.font.size = 15,
              table.border.top.color = "transparent",
              # heading.border.bottom.width = px(3),
              # heading.border.bottom.color = "#4c4c4c",
              heading.border.bottom.color = "transparent",
              column_labels.border.bottom.width = px(3),
              column_labels.border.bottom.color = "#4c4c4c",
              table_body.border.bottom.width = px(3),
              table_body.border.bottom.color = "#4c4c4c",
              table.border.bottom.color = "transparent") %>% 
  opt_table_font(font = google_font("Roboto")) %>% 
  opt_row_striping()
