# Aesthetics Clinic Management System 💅✨

A full-stack solution designed to streamline operations for aesthetics clinics, featuring a high-performance mobile application and a robust scalable back-end.

## 🚀 The Project

This system addresses real-world operational challenges in the beauty and wellness industry, such as schedule conflicts, inventory leakage, and client management.

### Key Features

- **Smart Scheduling**: Interactive calendar for booking and managing appointments with real-time availability
- **Customer Management (CRM)**: Complete CRUD for client profiles and history
- **Inventory Control**: Track professional products and retail sales with low-stock alerts
- **Services Management**: Customizable service catalog with price and duration tracking
- **Role-Based Access (ABAC)**: Granular permissions for Admins, Staff, and Clients

## 🛠 Tech Stack

### Front-end (Mobile)

- **Framework**: Flutter
- **Language**: Dart
- **State Management**: Pending (Provider/Riverpod/Bloc)
- **Main Libraries**: Dio (API Rest), Table Calendar, Validatorless

### Back-end (In Development)

- **Framework**: .NET 8 / C#
- **Architecture**: Clean Architecture / Onion Architecture
- **Database**: Entity Framework Core (SQL Server/PostgreSQL)
- **Security**: JWT Authentication & Attribute-Based Access Control (ABAC)

## 📂 Project Structure (Mobile)

```
lib/
├── core/       # Global constants, themes, and app configurations
├── models/     # Data entities (User, Service, Product, Appointment)
├── services/   # API communication layer (Repositories)
├── shared/     # Reusable UI components and widgets
└── screens/    # Feature-based UI modules (Schedule, Clients, etc.)
```