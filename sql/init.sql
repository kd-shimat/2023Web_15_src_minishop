
# テーブル items の作成
drop table if exists items; 
# テーブルitemsの作成
create table items(
	ident	int auto_increment primary key,
	name	varchar(50) not null,
	maker	varchar(50) not null,
	price	int,
	image	varchar(20),
  genre varchar(10)
);

# テーブルitemsへデータを入力
insert into items(name, maker, price, image, genre)
	values('NEC LAVIE', 'NEC', 61980, 'pc001.jpg', 'pc');
insert into items(name, maker, price, image, genre)
	values('dynabook AZ45', '東芝', 80784, 'pc002.jpg', 'pc');
insert into items(name, maker, price, image, genre)
	values('Surface Pro', 'マイクロソフト', 167980, 'pc003.jpg', 'pc');
insert into items(name, maker, price, image, genre)
	values('FMV LIFEBOOK', '富士通', 221480, 'pc004.jpg', 'pc');
insert into items(name, maker, price, image, genre)
	values('MacBook Pro', 'Apple', 142800, 'pc005.jpg', 'pc');

insert into items(name, maker, price, image, genre)
	values('確かな力が身につくPHP「超」入門', '松浦健一郎/司ゆき', 2678, 'book001.jpg', 'book');
insert into items(name, maker, price, image, genre)
	values('スラスラわかるJavaScript', '生形　可奈子', 2484, 'book002.jpg', 'book');
insert into items(name, maker, price, image, genre)
	values('SCRUM BOOT CAMP THE BOOK', '西村　直人ほか', 2592, 'book003.jpg', 'book');
insert into items(name, maker, price, image, genre)
	values('かんたんUML入門 (プログラミングの教科書)', '大西　洋平ほか', 3218, 'book004.jpg', 'book');
insert into items(name, maker, price, image, genre)
	values('Webデザイナーのための jQuery入門', '高津戸 壮', 3110, 'book005.jpg', 'book');

insert into items(name, maker, price, image, genre)
	values('÷(ディバイド)', 'エド・シーラン', 1818, 'music001.jpg', 'music');
insert into items(name, maker, price, image, genre)
	values('Live in San Diego [12 inch Analog]', 'Eric Clapton', 3956, 'music002.jpg', 'music');
insert into items(name, maker, price, image, genre)
	values('25(UK盤)', 'Adele', 1205, 'music003.jpg', 'music');
insert into items(name, maker, price, image, genre)
	values('Somehow,Someday,Somewhere', 'ai kuwabara trio project', 2700, 'music004.jpg', 'music');
insert into items(name, maker, price, image, genre)
	values('Singles[Explicit]', 'マルーン5', 1530, 'music005.jpg', 'music');



# テーブル cart の作成
drop table if exists cart; 
create table cart (	
	ident     int   auto_increment   primary   key,	
	quantity  int
);

# 注文テーブルordersの作成			
drop table if exists orders;			
create table orders (			
    orderId     int   auto_increment   primary   key,			
    orderdate   datetime			
);			
			
# 注文明細テーブルorderdetailsの作成			
drop table if exists orderdetails;			
create table orderdetails (			
    orderId     int,			
    itemId      int,			
    quantity    int,			
    primary key(orderId, itemId)			
);