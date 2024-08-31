create table stock_master
(
stock_id varchar(100) NOT NULL,
stock_code varchar(100),
isin_no varchar(100),
exchange varchar(100),
sector varchar(100),
industry varchar(100),
instrument_type varchar(100),
yfinance_code varchar(100),
stock_name varchar(200),
PRIMARY KEY (stock_id)
);

create table bot_master(bot_name varchar(100), start_dt datetime,enabled_flag char(10),end_dt char(10),
broker varchar(100), owner varchar(100), app_id varchar(100), key_id varchar(100),
session_key varchar(100), update_dt datetime default now(),
PRIMARY KEY (bot_name),
);

create table bot_instruments(stock_id varchar(100), bot_name varchar(100), start_dt datetime, 
enabled_flag char(10),end_dt char(10),
update_dt datetime default now(),
PRIMARY KEY (stock_id,bot_name));

create table bot_orders(
order_id varchar(100), order_type varchar(100), order_dt datetime, bot_name varchar(100), stock_id varchar(100),
qty double(30,4), unit_price double(30,4),
update_dt datetime default now(),
PRIMARY KEY (order_id)
);

create table bot_trades(
trade_id varchar(100), trade_type varchar(100), trade_dt datetime, bot_name varchar(100), 
stock_id varchar(100), ref_order_id varchar(100), qty double(30,4), unit_price double(30,4), 
brokerage double(30,4), charges double (30,4), special_charges double(30,4),
update_dt datetime default now(),
PRIMARY KEY (trade_id)
);

