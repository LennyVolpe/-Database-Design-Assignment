create table artists(
artist_id int auto_increment primary key,
first_name varchar(100) not null,
last_name varchar(100) not null,
d_o_b date not null 
);


create table songs(
song_id int auto_increment primary key,
title varchar(200) not null,
artist_id int not null,
duration int not null,
explicit boolean not null,
link varchar(255) not null,
foreign key (artist_id) REFERENCES artists(artist_id)
);



create table genre(
genre_id int auto_increment primary key,
song_type varchar(100) not null
);


create table song_genre(
song_id int not null,
genre_id int not null,
primary key(song_id, genre_id),
foreign key(genre_id) references genre(genre_id),
foreign key(song_id) references songs(song_id)

);

create table users(
id int auto_increment primary key,
email varchar(100) unique not null,
first_name varchar(100) not null,
last_name varchar(100) not null,
password varchar(200) not null
);

create table favorite_songs(
user_id int not null,
song_id int not null,
primary key(user_id, song_id),
foreign key(user_id) references users(id),
foreign key(song_id) references songs(song_id)
);

create table playlist(
id int auto_increment primary key,
user_id int not null,
song_id int not null,
song_order int not null,
foreign key(user_id) references users(id),
foreign key(song_id) references songs(song_id)

);


