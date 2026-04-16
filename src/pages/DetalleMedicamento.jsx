import React, { useEffect, useState } from "react";
import { useParams, Link } from "react-router-dom";

function DetalleMedicinas() {
  const { id } = useParams();
  const [planta, setPlanta] = useState(null);
  const [cargando, setCargando] = useState(true);

  useEffect(() => {
    // 1. Scroll al inicio al cargar
    window.scrollTo(0, 0);

    // 2. Traer datos desde tu servidor de Node.js
    fetch('http://localhost:3001/api/productos')
      .then((res) => res.json())
      .then((data) => {
        // Buscamos el producto por ID dentro de los datos que vienen de MySQL
        const encontrado = data.find((p) => Number(p.id) === Number(id));
        setPlanta(encontrado);
        setCargando(false);
      })
      .catch((err) => {
        console.error("Error al obtener detalle:", err);
        setCargando(false);
      });
  }, [id]);

  // Mientras espera la respuesta del servidor
  if (cargando) {
    return <div style={{ padding: '150px', textAlign: 'center' }}>Cargando información...</div>;
  }

  // Si después de cargar no encontró el producto
  if (!planta) {
    return (
      <div style={{ padding: '150px 20px', textAlign: 'center', fontFamily: 'Arial' }}>
        <h2 style={{ color: '#2e4d23' }}>Producto no encontrado</h2>
        <p>El código ID: {id} no coincide con nuestra base de datos actual.</p>
        <Link to="/medicamentos" style={{ color: '#a3c038', fontWeight: 'bold', textDecoration: 'none' }}>
          ⬅ Volver al catálogo
        </Link>
      </div>
    );
  }

  // Lógica de imagen
  let imagenLimpia = planta.imagen ? planta.imagen.trim() : "";
  const rutaFinal = imagenLimpia.startsWith('/') ? imagenLimpia : `/${imagenLimpia}`;
  
  const mensajeWA = `Hola, deseo más información sobre: ${planta.nombre}`;
  const urlWhatsApp = `https://wa.me/593999999999?text=${encodeURIComponent(mensajeWA)}`;

  return (
    <div style={{ 
      padding: '120px 5% 60px 5%', 
      maxWidth: '1200px', 
      margin: '0 auto', 
      fontFamily: 'sans-serif',
      backgroundColor: '#fff',
      minHeight: '100vh'
    }}>
      <Link to="/medicamentos" style={{ color: '#2e4d23', fontWeight: 'bold', textDecoration: 'none' }}>
        ⬅ Volver al catálogo
      </Link>

      <div style={{ display: 'flex', gap: '40px', flexWrap: 'wrap', marginTop: '30px' }}>
        {/* Lado de la Imagen */}
        <div style={{ flex: '1', minWidth: '300px' }}>
          <img 
            src={rutaFinal || "/imagenes/default.jpg"} 
            alt={planta.nombre} 
            onError={(e) => { e.target.src = "/imagenes/default.jpg"; }}
            style={{ 
              width: '100%', 
              borderRadius: '20px', 
              boxShadow: '0 10px 30px rgba(0,0,0,0.1)',
              objectFit: 'contain'
            }} 
          />
        </div>

        {/* Lado de la Información */}
        <div style={{ flex: '1.2', minWidth: '300px' }}>
          <h1 style={{ color: '#2e4d23', fontSize: '2.5rem', margin: '0' }}>
            {planta.nombre}
          </h1>
          <p style={{ fontStyle: 'italic', color: '#666', fontSize: '1.1rem' }}>
            {planta.categoria || "Producto Natural"}
          </p>
          
          <div style={{ height: '4px', width: '50px', backgroundColor: '#dced7c', margin: '20px 0' }}></div>
          
          <h3 style={{ color: '#2e4d23' }}>Descripción:</h3>
          <p style={{ lineHeight: '1.6', color: '#444', textAlign: 'justify' }}>
            {planta.descripcion || "Sin descripción disponible."}
          </p>

          <h3 style={{ color: '#2e4d23', marginTop: '20px' }}>Precio:</h3>
          <p style={{ fontSize: '1.5rem', fontWeight: 'bold', color: '#a3c038' }}>
            ${Number(planta.precio).toFixed(2)}
          </p>
          
          <div style={{ marginTop: '40px' }}>
            <a 
              href={urlWhatsApp} 
              target="_blank" 
              rel="noopener noreferrer" 
              style={{ 
                backgroundColor: '#25d366', 
                color: 'white', 
                padding: '15px 30px', 
                borderRadius: '50px', 
                textDecoration: 'none', 
                fontWeight: 'bold',
                display: 'inline-block',
                boxShadow: '0 4px 15px rgba(37,211,102,0.3)'
              }}
            >
              Consultar por WhatsApp
            </a>
          </div>
        </div>
      </div>
    </div>
  );
}

export default DetalleMedicinas;