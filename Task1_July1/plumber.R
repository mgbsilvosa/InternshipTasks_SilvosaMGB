library(plumber)

# Run in console to run:
# pr("plumber.R") %>% pr_run(port=8000)

#* Echo back the input
#* @param msg The message to echo
#* @get /echo
function(msg = "") {
    list(msg = paste0("The message is: '", msg, "'"))
}

#* Plot a barplot
#* @png
#* @get /plot
function() {
    barplot(8:1, col = "lightblue")
}

#* Return the sum of two numbers
#* @param a The first number to add
#* @param b The second number to add
#* @post /sum
function(a,b) {
    as.numeric(a) + as.numeric(b)
}
