import { Link } from "react-router-dom";
import '../styles/Medicamentos.css';
// Importamos los iconos de la librería react-icons
import { FaTiktok, FaWhatsapp, FaInstagram, FaFacebookF } from 'react-icons/fa';

function Navbar() {
  return (
    <header className="navbar">
      <div className="logo-container">
        <div className="logo-text">
          <span className="brand-name">🌿 Herbario</span>
          <span className="brand-sub">Medicinal</span>
        </div>
      </div>

      <nav className="nav-links">
        <Link to="/">Inicio</Link>
        <Link to="/medicamentos">Medicamentos</Link>
      </nav>

      <div className="nav-socials">
        <a href="https://www.tiktok.com/@bienestarnaturalcentro?_r=1&_t=ZS-94unLfKgBt7" target="_blank" rel="noopener noreferrer">
          <FaTiktok />
        </a>
        <a href="https://wa.me/+593939736066" target="_blank" rel="noopener noreferrer">
          <FaWhatsapp />
        </a>
        <a href="https://www.instagram.com/bienestarnatural252026?igsh=aTlhYW96NDMzeGkw" target="_blank" rel="noopener noreferrer">
          <FaInstagram />
        </a>
        <a href="https://www.facebook.com/profile.php?id=61578507098294" target="_blank" rel="noopener noreferrer">
          <FaFacebookF />
        </a>
      </div>
    </header>
  );
}

export default Navbar;