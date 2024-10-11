library("jsonlite")

urls_normal <- c(
    "affiner",
    "bittermelon",
    "bracer",
    "findpython",
    "ggpattern",
    "gridpattern",
    "hexfont"
)
urls_r <- c(
    "argparse",
    "datetimeoffset",
    "getopt",
    "ledger",
    "optparse",
    "xmpdf"
)

urls_other <- list(
    aRt = "https://github.com/nrennie/aRt",
    r.oguelike = "https://github.com/matt-dray/r.oguelike",
    truchet = "https://github.com/paezha/truchet"
)

df_normal <- data.frame(
    package = urls_normal,
    url = paste0("https://github.com/trevorld/", urls_normal)
)
df_r <- data.frame(
    package = urls_r,
    url = paste0("https://github.com/trevorld/r-", urls_r)
)
df_other <- data.frame(
    package = names(urls_other),
    url = unlist(urls_other, use.names = FALSE)
)
df <- rbind(df_normal, df_r, df_other)
jsonlite::write_json(df, "packages.json", pretty = TRUE)
