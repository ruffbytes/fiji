
SHOW VARIABLES LIKE "secure_file_priv";
# Remove path of secure_file_priv to path with data in C:\ProgramData\MySQL\MySQL Server 8.0\my.ini
# make it look something like this:
# secure-file-priv=""

LOAD DATA INFILE 'E:/MyProjects/Cboe/UnderlyingOptionsEODCalcs_2016-06-01.csv' 
INTO TABLE quotes 
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES (
underlying_symbol,
quote_date,
root,
expiration,
strike,
option_type,
open,
high,
low,
close,
trade_volume,
bid_size_1545,
bid_1545,
ask_size_1545,
ask_1545,
underlying_bid_1545,
underlying_ask_1545,
implied_underlying_price_1545,
active_underlying_price_1545,
implied_volatility_1545,
delta_1545,
gamma_1545,
theta_1545,
vega_1545,
rho_1545,
bid_size_eod,
bid_eod,
ask_size_eod,
ask_eod,
underlying_bid_eod,
underlying_ask_eod,
vwap,
open_interest,
delivery_code);
