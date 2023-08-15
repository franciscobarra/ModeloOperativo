using operacion as db from '../db/notificacion';


service CatalogService {

    entity Notificacion as projection on db.notificacion;

    @requires: 'authenticated-user'
    entity NotificacionAuth as projection on db.notificacion;

    @requires: 'Admin'
   // @restrict: [{ grant: 'READ'}]
    entity NotificacionAdmin as projection on db.notificacion;
}

@(path : '/app/parameters')
service ParameterContainer @(requires: 'authenticated-user'){

    entity NotificacionApp as projection on db.notificacion;

}