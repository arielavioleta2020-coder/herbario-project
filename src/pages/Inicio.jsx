import React from 'react';
import '../styles/main.css';

function Inicio() {
  return (
    <main className="hero-section">
      <div className="bg-left">
        <div className="hero-content">
          <h1>Herbario de <br /> Medicinas <br /> Naturales</h1>
          <div className="info-empresa">
            <p><b>Correo:</b> bienestarnatural0202@gmail.com</p>
            <p><b>Teléfono:</b> +593 93 973 6066</p>
            <p><b>Dirección:</b> Quito, Ecuador</p>
          </div>
        </div>
      </div>

      <div className="bg-right"></div>

      <div className="rombo-flotante">
        <div className="hexagon-outer">
          <div className="hexagon-inner">
            {/* Estos textos ahora están bloqueados en su posición interna */}
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