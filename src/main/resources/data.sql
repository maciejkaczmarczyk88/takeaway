INSERT INTO
    item(id, price, name, short_description, description)
VALUES
    (1, 22.50, 'Pizza Margherita', 'Włoska pizza na cienkim cieście z serem i sosem pomidorowym',
    'Pizza Margherita to klasyka włoskiej kuchni. W naszym wydaniu serwujemy pizzę na cienkim cieście z ' ||
    'ręcznie przygotowanym sosem pomidorowym i oryginalnym serem mozarella'),
    (2, 25.99, 'Pizza Capriciosa', 'Pizza na cienkim cieście z serem, sosem pomidorowym i pieczarkami',
    'Pizza Capriciosa to po Marghericie najpopularniejsza wersja tej smacznej włoskiej potrawy. Oprócz naszego ' ||
    'domowego sosu pomidorowego i oryginalnej włoskiej mozarelli znajdziesz tutaj także pieczarki i wyśmienitą sznkę.'),
    (3, 32.99, 'Spaghetti Bolognese', 'Robiona na miejscu pasta z sosem pomidorowym i wołowiną',
    'Idealna propozycja dla każdego miłośnika pasty. Spaghetti bolognese w naszym wykonaniu to ręcznie przygotowany ' ||
    'makaron z sosem pomidorowym oraz wysokiej jakości wołowiną. Do przygotowania sosu wykorzystujemy pomidory z ' ||
    'lokalnych upraw oraz świeże zioła.'),
    (4, 18.99, 'Panna Cotta', 'Klasyczny włoski deser o smaku śmietankowym z polewą z truskawek',
    'Masz ochodę na coś słodkiego? Ta propozycja to nasza interpretacja jednego z najbardziej rozpoznawalnych włoskich' ||
    'deserów. Przygotowujemy go ze śmietanki BIO, świeżego mleka i prawdziwej wanilii. Na życzenie deser podajemy ' ||
    'w alternatywnej wersji z sosem czekoladowym.');

INSERT INTO
    client_order(id, address, telephone, status)
VALUES
    (1, 'Zakrzewskiego 23/5, 50-225 Wrocław', '888777666', 'NEW'),
    (2, 'Kościuszki 13, 52-316 Wrocław', '767454989', 'NEW'),
    (3, 'Krakowska 88/16, 51-515 Wrocław', '666234123', 'IN_PROGRESS'),
    (4, 'Centralna 8/12, 55-100 Wrocław', '598787999', 'IN_PROGRESS'),
    (5, 'Dworcowa 33, 51-200 Wrocław', '600700900', 'COMPLETE'),
    (6, 'Krucza 66/4, 53-300 Wrocław', '696787898', 'COMPLETE');

INSERT INTO
    order_item (order_id, item_id)
VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 3),
    (2, 4),
    (3, 1),
    (3, 1),
    (3, 1),
    (4, 1),
    (4, 2),
    (5, 3),
    (5, 3),
    (5, 4),
    (6, 4),
    (6, 4);
CREATE TABLE Item (
  id BIGINT AUTO_INCREMENT NOT NULL,
   price DOUBLE,
   name VARCHAR(255),
   shortDescription VARCHAR(255),
   descriptio VARCHAR(1024),
   CONSTRAINT pk_item PRIMARY KEY (id)
);
CREATE TABLE client_order (
  id BIGINT AUTO_INCREMENT NOT NULL,
   address VARCHAR(255),
   telephone VARCHAR(255),
   status VARCHAR(255),
   CONSTRAINT pk_client_order PRIMARY KEY (id)
);
CREATE TABLE order_item (
  item_id BIGINT NOT NULL,
   order_id BIGINT NOT NULL
);

ALTER TABLE order_item ADD CONSTRAINT fk_ordite_on_item FOREIGN KEY (item_id) REFERENCES Item (id);

ALTER TABLE order_item ADD CONSTRAINT fk_ordite_on_order FOREIGN KEY (order_id) REFERENCES client_order (id);