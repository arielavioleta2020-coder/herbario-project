-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-04-2026 a las 05:59:53
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_plantas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantas`
--

CREATE TABLE `plantas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `beneficios` text DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `descripcion`, `categoria`, `imagen`) VALUES
(1, 'Agua de Florida', 3.00, 'Agua florida sirve para limpieza energética y de espacios', 'Aceites y Aguas', '/imagenes/agua-de-florida.jpeg'),
(2, 'Alcachofa', 8.00, 'Fibra de alcachofa sirve para limpiar el tracto digestivo, desintoxicar el colon, prevenir el estreñimiento', 'Digestivos', '/imagenes/alcachofa.jpeg'),
(3, 'Aceite Anice Plus', 1.00, 'Complemento a base de anís para aliviar cólicos y gases', 'Digestivos', '/imagenes/aceite-de-uso-topico-anice-plus.jpeg'),
(4, 'Azufre Alumbre', 2.00, 'Tratamiento tópico para problemas de la piel', 'Cuidado de la Piel', '/imagenes/azufre-alumbre.jpeg'),
(5, 'Benzo Garden', 7.00, 'Sirve para tratar el acné, eliminar espinillas, puntos negros y reducir la grasa facial.', 'Bienestar', '/imagenes/benzo-garden-crema-facial-60g.jpeg'),
(6, 'Biolica', 6.00, 'Biolica sirve mejorar la salud digestiva, combatir el estreñimiento y promover el tránsito intestinal regular', 'Sistema Inmune', '/imagenes/biolica.jpeg'),
(7, 'Cannabis', 7.50, 'Sirve para aliviar rápidamente el dolor y la inflamación en músculos y articulaciones.', 'Analgésicos', '/imagenes/crema-cannabis-129g.jpeg'),
(8, 'Carbon Activado', 5.00, 'Sirve para mejorar la salud digestiva, ayudando a reducir gases, inflamación, acidez y pesadez estomacal.', 'Desintoxicantes', '/imagenes/carbon-activado+sabila-100cap.jpeg'),
(9, 'Chanca Piedra', 10.00, 'Chancapiedra para eliminar cálculos renales', 'Renales', '/imagenes/chanca-piedra-60cap.jpeg'),
(10, 'Climater', 16.00, 'Alivia los síntomas de la menopausia, tales como sofocos, sudores nocturnos e insomnio.', 'Salud Femenina', '/imagenes/climater-40cap.jpeg'),
(11, 'CocoSol', 7.50, 'Aceite de coco para combatir bacterias, hongos y uso cosmético.', 'Aceites', '/imagenes/cocosol-275ml.jpeg'),
(12, 'Colageina + C', 10.00, 'Mejora salud de la piel, cabello y uñas.', 'Colágenos', '/imagenes/colageina-colageno-hidrolizado+c.jpeg'),
(13, 'Colageno Hidrolizado', 10.00, 'Mejorar la firmeza y elasticidad de la piel y salud articular.', 'Colágenos', '/imagenes/colageno-hidrolizado-tipo1.jpeg'),
(14, 'Colestermac', 7.00, 'Reduce niveles de colesterol y triglicéridos.', 'Cardiovascular', '/imagenes/colestermac-100tab-500mg.jpeg'),
(16, 'Coloriss', 3.00, 'Tónico capilar para mantener el color', 'Cabello', '/imagenes/coloriss.jpeg'),
(17, 'Concha de Nacar', 6.50, 'Sirve para aclarar, suavizar y regenerar la piel.', 'Cuidado de la Piel', '/imagenes/concha-de-nacar-50g.jpeg'),
(18, 'Crema Anti-Hongos', 6.00, 'Crema antihongos sirve para combatir infecciones fúngicas.', 'Cuidado de la Piel', '/imagenes/crema-anti-hongos.jpeg'),
(19, 'Detox Fibra', 7.00, 'Detox fibra sirve para bajar de peso y eliminar toxinas', 'Desintoxicantes', '/imagenes/detox.jpeg'),
(20, 'Diabemac Plus Tab', 7.00, 'Regula los niveles de glucosa en sangre.', 'Diabetes', '/imagenes/diabemac-Plus-100tab.jpeg'),
(21, 'Dulcamara', 6.00, 'Planta medicinal para problemas de la piel', 'Cuidado de la Piel', '/imagenes/dulcamara.jpeg'),
(22, 'El Caballito', 4.50, 'Colonia caballito sirve para desinfección y brindar frescura', 'Energéticos', '/imagenes/el-caballito.jpeg'),
(23, 'Eligarden', 8.50, 'Baba de caracol para firmeza e hidratación.', 'Bienestar', '/imagenes/eligarden-baba-de-caracol.jpeg'),
(24, 'Energiton', 14.00, 'Apoya el crecimiento y mantenimiento muscular.', 'Energéticos', '/imagenes/energiton.jpeg'),
(25, 'Fibra Pitahaya', 6.00, 'Mejora salud digestiva y alivia el estreñimiento.', 'Digestivos', '/imagenes/fibra-pitahaya.jpeg'),
(26, 'Gallina negra', 6.00, 'Fórmula tradicional para la salud femenina', 'Salud Femenina', '/imagenes/gallina-negra.jpeg'),
(28, 'Garlic Oil', 5.00, 'Disminuye el colesterol y reduce presión arterial.', 'Cardiovascular', '/imagenes/garlic-oil-100cap-500mg.jpeg'),
(29, 'Gastrizan natu', 5.00, 'Alivia gastritis, acidez y úlceras.', 'Digestivos', '/imagenes/gastrizan-natu-100cap.jpeg'),
(30, 'HGH 3', 19.00, 'HGH-3 sirve para el crecimiento', 'Hormonales', '/imagenes/hgh-3.jpeg'),
(31, 'Higa Life Blandas', 12.00, 'Protección del hígado.', 'Hepáticos', '/imagenes/higa_life-60cap-blandas.jpeg'),
(32, 'Higa-Life Duras', 14.00, 'Función y protección hepática.', 'Hepáticos', '/imagenes/higa-life-100capsulas-duras.jpeg'),
(33, 'Higariño Factors', 16.00, 'Mejorar el estado de salud del hígado y los riñones.', 'Hepáticos', '/imagenes/higariño-factors.jpeg'),
(34, 'Inmunolive Caps', 14.00, 'Sirve para fortalecer el sistema inmunológico.', 'Sistema Inmune', '/imagenes/inmunolive-40cap-500mg.jpeg'),
(37, 'Jugo detox', 8.00, 'Jugo Detox sirve para bajar de peso', 'Desintoxicantes', '/imagenes/jugo-detox.jpeg'),
(39, 'L-Arginina', 18.00, 'Favorece la circulación y el rendimiento físico.', 'Suplementos', '/imagenes/l-arginina-60cap-750mg.jpeg'),
(40, 'Limpieza intestinal', 2.00, 'Eliminar parásitos y amebas (3 sobres x $2)', 'Digestivos', '/imagenes/limpieza-intestinal.jpeg'),
(41, 'Mentol Sikura', 1.00, 'Alivio de golpes y dolores reumáticos.', 'Analgésicos', '/imagenes/mentol-sikura.jpeg'),
(42, 'Nutrifort', 11.00, 'Estimula el apetito y contribuye al crecimiento.', 'Nutricionales', '/imagenes/nutrifort.jpeg'),
(43, 'Omega 3 6 9', 7.00, 'Equilibra el colesterol.', 'Omega', '/imagenes/omega-3-6-9-1400mg.jpeg'),
(44, 'Oregano Oil + Garlic + Zinc', 10.00, 'Fortalece el sistema inmunológico', 'Sistema Inmune', '/imagenes/oregano-oil.jpeg'),
(45, 'Osteo live', 14.00, 'Cuidado articular y óseo.', 'Óseo', '/imagenes/osteo-live-60cap.jpeg'),
(46, 'PankreoLive', 6.00, 'Alivia molestias estomacales.', 'Digestivos', '/imagenes/pankreoLive-40cap.jpeg'),
(47, 'Piperazina Garden', 7.00, 'Desparasitante de niños.', 'Antiparasitarios', '/imagenes/piperazina-garden.jpeg'),
(48, 'QuitaDol', 8.00, 'Alivia dolor de cabeza y malestar corporal.', 'Analgésicos', '/imagenes/quitadol.jpeg'),
(49, 'Resveratrol 30cap', 10.00, 'Reduce el envejecimiento celular.', 'Antioxidantes', '/imagenes/resveratrol-30cap.jpeg'),
(50, 'Reum Stop', 12.00, 'Para dolor de articulaciones', 'Analgésicos', '/imagenes/reum-stop.jpeg'),
(51, 'Rompe Calculos', 5.00, 'Elimina cálculos renales y biliares', 'Renales', '/imagenes/rompe-calculos-100cap-300mg.jpeg'),
(52, 'Sal Inglesa', 0.90, 'Laxante para el estreñimiento', 'Digestivos', '/imagenes/sal-inglesa.jpeg'),
(53, 'Seven lax', 5.00, 'Laxante natural.', 'Digestivos', '/imagenes/seven-lax.jpeg'),
(54, 'Sylimarin', 10.00, 'Mejora la función hepática.', 'Hepáticos', '/imagenes/sylimarin-q10-60cap.jpeg'),
(55, 'Te 22 Plantas', 1.20, 'Desintoxica el organismo.', 'Tés', '/imagenes/te-medicinal-22-plantas.jpeg'),
(56, 'VagiCrem', 6.00, 'Trata infecciones por hongos.', 'Salud Femenina', '/imagenes/vagicream-uso-topico-vaginal.jpeg'),
(57, 'Velas de Colores Grandes', 0.50, 'Velas grandes para decoración', 'Hogar', '/imagenes/velas-de-colores-grandes.jpeg'),
(58, 'VenoFlash', 16.00, 'Prevenir y tratar las varices.', 'Circulación', '/imagenes/venoflash-40cap.jpeg'),
(59, 'Vinatu', 6.00, 'Vinagre de manzana para bajar de peso.', 'Energéticos', '/imagenes/vinatu.jpeg'),
(60, 'Vitamina D3', 12.00, 'Fortalece el sistema inmunológico.', 'Vitaminas', '/imagenes/vitamin-d3-4000iu.jpeg'),
(61, 'Zarzaparilla Tab', 7.00, 'Desintoxicar el organismo.', 'Desintoxicantes', '/imagenes/zarzaparilla-100tab-500mg.jpeg'),
(62, 'Zinc', 7.00, 'Fortalece el sistema inmunológico.', 'Minerales', '/imagenes/zinc.jpeg'),
(63, 'Triple C Advance', 1.00, 'Combinación de Vitamina C, Complejo B, D3, Magnesio y Zinc.', 'Vitaminas', '/imagenes/triple-c-advance-bebida.jpeg'),
(64, 'Aceite de Orégano', 15.00, 'Antiinflamatorio natural potente.', 'Aceites', '/imagenes/aceite-oregano-comestible-30ml.jpeg'),
(65, 'Rosa Mosqueta Aceite', 6.00, 'Atenúa cicatrices y estrías.', 'Aceites', '/imagenes/aceite-topico-rosa-mosqueta.jpeg'),
(66, 'Shot potenciador', 1.00, 'Mejora el rendimiento.', 'Energéticos', '/imagenes/shot-potenciadores.jpeg'),
(67, 'Vitacerebrina', 9.00, 'Rendimiento cognitivo.', 'Cerebral', '/imagenes/vitacerebrina.jpeg'),
(68, 'Pomada apitoxina', 5.00, 'Desinflama y alivia dolores.', 'Analgésicos', '/imagenes/pomada-de-apitoxina.jpeg'),
(70, 'Shot ginseng', 1.00, 'Energía física y mental.', 'Energéticos', '/imagenes/shot-de-ginseng.jpeg'),
(71, 'Omega 3 1000mg', 11.00, 'Salud cardiovascular.', 'Omega', '/imagenes/omega-3-1.000mg.jpeg'),
(72, 'Ácido fólico', 7.00, 'Producción de nuevas células.', 'Vitaminas', '/imagenes/folic-acid-400mcg.jpeg'),
(73, 'Valeriana gotas', 4.00, 'Sedante natural y relajante.', 'Relajantes', '/imagenes/valeriana-gotas.jpeg'),
(74, 'Calcio + Vitamina D', 6.00, 'Fortalece huesos', 'Minerales', '/imagenes/calcio+d-30cap.jpeg'),
(75, 'Strongermac', 6.50, 'Síntomas de la menopausia.', 'Energéticos', '/imagenes/strongmac-plus.jpeg'),
(76, 'Parásitosis Jarabe', 6.50, 'Eliminación de parásitos.', 'Antiparasitarios', '/imagenes/Parásitosis.jpeg'),
(78, 'Crema Rosa Mosqueta', 6.50, 'Hidratante y cicatrizante natural.', 'Cuidado de la Piel', '/imagenes/crema-rosa-mosqueta.jpeg'),
(79, 'L-Arginina Kids', 13.50, 'Hormona del crecimiento en niños.', 'Infantil', '/imagenes/l-arginina-kids+hierro.jpeg'),
(80, 'Omega 3 1400mg', 13.00, 'Apoyo a la función cognitiva.', 'Omega', '/imagenes/omega-3-1400mg.jpeg'),
(81, 'Anticolesterol', 5.00, 'Reduce colesterol LDL.', 'Cardiovascular', '/imagenes/anticolesterol.jpeg'),
(82, 'Formula 15 D', 15.00, 'Renovación de células madre.', 'Bienestar', '/imagenes/formula-15d.jpeg'),
(83, 'Fenogreco Semillas', 5.00, 'Regula glucosa y mejora libido.', 'Semillas', '/imagenes/wayra-mikuna-fenogreco.jpeg'),
(84, 'Ganoderma + C', 10.00, 'Refuerza sistema inmunológico.', 'Hongos Medicinales', '/imagenes/ganoderma+c-zinc.jpeg'),
(85, 'Calostro Bovino', 10.00, 'Recuperación física y defensas.', 'Sistema Inmune', '/imagenes/calostro-calostro-bobina.jpeg'),
(87, 'Agua de Florida Premium', 6.50, 'Limpieza espiritual', 'Aceites y Aguas', '/imagenes/agua-de-florida2.jpeg'),
(88, 'Aloe Vera + Vit E', 0.25, 'Hidratación y cicatrización.', 'Cuidado de la Piel', '/imagenes/aloe-vera+vitamina-e.jpeg'),
(89, 'Alumbre Barra', 2.00, 'Controla sudoración y mal olor.', 'Cuidado Personal', '/imagenes/alumbre-en-barra-30g.jpeg'),
(90, 'Arniflex Gel', 4.00, 'Alivio muscular y moretones.', 'Analgésicos', '/imagenes/arniflex-gel-masage-muscular.jpeg'),
(91, 'Ashwagandha 600mg', 16.00, 'Reduce estrés y ansiedad.', 'Relajantes', '/imagenes/ashwagandha-extract-600mg.jpeg'),
(92, 'Ashwagandha Premium', 12.00, 'Regula cortisol y hormonas.', 'Relajantes', '/imagenes/ashwagangha-linea-premium-60caps.jpeg'),
(93, 'B12 100tab', 7.00, 'Reduce cansancio y fatiga.', 'Vitaminas', '/imagenes/b-12-100tab.jpeg'),
(94, 'Bio Eco Sweet (Propóleo)', 6.00, 'Alivia dolor de garganta y tos.', 'Naturales', '/imagenes/bio-eco-sweet-25ml.jpeg'),
(95, 'Biotina 600mg', 6.00, 'Fortalece cabello, piel y uñas.', 'Vitaminas', '/imagenes/biotina-30cap-600mg.jpeg'),
(96, 'RCalcumac', 6.50, 'Elimina cálculos renales.', 'Minerales', '/imagenes/rcalcumac-500ml.jpeg'),
(98, 'Centella Asiática', 7.00, 'Mejora circulación y combate celulitis.', 'Nutricionales', '/imagenes/centella-asiatica-y-spirulina.jpeg'),
(99, 'Citrato Magnesio Cap', 7.00, 'Relajación muscular.', 'Minerales', '/imagenes/citrato-de-magnesio-100cap-600mg.jpeg'),
(100, 'Citrato Magnesio 900g', 16.00, 'Apoyo muscular y óseo.', 'Minerales', '/imagenes/citrato-de-magnesio-900g.jpeg'),
(101, 'Citrato Potasio Cap', 7.00, 'Presión arterial normal.', 'Minerales', '/imagenes/citrato-de-potasio-100cap-600mg .jpeg'),
(102, 'Citrato Potasio 500ml', 10.00, 'Trata acidosis metabólica.', 'Minerales', '/imagenes/citrato-de-potasio-500ml.jpeg'),
(103, 'Clorofila Detox', 12.00, 'Elimina toxinas y mal aliento.', 'Desintoxicantes', '/imagenes/clorofila-detox-600ml.jpeg'),
(104, 'Cloruro Magnesio Sol', 7.00, 'Alivia artritis y artrosis.', 'Minerales', '/imagenes/cloruro-de-magnesio-1000ml.jpeg'),
(105, 'Colageina Crema', 10.00, 'Firmeza y elasticidad cutánea.', 'Cuidado de la Piel', '/imagenes/colageina-crema-cosmetica-120g.jpeg'),
(106, 'Complejo Green B', 2.75, 'Previene anemia y fatiga.', 'Vitaminas', '/imagenes/complejo-green-b-120ml.jpeg'),
(107, 'Crecitol Jarabe', 6.50, 'Fortalece defensas en crecimiento.', 'Vitaminas', '/imagenes/crecitol-multivitaminico-120ml.jpeg'),
(108, 'Crema Azufre Tubo', 2.00, 'Combate el acné.', 'Cuidado de la Piel', '/imagenes/crema-azufre-alumbre.jpeg'),
(109, 'Cúrcuma Caps', 8.50, 'Procesos inflamatorios.', 'Antioxidantes', '/imagenes/curcuma-100cap-600mg.jpeg'),
(110, 'Eua Cologne Jocker', 8.00, 'Colonia refrescante', 'Cuidado Personal', '/imagenes/eua-de-cologne-club-jocker.jpeg'),
(111, 'Vitamina E 400 UI', 7.50, 'Sistema inmunológico.', 'Vitaminas', '/imagenes/e-400-u.i.vitamina-30cap.jpeg'),
(114, 'Equinácea Propóleo', 7.00, 'Afecciones respiratorias.', 'Sistema Inmune', '/imagenes/equinacea+propoleo-500ml.jpeg'),
(117, 'Gel Garden Analgésico', 7.00, 'Dolor en cuello y espalda.', 'Analgésicos', '/imagenes/gel-analgesico-garden-120g.jpeg'),
(118, 'Gel Garden Forte', 8.00, 'Dolor muscular articular.', 'Analgésicos', '/imagenes/gel-garden-forte-140g.jpeg'),
(119, 'Geriatril Jarabe', 11.00, 'Mayor lucidez mental.', 'Nutricionales', '/imagenes/geriatril-jarabe-500ml.jpeg'),
(120, 'Ginkgo 100tab', 7.00, 'Rendimiento cognitivo.', 'Cerebral', '/imagenes/ginkgo-biloba-100tab-600mg.jpeg'),
(121, 'Ginseng Ginkgo', 6.50, 'Energía física.', 'Energéticos', '/imagenes/ginseng+ginkgo-biloba-500ml.jpeg'),
(123, 'Higa Riñomac Liq', 6.50, 'Sistema hepático renal.', 'Hepáticos', '/imagenes/higa-riñomac-500ml.jpeg'),
(124, 'Higamac Plus Liq', 6.50, 'Funciones del sistema hepático.', 'Hepáticos', '/imagenes/higamac-plus-500ml.jpeg'),
(125, 'Inmunolive Oral', 13.00, 'Defensas líquida', 'Sistema Inmune', '/imagenes/inmunolive-solucion-oral-120ml.jpeg'),
(127, 'Jengibre Liq', 4.50, 'Tos y congestión nasal.', 'Digestivos', '/imagenes/jengibre-400ml.jpeg'),
(128, 'Jengibre Prop C', 9.00, 'Fortalece defensas.', 'Sistema Inmune', '/imagenes/jengibre-propoleo-vitamina-c-500ml.jpeg'),
(129, 'Komilon Jalea', 8.00, 'Estimula el apetito y crecimiento infantil.', 'Infantil', '/imagenes/komilon-kids-jalea-240ml.jpeg'),
(130, 'Manteca Cacao Pura', 0.25, 'Hidratar estrías y cicatrices', 'Cuidado de la Piel', '/imagenes/manteca-de-cacao.jpeg'),
(131, 'Melatonina 600 Caps', 11.00, 'Calidad del descanso.', 'Relajantes', '/imagenes/melatonina-600mg.jpeg'),
(132, 'Moringa Super', 7.00, 'Protección celular.', 'Nutricionales', '/imagenes/moringa.jpeg'),
(133, 'Multi Cbrina Niños', 8.50, 'Fortalece memoria en estudiantes.', 'Infantil', '/imagenes/multi-cbrina-kids-240ml.jpeg'),
(134, 'Multicbrina Caps', 9.50, 'Nutrición cerebral.', 'Vitaminas', '/imagenes/multicbrina-40cap-500mg.jpeg'),
(136, 'Ortiga Negra 500', 6.50, 'Salud masculina y próstata.', 'Salud Masculina', '/imagenes/ortiga-negra-500ml.jpeg'),
(139, 'Polen Abeja', 5.00, 'Aumenta energía.', 'Nutricionales', '/imagenes/polen-frasco.jpeg'),
(140, 'Preson Mac Liq', 6.50, 'Regular presión arterial.', 'Cardiovascular', '/imagenes/preson-mac-500ml.jpeg'),
(141, 'Propóleo 6 en 1', 6.00, 'Sistema inmune.', 'Sistema Inmune', '/imagenes/propoleo-6-en-1-500ml.jpeg'),
(142, 'Prosta Eros 60', 20.00, 'Inflamación de próstata.', 'Salud Masculina', '/imagenes/prosta-eros-60cap.jpeg'),
(143, 'Prosta Zeus Duo', 20.00, 'Salud masculina.', 'Salud Masculina', '/imagenes/prosta-zeus-duo-500mg.jpeg'),
(144, 'Prostalex Caps', 12.00, 'Soporte prostático.', 'Salud Masculina', '/imagenes/prostalex-40cap.jpeg'),
(145, 'Prostazan Prozul', 5.00, 'Salud del tracto urinario.', 'Salud Masculina', '/imagenes/prostazan-prozul-health-100cap.jpeg'),
(146, 'Uro Vaginal Probiotic Caps', 18.00, 'Salud vaginal y control de olor.', 'Naturales', '/imagenes/uro-pastillas.jpeg'),
(147, 'Uro Collagen Probiotic', 14.00, 'Colágeno con probióticos.', 'Colágenos', '/imagenes/uro-collagen-polvo.jpeg'),
(148, 'Uro Probiotic Vaginal Liq', 8.00, 'Equilibrio de flora vaginal.', 'Naturales', '/imagenes/uro-jarabe.jpeg'),
(149, 'Saw Palmetto 250', 5.00, 'Soporte prostático.', 'Salud Masculina', '/imagenes/saw-palmetto-100cap-250mg.jpeg'),
(150, 'Super Calcium 600', 16.00, 'Fortalece huesos y dientes.', 'Minerales', '/imagenes/super-calcium-600mg.jpeg'),
(151, 'Té Verde Liq', 7.00, 'Estimula metabolismo.', 'Tés', '/imagenes/te-verde-500ml.jpeg'),
(152, 'Vapo Garden Ana', 5.70, 'Descongestionante y analgésico.', 'Analgésicos', '/imagenes/vapo-garden-analgesico-20ml.jpeg'),
(153, 'Vino Cerebral 500', 13.00, 'Memoria y concentración.', 'Cerebral', '/imagenes/vino-cerebral-500ml.jpeg'),
(155, 'Vitamina A Caps', 7.50, 'Visión y crecimiento.', 'Vitaminas', '/imagenes/vitamina-a-100cap-400mg.jpeg'),
(156, 'Vitamina C 240ml', 8.50, 'Refuerza sistema inmunológico.', 'Vitaminas', '/imagenes/vitamina-c-240ml.jpeg'),
(158, 'Vitamina K Caps', 7.00, 'Coagulación sanguínea.', 'Vitaminas', '/imagenes/vitamina-k.jpeg'),
(160, 'Vitatoro Tónico', 9.00, 'Combate fatiga física.', 'Energéticos', '/imagenes/vitatoro-tonico-nutricional-500ml.jpeg'),
(161, 'Zarzaparrilla Liq', 7.00, 'Desinflama hígado y vías urinarias.', 'Desintoxicantes', '/imagenes/zarzaparrilla-500ml.jpeg'),
(162, 'Calcium + D (Premium)', 16.00, 'Previene osteoporosis.', 'Minerales', '/imagenes/calcio+d-30cap.jpeg'),
(163, 'Caramelos Ginseng', 1.00, 'Aumentar energía y reducir fatiga.', 'Energéticos', '/imagenes/Caramelo ginseng .jpeg'),
(164, 'Caramelos Jengibre', 1.00, 'Aliviar garganta irritada.', 'Respiratorio', '/imagenes/Caramelos jengibre.jpeg'),
(165, 'Caramelos Própolis', 1.00, 'Aliviar ronquera e irritación bucal.', 'Respiratorio', '/imagenes/Caramelos de propoleo .jpeg'),
(166, 'Chupetes Vit C', 0.30, 'Defensas para niños.', 'Infantil', '/imagenes/Chupete de Pectina.jpeg'),
(167, 'Chupetes Pectina', 0.30, 'Salud respiratoria niños.', 'Vitaminas', '/imagenes/chupete vitamina C.jpeg'),
(168, 'Colagen-Hidro 1000g', 15.00, 'Fortalece cartílagos.', 'Colágenos', '/imagenes/colagen-hidrolizado-10000g.jpeg'),
(169, 'Eucamiel Sobre', 0.70, 'Descongestionante natural.', 'Respiratorio', '/imagenes/Eucamiel.jpeg'),
(170, 'Eucamiel Tabletas', 0.50, 'Síntomas de gripe.', 'Respiratorio', '/imagenes/Ecumiel Tabletas.jpeg'),
(171, 'Flor de Jamaica', 1.00, 'Controlar colesterol y bajar de peso.', 'Cardiovascular', '/imagenes/Flor de jamaica.jpeg'),
(173, 'Multivit Minerales', 7.00, 'Aporta energía y combate fatiga.', 'Vitaminas', '/imagenes/Multivitaminas y minerales.jpeg'),
(175, 'Toro Negro Caps', 10.00, 'Rendimiento físico y mental.', 'Energéticos', '/imagenes/toro-negro-60cap.jpeg'),
(176, 'Uña de Gato Liq', 6.50, 'Fortalece sistema inmunológico.', 'Sistema Inmune', '/imagenes/uña-de-gato=sangre-de-drago-500ml .jpeg'),
(178, 'Dexe Black Hair', 1.00, 'Cubre canas (Negro).', 'Cabello', '/imagenes/dexe-black-hair-shampoo.jpeg'),
(179, 'Dexe Brown Black', 1.00, 'Cubre canas (Café Oscuro).', 'Cabello', '/imagenes/dexe-brown-black-25ml.jpeg'),
(180, 'Dexe Dark Brown', 1.00, 'Cubre canas (Café).', 'Cabello', '/imagenes/dexe-shampoo-dark-brown.jpeg'),
(181, 'Gel Quitadol Forte (Naproxeno)', 8.00, 'Anestesia local y desinflamante.', 'Analgésicos', '/imagenes/gel-quitadol-forte.jpeg'),
(182, 'Velas Pequeñas', 0.20, 'Para peticiones o decoración.', 'Esotéricos', '/imagenes/velas-de-colores-y-blancas-pequeñas.jpeg'),
(183, 'Jabones Esotéricos (Gallina Negra/Ruda)', 1.50, 'Limpieza y protección.', 'Esotéricos', '/imagenes/jabones-esotericos.jpeg'),
(184, 'Jabones Dr. Peña (Sulfuroso/Hiel)', 2.00, 'Tratamiento de afecciones de la piel.', 'Cuidado Personal', '/imagenes/jabon-sulfuroso-del-dr-peña.jpeg'),
(185, 'Jabones RCH Aromma (Cúrcuma/Arroz)', 2.00, 'Cuidado facial e hidratación.', 'Cuidado Personal', '/imagenes/jabones-aroma.jpeg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `plantas`
--
ALTER TABLE `plantas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `plantas`
--
ALTER TABLE `plantas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
