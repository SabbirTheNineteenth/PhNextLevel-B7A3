-- =========================================================================
-- SYSTEM: Football Ticket Booking System Database Setup
-- DESCRIPTION: Full DDL, Data Seeding & SQL Queries
-- =========================================================================
 
 
-- =========================================================================
-- DROP TABLES IF THEY ALREADY EXIST TO PREVENT CONFLICTS
-- =========================================================================
DROP TABLE IF EXISTS Bookings;
DROP TABLE IF EXISTS Matches;
DROP TABLE IF EXISTS Users;
 
 
-- =========================================================================
-- 1. CREATE USERS TABLE
-- =========================================================================
CREATE TABLE Users (
    user_id      SERIAL,
    full_name    VARCHAR(100)  NOT NULL,
    email        VARCHAR(150)  NOT NULL,
    role         VARCHAR(50)   NOT NULL,
    phone_number VARCHAR(20),
 
   
    CONSTRAINT pk_users PRIMARY KEY (user_id),
  
    CONSTRAINT uq_users_email UNIQUE (email),
 
    CONSTRAINT chk_users_role CHECK (role IN ('Football Fan', 'Ticket Manager'))
);
 
 
-- =========================================================================
-- 2. CREATE MATCHES TABLE
-- =========================================================================
CREATE TABLE Matches (
    match_id             SERIAL,
    fixture              VARCHAR(150)   NOT NULL,
    tournament_category  VARCHAR(100)   NOT NULL,
    base_ticket_price    NUMERIC(10, 2) NOT NULL,
    match_status         VARCHAR(50)    NOT NULL,
 
    
    CONSTRAINT pk_matches PRIMARY KEY (match_id),
 
   
    CONSTRAINT chk_matches_price CHECK (base_ticket_price >= 0),
 
    CONSTRAINT chk_matches_status CHECK (
        match_status IN ('Available', 'Selling Fast', 'Sold Out', 'Postponed')
    )
);
 
 
-- =========================================================================
-- 3. CREATE BOOKINGS TABLE
-- =========================================================================
CREATE TABLE Bookings (
    booking_id     SERIAL,
    user_id        INT,
    match_id       INT,
    seat_number    VARCHAR(20),
    payment_status VARCHAR(50),
    total_cost     NUMERIC(10, 2) NOT NULL,
 
    CONSTRAINT pk_bookings PRIMARY KEY (booking_id),
 
    CONSTRAINT fk_bookings_user FOREIGN KEY (user_id)
        REFERENCES Users (user_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
 
    CONSTRAINT fk_bookings_match FOREIGN KEY (match_id)
        REFERENCES Matches (match_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
 
    CONSTRAINT chk_bookings_cost CHECK (total_cost >= 0),
 
    CONSTRAINT chk_bookings_payment CHECK (
        payment_status IN ('Pending', 'Confirmed', 'Cancelled', 'Refunded')
        OR payment_status IS NULL
    )
);
 