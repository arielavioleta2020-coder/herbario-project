function PlantaCard({ planta }) {
  // Vamos a imprimir en la consola del navegador qué está llegando de la base de datos
  console.log("Revisando planta:", planta.nombre, "Imagen:", planta.imagen);

  return (
    <div className="producto-card">
      {/* QUITAMOS TODA VALIDACIÓN: Obligamos a usar planta.imagen */}
      <img src={`/${planta.imagen}`} alt={planta.nombre} />
      
      <h3>{planta.nombre}</h3>
      <p className="precio">${planta.precio}</p>
      
      <a className="ver-detalle" href={`/medicamento/${planta.id}`}>
        Ver detalle
      </a>
    </div>
  );
}
export default PlantaCard;

