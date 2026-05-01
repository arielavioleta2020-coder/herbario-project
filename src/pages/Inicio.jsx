import React from 'react';
import '../styles/main.css';

function Inicio() {
  return (
    <main className="hero-section">
      <div className="bg-left">
        <div className="hero-content">
          <h1>Centro <br /> Naturista </h1>
          <div className="info-empresa">
            <p><b>Correo:</b> bienestarnatural0202@gmail.com</p>
            <p><b>Teléfono:</b> +593 93 973 6066</p>
            <p><b>Dirección:</b> Quito, Ecuador</p>
            
            {/* NUEVO: BLOQUE DE ENTREGAS A DOMICILIO */}
            <div style={{
              marginTop: '25px',
              backgroundColor: 'rgba(220, 237, 124, 0.2)', /* Color verde claro del logo con transparencia */
              borderLeft: '5px solid #dced7c',
              padding: '12px 20px',
              borderRadius: '0 10px 10px 0',
              display: 'inline-block'
            }}>
              <p style={{ 
                margin: 0, 
                color: '#dced7c', 
                fontWeight: 'bold', 
                fontSize: '1.2rem',
                textShadow: '1px 1px 3px rgba(0,0,0,0.3)'
              }}>
                🛵 ¡Hacemos entregas a domicilio!
              </p>
            </div>
          </div>
        </div>
      </div>

      <div className="bg-right"></div>

      <div className="rombo-flotante">
        <div className="hexagon-outer">
          <div className="hexagon-inner">
            <span className="label-rombo top">BIENESTAR NATURAL</span>
            <img src="/imagenes/Logo.png" alt="Logo" className="logo-rombo" />
            <span className="label-rombo bottom">CENTRO NATURISTA</span>
          </div>
        </div>
      </div>
    </main>
  );
}

export default Inicio;