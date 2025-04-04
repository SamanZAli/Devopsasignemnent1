# Task Management System

This project is a containerized Task Management System with a fully optimized CI pipeline, featuring separate services for the backend, frontend, and database.

## 🛠️ Setup Instructions

1. **Clone the repository:**
   ```bash
   git clone https://github.com/SamanZAli/Devopsasignemnent1.git
   cd task-app
   ```

2. **Set up environment variables:**
   Create a `.env` file in the root directory and configure environment-specific variables.

3. **Build and run the application with Docker Compose:**
   ```bash
   docker-compose up --build
   ```

4. **Access the app:**
   - Backend: `http://localhost:5000`
   - Frontend: `http://localhost:3000`
   - Database: `localhost:5432`

---

## 🐳 Docker Optimizations

- **Multi-stage builds:** Reduced image size and improved build efficiency.
- **Docker Compose:** Simplified service orchestration.
- **Caching:** Optimized Docker layer caching for faster builds.
- **Volumes:** Used for persistent data and development hot-reloading.

---

## 💻 Local Development Environment

1. **Run backend service:**
   ```bash
   cd backend
   npm install
   npm run dev
   ```

2. **Run frontend service:**
   ```bash
   cd frontend
   npm install
   npm start
   ```

3. **Run database (Postgres example):**
   ```bash
   docker run --name task-database -e POSTGRES_USER=admin -e POSTGRES_PASSWORD=admin -d tasks_db
   ```

---

## ⚙️ CI Pipeline Configuration

**CI Pipeline Workflow:**
- **Build Stage:** Docker images for backend, frontend, and database.
- **Test Stage:** Runs unit tests for backend.
- **Lint Stage:** Lints backend code with ESLint.
- **SAST Stage:** Static analysis with CodeQL.
- **Push Stage:** Pushes images to DockerHub after successful builds.

**Best Practices:**
- **Caching:** Used Docker layer caching and GitHub Actions cache.
- **Parallel Jobs:** Independent builds and checks run in parallel for faster pipelines.
- **Fail-fast Strategy:** Stops the pipeline on failure to avoid unnecessary steps.
- **Security:** Implemented SAST (Static Application Security Testing) with CodeQL.
