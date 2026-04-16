import React from "react";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Inicio from "./pages/Inicio";
import Medicamentos from "./pages/Medicamentos";
import DetalleMedicamento from "./pages/DetalleMedicamento";
import Navbar from "./components/Navbar";

function App() {
  return (
    <BrowserRouter>
      <Navbar />
      <Routes>
        <Route path="/" element={<Inicio />} />
        <Route path="/medicamentos" element={<Medicamentos />} />
<Route path="/medicamento/:id" element={<DetalleMedicamento />} />
      </Routes>
    </BrowserRouter>
  );
}

export default App;