-- CRETATION DE LA BASE DE DONNEES SAMA_ECOLE


-- CREATE DATABASE SAMA_ECOLE;

-- UTILISATION DE LA BASE DE DONNEES

USE SAMA_ECOLE;

-- CREATION D'UNE TABLE ETUDIANT POUR UNE BASE DE DONNEES(ECOLE)

CREATE TABLE ECOLE(

	EcoleID INT PRIMARY KEY,
	Nom  VARCHAR(50) NOT NULL,
	Adresse VARCHAR(100) NOT NULL,
	Email VARCHAR(50) UNIQUE NOT NULL,
	Telephone VARCHAR(20) UNIQUE NOT NULL

);

-- CREATION DE LA TABLE PERSONNEL

CREATE TABLE  PERSONNEL(
	PersonnelID INT PRIMARY KEY,
	Nom VARCHAR(50) NOT NULL,
	Prenom VARCHAR(50) NOT NULL,
	Telephone VARCHAR(50)  UNIQUE NOT NULL,
	Adresse VARCHAR(100) NOT NULL,
	Sexe VARCHAR(50) NOT NULL,
	Email VARCHAR(50) UNIQUE NOT NULL

);

-- CREATION DE LA TABLE STATUT

CREATE TABLE STATUT(
	StatutID INT PRIMARY KEY,
	Poste VARCHAR(50) NOT NULL,
	Categorie VARCHAR(50)

);

-- AJOUT D' UNE CONTRAINTE UNIQUE DANS LA TABLE PERSONNEL

ALTER TABLE PERSONNEL
	ADD ECOLEID INT;

ALTER TABLE PERSONNEL
	ADD STATUTID INT;


ALTER TABLE PERSONNEL
	ADD CONSTRAINT fk_ecole_id FOREIGN KEY (EcoleID) REFERENCES ECOLE(EcoleID);

	ALTER TABLE PERSONNEL
		ADD CONSTRAINT fk_statut_id FOREIGN KEY (StatutId) REFERENCES STATUT(StatutID);


		-- CREATION DE LA TABLE ELEVE
		CREATE TABLE ELEVE (
			EleveID INT PRIMARY KEY,
			Nom VARCHAR(50) NOT NULL,
			Prenom VARCHAR(50) NOT NULL,
			Date_naissance DATE NOT NULL,
			Sexe VARCHAR(50) NOT NULL,
			Adresse VARCHAR(50) NOT NULL,
			Telephone VARCHAR(50)  UNIQUE NOT NULL,
			Email VARCHAR(50) UNIQUE NOT NULL
		
		);

		-- CREATION DE LA TABLE ANNEE SCOLAIRE
		CREATE TABLE ANNEE_SCOLAIRE(
			Annee_scolaireID INT PRIMARY KEY,
			ANNEE VARCHAR(10) NOT NULL
		
		);