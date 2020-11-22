# Brady Lange
# Worksheet 4/
# 3/1/18
# R Objects and Values

# 1.)
# Creating a list with names and different data types
my_list <- list(matrix(-5:6, 3, 4), letters[1:18], c(TRUE, FALSE, TRUE, FALSE, TRUE, TRUE))
names(my_list) <- c("num_e1", "roman", "is_invested")
my_list

# 2.)
# Printing out my_list elements within roman
my_list$roman

# 3.) 
# Coercing my_list elements within roman
as.logical(my_list$num_e1)
as.character(my_list$num_e1)

# 4.)
# Using dollar sign notation to print out elements in the first and third rows, all columns in num_el
my_list$num_e1[c(1, 3), ]


# 5.)
# Like 4 but using double bracket notation
my_list[[1]][c(1, 3), ]

# 6.)
# Recycling data 
d <- c(1:20)
as.double(d)
d[c(2, 4, 9, 12)] <- c(0, 99)
d

# 7.)
# Presenting code that will not work with recycling
d[c(2, 4, 9, 12)] <- c(0, 99, 100)

# 8.)
# Creating a data frame with 3 columns and names
df <- data.frame(emp_id = c(1:20), last_name = c(letters[1:20]), part_time = c(as.logical(1:20)))
df

# 9.)
# Adding a new column that contains all 0's
df$values <- seq(0, 1, 20)
df

# 10.)
# Setting the elements in even-numbered rows in the column values to 1
df$values[seq(from = 1, to = dim(df)[1], by = 2)] <- 1
df

# 11.)
# Adding a column pay_rate that are random numbers from a uniform distribution, betweeen 10 and 25
df$pay_rate <- runif(20, 10, 25)
df

# Given the following declarations:
w <- c(-1, 0, 1)
x <- c(5, 15)
y <- "February"
z <- c("Monday", "Tuesday", "Friday")

# 12.)
# Testing if w is positive
w > 0

# 13.)
# Testing if x is greater than 10 and less than 20
x > 10 & x < 20

# 14.)
# Testing if y is the word 'February'
y == "February"

# 15.)
# Testing if every value in z is a day of the week
all(z %in% c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"))

# 16.)
# Extracting trees from rainforest package  with the species name "Acacia mabellae"
idx <- rainforest$species == "Acacia mabellae"
rainforest[idx, ]

# 17.)
# Repeating 16 but with subset function
subset(rainforest, species == "Acacia mabellae")

# 18.)
# From rainforest, extract all trees that are either "Acacia mebellae" or "Acmena smithii"
subset(rainforest, species %in% c("Acacia mabellae", "Acmena smithii"))

# 19.) 
# Using ais, extract all people who row
subset(ais, sport %in% "Row")

# 20.)
# Using ais, output the names of the different sports that people play
unique(ais$sport)

# 21.)
# Using ais, extract the data for the rowers, the netballers, and the tennis players
subset(ais, sport %in% c("Row", "Netball", "Tennis"))

# 22.)
# Using ais, extract the data for people who have a bmi over 20.0 and are male
subset(ais, bmi > 21 & sex == "m")

# 23.)
# Using ais, extract the data for people who height is greater than or equal to 180 cm, whose weight
# is less than 80, and who do not play B-ball
subset(ais, ht >= 180 & wt < 80 & sport != "B_Ball")
