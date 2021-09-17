USE vk;

CREATE TABLE commentaries(
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED  NOT NULL,
	commentary_to_id BIGINT UNSIGNED NOT NULL,
	commentary_text VARCHAR(420) NOT NULL,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
	INDEX (user_id),
	INDEX (commentary_to_id),
	FOREIGN KEY (commentary_to_id) REFERENCES media(id),
	FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE likes(
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL,
	like_to_id BIGINT UNSIGNED NOT NULL,
	like_or_not BOOLEAN DEFAULT FALSE,
	KEY (user_id),
	KEY (like_to_id),
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (like_to_id) REFERENCES media(id)
);

CREATE TABLE user_description(
	user_id BIGINT UNSIGNED NOT NULL PRIMARY KEY,
	description VARCHAR(1000),
	FOREIGN KEY (user_id) REFERENCES users(id)
);