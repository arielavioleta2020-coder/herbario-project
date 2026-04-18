// Importamos los productos directamente del archivo local
import { productos } from '../data/productosCompletos';

export const getProductos = async () => {
  try {
    // Ya no usamos el fetch a la base de datos (localhost:3001)
    // Simplemente devolvemos los productos del archivo .js
    return productos;
  } catch (error) {
    console.error("Error al cargar productos locales:", error);
    return [];
  }
};