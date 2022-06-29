drop database if exists voucher_db;
create database voucher_db;
use voucher_db;

-- instances
create table starbucks_mis(
    ssn varchar(11),
    id varchar(9),
    tin varchar(9),
    fname varchar(100),
    lname varchar(100),
    patronym varchar(100),
    birth_date varchar(10),
    unemp_card_num varchar(16),
    unemp_card_status varchar(8),
    unemp_duration varchar(4),
    primary key(ssn)
);

create table voucher(
    ssn varchar(11),
    id varchar(9),
    tin varchar(9),
    fname varchar(100),
    lname varchar(100),
    patronym varchar(100),
    birth_date varchar(10),
    unemp_card_num varchar(16),
    unemp_duration varchar(4),
    voucherCode varchar(16),
    primary key(ssn)
);


-- inserts
INSERT INTO `starbucks_mis` (`ssn`, `id`, `tin`, `fname`, `lname`, `patronym`, `birth_date`, `unemp_card_num`, `unemp_card_status`, `unemp_duration`)VALUES
('12346411100', '123456789', '294795129', 'John', 'Doe', 'Tim', '1997', '1234567812345678', 'active', '2'),
('69507655055', '890737933', '650471828', 'Hilary', 'Ouse', 'Piff', '2000', '8581226040047478', 'active', '2'),
('16273813476', '650605702', '579596810', 'Richard', 'Tea', 'Ameter', '1998', '8552556936372455', 'active', '2'),
('18717165135', '984165198', '949477456', 'Demeter', 'Carissa', 'Brandon', '1994', '4678542115438546', 'active', '8'),
('25259629183', '315696751', '555164381', 'Inverness', 'McKenzie', 'Abraham', '1997', '3536671072001553', 'active', '2'),
('62361028840', '756942468', '014045020', 'Nigel', 'Flint', 'Dylan', '1982', '4465287222878172', 'active', '2'),
('71408232456', '488152868', '980466705', 'Alan', 'Fresco', 'Richard', '1983', '3912290362023814', 'inactive', '2'),
('07521063785', '285224258', '136231325', 'Douglas', 'Lyphe', 'Gideon', '1989', '8398642912296309', 'inactive', '2'),
('28018823034', '216637318', '140478416', 'Abraham', 'Pigeon', 'Elanor', '1990', '4068993505126001', 'inactive', '2'),
('52465849751', '512956155', '512956155', 'Mary', 'Poppins', 'David', '1964', '5487596542135654', 'inactive', '6');

INSERT INTO `voucher` (`ssn`, `id`, `tin`, `fname`, `lname`, `patronym`, `birth_date`, `unemp_card_num`, `unemp_duration`, `voucherCode`)VALUES
('16273813476', '650605702', '579596810', 'Richard', 'Tea', 'Ameter', '1998', '8552556936372455', '2', '7652829971690254'),
('25259629183', '315696751', '555164381', 'Inverness', 'McKenzie', 'Abraham', '1997', '3536671072001553', '2', '9915205451041097'),
('18717165135', '984165198', '949477456', 'Demeter', 'Carissa', 'Brandon', '1990', '4678542115438546', '8', '3659991299655008');