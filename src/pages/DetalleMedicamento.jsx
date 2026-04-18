import React, { useEffect, useState } from "react";
import { useParams, Link } from "react-router-dom";
// Importamos la función que ahora lee el archivo local
import { getProductos } from "../services/api";

function DetalleMedicinas() {
  const { id } = useParams();
  const [planta, setPlanta] = useState(null);
  const [cargando, setCargando] = useState(true);

  useEffect(() => {
    // 1. Scroll al inicio al cargar la página
    window.scrollTo(0, 0);

    // 2. Traer datos usando la lógica centralizada de api.js
    const cargarDetalle = async () => {
      try {
        const data = await getProductos();
        // Buscamos el producto por ID dentro de los datos locales
        const encontrado = data.find((p) => Number(p.id) === Number(id));
        setPlanta(encontrado);
        setCargando(false);
      } catch (err) {
        console.error("Error al obtener detalle:", err);
        setCargando(false);
      }
    };

    cargarDetalle();
  }, [id]);

  // Mientras espera la carga de los datos
  if (cargando) {
    return (
      <div style={{ padding: "150px", textAlign: "center", color: "#2e4d23" }}>
        Cargando información del producto...
      </div>
    );
  }

  // Si no se encontró el producto en el archivo local
  if (!planta) {
    return (
      <div style={{ padding: "150px 20px", textAlign: "center", fontFamily: "Arial" }}>
        <h2 style={{ color: "#2e4d23" }}>Producto no encontrado</h2>
        <p>El código ID: {id} no existe en nuestro catálogo local.</p>
        <Link to="/medicamentos" style={{ color: "#a3c038", fontWeight: "bold", textDecoration: "none" }}>
          ⬅ Volver al catálogo
        </Link>
      </div>
    );
  }

  // Lógica de limpieza de rutas de imagen
  let imagenLimpia = planta.imagen ? planta.imagen.trim() : "";
  // Nos aseguramos de que empiece con / para que la ruta sea absoluta
  const rutaFinal = imagenLimpia.startsWith("/") ? imagenLimpia : `/${imagenLimpia}`;

  const mensajeWA = `Hola, deseo más información sobre: ${planta.nombre}`;
  const urlWhatsApp = `https://wa.me/593999999999?text=${encodeURIComponent(mensajeWA)}`;

  return (
    <div
      style={{
        padding: "120px 5% 60px 5%",
        maxWidth: "1200px",
        margin: "0 auto",
        fontFamily: "sans-serif",
        backgroundColor: "#fff",
        minHeight: "100vh",
      }}
    >
      <Link to="/medicamentos" style={{ color: "#2e4d23", fontWeight: "bold", textDecoration: "none" }}>
        ⬅ Volver al catálogo
      </Link>

      <div style={{ display: "flex", gap: "40px", flexWrap: "wrap", marginTop: "30px" }}>
        {/* Lado Izquierdo: Imagen del Producto */}
        <div style={{ flex: "1", minWidth: "300px" }}>
          <img
            src={rutaFinal || "/imagenes/default.jpg"}
            alt={planta.nombre}
            onError={(e) => {
              e.target.src = "/imagenes/default.jpg";
            }}
            style={{
              width: "100%",
              borderRadius: "20px",
              boxShadow: "0 10px 30px rgba(0,0,0,0.1)",
              objectFit: "contain",
              maxHeight: "500px",
            }}
          />
        </div>

        {/* Lado Derecho: Información Detallada */}
        <div style={{ flex: "1.2", minWidth: "300px" }}>
          <h1 style={{ color: "#2e4d23", fontSize: "2.5rem", margin: "0" }}>{planta.nombre}</h1>
          <p style={{ fontStyle: "italic", color: "#666", fontSize: "1.1rem" }}>
            {planta.categoria || "Producto Natural"}
          </p>

          <div
            style={{
              height: "4px",
              width: "50px",
              backgroundColor: "#dced7c",
              margin: "20px 0",
            }}
          ></div>

          <h3 style={{ color: "#2e4d23" }}>Descripción:</h3>
          <p style={{ lineHeight: "1.6", color: "#444", textAlign: "justify" }}>
            {planta.descripcion || "Sin descripción disponible."}
          </p>

          <h3 style={{ color: "#2e4d23", marginTop: "20px" }}>Precio:</h3>
          <p style={{ fontSize: "1.5rem", fontWeight: "bold", color: "#a3c038" }}>
            ${Number(planta.precio || 0).toFixed(2)}
          </p>

          <div style={{ marginTop: "40px" }}>
            <a
              href={urlWhatsApp}
              target="_blank"
              rel="noopener noreferrer"
              style={{
                backgroundColor: "#25d366",
                color: "white",
                padding: "15px 30px",
                borderRadius: "50px",
                textDecoration: "none",
                fontWeight: "bold",
                display: "inline-block",
                boxShadow: "0 4px 15px rgba(37,211,102,0.3)",
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