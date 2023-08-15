namespace operacion;

using { cuid , managed } from '@sap/cds/common';

entity notificacion : cuid , managed  {
  name : String(50);
  predio : String(50);
  coordenada_x: String(50);
  coordenada_y: String(50);
}


