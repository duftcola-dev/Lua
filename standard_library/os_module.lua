local date = os.date()
print(date)

--Produce a table 

local table_date = os.date("*t")
print(table_date.day.."/"..table_date.month.."/"..table_date.year)

local time_one = os.time()
local time_two = os.time()
local time_df = os.difftime(time_one,time_two)
print(time_df)