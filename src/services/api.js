import { productos } from '../data/productosCompletos.js';

export const getProductos = async () => {
    // Forzamos el retorno de los datos locales sin pasar por ningún fetch
    console.log("Cargando productos desde el archivo local...");
    return productos;
};