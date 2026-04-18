import { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import React from 'react';
// IMPORTANTE: Importamos la función que lee el archivo local
import { getProductos } from '../services/api';

function Medicamentos() {
  const [productos, setProductos] = useState([]);
  const [busqueda, setBusqueda] = useState('');

  // TRAER DATOS DEL ARCHIVO LOCAL (Ya no de localhost:3001)
  useEffect(() => {
    const cargarProductos = async () => {
      try {
        const data = await getProductos();
        setProductos(data);
      } catch (err) {
        console.error("Error al cargar productos locales:", err);
      }
    };
    
    cargarProductos();
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