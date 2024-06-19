const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');

const app = express();
app.use(express.json());
app.use(cors());

// Conexión a la base de datos MySQL
const db = mysql.createConnection({
  host: 'localhost',
  user: 'root', // Cambia esto por tu usuario de MySQL
  password: '', // Cambia esto por tu contraseña de MySQL
  database: 'ferreteria'
});

db.connect(err => {
  if (err) {
    console.error('Error connecting to MySQL:', err);
    return;
  }
  console.log('Connected to MySQL');
});

// Ruta para la raíz
app.get('/', (req, res) => {
  res.send('Bienvenido a la API de la ferretería');
});

// Rutas API
app.get('/api/productos', (req, res) => {
  db.query('SELECT * FROM productos', (err, results) => {
    if (err) {
      return res.status(500).json({ error: err });
    }
    res.json(results);
  });
});

app.post('/api/productos', (req, res) => {
  const { nombre, marca, codigo, descripcion, stock, ventas } = req.body;
  const query = 'INSERT INTO productos (nombre, marca, codigo, descripcion, stock, ventas) VALUES (?, ?, ?, ?, ?, ?)';
  db.query(query, [nombre, marca, codigo, descripcion, stock, ventas], (err, result) => {
    if (err) {
      return res.status(500).json({ error: err });
    }
    res.json({ id: result.insertId, ...req.body });
  });
});

app.put('/api/productos/:id', (req, res) => {
  const { id } = req.params;
  const { nombre, marca, codigo, descripcion, stock, ventas } = req.body;
  const query = 'UPDATE productos SET nombre = ?, marca = ?, codigo = ?, descripcion = ?, stock = ?, ventas = ? WHERE id = ?';
  db.query(query, [nombre, marca, codigo, descripcion, stock, ventas, id], (err) => {
    if (err) {
      return res.status(500).json({ error: err });
    }
    res.json({ id, ...req.body });
  });
});

app.delete('/api/productos/:id', (req, res) => {
  const { id } = req.params;
  const query = 'DELETE FROM productos WHERE id = ?';
  db.query(query, [id], (err) => {
    if (err) {
      return res.status(500).json({ error: err });
    }
    res.json({ message: 'Producto eliminado' });
  });
});

// Iniciar el servidor
const PORT = 5000;
app.listen(PORT, () => {
  console.log(`Servidor corriendo en http://localhost:${PORT}`);
});
