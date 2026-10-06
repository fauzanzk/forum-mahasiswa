# Forum Mahasiswa

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## API Backend

The backend of this application is a RESTful API built with **Node.js** and **Express**, utilizing a **MySQL** database. It is located in the `API Backend/` directory.

### Features
- **Authentication**: Implements secure user login using bcrypt for password hashing and JSON Web Tokens (JWT) for session management.
- **Database**: Relational database schema (`forum_db.sql`) supporting `users`, `posts`, `comments`, and `upvotes`.
- **Dynamic Data**: Raw SQL queries via `mysql2` to compute upvotes and comments directly from the database for the Flutter UI.
- **Security**: Raw database errors are logged strictly on the server, ensuring clients only receive generic error messages. Uses environment variables (`.env`) to safely manage database credentials and JWT secrets.

### How to Run Locally

1. **Setup Database**:
   - Start **MySQL** via XAMPP (usually on port 3306).
   - Open phpMyAdmin and create a new database named `forum_db`.
   - Import the `forum_db.sql` file (found in the `API Backend` folder) into the database to generate the tables and seed data.

2. **Configure Environment Variables**:
   - Navigate into the `API Backend/` folder.
   - Copy the `.env.example` file and rename it to `.env`.
   - Update `DB_PASSWORD` with your local MySQL root password.
   - Keep the `PORT` set to `8080` (this ensures it doesn't conflict with XAMPP's Apache web server).

3. **Install Dependencies & Start Server**:
   ```bash
   cd "API Backend"
   npm install
   node server.js
   ```
   The API will now be listening for requests at `http://localhost:8080`.

---

## 🚀 API Endpoint Testcase Examples

Below is a cheat-sheet for testing the Node.js API Backend. 

### 🛡️ Authentication (JWT)
Most endpoints (except `GET http://localhost:8080/posts` and `POST http://localhost:8080/auth/register` and `POST http://localhost:8080/auth/login`) are protected and require a Bearer token.
To access protected routes, pass the token in the headers of your request in Postman/Thunder Client:
- **Key**: `Authorization`
- **Value**: `Bearer <your_jwt_token_here>`

---

## 🔐 Auth Endpoints

### 1. Register User (POST)
- **Endpoint**: `POST http://localhost:8080/auth/register`
- **Body** (JSON):
```json
{
  "username": "johndoe",
  "password": "mysecretpassword123",
  "email": "johndoe@example.com"
}
```

### 2. Login User (POST)
- **Endpoint**: `POST http://localhost:8080/auth/login`
- **Body** (JSON):
```json
{
  "username": "johndoe",
  "password": "mysecretpassword123"
}
```

---

## 📝 Posts Endpoints

### 1. Get All Posts (GET)
- **Endpoint**: `GET http://localhost:8080/posts`
- **Auth Required**: No

### 2. Create Post (POST)
- **Endpoint**: `POST http://localhost:8080/posts`
- **Auth Required**: Yes *(The user_id is automatically extracted from your JWT token)*
- **Body** (JSON):
```json
{
  "kategori": "Teknologi",
  "judul": "Bagaimana cara setup Node.js?"
}
```

### 3. Update Entire Post (PUT)
- **Endpoint**: `PUT http://localhost:8080/posts/1`
- **Auth Required**: Yes
- **Body** (JSON):
```json
{
  "kategori": "Sistem Informasi",
  "judul": "Ini judul yang sudah diupdate sepenuhnya"
}
```

### 4. Update Post Partially (PATCH)
- **Endpoint**: `PATCH http://localhost:8080/posts/1`
- **Auth Required**: Yes
- **Body** (JSON):
```json
{
  "judul": "Hanya mengupdate judul post ini"
}
```

### 5. Delete Post (DELETE)
- **Endpoint**: `DELETE http://localhost:8080/posts/1`
- **Auth Required**: Yes

---

## 👥 Users Endpoints

### 1. Get All Users (GET)
- **Endpoint**: `GET http://localhost:8080/users`
- **Auth Required**: Yes

### 2. Get User By ID (GET)
- **Endpoint**: `GET http://localhost:8080/users/1`
- **Auth Required**: Yes

### 3. Update Entire User (PUT)
- **Endpoint**: `PUT http://localhost:8080/users/1`
- **Auth Required**: Yes
- **Body** (JSON):
```json
{
  "username": "johndoe_updated",
  "password": "newpassword123",
  "email": "john.updated@example.com"
}
```

### 4. Update User Partially (PATCH)
- **Endpoint**: `PATCH http://localhost:8080/users/1`
- **Auth Required**: Yes
- **Body** (JSON):
```json
{
  "email": "johndoe.newemail@example.com"
}
```

### 5. Delete User (DELETE)
- **Endpoint**: `DELETE http://localhost:8080/users/1`
- **Auth Required**: Yes
