DROP DATABASE IF EXISTS adopt;


CREATE DATABASE adopt;

\c adopt
CREATE TABLE pets (id SERIAL PRIMARY KEY,
                                     name TEXT NOT NULL,
                                               species TEXT NOT NULL,
                                                            photos_url TEXT, age INT, notes TEXT, available BOOLEAN NOT NULL DEFAULT TRUE);


INSERT INTO pets (name, species, photo_url, age, notes, available)
VALUES ('George',
        'dog',
        'https://www.what-dog.net/Images/faces2/scroll001.jpg',
        3,
        'Very Cute.',
        't'), ('Prickly Pear',
               'porcupine',
               'http://kids.sandiegozoo.org/sites/default/files/2017-12/porcupine-incisors.jpg',
               4,
               'Very Spiky!',
               't'), ('Django',
                      'cat',
                      'https://www.catster.com/wp-content/uploads/2017/08/A-fluffy-cat-looking-funny-surprised-or-concerned.jpg',
                      null,
                      null,
                      't'), ('Dr. Evil',
                             'cat',
                             null,
                             NULL,
                             null,
                             't');

