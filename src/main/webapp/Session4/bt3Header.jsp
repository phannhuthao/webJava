<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

  body {
    font-family: 'Poppins', sans-serif;
    background-color: #f8f9fa;
  }

  .navbar {
    background: linear-gradient(135deg, #6366f1 0%, #4f46e5 100%);
    padding: 1rem 5%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    position: fixed;
    width: 100%;
    top: 0;
    z-index: 1000;
  }

  .nav-brand {
    color: white;
    font-size: 1.5rem;
    font-weight: 600;
    letter-spacing: 0.5px;
  }

  .nav-links {
    display: flex;
    gap: 2rem;
  }

  .nav-item {
    color: rgba(255, 255, 255, 0.9);
    text-decoration: none;
    font-size: 1rem;
    font-weight: 500;
    padding: 0.5rem 1rem;
    border-radius: 6px;
    transition: all 0.3s ease;
  }

  .nav-item:hover {
    color: white;
    background-color: rgba(255, 255, 255, 0.1);
    transform: translateY(-2px);
  }

  @media (max-width: 768px) {
    .navbar {
      flex-direction: column;
      padding: 1rem;
    }

    .nav-brand {
      margin-bottom: 1rem;
    }

    .nav-links {
      flex-direction: column;
      gap: 1rem;
      text-align: center;
      width: 100%;
    }

    .nav-item {
      display: block;
      padding: 0.75rem;
    }
  }
</style>
<head>
  <title>Header</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
</head>
<body>
<header>
  <nav class="navbar">
    <div class="nav-brand">Hafo</div>
    <div class="nav-links">
      <a href="#" class="nav-item">Home</a>
      <a href="#" class="nav-item">Product</a>
      <a href="#" class="nav-item">About</a>
      <a href="#" class="nav-item">Contact</a>
    </div>
  </nav>
</header>
</body>
</html>