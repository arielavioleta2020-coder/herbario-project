import { useState, useEffect } from 'react';

function Catalogo() {
  const [productos, setProductos] = useState([]);
  const [busqueda, setBusqueda] = useState('');

  // TRAER DATOS DE LA BASE DE DATOS
  useEffect(() => {
    fetch('http://localhost:3001/api/productos')
      .then(res => res.json())
      .then(data => setProductos(data))
      .catch(err => console.error("Error cargando productos:", err));
  }, []);

  const productosFiltrados = productos.filter(producto =>
    producto.nombre.toLowerCase().includes(busqueda.toLowerCase()) ||
    (producto.descripcion && producto.descripcion.toLowerCase().includes(busqueda.toLowerCase()))
  );

  return (
    <div className="catalogo-container">
      <input
        type="text"
        placeholder="Buscar producto..."
        value={busqueda}
        onChange={(e) => setBusqueda(e.target.value)}
        className="buscador"
      />
      <div className="productos-grid">
        {productosFiltrados.length > 0 ? (
          productosFiltrados.map(producto => (
            <div key={producto.id} className="producto-card">
              {producto.imagen && (
                <img src={producto.imagen} alt={producto.nombre} />
              )}
              <h3>{producto.nombre}</h3>
              <p className="precio">${Number(producto.precio).toFixed(2)}</p>
              <p className="descripcion">{producto.descripcion}</p>
            </div>
          ))
        ) : (
          <p>No se encontraron productos</p>
        )}
      </div>
    </div>
  );
}

export default Catalogo;