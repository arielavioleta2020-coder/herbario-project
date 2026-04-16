import { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import React from 'react';

function Medicamentos() {
  const [productos, setProductos] = useState([]);
  const [busqueda, setBusqueda] = useState('');

  // TRAER DATOS DE LA BASE DE DATOS
  useEffect(() => {
    fetch('http://localhost:3001/api/productos')
      .then(res => res.json())
      .then(data => setProductos(data))
      .catch(err => console.error("Error en la API:", err));
  }, []);

  const productosFiltrados = productos.filter(producto =>
    producto.nombre.toLowerCase().includes(busqueda.toLowerCase()) ||
    (producto.descripcion && producto.descripcion.toLowerCase().includes(busqueda.toLowerCase()))
  );

  return (
    <div className="medicamentos-container">
      <Link to="/" className="btn-volver">⬅ Volver al inicio</Link>
      <h1>Catálogo de Productos</h1>

      <input
        type="text"
        placeholder="Buscar producto..."
        value={busqueda}
        onChange={(e) => setBusqueda(e.target.value)}
        className="buscador"
      />

      <div className="productos-grid">
        {productosFiltrados.length > 0 ? (
          productosFiltrados.map((producto) => (
            <div key={producto.id} className="producto-card">
              <img
                src={producto.imagen || "/imagenes/default.jpg"}
                alt={producto.nombre}
                onError={(e) => e.target.src = "/imagenes/default.jpg"}
              />
              <h3>{producto.nombre}</h3>
              <p className="precio">
                {producto.precio != null 
                  ? `$${Number(producto.precio).toFixed(2)}` 
                  : "Precio no disponible"}
              </p>
              <p className="descripcion">{producto.descripcion}</p>
              <Link to={`/medicamento/${producto.id}`} className="ver-detalle">
                Ver detalle
              </Link>
            </div>
          ))
        ) : (
          <p>No se encontraron productos</p>
        )}
      </div>
    </div>
  );
}

export default Medicamentos;