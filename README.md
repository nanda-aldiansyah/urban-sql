# Urban App Database Schema (SQL)
This repository contains the SQL schema for the Urang Bandung "Urban" application, a multifunctional city-assistance platform designed to support various daily needs of urban residents. The database structure supports five main features: emergency requests, public reporting, health service registration, route management, and community interaction.
## Overview
Urang Bandung "Urban" is an application prototype built to simplify citizen access to essential city services. The database schema is designed to store user information, manage emergency reports, handle public issue submissions, track health service registrations, save travel routes, and support community discussions.
The SQL schema was developed using PostgreSQL and follows a normalized structure with foreign-key relationships across core tables.
# Features Supported by the Database
1. SOS Request
Handles emergency reports submitted by users, including type, description, and status tracking.
2. Public Reports
Stores public issue reports related to environmental or infrastructure problems. Includes location data and optional photos.
3. Health Registration
Tracks registration requests for clinics, hospitals, immunizations, and other medical services.
4. Routes
Saves user travel routes, including origin, destination, and transportation type.
5. Community
Supports community groups, posts, comments, and member management.
## Files Included
/sql
Contains SQL scripts for creating all database tables and defining relationships.
## Technologies Used
- PostgreSQL
- DBeaver (for query execution and design)
## Dataset and Ownership
All schema design and implementation are created manually for academic purposes as part of an Agile development project.
