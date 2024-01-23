
# Order Management System API

## Overview

This Order Management System is an ASP.NET Core Web API project designed to manage products, orders, and customers efficiently. It incorporates Entity Framework Core for object-relational mapping, T-SQL for database interactions, and utilizes stored procedures for critical data operations. The system is architected to demonstrate RESTful API design, incorporating advanced entity relationships and validation techniques.

## Getting Started

### Prerequisites

- .NET 6.0 SDK or newer
- Visual Studio 2022 or equivalent with .NET development workload
- SQL Server (LocalDB, Express, or higher)

### Setup

1. **Clone the repository**:
   ```bash
   git clone <repository-url>
   ```

2. **Open the solution** in Visual Studio:
   - Navigate to the cloned directory and open `OrderManagementSystem.sln`.

3. **Restore NuGet packages**:
   - Right-click the solution in Solution Explorer and select "Restore NuGet Packages".

4. **Configure the database connection** in `appsettings.json` within the `OrderManagementSystem.API` project:
   ```json
   "ConnectionStrings": {
     "OrderManagementDatabase": "Server=(localdb)\mssqllocaldb;Database=OrderManagementDb;Trusted_Connection=True;"
   }
   ```

## Project Structure

- **OrderManagementSystem.API**: The web API project.
- **OrderManagementSystem.Models**: Contains all entity models.
- **OrderManagementSystem.Services**: Implements the business logic.
- **OrderManagementSystem.Data**: Manages data access, migrations, and DbContext.
- **OrderManagementSystem.Tests**: Contains unit tests.

## Project Structure

Execute the OrderManagementSystemSchema.sql in your local SQL Server DB with SQL Manaqgement Studio.

## API Endpoints to Implement

- **Products**:
  - `GET /products/{id}`: Retrieve a product by ID.
  - `POST /products`: Add a new product.
- **Orders**:
  - `POST /orders`: Create a new order.
  - `GET /orders/{id}`: Retrieve an order by ID.
- **Customers**:
  - `POST /customers`: Add a new customer.
  - `GET /customers/{id}`: Retrieve customer details.

