// src/services/api.js
export const getProductos = async () => {
  try {
    const response = await fetch('http://localhost:3001/api/productos');
    const data = await response.json();
    return data;
  } catch (error) {
    console.error("Error al traer productos:", error);
    return [];
  }
};