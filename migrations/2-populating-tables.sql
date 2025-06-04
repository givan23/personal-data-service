-- Inserimento di due utenti nella tabella users
INSERT INTO users (id, username, email, password_hash, created_at)
VALUES
  (1, 'mario_rossi', 'mario.rossi@example.com', 'hashedpassword1', NOW()),
  (2, 'laura_bianchi', 'laura.bianchi@example.com', 'hashedpassword2', NOW());

-- Inserimento profili associati
INSERT INTO profiles (id, user_id, first_name, last_name, birth_date)
VALUES
  (1, 1, 'Mario', 'Rossi', '1985-03-15'),
  (2, 2, 'Laura', 'Bianchi', '1990-07-22');

-- Inserimento indirizzi associati
INSERT INTO addresses (id, user_id, street, city, zip_code, country)
VALUES
  (1, 1, 'Via Roma 10', 'Roma', '00100', 'Italia'),
  (2, 2, 'Corso Milano 22', 'Milano', '20100', 'Italia');

-- Inserimento preferenze utenti con chiave e valore
INSERT INTO preferences (id, user_id, preference_key, preference_value)
VALUES
  (1, 1, 'language', 'it'),
  (2, 1, 'currency', 'EUR'),
  (3, 2, 'language', 'en'),
  (4, 2, 'currency', 'USD');
