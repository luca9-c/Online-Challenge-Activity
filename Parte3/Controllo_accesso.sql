/* Basi di dati 2020-21
Progetto "Online Challenge Activity"

Studente: Caputo Luca 
Matricola: 4680479
Corso: Informatica
CFU: 12
Parte 3 */


/* 13. Script SQL per l'implementazione della politica di controllo dell'accesso. */

set search_path to 'online_challenge_activity';

CREATE ROLE Utente;
GRANT USAGE ON SCHEMA online_challenge_activity TO Utente;
CREATE ROLE Giocatore;
GRANT USAGE ON SCHEMA online_challenge_activity TO Giocatore;
CREATE ROLE Gameadmin;
GRANT USAGE ON SCHEMA online_challenge_activity TO Gameadmin;
CREATE ROLE Gamecreator;
GRANT USAGE ON SCHEMA online_challenge_activity TO Gamecreator;

GRANT SELECT 
ON Gioco, Set, Icona, Sfida, Punteggio, Squadra, Composizione_squadra, Utente
TO Utente;

GRANT INSERT, UPDATE, DELETE
ON Squadra, Composizione_squadra
TO Utente;

GRANT Utente
TO Giocatore;

GRANT SELECT 
ON Casella_di_gioco, Casella_podio, Quiz, Casella_ha_quiz, Risposta_quiz, Task, Gioco_ha_quiz, 
	Gioco_ha_task, Risposta_utente, Risposta_utente_quiz, Turno, turno_risposta_quiz
TO Giocatore;

GRANT INSERT, UPDATE
ON Risposta_utente, Risposta_utente_quiz
TO Giocatore;

GRANT Giocatore
TO Gameadmin;

GRANT INSERT, UPDATE, DELETE
ON Set, Icona, Sfida, Punteggio, Turno, Turno_risposta_quiz
TO Gameadmin;

GRANT UPDATE
ON Casella_podio
TO Gameadmin;

GRANT DELETE 
ON Risposta_utente, Risposta_utente_quiz
TO Gameadmin;

GRANT Gameadmin
TO Gamecreator;

GRANT INSERT, UPDATE, DELETE
ON Gioco, Info_dadi, Casella_di_gioco, Quiz, Casella_ha_quiz, Risposta_quiz, Task, Gioco_ha_quiz, Gioco_ha_task
TO Gamecreator;

GRANT INSERT, DELETE
ON Casella_podio
TO Gamecreator;