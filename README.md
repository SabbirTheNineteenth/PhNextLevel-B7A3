# Football Ticket Booking System - Assignment Submission


## 📋 Project Summary

This assignment involved designing a **Football Ticket Booking System** database and implementing SQL queries to manage users, football matches, and ticket bookings.

The project demonstrates:
- Entity Relationship Diagram (ERD) design with proper relationships
- Database table creation with constraints (PK, FK, UNIQUE, CHECK)
- Complex SQL query writing using JOINs, subqueries, and aggregations
- Understanding of database concepts through recorded viva explanations

---

## 📁 Deliverables Submitted

### **Part 1: Entity Relationship Diagram (ERD)**

**Contents:**
- **3 Tables:** Users, Matches, Bookings
- **All Fields:** Displayed with data types
- **Relationships:** One-to-Many (1:N) using crow's foot notation
- **Constraints:** PK (🔑), FK (⚙), UNIQUE (🔒) clearly marked
- **Cardinality:** 1:MANY notation on both relationships

**Design Decisions:**
- SERIAL for auto-incrementing primary keys
- VARCHAR for text fields (emails, names, fixtures)
- DECIMAL(10,2) for monetary values (ticket prices, booking costs)
- UNIQUE constraint on email to prevent duplicate accounts
- Foreign keys on user_id and match_id in Bookings table

---

### **Part 2: SQL Implementation**

**Contains:**
1. **DDL (Data Definition Language):**
   - DROP TABLE statements (if exists)
   - CREATE TABLE for Users, Matches, Bookings
   - All constraints (PK, FK, UNIQUE, CHECK)

2. **DML (Data Manipulation Language):**
   - INSERT sample data (4 users, 5 matches, 5 bookings)

3. **SQL Queries (7 total):**

#### Query 1: Filter by Tournament & Status
- **Purpose:** Retrieve all Champions League matches with 'Available' status
- **Concepts Used:** WHERE clause with multiple AND conditions
- **Returns:** 2 matches (Real Madrid vs Barcelona, Bayern Munich vs PSG)

#### Query 2: Pattern Matching
- **Purpose:** Find users whose name starts with 'Tanvir' OR contains 'Haque'
- **Concepts Used:** ILIKE operator for case-insensitive matching
- **Returns:** 2 users (Tanvir Rahman, Asif Haque)

#### Query 3: NULL Handling
- **Purpose:** Identify bookings with missing payment status
- **Concepts Used:** IS NULL condition, COALESCE function to replace NULL with "Action Required"
- **Returns:** 1 booking (booking_id 504)

#### Query 4: INNER JOIN
- **Purpose:** Show booking details with user names and match fixtures
- **Concepts Used:** 3-table INNER JOIN (Bookings, Users, Matches)
- **Returns:** 5 rows with complete booking information

#### Query 5: LEFT JOIN
- **Purpose:** Display all users and their booking IDs, including those with no bookings
- **Concepts Used:** LEFT JOIN to include unmatched rows from left table
- **Returns:** 6 rows (Jannat Ara appears with NULL booking_id)

#### Query 6: Subquery & Aggregation
- **Purpose:** Find bookings with cost higher than average
- **Concepts Used:** Subquery in WHERE clause, AVG() aggregate function
- **Calculation:** Average = 138.00, filters for > 138
- **Returns:** 3 bookings (all at 150.00)

#### Query 7: Pagination
- **Purpose:** Retrieve 2nd and 3rd most expensive matches
- **Concepts Used:** ORDER BY DESC, LIMIT, OFFSET for pagination
- **Returns:** 2 matches (Bayern Munich at 130.00, Man City at 120.00)

---

## Part 3 : 🎤 Viva Video Submission

### **Topics Covered:**

#### **Topic 1: Foreign Keys & Referential Integrity**

**Learning Outcome:** Understood relationship constraints and data validation at database level

---

#### **Topic 2: WHERE vs HAVING Clauses**


**Learning Outcome:** Understood the execution order of SQL clauses and when to use each

---

#### **Topic 5: Subqueries vs JOINs**

**Learning Outcome:** Understood different query approaches and their trade-offs



✅ ERD Link (LucidChart):https://lucid.app/lucidchart/fa79d5dd-f13f-4939-924f-e94c47642d8c/edit?viewport_loc=39%2C76%2C2203%2C1011%2CuHnfzuC2hmA1o&invitationId=inv_f1beb36c-3115-4a66-89ac-f2695d05ef88

✅ GitHub Repository Link (Public):https://github.com/SabbirTheNineteenth/PhNextLevel-B7A3.git

✅ Interview Video Link (Public): 1.https://drive.google.com/file/d/1QALlVfq8b7TrWNagAwRojgL5y-yTnJzA/view?usp=sharing
                                  2.https://drive.google.com/file/d/1EeDrVKaq5Nh8muk5EMvi1UQYiVUwQDd7/view?usp=sharing
                                  3.https://drive.google.com/file/d/1YbeWUTnlx6f_ndxwCVpE-D9PJ_DYwwnR/view?usp=sharing