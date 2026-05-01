import { Link } from "react-router-dom";
import { FaTiktok, FaWhatsapp, FaInstagram, FaFacebookF } from 'react-icons/fa';

function Navbar() {
  return (
    <header className="navbar-container" style={{ 
      backgroundColor: 'white', 
      minHeight: '65px', 
      display: 'flex', 
      alignItems: 'stretch', 
      justifyContent: 'flex-start', 
      width: '100%', 
      boxSizing: 'border-box', 
      position: 'fixed', 
      top: 0,
      left: 0,
      zIndex: 1000,
      flexWrap: 'wrap' /* Permite que los elementos se acomoden en celulares */
    }}>
      
      {/* CUADRO VERDE: El logo se mantiene a la izquierda */}
      <div className="nav-logo-box" style={{ 
        backgroundColor: '#dced7c', 
        padding: '0 30px', 
        display: 'flex', 
        alignItems: 'center',
        marginLeft: '80px', 
        height: '65px',
        flexShrink: 0 
      }}>
        <div style={{ textAlign: 'left', lineHeight: '1' }}>
          <div style={{ color: '#2e4d23', fontWeight: 'bold', fontSize: '1rem', fontFamily: 'Arial Black' }}>🌿 Centro</div>
          <div style={{ color: '#2e4d23', fontWeight: 'bold', fontSize: '1rem', fontFamily: 'Arial Black', marginLeft: '25px' }}>Naturista</div>
        </div>
      </div>

      {/* NAVEGACIÓN: Pegada al cuadro verde */}
      <nav className="nav-links" style={{ 
        display: 'flex', 
        alignItems: 'center', 
        gap: '30px', 
        marginLeft: '50px', 
        flexGrow: 1 
      }}>
        <Link to="/" style={{ color: '#333', textDecoration: 'none', fontWeight: 'bold', fontSize: '0.95rem' }}>Inicio</Link>
        <Link to="/medicamentos" style={{ color: '#333', textDecoration: 'none', fontWeight: 'bold', fontSize: '0.95rem' }}>Medicamentos</Link>
        
        <a 
          href="https://TU_PORTAL_AQUI.com" 
          className="btn-portal-nav"
          style={{
            backgroundColor: '#a3c038',
            color: 'white',
            padding: '8px 22px',
            borderRadius: '25px',
            textDecoration: 'none',
            fontWeight: 'bold',
            fontSize: '0.85rem'
          }}
        >
          Regresar al portal
        </a>
      </nav>

      {/* REDES SOCIALES: Empujadas a la derecha */}
      <div className="nav-socials" style={{ 
        display: 'flex', 
        gap: '20px', 
        fontSize: '1.8rem', 
        alignItems: 'center',
        paddingRight: '40px'
      }}>
        <a href="https://www.tiktok.com/@bienestarnaturalcentro" target="_blank" rel="noopener noreferrer" style={{ color: 'black', display: 'flex' }}><FaTiktok /></a>
        <a href="https://wa.me/+593939736066" target="_blank" rel="noopener noreferrer" style={{ color: 'black', display: 'flex' }}><FaWhatsapp /></a>
        <a href="https://www.instagram.com/bienestarnatural252026" target="_blank" rel="noopener noreferrer" style={{ color: 'black', display: 'flex' }}><FaInstagram /></a>
        <a href="https://www.facebook.com/profile.php?id=61578507098294" target="_blank" rel="noopener noreferrer" style={{ color: 'black', display: 'flex' }}><FaFacebookF /></a>
      </div>

      {/* ESTILOS PARA RESPONSIVE (CELULARES) */}
      <style>{`
        @media (max-width: 900px) {
          .nav-logo-box { marginLeft: 0 !important; padding: 0 15px !important; }
          .nav-links { marginLeft: 20px !important; gap: 15px !important; }
          .nav-socials { padding-right: 15px !important; font-size: 1.4rem !important; }
        }

        @media (max-width: 650px) {
          .navbar-container { height: auto !important; padding-bottom: 10px; }
          .nav-links { 
            order: 3; 
            width: 100%; 
            justify-content: center; 
            margin-left: 0 !important; 
            margin-top: 10px;
          }
          .nav-socials { order: 2; margin-left: auto; }
          .btn-portal-nav { padding: 6px 12px !important; font-size: 0.75rem !important; }
        }
      `}</style>
      
    </header>
  );
}

export default Navbar;