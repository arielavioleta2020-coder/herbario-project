const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');

const app = express();

// Middlewares
app.use(cors());
app.use(express.json());

// CONFIGURACIÓN DE LA BASE DE DATOS
const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',      
  password: '',      
  database: 'db_plantas' 
});

// Conectar a la base de datos
db.connect((err) => {
  if (err) {
    console.error('❌ Error de conexión:', err.message);
    return;
  }
  console.log('✅ Conectado con éxito a la base de datos: db_plantas');
});

// --- RUTAS DE LA API ---

// 1. RUTA PARA PRODUCTOS (Los 161 que subimos)
app.get('/api/productos', (req, res) => {
  const sql = "SELECT * FROM productos";
  db.query(sql, (err, results) => {
    if (err) {
      console.error('❌ Error en productos:', err.message);
      return res.status(500).json({ error: "Error al consultar productos" });
    }
    res.json(results);
  });
});

// 2. RUTA PARA PLANTAS MEDICINALES (La nueva tabla)
app.get('/api/plantas', (req, res) => {
  const sql = "SELECT * FROM plantas";
  db.query(sql, (err, results) => {
    if (err) {
      console.error('❌ Error en plantas:', err.message);
      return res.status(500).json({ error: "Error al consultar plantas" });
    }
    res.json(results);
  });
});

// --- INICIO DEL SERVIDOR ---
const PORT = 3001;
app.listen(PORT, () => {
  console.log('=========================================');
  console.log(`🚀 SERVIDOR FULLSTACK ACTIVO`);
  console.log(`📦 PRODUCTOS: http://localhost:${PORT}/api/productos`);
  console.log(`🌿 PLANTAS:   http://localhost:${PORT}/api/plantas`);
  console.log('=========================================');
});