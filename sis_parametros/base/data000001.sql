
/***********************************I-DAT-RAC-PARAM-0-31/12/2012*****************************************/

/*
*	Author: RAC
*	Date: 21/12/2012
*	Description: Build the menu definition and the composition
*/

/*

Para  definir la la metadata, menus, roles, etc

1) sincronize ls funciones y procedimientos del sistema
2)  verifique que la primera linea de los datos sea la insercion del sistema correspondiente
3)  exporte los datos a archivo SQL (desde la interface de sistema en sis_seguridad), 
    verifique que la codificacion  se mantenga en UTF8 para no distorcionar los caracteres especiales
4)  remplaze los sectores correspondientes en este archivo en su totalidad:  (el orden es importante)  
                             menu, 
                             funciones, 
                             procedimietnos

*/

INSERT INTO segu.tsubsistema ( codigo, nombre, fecha_reg, prefijo, estado_reg, nombre_carpeta, id_subsis_orig)
VALUES ('PARAM', 'Parametros Generales', '2009-11-02', 'PM', 'activo', 'parametros', NULL);

----------------------------------
--COPY LINES TO data.sql FILE  
---------------------------------

select pxp.f_insert_tgui ('PARAM', 'Parametros Generales', 'PARAM', 'si', 2, '', 1, '../../../lib/imagenes/param32x32.png', 'Sistema de Parametros', 'PARAM');
select pxp.f_insert_tgui ('Alarmas', 'Para programar las alarmas', 'ALARM', 'si', 1, 'sis_parametros/vista/alarma/Alarma.php', 2, '', 'Alarma', 'PARAM');
select pxp.f_insert_tgui ('Departamentos', 'Departamentos', 'DEPTO', 'si', 3, 'sis_parametros/vista/depto/Depto.php', 2, '', 'Depto', 'PARAM');
select pxp.f_insert_tgui ('Lugar', 'Lugar', 'LUG', 'si', 4, 'sis_parametros/vista/lugar/Lugar.php', 2, '', 'Lugar', 'PARAM');
select pxp.f_insert_tgui ('Institucion', 'Detalle de instituciones', 'INSTIT', 'si', 5, 'sis_parametros/vista/institucion/Institucion.php', 2, '', 'Institucion', 'PARAM');
select pxp.f_insert_tgui ('Proyecto EP', 'Proyecto EP proviene de ENDESIS', 'PRO', 'si', 5, 'sis_parametros/vista/proyecto/Proyecto.php', 2, '', 'Proyecto', 'PARAM');
select pxp.f_insert_tgui ('Proveedores', 'Registro de Proveedores', 'PROVEE', 'si', 5, 'sis_parametros/vista/proveedor/Proveedor.php', 2, '', 'proveedor', 'PARAM');
select pxp.f_insert_tgui ('Documentos', 'Documentos por Sistema', 'DOCUME', 'si', 4, 'sis_parametros/vista/documento/Documento.php', 2, '', 'Documento', 'PARAM');
select pxp.f_insert_tgui ('Configuracion Alarmas', 'Para configurar las alarmas', 'CONALA', 'si', 1, 'sis_parametros/vista/config_alarma/ConfigAlarma.php', 2, '', 'ConfigAlarma', 'PARAM');
select pxp.f_insert_tgui ('Unidades de Medida', 'Registro de Unidades de Medida', 'UME', 'si', 10, 'sis_parametros/vista/unidad_medida/UnidadMedida.php', 2, '', 'UnidadMedida', 'PARAM');
select pxp.f_insert_tgui ('Gestion', 'Manejo de gestiones', 'GESTIO', 'si', 1, 'sis_parametros/vista/gestion/Gestion.php', 2, '', 'Gestion', 'PARAM');

select pxp.f_insert_tgui ('Catalogo', 'Catalogo', 'CATA', 'si', 4, 'sis_parametros/vista/catalogo/Catalogo.php', 2, '', 'Catalogo', 'PARAM');
select pxp.f_insert_tgui ('Periodo', 'Periodo', 'PERIOD', 'si', 2, 'sis_parametros/vista/periodo/Periodo.php', 2, '', 'Periodo', 'PARAM');
select pxp.f_insert_tgui ('Moneda', 'Monedas', 'MONPAR', 'si', 3, 'sis_parametros/vista/moneda/Moneda.php', 2, '', 'Moneda', 'PARAM');
select pxp.f_insert_tgui ('Tipos de Catálogos', 'Tipos de Catálogos', 'PACATI', 'si', 11, 'sis_parametros/vista/catalogo_tipo/CatalogoTipo.php', 2, '', 'CatalogoTipo', 'PARAM');
select pxp.f_insert_tgui ('Servicios', 'Para registro de los servicios', 'SERVIC', 'si', 1, 'sis_parametros/vista/servicio/Servicio.php', 2, '', 'Servicio', 'PARAM');
select pxp.f_insert_tgui ('EP', 'Elementos de la Estructura Programatica', 'CEP', 'si', 1, '', 2, '', '', 'PARAM');
select pxp.f_insert_tgui ('Compras', 'Parametrizaciones re lacionadas con compras', 'CCOM', 'si', 2, '', 3, '', '', 'PARAM');
select pxp.f_insert_tgui ('Aprobadores', 'Aprobadores de Compras', 'APROC', 'si', 1, 'sis_parametros/vista/aprobador/Aprobador.php', 4, '', 'Aprobador', 'PARAM');
select pxp.f_insert_tgui ('Financiador', 'Financiadores de Compras', 'FIN', 'si', 1, 'sis_parametros/vista/financiador/Financiador.php', 3, '', 'Financiador', 'PARAM');
select pxp.f_insert_tgui ('Regional', 'Regionales de Compras', 'REGIO', 'si', 2, 'sis_parametros/vista/regional/Regional.php', 3, '', 'Regional', 'PARAM');
select pxp.f_insert_tgui ('Programa', 'Programas de Compras', 'PROG', 'si', 3, 'sis_parametros/vista/programa/Programa.php', 3, '', 'Programa', 'PARAM');
select pxp.f_insert_tgui ('Actividad', 'Actividad', 'ACT', 'si', 5, 'sis_parametros/vista/actividad/Actividad.php', 3, '', 'Actividad', 'PARAM');
select pxp.f_insert_tgui ('Programa-Proyecto-Actividad', 'programa proyecto actividad', 'PPA', 'si', 6, 'sis_parametros/vista/programa_proyecto_acttividad/ProgramaProyectoActtividad.php', 3, '', 'ProgramaProyectoActtividad', 'PARAM');
select pxp.f_insert_tgui ('Proyecto', 'Proyecto EP proviene de ENDESIS', 'PRO', 'si', 5, 'sis_parametros/vista/proyecto/Proyecto.php', 2, '', 'Proyecto', 'PARAM');
select pxp.f_insert_tgui ('Financiador-Regional-Programa-Proyecto', 'financiadores Regionales Programas Proyectos', 'FRPP', 'si', 7, 'sis_parametros/vista/ep/Ep.php', 3, '', 'Ep', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_get_moneda_base', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_tdepto_usuario_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_proveedor_item_servicio_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_catalogo_tipo_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_tproveedor_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_tpm_proyecto_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_unidad_medida_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_config_alarma_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_periodo_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_catalogo_tipo_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_config_alarma_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_institucion_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_unidad_medida_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_catalogo_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_dispara_alarma_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_convertir_moneda', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_catalogo_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_proveedor_item_servicio_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_servicio_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_gestion_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_tpm_proyecto_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_lugar_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_documento_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_institucion_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_periodo_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_gestion_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_moneda_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_dispara_alarma_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_inserta_alarma', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_obtener_correlativo', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_tproveedor_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_servicio_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_documento_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_alarma_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_alarma_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_lugar_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_obtener_padre_lugar', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_moneda_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_tdepto_usuario_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_financiador_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_financiador_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_regional_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_regional_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_programa_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_programa_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_actividad_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_actividad_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_programa_proyecto_acttividad_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_programa_proyecto_acttividad_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_proyecto_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_proyecto_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_ep_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_ep_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tprocedimiento ('PM_INSTIT_INS', 'Insercion de registros', 'si', '', '', 'param.ft_institucion_ime');
select pxp.f_insert_tprocedimiento ('PM_INSTIT_MOD', 'Modificacion de registros', 'si', '', '', 'param.ft_institucion_ime');
select pxp.f_insert_tprocedimiento ('PM_INSTIT_ELI', 'Eliminacion de registros', 'si', '', '', 'param.ft_institucion_ime');
select pxp.f_insert_tprocedimiento ('PM_PERIOD_INS', 'Inserta Funciones', 'si', '', '', 'param.ft_periodo_ime');
select pxp.f_insert_tprocedimiento ('PM_PERIOD_MOD', 'Modifica la periodo seleccionada', 'si', '', '', 'param.ft_periodo_ime');
select pxp.f_insert_tprocedimiento ('PM_PERIOD_ELI', 'Inactiva la periodo selecionada', 'si', '', '', 'param.ft_periodo_ime');
select pxp.f_insert_tprocedimiento ('PM_GESTIO_SEL', 'CODIGO NO DOCUMENTADO', 'si', '', '', 'param.ft_gestion_sel');
select pxp.f_insert_tprocedimiento ('PM_GESTIO_CONT', 'CODIGO NO DOCUMENTADO', 'si', '', '', 'param.ft_gestion_sel');
select pxp.f_insert_tprocedimiento ('PM_MONEDA_SEL', 'CODIGO NO DOCUMENTADO', 'si', '', '', 'param.f_moneda_sel');
select pxp.f_insert_tprocedimiento ('PM_MONEDA_CONT', 'CODIGO NO DOCUMENTADO', 'si', '', '', 'param.f_moneda_sel');
select pxp.f_insert_tprocedimiento ('PM_DISALARM_SEL', 'Consulta de datos', 'si', '', '', 'param.ft_dispara_alarma_sel');
select pxp.f_insert_tprocedimiento ('PM_DISALARM_CONT', 'Conteo de registros', 'si', '', '', 'param.ft_dispara_alarma_sel');
select pxp.f_insert_tprocedimiento ('PM_PROVEE_SEL', 'Consulta de datos', 'si', '', '', 'param.f_tproveedor_sel');
select pxp.f_insert_tprocedimiento ('PM_PROVEE_CONT', 'Conteo de registros', 'si', '', '', 'param.f_tproveedor_sel');
select pxp.f_insert_tprocedimiento ('PM_PROVEEV_SEL', 'Consulta de datos de proveedores a partir de una vista de base de datos', 'si', '', '', 'param.f_tproveedor_sel');
select pxp.f_insert_tprocedimiento ('PM_PROVEEV_CONT', 'Conteo de registros de proveedores en la vista vproveedor', 'si', '', '', 'param.f_tproveedor_sel');
select pxp.f_insert_tprocedimiento ('PM_SERVIC_SEL', 'Consulta de datos', 'si', '', '', 'param.f_servicio_sel');
select pxp.f_insert_tprocedimiento ('PM_SERVIC_CONT', 'Conteo de registros', 'si', '', '', 'param.f_servicio_sel');
select pxp.f_insert_tprocedimiento ('PM_DOCUME_SEL', 'Listado de documentos', 'si', '', '', 'param.ft_documento_sel');
select pxp.f_insert_tprocedimiento ('PM_DOCUME_CONT', 'CODIGO NO DOCUMENTADO', 'si', '', '', 'param.ft_documento_sel');
select pxp.f_insert_tprocedimiento ('PM_ALARM_INS', 'Insercion de registros', 'si', '', '', 'param.ft_alarma_ime');
select pxp.f_insert_tprocedimiento ('PM_ALARM_MOD', 'Modificacion de registros', 'si', '', '', 'param.ft_alarma_ime');
select pxp.f_insert_tprocedimiento ('PM_DESCCOR_MOD', 'DEsactiva envio de correos', 'si', '', '', 'param.ft_alarma_ime');
select pxp.f_insert_tprocedimiento ('PM_ALARM_ELI', 'Eliminacion de registros', 'si', '', '', 'param.ft_alarma_ime');
select pxp.f_insert_tprocedimiento ('PM_ALARMCOR_SEL', 'Consulta de alarmas pendientes de envio de correo no se utiliza con pagiancion', 'si', '', '', 'param.ft_alarma_sel');
select pxp.f_insert_tprocedimiento ('PM_ALARM_SEL', 'Consulta de datos', 'si', '', '', 'param.ft_alarma_sel');
select pxp.f_insert_tprocedimiento ('PM_ALARM_CONT', 'Conteo de registros', 'si', '', '', 'param.ft_alarma_sel');
select pxp.f_insert_tprocedimiento ('PM_ALARM_PEND', 'Cuenta cuantas alarmas tiene pendientes el funcionario', 'si', '', '', 'param.ft_alarma_sel');
select pxp.f_insert_tprocedimiento ('PM_LUG_SEL', 'Consulta de datos', 'si', '', '', 'param.ft_lugar_sel');
select pxp.f_insert_tprocedimiento ('PM_LUG_ARB_SEL', 'Consulta de datos', 'si', '', '', 'param.ft_lugar_sel');
select pxp.f_insert_tprocedimiento ('PM_LUG_CONT', 'Conteo de registros', 'si', '', '', 'param.ft_lugar_sel');
select pxp.f_insert_tprocedimiento ('PM_MONEDA_INS', 'Inserta Funciones', 'si', '', '', 'param.f_moneda_ime');
select pxp.f_insert_tprocedimiento ('PM_MONEDA_MOD', 'Modifica la moneda seleccionada', 'si', '', '', 'param.f_moneda_ime');
select pxp.f_insert_tprocedimiento ('PM_MONEDA_ELI', 'Inactiva la moneda selecionada', 'si', '', '', 'param.f_moneda_ime');
select pxp.f_insert_tprocedimiento ('PM_DEPUSU_SEL', 'Consulta de datos', 'si', '', '', 'param.f_tdepto_usuario_sel');
select pxp.f_insert_tprocedimiento ('PM_DEPUSU_CONT', 'Conteo de registros', 'si', '', '', 'param.f_tdepto_usuario_sel');
select pxp.f_insert_tprocedimiento ('PM_DEPUSU_INS', 'Insercion de registros', 'si', '', '', 'param.f_tdepto_usuario_ime');
select pxp.f_insert_tprocedimiento ('PM_DEPUSU_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_tdepto_usuario_ime');
select pxp.f_insert_tprocedimiento ('PM_DEPUSU_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_tdepto_usuario_ime');
select pxp.f_insert_tprocedimiento ('PM_PRITSE_INS', 'Insercion de registros', 'si', '', '', 'param.f_proveedor_item_servicio_ime');
select pxp.f_insert_tprocedimiento ('PM_PRITSE_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_proveedor_item_servicio_ime');
select pxp.f_insert_tprocedimiento ('PM_PRITSE_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_proveedor_item_servicio_ime');
select pxp.f_insert_tprocedimiento ('PM_PACATI_INS', 'Insercion de registros', 'si', '', '', 'param.ft_catalogo_tipo_ime');
select pxp.f_insert_tprocedimiento ('PM_PACATI_MOD', 'Modificacion de registros', 'si', '', '', 'param.ft_catalogo_tipo_ime');
select pxp.f_insert_tprocedimiento ('PM_PACATI_ELI', 'Eliminacion de registros', 'si', '', '', 'param.ft_catalogo_tipo_ime');
select pxp.f_insert_tprocedimiento ('PM_PROVEE_INS', 'Insercion de registros', 'si', '', '', 'param.f_tproveedor_ime');
select pxp.f_insert_tprocedimiento ('PM_PROVEE_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_tproveedor_ime');
select pxp.f_insert_tprocedimiento ('PM_PROVEE_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_tproveedor_ime');
select pxp.f_insert_tprocedimiento ('PM_PRO_SEL', 'Consulta de datos', 'si', '', '', 'param.f_tpm_proyecto_sel');
select pxp.f_insert_tprocedimiento ('PM_PRO_CONT', 'Conteo de registros', 'si', '', '', 'param.f_tpm_proyecto_sel');
select pxp.f_insert_tprocedimiento ('PM_UME_SEL', 'Consulta de datos', 'si', '', '', 'param.f_unidad_medida_sel');
select pxp.f_insert_tprocedimiento ('PM_UME_CONT', 'Conteo de registros', 'si', '', '', 'param.f_unidad_medida_sel');
select pxp.f_insert_tprocedimiento ('PM_CONALA_INS', 'Insercion de registros', 'si', '', '', 'param.ft_config_alarma_ime');
select pxp.f_insert_tprocedimiento ('PM_CONALA_MOD', 'Modificacion de registros', 'si', '', '', 'param.ft_config_alarma_ime');
select pxp.f_insert_tprocedimiento ('PM_CONALA_ELI', 'Eliminacion de registros', 'si', '', '', 'param.ft_config_alarma_ime');
select pxp.f_insert_tprocedimiento ('PM_PERIOD_SEL', 'CODIGO NO DOCUMENTADO', 'si', '', '', 'param.ft_periodo_sel');
select pxp.f_insert_tprocedimiento ('PM_PERIOD_CONT', 'CODIGO NO DOCUMENTADO', 'si', '', '', 'param.ft_periodo_sel');
select pxp.f_insert_tprocedimiento ('PM_PACATI_SEL', 'Consulta de datos', 'si', '', '', 'param.ft_catalogo_tipo_sel');
select pxp.f_insert_tprocedimiento ('PM_PACATI_CONT', 'Conteo de registros', 'si', '', '', 'param.ft_catalogo_tipo_sel');
select pxp.f_insert_tprocedimiento ('PM_CONALA_SEL', 'CODIGO NO DOCUMENTADO', 'si', '', '', 'param.ft_config_alarma_sel');
select pxp.f_insert_tprocedimiento ('PM_CONALA_CONT', 'CODIGO NO DOCUMENTADO', 'si', '', '', 'param.ft_config_alarma_sel');
select pxp.f_insert_tprocedimiento ('PM_ALATABLA_SEL', 'CODIGO NO DOCUMENTADO', 'si', '', '', 'param.ft_config_alarma_sel');
select pxp.f_insert_tprocedimiento ('PM_ALATABLA_CONT', 'CODIGO NO DOCUMENTADO', 'si', '', '', 'param.ft_config_alarma_sel');
select pxp.f_insert_tprocedimiento ('PM_INSTIT_SEL', 'Consulta de datos', 'si', '', '', 'param.ft_institucion_sel');
select pxp.f_insert_tprocedimiento ('PM_INSTIT_CONT', 'Conteo de registros', 'si', '', '', 'param.ft_institucion_sel');
select pxp.f_insert_tprocedimiento ('PM_UME_INS', 'Insercion de registros', 'si', '', '', 'param.f_unidad_medida_ime');
select pxp.f_insert_tprocedimiento ('PM_UME_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_unidad_medida_ime');
select pxp.f_insert_tprocedimiento ('PM_UME_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_unidad_medida_ime');
select pxp.f_insert_tprocedimiento ('PM_CAT_SEL', 'Consulta de datos', 'si', '', '', 'param.ft_catalogo_sel');
select pxp.f_insert_tprocedimiento ('PM_CAT_CONT', 'Conteo de registros', 'si', '', '', 'param.ft_catalogo_sel');
select pxp.f_insert_tprocedimiento ('PM_CATCMB_SEL', 'Listado de los catálogos para combos', 'si', '', '', 'param.ft_catalogo_sel');
select pxp.f_insert_tprocedimiento ('PM_CATCMB_CONT', 'Conteo de registros', 'si', '', '', 'param.ft_catalogo_sel');
select pxp.f_insert_tprocedimiento ('PM_GENALA_INS', 'Revisa alaramas del sistema SAJ', 'si', '', '', 'param.ft_dispara_alarma_ime');
select pxp.f_insert_tprocedimiento ('PM_CAT_INS', 'Insercion de registros', 'si', '', '', 'param.ft_catalogo_ime');
select pxp.f_insert_tprocedimiento ('PM_CAT_MOD', 'Modificacion de registros', 'si', '', '', 'param.ft_catalogo_ime');
select pxp.f_insert_tprocedimiento ('PM_CAT_ELI', 'Eliminacion de registros', 'si', '', '', 'param.ft_catalogo_ime');
select pxp.f_insert_tprocedimiento ('PM_PRITSE_SEL', 'Consulta de datos', 'si', '', '', 'param.f_proveedor_item_servicio_sel');
select pxp.f_insert_tprocedimiento ('PM_PRITSE_CONT', 'Conteo de registros', 'si', '', '', 'param.f_proveedor_item_servicio_sel');
select pxp.f_insert_tprocedimiento ('PM_SERVIC_INS', 'Insercion de registros', 'si', '', '', 'param.f_servicio_ime');
select pxp.f_insert_tprocedimiento ('PM_SERVIC_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_servicio_ime');
select pxp.f_insert_tprocedimiento ('PM_SERVIC_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_servicio_ime');
select pxp.f_insert_tprocedimiento ('PM_GESTIO_INS', 'Inserta Funciones', 'si', '', '', 'param.ft_gestion_ime');
select pxp.f_insert_tprocedimiento ('PM_GESTIO_MOD', 'Modifica la gestion seleccionada', 'si', '', '', 'param.ft_gestion_ime');
select pxp.f_insert_tprocedimiento ('PM_GESTIO_ELI', 'Inactiva la gestion selecionada', 'si', '', '', 'param.ft_gestion_ime');
select pxp.f_insert_tprocedimiento ('PM_PRO_INS', 'Insercion de registros', 'si', '', '', 'param.f_tpm_proyecto_ime');
select pxp.f_insert_tprocedimiento ('PM_PRO_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_tpm_proyecto_ime');
select pxp.f_insert_tprocedimiento ('PM_PRO_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_tpm_proyecto_ime');
select pxp.f_insert_tprocedimiento ('PM_LUG_INS', 'Insercion de registros', 'si', '', '', 'param.ft_lugar_ime');
select pxp.f_insert_tprocedimiento ('PM_LUG_MOD', 'Modificacion de registros', 'si', '', '', 'param.ft_lugar_ime');
select pxp.f_insert_tprocedimiento ('PM_LUG_ELI', 'Eliminacion de registros', 'si', '', '', 'param.ft_lugar_ime');
select pxp.f_insert_tprocedimiento ('PM_DOCUME_INS', 'Inserta Documentos', 'si', '', '', 'param.ft_documento_ime');
select pxp.f_insert_tprocedimiento ('PM_DOCUME_MOD', 'Modifica la documento seleccionada', 'si', '', '', 'param.ft_documento_ime');
select pxp.f_insert_tprocedimiento ('PM_DOCUME_ELI', 'Inactiva el documento selecionado', 'si', '', '', 'param.ft_documento_ime');
select pxp.f_insert_tprocedimiento ('PM_fin_SEL', 'Consulta de datos', 'si', '', '', 'param.f_financiador_sel');
select pxp.f_insert_tprocedimiento ('PM_fin_CONT', 'Conteo de registros', 'si', '', '', 'param.f_financiador_sel');
select pxp.f_insert_tprocedimiento ('PM_fin_INS', 'Insercion de registros', 'si', '', '', 'param.f_financiador_ime');
select pxp.f_insert_tprocedimiento ('PM_fin_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_financiador_ime');
select pxp.f_insert_tprocedimiento ('PM_fin_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_financiador_ime');
select pxp.f_insert_tprocedimiento ('PM_REGIO_SEL', 'Consulta de datos', 'si', '', '', 'param.f_regional_sel');
select pxp.f_insert_tprocedimiento ('PM_REGIO_CONT', 'Conteo de registros', 'si', '', '', 'param.f_regional_sel');
select pxp.f_insert_tprocedimiento ('PM_REGIO_INS', 'Insercion de registros', 'si', '', '', 'param.f_regional_ime');
select pxp.f_insert_tprocedimiento ('PM_REGIO_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_regional_ime');
select pxp.f_insert_tprocedimiento ('PM_REGIO_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_regional_ime');
select pxp.f_insert_tprocedimiento ('PM_PROG_INS', 'Insercion de registros', 'si', '', '', 'param.f_programa_ime');
select pxp.f_insert_tprocedimiento ('PM_PROG_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_programa_ime');
select pxp.f_insert_tprocedimiento ('PM_PROG_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_programa_ime');
select pxp.f_insert_tprocedimiento ('PM_PROG_SEL', 'Consulta de datos', 'si', '', '', 'param.f_programa_sel');
select pxp.f_insert_tprocedimiento ('PM_PROG_CONT', 'Conteo de registros', 'si', '', '', 'param.f_programa_sel');
select pxp.f_insert_tprocedimiento ('PM_ACT_INS', 'Insercion de registros', 'si', '', '', 'param.f_actividad_ime');
select pxp.f_insert_tprocedimiento ('PM_ACT_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_actividad_ime');
select pxp.f_insert_tprocedimiento ('PM_ACT_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_actividad_ime');
select pxp.f_insert_tprocedimiento ('PM_ACT_SEL', 'Consulta de datos', 'si', '', '', 'param.f_actividad_sel');
select pxp.f_insert_tprocedimiento ('PM_ACT_CONT', 'Conteo de registros', 'si', '', '', 'param.f_actividad_sel');
select pxp.f_insert_tprocedimiento ('PM_PPA_INS', 'Insercion de registros', 'si', '', '', 'param.f_programa_proyecto_acttividad_ime');
select pxp.f_insert_tprocedimiento ('PM_PPA_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_programa_proyecto_acttividad_ime');
select pxp.f_insert_tprocedimiento ('PM_PPA_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_programa_proyecto_acttividad_ime');
select pxp.f_insert_tprocedimiento ('PM_PPA_SEL', 'Consulta de datos', 'si', '', '', 'param.f_programa_proyecto_acttividad_sel');
select pxp.f_insert_tprocedimiento ('PM_PPA_CONT', 'Conteo de registros', 'si', '', '', 'param.f_programa_proyecto_acttividad_sel');
select pxp.f_insert_tprocedimiento ('PM_PROY_SEL', 'Consulta de datos', 'si', '', '', 'param.f_proyecto_sel');
select pxp.f_insert_tprocedimiento ('PM_PROY_CONT', 'Conteo de registros', 'si', '', '', 'param.f_proyecto_sel');
select pxp.f_insert_tprocedimiento ('PM_PROY_INS', 'Insercion de registros', 'si', '', '', 'param.f_proyecto_ime');
select pxp.f_insert_tprocedimiento ('PM_PROY_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_proyecto_ime');
select pxp.f_insert_tprocedimiento ('PM_PROY_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_proyecto_ime');
select pxp.f_insert_tprocedimiento ('PM_FRPP_INS', 'Insercion de registros', 'si', '', '', 'param.f_ep_ime');
select pxp.f_insert_tprocedimiento ('PM_FRPP_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_ep_ime');
select pxp.f_insert_tprocedimiento ('PM_FRPP_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_ep_ime');
select pxp.f_insert_tprocedimiento ('PM_FRPP_SEL', 'Consulta de datos', 'si', '', '', 'param.f_ep_sel');
select pxp.f_insert_tprocedimiento ('PM_FRPP_CONT', 'Conteo de registros', 'si', '', '', 'param.f_ep_sel');
---------------------------------
--COPY LINES TO dependencies.sql FILE 
---------------------------------

select pxp.f_insert_testructura_gui ('PARAM', 'SISTEMA');
select pxp.f_insert_testructura_gui ('CCOM', 'PARAM');
select pxp.f_insert_testructura_gui ('CEP', 'PARAM');
select pxp.f_insert_testructura_gui ('CONALA', 'PARAM');
select pxp.f_insert_testructura_gui ('DOCUME', 'PARAM');
select pxp.f_insert_testructura_gui ('DEPTO', 'PARAM');
select pxp.f_insert_testructura_gui ('ALARM', 'PARAM');
select pxp.f_insert_testructura_gui ('PROVEE', 'PARAM');
select pxp.f_insert_testructura_gui ('INSTIT', 'PARAM');
select pxp.f_insert_testructura_gui ('LUG', 'PARAM');
select pxp.f_insert_testructura_gui ('MONPAR', 'PARAM');
select pxp.f_insert_testructura_gui ('PERIOD', 'PARAM');
select pxp.f_insert_testructura_gui ('CATA', 'PARAM');
select pxp.f_insert_testructura_gui ('GESTIO', 'PARAM');
select pxp.f_insert_testructura_gui ('UME', 'PARAM');
select pxp.f_insert_testructura_gui ('PACATI', 'PARAM');
select pxp.f_insert_testructura_gui ('SERVIC', 'PARAM');
select pxp.f_insert_testructura_gui ('APROC', 'CCOM');
select pxp.f_insert_testructura_gui ('PRO', 'CEP');
select pxp.f_insert_testructura_gui ('FIN', 'CEP');
select pxp.f_insert_testructura_gui ('REGIO', 'CEP');
select pxp.f_insert_testructura_gui ('PROG', 'CEP');
select pxp.f_insert_testructura_gui ('ACT', 'CEP');
select pxp.f_insert_testructura_gui ('PPA', 'CEP');
select pxp.f_insert_testructura_gui ('FRPP', 'CEP');
/***********************************F-DAT-RAC-PARAM-0-31/12/2012*****************************************/

/***********************************I-DAT-RCM-PARAM-0-23/01/2013*****************************************/
--Catálogos
select pxp.f_add_catalog('PARAM','tunidad_medida','Longitud');
select pxp.f_add_catalog('PARAM','tunidad_medida','Masa');
select pxp.f_add_catalog('PARAM','tunidad_medida','Tiempo');
select pxp.f_add_catalog('PARAM','tunidad_medida','Intensidad eléctrica');
select pxp.f_add_catalog('PARAM','tunidad_medida','Temperatura');
select pxp.f_add_catalog('PARAM','tunidad_medida','Intensidad luminosa');
select pxp.f_add_catalog('PARAM','tunidad_medida','Cantidad de sustancia');
/***********************************F-DAT-RCM-PARAM-0-23/01/2013*****************************************/


/***********************************I-DAT-RAC-PARAM-0-04/02/2013*****************************************/


select pxp.f_insert_tgui ('Empresa', 'Empresa', 'EMP', 'si', 1, 'sis_parametros/vista/empresa/Empresa.php', 2, '', 'Empresa', 'PARAM');

select pxp.f_insert_testructura_gui ('EMP', 'PARAM');

select pxp.f_insert_tgui ('Concepto de Ingreso/Gasto', 'Parametrizaciond e concepto de gasto o ingreso', 'CONIG', 'si', 2, 'sis_parametros/vista/concepto_ingas/ConceptoIngas.php', 4, '', 'ConceptoIngas', 'PARAM');

select pxp.f_insert_testructura_gui ('CONIG', 'CCOM');

/***********************************F-DAT-RAC-PARAM-0-04/02/2013*****************************************/

/***********************************I-DAT-GSS-PARAM-38-18/02/2013*****************************************/

select pxp.f_insert_tgui ('Centro de Costo', 'Centro de costo', 'CCOST', 'si', 1, 'sis_parametros/vista/centro_costo/CentroCosto.php', 2, '', 'CentroCosto', 'PARAM');

select pxp.f_insert_testructura_gui ('CCOST', 'PARAM');

/***********************************F-DAT-GSS-PARAM-38-18/02/2013*****************************************/

/***********************************I-DAT-GSS-PARAM-72-08/03/2013*****************************************/

select pxp.f_insert_tgui ('Tipo de Cambio', 'tipo de cambio', 'TCB', 'si', 10, 'sis_parametros/vista/tipo_cambio/TipoCambio.php', 2, '', 'TipoCambio', 'PARAM');

select pxp.f_insert_testructura_gui ('TCB', 'PARAM');

/***********************************F-DAT-GSS-PARAM-72-08/03/2013*****************************************/

/***********************************I-DAT-GSS-PARAM-81-26/03/2013*****************************************/

--funciones
select pxp.f_insert_tfuncion ('param.f_gestion_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_depto_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_aprobadores_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_centro_costo_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_concepto_ingas_sel', 'Funcion para tabla     ', 'PARAM');

--procedimientos

select pxp.f_insert_tprocedimiento ('PM_GES_INS', 'Insercion de registros', 'si', '', '', 'param.f_gestion_ime');
select pxp.f_insert_tprocedimiento ('PM_GES_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_gestion_ime');
select pxp.f_insert_tprocedimiento ('PM_GES_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_gestion_ime');
select pxp.f_insert_tprocedimiento ('PM_GETGES_ELI', 'Recuepra el id_gestion segun la fecha', 'si', '', '', 'param.f_gestion_ime');
select pxp.f_insert_tprocedimiento ('PM_DEPPTO_SEL', 'Listado de departamento', 'si', '', '', 'param.ft_depto_sel');
select pxp.f_insert_tprocedimiento ('PM_DEPPTO_CONT', 'cuenta la cantidad de departamentos', 'si', '', '', 'param.ft_depto_sel');
select pxp.f_insert_tprocedimiento ('PM_OBTARPOBA_SEL', 'Listado de aprobadores filtradao segun criterio de configuracion', 'si', '', '', 'param.f_aprobadores_sel');
select pxp.f_insert_tprocedimiento ('PM_CEC_SEL', 'Consulta de datos', 'si', '', '', 'param.f_centro_costo_sel');
select pxp.f_insert_tprocedimiento ('PM_CEC_CONT', 'Conteo de registros', 'si', '', '', 'param.f_centro_costo_sel');
select pxp.f_insert_tprocedimiento ('PM_CONIG_SEL', 'Consulta de datos', 'si', '', '', 'param.f_concepto_ingas_sel');
select pxp.f_insert_tprocedimiento ('PM_CONIG_CONT', 'Conteo de registros', 'si', '', '', 'param.f_concepto_ingas_sel');

/***********************************F-DAT-GSS-PARAM-81-26/03/2013*****************************************/


/***********************************I-DAT-JRR-PARAM-104-05/04/2013*****************************************/

select pxp.f_insert_tgui ('Asistentes', 'Asistentes', 'ASI', 'si', 4, 'sis_parametros/vista/asistente/Asistente.php', 2, '', 'Asistente', 'PARAM');
select pxp.f_insert_testructura_gui ('ASI', 'PARAM');

/***********************************F-DAT-JRR-PARAM-104-05/04/2013*****************************************/

/***********************************I-DAT-RCM-PARAM-85-03/04/2013*****************************************/
select pxp.f_insert_tgui ('Documentos Fiscales', 'Listado de todos los Documentos fiscales', 'DF', 'si', 11, 'sis_parametros/vista/documento_fiscal/DocumentoFiscal.php', 2, '', 'DocumentoFiscal', 'PARAM');
select pxp.f_insert_testructura_gui ('DF', 'PARAM');
/***********************************F-DAT-RCM-PARAM-85-03/04/2013*****************************************/


/***********************************I-DAT-RCM-PARAM-85-05/04/2013*****************************************/
select pxp.f_add_catalog('PARAM','tdocumento_fiscal__estado','Incompleto');
select pxp.f_add_catalog('PARAM','tdocumento_fiscal__estado','Completo');
select pxp.f_add_catalog('PARAM','tdocumento_fiscal__estado','Anulado');
select pxp.f_insert_tgui ('Plantillas', 'Plantillas', 'PLANT', 'si', 1, 'sis_parametros/vista/plantilla/Plantilla.php', 2, '', 'Plantilla', 'PARAM');
select pxp.f_insert_testructura_gui ('PLANT', 'PARAM');

/***********************************F-DAT-RCM-PARAM-85-05/04/2013*****************************************/

/***********************************I-DAT-GSS-PARAM-101-22/04/2013*****************************************/

select pxp.f_insert_tfuncion ('param.f_plantilla_sel', 'Funcion para tabla     ', 'PARAM');

select pxp.f_insert_tprocedimiento ('PM_PLT_CONT', 'Conteo de registros', 'si', '', '', 'param.f_plantilla_sel');
select pxp.f_insert_tprocedimiento ('PM_PLT_SEL', 'Consulta de datos', 'si', '', '', 'param.f_plantilla_sel');

/***********************************F-DAT-GSS-PARAM-101-22/04/2013*****************************************/

/***********************************I-DAT-AAO-PARAM-72-23/04/2013*****************************************/
select pxp.f_insert_tgui ('Usuarios por Departamento', 'Usuarios por Departamento', 'DEPTO.1', 'no', 0, 'sis_parametros/vista/depto_usuario/DeptoUsuario.php', 3, '', '50%', 'PARAM');
select pxp.f_insert_tgui ('Usuarios', 'Usuarios', 'DEPTO.1.1', 'no', 0, 'sis_seguridad/vista/usuario/Usuario.php', 4, '', 'usuario', 'PARAM');
select pxp.f_insert_tgui ('Personas', 'Personas', 'DEPTO.1.1.1', 'no', 0, 'sis_seguridad/vista/persona/Persona.php', 5, '', 'persona', 'PARAM');
select pxp.f_insert_tgui ('Roles', 'Roles', 'DEPTO.1.1.2', 'no', 0, 'sis_seguridad/vista/usuario_rol/UsuarioRol.php', 5, '', 'usuario_rol', 'PARAM');
select pxp.f_insert_tgui ('Subir foto', 'Subir foto', 'DEPTO.1.1.1.1', 'no', 0, 'sis_seguridad/vista/persona/subirFotoPersona.php', 6, '', 'subirFotoPersona', 'PARAM');
select pxp.f_insert_tgui ('Ubicacion Lugar', 'Ubicacion Lugar', 'LUG.1', 'no', 0, 'sis_parametros/vista/lugar/mapaLugar.php', 3, '', '50%', 'PARAM');
select pxp.f_insert_tgui ('Items/Servicios ofertados', 'Items/Servicios ofertados', 'PROVEE.1', 'no', 0, 'sis_parametros/vista/proveedor_item_servicio/ProveedorItemServicio.php', 3, '', '50%', 'PARAM');
select pxp.f_insert_tgui ('Periodos', 'Periodos', 'GESTIO.1', 'no', 0, 'sis_parametros/vista/periodo/Periodo.php', 3, '', 'Periodo', 'PARAM');
select pxp.f_insert_tgui ('subir Logo', 'subir Logo', 'EMP.1', 'no', 0, 'sis_parametros/vista/empresa/subirLogo.php', 3, '', 'subirLogo', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_documento_fiscal_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_periodo_subsistema_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_aprobador_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_concepto_ingas_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_grupo_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_depto_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_grupo_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_grupo_ep_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_asistente_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_centro_costo_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_aprobador_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_inserta_documento', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_depto_uo_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_periodo_subsistema_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_periodo_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_documento_fiscal_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_obtener_listado_aprobadores', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_gestion_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_empresa_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_grupo_ep_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_tipo_cambio_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_tipo_cambio_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_empresa_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_plantilla_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_depto_uo_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_get_datos_proveedor', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_periodo_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_asistente_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tprocedimiento ('PM_INSTIT_INS', 'Insercion de registros', 'si', '', '', 'param.ft_institucion_ime');
select pxp.f_insert_tprocedimiento ('PM_INSTIT_MOD', 'Modificacion de registros', 'si', '', '', 'param.ft_institucion_ime');
select pxp.f_insert_tprocedimiento ('PM_INSTIT_ELI', 'Eliminacion de registros', 'si', '', '', 'param.ft_institucion_ime');
select pxp.f_insert_tprocedimiento ('PM_MONEDA_SEL', 'Consulta de datos', 'si', '', '', 'param.f_moneda_sel');
select pxp.f_insert_tprocedimiento ('PM_MONEDA_CONT', 'Conteo de registros', 'si', '', '', 'param.f_moneda_sel');
select pxp.f_insert_tprocedimiento ('PM_DISALARM_SEL', 'Consulta de datos', 'si', '', '', 'param.ft_dispara_alarma_sel');
select pxp.f_insert_tprocedimiento ('PM_DISALARM_CONT', 'Conteo de registros', 'si', '', '', 'param.ft_dispara_alarma_sel');
select pxp.f_insert_tprocedimiento ('PM_PROVEE_SEL', 'Consulta de datos', 'si', '', '', 'param.f_tproveedor_sel');
select pxp.f_insert_tprocedimiento ('PM_PROVEE_CONT', 'Conteo de registros', 'si', '', '', 'param.f_tproveedor_sel');
select pxp.f_insert_tprocedimiento ('PM_PROVEEV_SEL', 'Consulta de datos de proveedores a partir de una vista de base
                    de datos', 'si', '', '', 'param.f_tproveedor_sel');
select pxp.f_insert_tprocedimiento ('PM_PROVEEV_CONT', 'Conteo de registros de proveedores en la vista vproveedor', 'si', '', '', 'param.f_tproveedor_sel');
select pxp.f_insert_tprocedimiento ('PM_SERVIC_SEL', 'Consulta de datos', 'si', '', '', 'param.f_servicio_sel');
select pxp.f_insert_tprocedimiento ('PM_SERVIC_CONT', 'Conteo de registros', 'si', '', '', 'param.f_servicio_sel');
select pxp.f_insert_tprocedimiento ('PM_DOCUME_SEL', 'Listado de documentos', 'si', '', '', 'param.ft_documento_sel');
select pxp.f_insert_tprocedimiento ('PM_DOCUME_CONT', 'CODIGO NO DOCUMENTADO', 'si', '', '', 'param.ft_documento_sel');
select pxp.f_insert_tprocedimiento ('PM_ALARM_INS', 'Insercion de registros', 'si', '', '', 'param.ft_alarma_ime');
select pxp.f_insert_tprocedimiento ('PM_ALARM_MOD', 'Modificacion de registros', 'si', '', '', 'param.ft_alarma_ime');
select pxp.f_insert_tprocedimiento ('PM_DESCCOR_MOD', 'DEsactiva envio de correos', 'si', '', '', 'param.ft_alarma_ime');
select pxp.f_insert_tprocedimiento ('PM_ALARM_ELI', 'Eliminacion de registros', 'si', '', '', 'param.ft_alarma_ime');
select pxp.f_insert_tprocedimiento ('PM_ALARMCOR_SEL', 'Consulta de alarmas pendientes de envio de correo no se utiliza con pagiancion', 'si', '', '', 'param.ft_alarma_sel');
select pxp.f_insert_tprocedimiento ('PM_ALARM_SEL', 'Consulta de datos', 'si', '', '', 'param.ft_alarma_sel');
select pxp.f_insert_tprocedimiento ('PM_ALARM_CONT', 'Conteo de registros', 'si', '', '', 'param.ft_alarma_sel');
select pxp.f_insert_tprocedimiento ('PM_ALARM_PEND', 'Cuenta cuantas alarmas tiene pendientes el funcionario', 'si', '', '', 'param.ft_alarma_sel');
select pxp.f_insert_tprocedimiento ('PM_LUG_SEL', 'Consulta de datos', 'si', '', '', 'param.ft_lugar_sel');
select pxp.f_insert_tprocedimiento ('PM_LUG_ARB_SEL', 'Consulta de datos', 'si', '', '', 'param.ft_lugar_sel');
select pxp.f_insert_tprocedimiento ('PM_LUG_CONT', 'Conteo de registros', 'si', '', '', 'param.ft_lugar_sel');
select pxp.f_insert_tprocedimiento ('PM_MONEDA_INS', 'Insercion de registros', 'si', '', '', 'param.f_moneda_ime');
select pxp.f_insert_tprocedimiento ('PM_MONEDA_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_moneda_ime');
select pxp.f_insert_tprocedimiento ('PM_MONEDA_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_moneda_ime');
select pxp.f_insert_tprocedimiento ('PM_DEPUSU_SEL', 'Consulta de datos', 'si', '', '', 'param.f_tdepto_usuario_sel');
select pxp.f_insert_tprocedimiento ('PM_DEPUSU_CONT', 'Conteo de registros', 'si', '', '', 'param.f_tdepto_usuario_sel');
select pxp.f_insert_tprocedimiento ('PM_DEPUSU_INS', 'Insercion de registros', 'si', '', '', 'param.f_tdepto_usuario_ime');
select pxp.f_insert_tprocedimiento ('PM_DEPUSU_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_tdepto_usuario_ime');
select pxp.f_insert_tprocedimiento ('PM_DEPUSU_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_tdepto_usuario_ime');
select pxp.f_insert_tprocedimiento ('PM_PRITSE_INS', 'Insercion de registros', 'si', '', '', 'param.f_proveedor_item_servicio_ime');
select pxp.f_insert_tprocedimiento ('PM_PRITSE_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_proveedor_item_servicio_ime');
select pxp.f_insert_tprocedimiento ('PM_PRITSE_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_proveedor_item_servicio_ime');
select pxp.f_insert_tprocedimiento ('PM_PACATI_INS', 'Insercion de registros', 'si', '', '', 'param.ft_catalogo_tipo_ime');
select pxp.f_insert_tprocedimiento ('PM_PACATI_MOD', 'Modificacion de registros', 'si', '', '', 'param.ft_catalogo_tipo_ime');
select pxp.f_insert_tprocedimiento ('PM_PACATI_ELI', 'Eliminacion de registros', 'si', '', '', 'param.ft_catalogo_tipo_ime');
select pxp.f_insert_tprocedimiento ('PM_PROVEE_INS', 'Insercion de registros', 'si', '', '', 'param.f_tproveedor_ime');
select pxp.f_insert_tprocedimiento ('PM_PROVEE_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_tproveedor_ime');
select pxp.f_insert_tprocedimiento ('PM_PROVEE_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_tproveedor_ime');
select pxp.f_insert_tprocedimiento ('PM_PRO_SEL', 'Consulta de datos', 'si', '', '', 'param.f_tpm_proyecto_sel');
select pxp.f_insert_tprocedimiento ('PM_PRO_CONT', 'Conteo de registros', 'si', '', '', 'param.f_tpm_proyecto_sel');
select pxp.f_insert_tprocedimiento ('PM_UME_SEL', 'Consulta de datos', 'si', '', '', 'param.f_unidad_medida_sel');
select pxp.f_insert_tprocedimiento ('PM_UME_CONT', 'Conteo de registros', 'si', '', '', 'param.f_unidad_medida_sel');
select pxp.f_insert_tprocedimiento ('PM_CONALA_INS', 'Insercion de registros', 'si', '', '', 'param.ft_config_alarma_ime');
select pxp.f_insert_tprocedimiento ('PM_CONALA_MOD', 'Modificacion de registros', 'si', '', '', 'param.ft_config_alarma_ime');
select pxp.f_insert_tprocedimiento ('PM_CONALA_ELI', 'Eliminacion de registros', 'si', '', '', 'param.ft_config_alarma_ime');
select pxp.f_insert_tprocedimiento ('PM_PACATI_SEL', 'Consulta de datos', 'si', '', '', 'param.ft_catalogo_tipo_sel');
select pxp.f_insert_tprocedimiento ('PM_PACATI_CONT', 'Conteo de registros', 'si', '', '', 'param.ft_catalogo_tipo_sel');
select pxp.f_insert_tprocedimiento ('PM_CONALA_SEL', 'CODIGO NO DOCUMENTADO', 'si', '', '', 'param.ft_config_alarma_sel');
select pxp.f_insert_tprocedimiento ('PM_CONALA_CONT', 'CODIGO NO DOCUMENTADO', 'si', '', '', 'param.ft_config_alarma_sel');
select pxp.f_insert_tprocedimiento ('PM_ALATABLA_SEL', 'CODIGO NO DOCUMENTADO', 'si', '', '', 'param.ft_config_alarma_sel');
select pxp.f_insert_tprocedimiento ('PM_ALATABLA_CONT', 'CODIGO NO DOCUMENTADO', 'si', '', '', 'param.ft_config_alarma_sel');
select pxp.f_insert_tprocedimiento ('PM_INSTIT_SEL', 'Consulta de datos', 'si', '', '', 'param.ft_institucion_sel');
select pxp.f_insert_tprocedimiento ('PM_INSTIT_CONT', 'Conteo de registros', 'si', '', '', 'param.ft_institucion_sel');
select pxp.f_insert_tprocedimiento ('PM_UME_INS', 'Insercion de registros', 'si', '', '', 'param.f_unidad_medida_ime');
select pxp.f_insert_tprocedimiento ('PM_UME_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_unidad_medida_ime');
select pxp.f_insert_tprocedimiento ('PM_UME_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_unidad_medida_ime');
select pxp.f_insert_tprocedimiento ('PM_CAT_SEL', 'Consulta de datos', 'si', '', '', 'param.ft_catalogo_sel');
select pxp.f_insert_tprocedimiento ('PM_CAT_CONT', 'Conteo de registros', 'si', '', '', 'param.ft_catalogo_sel');
select pxp.f_insert_tprocedimiento ('PM_CATCMB_SEL', 'Listado de los catálogos para combos', 'si', '', '', 'param.ft_catalogo_sel');
select pxp.f_insert_tprocedimiento ('PM_CATCMB_CONT', 'Conteo de registros', 'si', '', '', 'param.ft_catalogo_sel');
select pxp.f_insert_tprocedimiento ('PM_GENALA_INS', 'Revisa alaramas del sistema SAJ', 'si', '', '', 'param.ft_dispara_alarma_ime');
select pxp.f_insert_tprocedimiento ('PM_CAT_INS', 'Insercion de registros', 'si', '', '', 'param.ft_catalogo_ime');
select pxp.f_insert_tprocedimiento ('PM_CAT_MOD', 'Modificacion de registros', 'si', '', '', 'param.ft_catalogo_ime');
select pxp.f_insert_tprocedimiento ('PM_CAT_ELI', 'Eliminacion de registros', 'si', '', '', 'param.ft_catalogo_ime');
select pxp.f_insert_tprocedimiento ('PM_PRITSE_SEL', 'Consulta de datos', 'si', '', '', 'param.f_proveedor_item_servicio_sel');
select pxp.f_insert_tprocedimiento ('PM_PRITSE_CONT', 'Conteo de registros', 'si', '', '', 'param.f_proveedor_item_servicio_sel');
select pxp.f_insert_tprocedimiento ('PM_SERVIC_INS', 'Insercion de registros', 'si', '', '', 'param.f_servicio_ime');
select pxp.f_insert_tprocedimiento ('PM_SERVIC_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_servicio_ime');
select pxp.f_insert_tprocedimiento ('PM_SERVIC_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_servicio_ime');
select pxp.f_insert_tprocedimiento ('PM_PRO_INS', 'Insercion de registros', 'si', '', '', 'param.f_tpm_proyecto_ime');
select pxp.f_insert_tprocedimiento ('PM_PRO_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_tpm_proyecto_ime');
select pxp.f_insert_tprocedimiento ('PM_PRO_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_tpm_proyecto_ime');
select pxp.f_insert_tprocedimiento ('PM_LUG_INS', 'Insercion de registros', 'si', '', '', 'param.ft_lugar_ime');
select pxp.f_insert_tprocedimiento ('PM_LUG_MOD', 'Modificacion de registros', 'si', '', '', 'param.ft_lugar_ime');
select pxp.f_insert_tprocedimiento ('PM_LUG_ELI', 'Eliminacion de registros', 'si', '', '', 'param.ft_lugar_ime');
select pxp.f_insert_tprocedimiento ('PM_DOCUME_INS', 'Inserta Documentos', 'si', '', '', 'param.ft_documento_ime');
select pxp.f_insert_tprocedimiento ('PM_DOCUME_MOD', 'Modifica la documento seleccionada', 'si', '', '', 'param.ft_documento_ime');
select pxp.f_insert_tprocedimiento ('PM_DOCUME_ELI', 'Inactiva el documento selecionado', 'si', '', '', 'param.ft_documento_ime');
select pxp.f_insert_tprocedimiento ('PM_fin_SEL', 'Consulta de datos', 'si', '', '', 'param.f_financiador_sel');
select pxp.f_insert_tprocedimiento ('PM_fin_CONT', 'Conteo de registros', 'si', '', '', 'param.f_financiador_sel');
select pxp.f_insert_tprocedimiento ('PM_fin_INS', 'Insercion de registros', 'si', '', '', 'param.f_financiador_ime');
select pxp.f_insert_tprocedimiento ('PM_fin_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_financiador_ime');
select pxp.f_insert_tprocedimiento ('PM_fin_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_financiador_ime');
select pxp.f_insert_tprocedimiento ('PM_REGIO_SEL', 'Consulta de datos', 'si', '', '', 'param.f_regional_sel');
select pxp.f_insert_tprocedimiento ('PM_REGIO_CONT', 'Conteo de registros', 'si', '', '', 'param.f_regional_sel');
select pxp.f_insert_tprocedimiento ('PM_REGIO_INS', 'Insercion de registros', 'si', '', '', 'param.f_regional_ime');
select pxp.f_insert_tprocedimiento ('PM_REGIO_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_regional_ime');
select pxp.f_insert_tprocedimiento ('PM_REGIO_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_regional_ime');
select pxp.f_insert_tprocedimiento ('PM_PROG_INS', 'Insercion de registros', 'si', '', '', 'param.f_programa_ime');
select pxp.f_insert_tprocedimiento ('PM_PROG_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_programa_ime');
select pxp.f_insert_tprocedimiento ('PM_PROG_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_programa_ime');
select pxp.f_insert_tprocedimiento ('PM_PROG_SEL', 'Consulta de datos', 'si', '', '', 'param.f_programa_sel');
select pxp.f_insert_tprocedimiento ('PM_PROG_CONT', 'Conteo de registros', 'si', '', '', 'param.f_programa_sel');
select pxp.f_insert_tprocedimiento ('PM_ACT_INS', 'Insercion de registros', 'si', '', '', 'param.f_actividad_ime');
select pxp.f_insert_tprocedimiento ('PM_ACT_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_actividad_ime');
select pxp.f_insert_tprocedimiento ('PM_ACT_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_actividad_ime');
select pxp.f_insert_tprocedimiento ('PM_ACT_SEL', 'Consulta de datos', 'si', '', '', 'param.f_actividad_sel');
select pxp.f_insert_tprocedimiento ('PM_ACT_CONT', 'Conteo de registros', 'si', '', '', 'param.f_actividad_sel');
select pxp.f_insert_tprocedimiento ('PM_PPA_INS', 'Insercion de registros', 'si', '', '', 'param.f_programa_proyecto_acttividad_ime');
select pxp.f_insert_tprocedimiento ('PM_PPA_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_programa_proyecto_acttividad_ime');
select pxp.f_insert_tprocedimiento ('PM_PPA_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_programa_proyecto_acttividad_ime');
select pxp.f_insert_tprocedimiento ('PM_PPA_SEL', 'Consulta de datos', 'si', '', '', 'param.f_programa_proyecto_acttividad_sel');
select pxp.f_insert_tprocedimiento ('PM_PPA_CONT', 'Conteo de registros', 'si', '', '', 'param.f_programa_proyecto_acttividad_sel');
select pxp.f_insert_tprocedimiento ('PM_PROY_SEL', 'Consulta de datos', 'si', '', '', 'param.f_proyecto_sel');
select pxp.f_insert_tprocedimiento ('PM_PROY_CONT', 'Conteo de registros', 'si', '', '', 'param.f_proyecto_sel');
select pxp.f_insert_tprocedimiento ('PM_PROY_INS', 'Insercion de registros', 'si', '', '', 'param.f_proyecto_ime');
select pxp.f_insert_tprocedimiento ('PM_PROY_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_proyecto_ime');
select pxp.f_insert_tprocedimiento ('PM_PROY_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_proyecto_ime');
select pxp.f_insert_tprocedimiento ('PM_FRPP_INS', 'Insercion de registros', 'si', '', '', 'param.f_ep_ime');
select pxp.f_insert_tprocedimiento ('PM_FRPP_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_ep_ime');
select pxp.f_insert_tprocedimiento ('PM_FRPP_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_ep_ime');
select pxp.f_insert_tprocedimiento ('PM_FRPP_SEL', 'Consulta de datos', 'si', '', '', 'param.f_ep_sel');
select pxp.f_insert_tprocedimiento ('PM_FRPP_CONT', 'Conteo de registros', 'si', '', '', 'param.f_ep_sel');
select pxp.f_insert_tprocedimiento ('PM_GES_INS', 'Insercion de registros', 'si', '', '', 'param.f_gestion_ime');
select pxp.f_insert_tprocedimiento ('PM_GES_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_gestion_ime');
select pxp.f_insert_tprocedimiento ('PM_GES_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_gestion_ime');
select pxp.f_insert_tprocedimiento ('PM_GETGES_ELI', 'Recuepra el id_gestion segun la fecha', 'si', '', '', 'param.f_gestion_ime');
select pxp.f_insert_tprocedimiento ('PM_DEPPTO_SEL', 'Listado de departamento', 'si', '', '', 'param.ft_depto_sel');
select pxp.f_insert_tprocedimiento ('PM_DEPPTO_CONT', 'cuenta la cantidad de departamentos', 'si', '', '', 'param.ft_depto_sel');
select pxp.f_insert_tprocedimiento ('PM_OBTARPOBA_SEL', 'Listado de aprobadores filtradao segun criterio de configuracion', 'si', '', '', 'param.f_aprobadores_sel');
select pxp.f_insert_tprocedimiento ('PM_CEC_SEL', 'Consulta de datos', 'si', '', '', 'param.f_centro_costo_sel');
select pxp.f_insert_tprocedimiento ('PM_CEC_CONT', 'Conteo de registros', 'si', '', '', 'param.f_centro_costo_sel');
select pxp.f_insert_tprocedimiento ('PM_CONIG_SEL', 'Consulta de datos', 'si', '', '', 'param.f_concepto_ingas_sel');
select pxp.f_insert_tprocedimiento ('PM_CONIG_CONT', 'Conteo de registros', 'si', '', '', 'param.f_concepto_ingas_sel');
select pxp.f_insert_tprocedimiento ('PM_PLT_CONT', 'Conteo de registros', 'si', '', '', 'param.f_plantilla_sel');
select pxp.f_insert_tprocedimiento ('PM_PLT_SEL', 'Consulta de datos', 'si', '', '', 'param.f_plantilla_sel');
select pxp.f_insert_tprocedimiento ('PM_DOCFIS_INS', 'Insercion de registros', 'si', '', '', 'param.ft_documento_fiscal_ime');
select pxp.f_insert_tprocedimiento ('PM_DOCFIS_MOD', 'Modificacion de registros', 'si', '', '', 'param.ft_documento_fiscal_ime');
select pxp.f_insert_tprocedimiento ('PM_DOCFIS_ELI', 'Eliminacion de registros', 'si', '', '', 'param.ft_documento_fiscal_ime');
select pxp.f_insert_tprocedimiento ('PM_OBTNIT_GET', 'Obtiene datos en función del NIT', 'si', '', '', 'param.ft_documento_fiscal_ime');
select pxp.f_insert_tprocedimiento ('PM_PESU_SEL', 'Consulta de datos', 'si', '', '', 'param.ft_periodo_subsistema_sel');
select pxp.f_insert_tprocedimiento ('PM_PESU_CONT', 'Conteo de registros', 'si', '', '', 'param.ft_periodo_subsistema_sel');
select pxp.f_insert_tprocedimiento ('PM_APRO_SEL', 'Consulta de datos', 'si', '', '', 'param.f_aprobador_sel');
select pxp.f_insert_tprocedimiento ('PM_APRO_CONT', 'Conteo de registros', 'si', '', '', 'param.f_aprobador_sel');
select pxp.f_insert_tprocedimiento ('PM_CONIG_INS', 'Insercion de registros', 'si', '', '', 'param.f_concepto_ingas_ime');
select pxp.f_insert_tprocedimiento ('PM_CONIG_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_concepto_ingas_ime');
select pxp.f_insert_tprocedimiento ('PM_CONIG_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_concepto_ingas_ime');
select pxp.f_insert_tprocedimiento ('PM_GRU_SEL', 'Consulta de datos', 'si', '', '', 'param.ft_grupo_sel');
select pxp.f_insert_tprocedimiento ('PM_GRU_CONT', 'Conteo de registros', 'si', '', '', 'param.ft_grupo_sel');
select pxp.f_insert_tprocedimiento ('PM_DEPPTO_INS', 'Inserta deptos', 'si', '', '', 'param.ft_depto_ime');
select pxp.f_insert_tprocedimiento ('PM_DEPPTO_MOD', 'Modifica la depto seleccionada', 'si', '', '', 'param.ft_depto_ime');
select pxp.f_insert_tprocedimiento ('PM_DEPPTO_ELI', 'Inactiva el depto selecionado', 'si', '', '', 'param.ft_depto_ime');
select pxp.f_insert_tprocedimiento ('PM_GRU_INS', 'Insercion de registros', 'si', '', '', 'param.ft_grupo_ime');
select pxp.f_insert_tprocedimiento ('PM_GRU_MOD', 'Modificacion de registros', 'si', '', '', 'param.ft_grupo_ime');
select pxp.f_insert_tprocedimiento ('PM_GRU_ELI', 'Eliminacion de registros', 'si', '', '', 'param.ft_grupo_ime');
select pxp.f_insert_tprocedimiento ('PM_GQP_SEL', 'Consulta de datos', 'si', '', '', 'param.ft_grupo_ep_sel');
select pxp.f_insert_tprocedimiento ('PM_GQP_CONT', 'Conteo de registros', 'si', '', '', 'param.ft_grupo_ep_sel');
select pxp.f_insert_tprocedimiento ('PM_ASIS_SEL', 'Consulta de datos', 'si', '', '', 'param.ft_asistente_sel');
select pxp.f_insert_tprocedimiento ('PM_ASIS_CONT', 'Conteo de registros', 'si', '', '', 'param.ft_asistente_sel');
select pxp.f_insert_tprocedimiento ('PM_CEC_INS', 'Insercion de registros', 'si', '', '', 'param.f_centro_costo_ime');
select pxp.f_insert_tprocedimiento ('PM_CEC_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_centro_costo_ime');
select pxp.f_insert_tprocedimiento ('PM_CEC_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_centro_costo_ime');
select pxp.f_insert_tprocedimiento ('PM_APRO_INS', 'Insercion de registros', 'si', '', '', 'param.f_aprobador_ime');
select pxp.f_insert_tprocedimiento ('PM_APRO_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_aprobador_ime');
select pxp.f_insert_tprocedimiento ('PM_APRO_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_aprobador_ime');
select pxp.f_insert_tprocedimiento ('PM_DEPUO_SEL', 'Consulta de datos', 'si', '', '', 'param.ft_depto_uo_sel');
select pxp.f_insert_tprocedimiento ('PM_DEPUO_CONT', 'Conteo de registros', 'si', '', '', 'param.ft_depto_uo_sel');
select pxp.f_insert_tprocedimiento ('PM_PESU_INS', 'Insercion de registros', 'si', '', '', 'param.ft_periodo_subsistema_ime');
select pxp.f_insert_tprocedimiento ('PM_PESU_MOD', 'Modificacion de registros', 'si', '', '', 'param.ft_periodo_subsistema_ime');
select pxp.f_insert_tprocedimiento ('PM_PESU_ELI', 'Eliminacion de registros', 'si', '', '', 'param.ft_periodo_subsistema_ime');
select pxp.f_insert_tprocedimiento ('PM_PESUGEN_INS', 'Genracion de registros para un subsistema', 'si', '', '', 'param.ft_periodo_subsistema_ime');
select pxp.f_insert_tprocedimiento ('PM_SWESTPE_MOD', 'Cambio de estado para un periodo_subsistema', 'si', '', '', 'param.ft_periodo_subsistema_ime');
select pxp.f_insert_tprocedimiento ('PM_PER_INS', 'Insercion de registros', 'si', '', '', 'param.f_periodo_ime');
select pxp.f_insert_tprocedimiento ('PM_PER_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_periodo_ime');
select pxp.f_insert_tprocedimiento ('PM_PER_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_periodo_ime');
select pxp.f_insert_tprocedimiento ('PM_DOCFIS_SEL', 'Consulta de datos', 'si', '', '', 'param.ft_documento_fiscal_sel');
select pxp.f_insert_tprocedimiento ('PM_DOCFIS_CONT', 'Conteo de registros', 'si', '', '', 'param.ft_documento_fiscal_sel');
select pxp.f_insert_tprocedimiento ('PM_GES_SEL', 'Consulta de datos', 'si', '', '', 'param.f_gestion_sel');
select pxp.f_insert_tprocedimiento ('PM_GES_CONT', 'Conteo de registros', 'si', '', '', 'param.f_gestion_sel');
select pxp.f_insert_tprocedimiento ('PM_EMP_INS', 'Insercion de registros', 'si', '', '', 'param.f_empresa_ime');
select pxp.f_insert_tprocedimiento ('PM_EMP_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_empresa_ime');
select pxp.f_insert_tprocedimiento ('PM_LOGMOD_IME', 'Modifica la ruta de logo', 'si', '', '', 'param.f_empresa_ime');
select pxp.f_insert_tprocedimiento ('PM_EMP_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_empresa_ime');
select pxp.f_insert_tprocedimiento ('PM_GQP_INS', 'Insercion de registros', 'si', '', '', 'param.ft_grupo_ep_ime');
select pxp.f_insert_tprocedimiento ('PM_GQP_MOD', 'Modificacion de registros', 'si', '', '', 'param.ft_grupo_ep_ime');
select pxp.f_insert_tprocedimiento ('PM_GQP_ELI', 'Eliminacion de registros', 'si', '', '', 'param.ft_grupo_ep_ime');
select pxp.f_insert_tprocedimiento ('PM_TCB_SEL', 'Consulta de datos', 'si', '', '', 'param.f_tipo_cambio_sel');
select pxp.f_insert_tprocedimiento ('PM_TCB_CONT', 'Conteo de registros', 'si', '', '', 'param.f_tipo_cambio_sel');
select pxp.f_insert_tprocedimiento ('PM_TCB_INS', 'Insercion de registros', 'si', '', '', 'param.f_tipo_cambio_ime');
select pxp.f_insert_tprocedimiento ('PM_TCB_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_tipo_cambio_ime');
select pxp.f_insert_tprocedimiento ('PM_TCB_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_tipo_cambio_ime');
select pxp.f_insert_tprocedimiento ('PM_OBTTCB_GET', 'Permite recuperar dede la interface el tipo de cambio para la moneda y fecha determinada', 'si', '', '', 'param.f_tipo_cambio_ime');
select pxp.f_insert_tprocedimiento ('PM_EMP_SEL', 'Consulta de datos', 'si', '', '', 'param.f_empresa_sel');
select pxp.f_insert_tprocedimiento ('PM_EMP_CONT', 'Conteo de registros', 'si', '', '', 'param.f_empresa_sel');
select pxp.f_insert_tprocedimiento ('PM_PLT_INS', 'Insercion de registros', 'si', '', '', 'param.f_plantilla_ime');
select pxp.f_insert_tprocedimiento ('PM_PLT_MOD', 'Modificacion de registros', 'si', '', '', 'param.f_plantilla_ime');
select pxp.f_insert_tprocedimiento ('PM_PLT_ELI', 'Eliminacion de registros', 'si', '', '', 'param.f_plantilla_ime');
select pxp.f_insert_tprocedimiento ('PM_DEPUO_INS', 'Insercion de registros', 'si', '', '', 'param.ft_depto_uo_ime');
select pxp.f_insert_tprocedimiento ('PM_DEPUO_MOD', 'Modificacion de registros', 'si', '', '', 'param.ft_depto_uo_ime');
select pxp.f_insert_tprocedimiento ('PM_DEPUO_ELI', 'Eliminacion de registros', 'si', '', '', 'param.ft_depto_uo_ime');
select pxp.f_insert_tprocedimiento ('PM_PER_SEL', 'Consulta de datos', 'si', '', '', 'param.f_periodo_sel');
select pxp.f_insert_tprocedimiento ('PM_PER_CONT', 'Conteo de registros', 'si', '', '', 'param.f_periodo_sel');
select pxp.f_insert_tprocedimiento ('PM_ASIS_INS', 'Insercion de registros', 'si', '', '', 'param.ft_asistente_ime');
select pxp.f_insert_tprocedimiento ('PM_ASIS_MOD', 'Modificacion de registros', 'si', '', '', 'param.ft_asistente_ime');
select pxp.f_insert_tprocedimiento ('PM_ASIS_ELI', 'Eliminacion de registros', 'si', '', '', 'param.ft_asistente_ime');
/***********************************F-DAT-AAO-PARAM-72-23/04/2013*****************************************/

/***********************************I-DAT-RAC-PARAM-00-26/04/2013*****************************************/
select pxp.f_insert_tgui ('Generadores de Alarma', 'Configuracion funciones que generan alarmas', 'GAL', 'si', 4, 'sis_parametros/vista/generador_alarma/GeneradorAlarma.php', 2, '', 'GeneradorAlarma', 'PARAM');
select pxp.f_insert_testructura_gui ('GAL', 'PARAM');
select pxp.f_insert_tgui ('Grupos', 'Grupos', 'GQP', 'si', 8, 'sis_parametros/vista/grupo/Grupo.php', 3, '', 'Grupo', 'PARAM');
select pxp.f_insert_testructura_gui ('GQP', 'CEP');
/***********************************F-DAT-RAC-PARAM-00-26/04/2013*****************************************/

/***********************************I-DAT-RCM-PARAM-00-03/05/2013*****************************************/
select pxp.f_add_catalog('PARAM','tgral__bandera','Si');
select pxp.f_add_catalog('PARAM','tgral__bandera','No');
/***********************************F-DAT-RCM-PARAM-00-03/05/2013*****************************************/
/***********************************I-DAT-GSS-PARAM-00-07/05/2013*****************************************/

select pxp.f_insert_tprocedimiento ('PM_DEPUSUCOMB_SEL', 'Listado de departamento por usuario para combos', 'si', '', '', 'param.ft_depto_sel');
select pxp.f_insert_tprocedimiento ('PM_CECCOM_SEL', 'Consulta de datos de centro de costo combo', 'si', '', '', 'param.f_centro_costo_sel');
select pxp.f_insert_tprocedimiento ('PM_CECCOM_CONT', 'Conteo de registros centro de costo combo', 'si', '', '', 'param.f_centro_costo_sel');

/***********************************F-DAT-GSS-PARAM-00-07/05/2013*****************************************/

/***********************************I-DAT-RCM-PARAM-00-24/06/2013*****************************************/
select pxp.f_add_catalog('PARAM','tgral__estado','activo');
select pxp.f_add_catalog('PARAM','tgral__estado','inactivo');

select pxp.f_add_catalog('PARAM','tgral__gestion','2005');
select pxp.f_add_catalog('PARAM','tgral__gestion','2006');
select pxp.f_add_catalog('PARAM','tgral__gestion','2007');
select pxp.f_add_catalog('PARAM','tgral__gestion','2008');
select pxp.f_add_catalog('PARAM','tgral__gestion','2009');
select pxp.f_add_catalog('PARAM','tgral__gestion','2010');
select pxp.f_add_catalog('PARAM','tgral__gestion','2011');
select pxp.f_add_catalog('PARAM','tgral__gestion','2012');
select pxp.f_add_catalog('PARAM','tgral__gestion','2013');
select pxp.f_add_catalog('PARAM','tgral__gestion','2014');
select pxp.f_add_catalog('PARAM','tgral__gestion','2015');
select pxp.f_add_catalog('PARAM','tgral__gestion','2016');
select pxp.f_add_catalog('PARAM','tgral__gestion','2017');
select pxp.f_add_catalog('PARAM','tgral__gestion','2018');
select pxp.f_add_catalog('PARAM','tgral__gestion','2019');
select pxp.f_add_catalog('PARAM','tgral__gestion','2020');
select pxp.f_add_catalog('PARAM','tgral__gestion','2021');
select pxp.f_add_catalog('PARAM','tgral__gestion','2022');
select pxp.f_add_catalog('PARAM','tgral__gestion','2023');
select pxp.f_add_catalog('PARAM','tgral__gestion','2024');
select pxp.f_add_catalog('PARAM','tgral__gestion','2025');
/***********************************F-DAT-RCM-PARAM-00-24/06/2013*****************************************/

/***********************************I-DAT-RCM-PARAM-00-08/10/2013*****************************************/
select pxp.f_add_catalog('PARAM','tgral__bandera_min','si');
select pxp.f_add_catalog('PARAM','tgral__bandera_min','no');
/***********************************F-DAT-RCM-PARAM-00-08/10/2013*****************************************/

/***********************************I-DAT-JRR-PARAM-0-25/04/2014*****************************************/
select pxp.f_insert_tgui ('Depto - UO', 'Depto - UO', 'DEPTO.2', 'no', 0, 'sis_parametros/vista/depto_uo/DeptoUo.php', 3, '', '50%', 'PARAM');
select pxp.f_insert_tgui ('Depto - EP', 'Depto - EP', 'DEPTO.3', 'no', 0, 'sis_parametros/vista/depto_ep/DeptoEp.php', 3, '', '50%', 'PARAM');
select pxp.f_insert_tgui ('Depto UO - EP', 'Depto UO - EP', 'DEPTO.4', 'no', 0, 'sis_parametros/vista/depto_uo_ep/DeptoUoEp.php', 3, '', '50%', 'PARAM');
select pxp.f_insert_tgui ('Firmas Documentos', 'Firmas Documentos', 'DEPTO.5', 'no', 0, 'sis_parametros/vista/firma/Firma.php', 3, '', '50%', 'PARAM');
select pxp.f_insert_tgui ('Subsistema', 'Subsistema', 'DEPTO.6', 'no', 0, 'id_subsistema', 3, '', 'Subsistema...', 'PARAM');
select pxp.f_insert_tgui ('EP\', 'EP\', 'DEPTO.1.1.3', 'no', 0, 'sis_seguridad/vista/usuario_grupo_ep/UsuarioGrupoEp.php', 5, '', ', 
          width:400,
          cls:', 'PARAM');
select pxp.f_insert_tgui ('Personas', 'Personas', 'INSTIT.1', 'no', 0, 'sis_seguridad/vista/persona/Persona.php', 3, '', 'persona', 'PARAM');
select pxp.f_insert_tgui ('Subir foto', 'Subir foto', 'INSTIT.1.1', 'no', 0, 'sis_seguridad/vista/persona/subirFotoPersona.php', 4, '', 'subirFotoPersona', 'PARAM');
select pxp.f_insert_tgui ('Personas', 'Personas', 'PROVEE.2', 'no', 0, 'sis_seguridad/vista/persona/Persona.php', 3, '', 'persona', 'PARAM');
select pxp.f_insert_tgui ('Instituciones', 'Instituciones', 'PROVEE.3', 'no', 0, 'sis_parametros/vista/institucion/Institucion.php', 3, '', 'Institucion', 'PARAM');
select pxp.f_insert_tgui ('Subir foto', 'Subir foto', 'PROVEE.2.1', 'no', 0, 'sis_seguridad/vista/persona/subirFotoPersona.php', 4, '', 'subirFotoPersona', 'PARAM');
select pxp.f_insert_tgui ('Personas', 'Personas', 'PROVEE.3.1', 'no', 0, 'sis_seguridad/vista/persona/Persona.php', 4, '', 'persona', 'PARAM');
select pxp.f_insert_tgui ('Catálogo', 'Catálogo', 'UME.1', 'no', 0, 'sis_parametros/vista/catalogo/Catalogo.php', 3, '', 'Catalogo', 'PARAM');
select pxp.f_insert_tgui ('Catálogo', 'Catálogo', 'GESTIO.2', 'no', 0, 'sis_parametros/vista/catalogo/Catalogo.php', 3, '', 'Catalogo', 'PARAM');
select pxp.f_insert_tgui ('Periodo Subistema', 'Periodo Subistema', 'GESTIO.1.1', 'no', 0, 'sis_parametros/vista/periodo_subsistema/PeriodoSubsistema.php', 4, '', '50%', 'PARAM');
select pxp.f_insert_tgui ('Periodo Subistema', 'Periodo Subistema', 'PERIOD.1', 'no', 0, 'sis_parametros/vista/periodo_subsistema/PeriodoSubsistema.php', 3, '', '50%', 'PARAM');
select pxp.f_insert_tgui ('Funcionarios', 'Funcionarios', 'APROC.1', 'no', 0, 'sis_organigrama/vista/funcionario/Funcionario.php', 5, '', 'funcionario', 'PARAM');
select pxp.f_insert_tgui ('Cuenta Bancaria del Empleado', 'Cuenta Bancaria del Empleado', 'APROC.1.1', 'no', 0, 'sis_organigrama/vista/funcionario_cuenta_bancaria/FuncionarioCuentaBancaria.php', 6, '', 'FuncionarioCuentaBancaria', 'PARAM');
select pxp.f_insert_tgui ('Personas', 'Personas', 'APROC.1.2', 'no', 0, 'sis_seguridad/vista/persona/Persona.php', 6, '', 'persona', 'PARAM');
select pxp.f_insert_tgui ('Instituciones', 'Instituciones', 'APROC.1.1.1', 'no', 0, 'sis_parametros/vista/institucion/Institucion.php', 7, '', 'Institucion', 'PARAM');
select pxp.f_insert_tgui ('Personas', 'Personas', 'APROC.1.1.1.1', 'no', 0, 'sis_seguridad/vista/persona/Persona.php', 8, '', 'persona', 'PARAM');
select pxp.f_insert_tgui ('Subir foto', 'Subir foto', 'APROC.1.1.1.1.1', 'no', 0, 'sis_seguridad/vista/persona/subirFotoPersona.php', 9, '', 'subirFotoPersona', 'PARAM');
select pxp.f_insert_tgui ('Catálogo', 'Catálogo', 'CONIG.1', 'no', 0, 'sis_parametros/vista/catalogo/Catalogo.php', 5, '', 'Catalogo', 'PARAM');
select pxp.f_insert_tgui ('Organigrama', 'Organigrama', 'ASI.1', 'no', 0, 'sis_organigrama/vista/estructura_uo/EstructuraUoCheck.php', 3, '', '60%', 'PARAM');
select pxp.f_insert_tgui ('Funcionarios', 'Funcionarios', 'ASI.2', 'no', 0, 'sis_organigrama/vista/funcionario/Funcionario.php', 3, '', 'funcionario', 'PARAM');
select pxp.f_insert_tgui ('Catálogo', 'Catálogo', 'ASI.3', 'no', 0, 'sis_parametros/vista/catalogo/Catalogo.php', 3, '', 'Catalogo', 'PARAM');
select pxp.f_insert_tgui ('Cargos por Unidad', 'Cargos por Unidad', 'ASI.1.1', 'no', 0, 'sis_organigrama/vista/cargo/Cargo.php', 4, '', 'Cargo', 'PARAM');
select pxp.f_insert_tgui ('Asignacion de Funcionarios a Unidad', 'Asignacion de Funcionarios a Unidad', 'ASI.1.2', 'no', 0, 'sis_organigrama/vista/uo_funcionario/UOFuncionario.php', 4, '', '50%', 'PARAM');
select pxp.f_insert_tgui ('Asignación de Presupuesto por Cargo', 'Asignación de Presupuesto por Cargo', 'ASI.1.1.1', 'no', 0, 'sis_organigrama/vista/cargo_presupuesto/CargoPresupuesto.php', 5, '', '50%', 'PARAM');
select pxp.f_insert_tgui ('Centros de Costo Asignados por Cargo', 'Centros de Costo Asignados por Cargo', 'ASI.1.1.2', 'no', 0, 'sis_organigrama/vista/cargo_centro_costo/CargoCentroCosto.php', 5, '', 'CargoCentroCosto', 'PARAM');
select pxp.f_insert_tgui ('Funcionarios', 'Funcionarios', 'ASI.1.2.1', 'no', 0, 'sis_organigrama/vista/funcionario/Funcionario.php', 5, '', 'funcionario', 'PARAM');
select pxp.f_insert_tgui ('Cuenta Bancaria del Empleado', 'Cuenta Bancaria del Empleado', 'ASI.1.2.1.1', 'no', 0, 'sis_organigrama/vista/funcionario_cuenta_bancaria/FuncionarioCuentaBancaria.php', 6, '', 'FuncionarioCuentaBancaria', 'PARAM');
select pxp.f_insert_tgui ('Personas', 'Personas', 'ASI.1.2.1.2', 'no', 0, 'sis_seguridad/vista/persona/Persona.php', 6, '', 'persona', 'PARAM');
select pxp.f_insert_tgui ('Instituciones', 'Instituciones', 'ASI.1.2.1.1.1', 'no', 0, 'sis_parametros/vista/institucion/Institucion.php', 7, '', 'Institucion', 'PARAM');
select pxp.f_insert_tgui ('Personas', 'Personas', 'ASI.1.2.1.1.1.1', 'no', 0, 'sis_seguridad/vista/persona/Persona.php', 8, '', 'persona', 'PARAM');
select pxp.f_insert_tgui ('Subir foto', 'Subir foto', 'ASI.1.2.1.1.1.1.1', 'no', 0, 'sis_seguridad/vista/persona/subirFotoPersona.php', 9, '', 'subirFotoPersona', 'PARAM');
select pxp.f_insert_tgui ('Catálogo', 'Catálogo', 'DF.1', 'no', 0, 'sis_parametros/vista/catalogo/Catalogo.php', 3, '', 'Catalogo', 'PARAM');
select pxp.f_insert_tgui ('Roles', 'Roles', 'GQP.1', 'no', 0, 'sis_parametros/vista/grupo_ep/GrupoEp.php', 4, '', 'GrupoEp', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_extension_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_firma_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_get_id_lugares', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_depto_uo_ep_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_get_id_periodo_anterior', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_depto_ep_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_extension_grupo_archivo_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_grupo_archivo_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_extension_grupo_archivo_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_verifica_periodo_subsistema_abierto', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_get_lista_deptos_x_usuario', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_extension_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_generador_alarma_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_get_lista_ccosto_x_usuario', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_grupo_archivo_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_depto_ep_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_firma_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_get_tipo_cambio', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_generador_alarma_ime', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.ft_depto_uo_ep_sel', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_get_periodo_gestion', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tfuncion ('param.f_get_factor_actualizacion_ufv', 'Funcion para tabla     ', 'PARAM');
select pxp.f_insert_tprocedimiento ('PM_PROVEEV_SEL', 'Consulta de datos de proveedores a partir de una vista de base
                    de datos', 'si', '', '', 'param.f_tproveedor_sel');
select pxp.f_insert_tprocedimiento ('PM_DEPUSUCOMB_SEL', 'Listado de departamento filtrados por los usuarios configurados en los mismo', 'si', '', '', 'param.ft_depto_sel');
select pxp.f_insert_tprocedimiento ('PM_EXT_SEL', 'Consulta de datos', 'si', '', '', 'param.ft_extension_sel');
select pxp.f_insert_tprocedimiento ('PM_EXT_CONT', 'Conteo de registros', 'si', '', '', 'param.ft_extension_sel');
select pxp.f_insert_tprocedimiento ('PM_FIR_INS', 'Insercion de registros', 'si', '', '', 'param.ft_firma_ime');
select pxp.f_insert_tprocedimiento ('PM_FIR_MOD', 'Modificacion de registros', 'si', '', '', 'param.ft_firma_ime');
select pxp.f_insert_tprocedimiento ('PM_FIR_ELI', 'Eliminacion de registros', 'si', '', '', 'param.ft_firma_ime');
select pxp.f_insert_tprocedimiento ('PM_DUE_INS', 'Insercion de registros', 'si', '', '', 'param.ft_depto_uo_ep_ime');
select pxp.f_insert_tprocedimiento ('PM_DUE_MOD', 'Modificacion de registros', 'si', '', '', 'param.ft_depto_uo_ep_ime');
select pxp.f_insert_tprocedimiento ('PM_DUE_ELI', 'Eliminacion de registros', 'si', '', '', 'param.ft_depto_uo_ep_ime');
select pxp.f_insert_tprocedimiento ('PM_DEEP_INS', 'Insercion de registros', 'si', '', '', 'param.ft_depto_ep_ime');
select pxp.f_insert_tprocedimiento ('PM_DEEP_MOD', 'Modificacion de registros', 'si', '', '', 'param.ft_depto_ep_ime');
select pxp.f_insert_tprocedimiento ('PM_DEEP_ELI', 'Eliminacion de registros', 'si', '', '', 'param.ft_depto_ep_ime');
select pxp.f_insert_tprocedimiento ('PM_EXT_G_AR_SEL', 'Consulta de datos', 'si', '', '', 'param.ft_extension_grupo_archivo_sel');
select pxp.f_insert_tprocedimiento ('PM_EXT_G_AR_CONT', 'Conteo de registros', 'si', '', '', 'param.ft_extension_grupo_archivo_sel');
select pxp.f_insert_tprocedimiento ('PM_GRUPO_AR_INS', 'Insercion de registros', 'si', '', '', 'param.ft_grupo_archivo_ime');
select pxp.f_insert_tprocedimiento ('PM_GRUPO_AR_MOD', 'Modificacion de registros', 'si', '', '', 'param.ft_grupo_archivo_ime');
select pxp.f_insert_tprocedimiento ('PM_GRUPO_AR_ELI', 'Eliminacion de registros', 'si', '', '', 'param.ft_grupo_archivo_ime');
select pxp.f_insert_tprocedimiento ('PM_EXT_G_AR_INS', 'Insercion de registros', 'si', '', '', 'param.ft_extension_grupo_archivo_ime');
select pxp.f_insert_tprocedimiento ('PM_EXT_G_AR_MOD', 'Modificacion de registros', 'si', '', '', 'param.ft_extension_grupo_archivo_ime');
select pxp.f_insert_tprocedimiento ('PM_EXT_G_AR_ELI', 'Eliminacion de registros', 'si', '', '', 'param.ft_extension_grupo_archivo_ime');
select pxp.f_insert_tprocedimiento ('PM_EXT_INS', 'Insercion de registros', 'si', '', '', 'param.ft_extension_ime');
select pxp.f_insert_tprocedimiento ('PM_EXT_MOD', 'Modificacion de registros', 'si', '', '', 'param.ft_extension_ime');
select pxp.f_insert_tprocedimiento ('PM_EXT_ELI', 'Eliminacion de registros', 'si', '', '', 'param.ft_extension_ime');
select pxp.f_insert_tprocedimiento ('PM_CONIGPP_SEL', 'Consulta de datos conmceptos de gasto filtrados por partidas', 'si', '', '', 'param.f_concepto_ingas_sel');
select pxp.f_insert_tprocedimiento ('PM_CONIGPP_CONT', 'Conteo de registros', 'si', '', '', 'param.f_concepto_ingas_sel');
select pxp.f_insert_tprocedimiento ('PM_GAL_SEL', 'Consulta de datos', 'si', '', '', 'param.ft_generador_alarma_sel');
select pxp.f_insert_tprocedimiento ('PM_GAL_CONT', 'Conteo de registros', 'si', '', '', 'param.ft_generador_alarma_sel');
select pxp.f_insert_tprocedimiento ('PM_GRUPO_AR_SEL', 'Consulta de datos', 'si', '', '', 'param.ft_grupo_archivo_sel');
select pxp.f_insert_tprocedimiento ('PM_GRUPO_AR_CONT', 'Conteo de registros', 'si', '', '', 'param.ft_grupo_archivo_sel');
select pxp.f_insert_tprocedimiento ('PM_DEEP_SEL', 'Consulta de datos', 'si', '', '', 'param.ft_depto_ep_sel');
select pxp.f_insert_tprocedimiento ('PM_DEEP_CONT', 'Conteo de registros', 'si', '', '', 'param.ft_depto_ep_sel');
select pxp.f_insert_tprocedimiento ('PM_FIR_SEL', 'Consulta de datos', 'si', '', '', 'param.ft_firma_sel');
select pxp.f_insert_tprocedimiento ('PM_FIR_CONT', 'Conteo de registros', 'si', '', '', 'param.ft_firma_sel');
select pxp.f_insert_tprocedimiento ('PM_DEPUSUCOMB_CONT', 'cuenta la cantidad de departamentos por usuario para combos', 'si', '', '', 'param.ft_depto_sel');
select pxp.f_insert_tprocedimiento ('PM_DEPFILUSU_SEL', 'Listado departametos filtrado por los grupos ep del usuarios', 'si', '', '', 'param.ft_depto_sel');
select pxp.f_insert_tprocedimiento ('PM_DEPFILUSU_CONT', 'Listado departametos filtrado por los grupos ep del usuarios', 'si', '', '', 'param.ft_depto_sel');
select pxp.f_insert_tprocedimiento ('PM_DEPFILEPUO_SEL', 'Listado departametos filtrado por vector de uos, eps
                      Este modulo busca ser generico para que desde cualquier sistema
                      se obtenga un filtro de depto en ufncion a un array de uo y ep,
                      
                      Estos array se arman en control en otra cosulta que si deberia ser particular segun el 
                      sistema desde el que se quiera lista', 'si', '', '', 'param.ft_depto_sel');
select pxp.f_insert_tprocedimiento ('PM_DEPFILEPUO_CONT', 'Listado departametos filtrado por vector de uos, eps
                Este modulo busca ser generico para que desde cualquier sistema
                se obtenga un filtro de depto en ufncion a un array de uo y ep,
                
                Estos array se arman en control en otra cosulta que si deberia ser particular segun el 
                sistema desde el que se quiera lista', 'si', '', '', 'param.ft_depto_sel');
select pxp.f_insert_tprocedimiento ('PM_GAL_INS', 'Insercion de registros', 'si', '', '', 'param.ft_generador_alarma_ime');
select pxp.f_insert_tprocedimiento ('PM_GAL_MOD', 'Modificacion de registros', 'si', '', '', 'param.ft_generador_alarma_ime');
select pxp.f_insert_tprocedimiento ('PM_GAL_ELI', 'Eliminacion de registros', 'si', '', '', 'param.ft_generador_alarma_ime');
select pxp.f_insert_tprocedimiento ('PM_DUE_SEL', 'Consulta de datos', 'si', '', '', 'param.ft_depto_uo_ep_sel');
select pxp.f_insert_tprocedimiento ('PM_DUE_CONT', 'Conteo de registros', 'si', '', '', 'param.ft_depto_uo_ep_sel');
select pxp.f_insert_tprocedimiento ('PM_CECCOMFU_SEL', 'Consulta de datos de centro de costo combo filtrado por grupo_ep del usuario', 'si', '', '', 'param.f_centro_costo_sel');
select pxp.f_insert_tprocedimiento ('PM_CECCOMFU_CONT', 'Conteo de registros centro de costo combo', 'si', '', '', 'param.f_centro_costo_sel');
select pxp.f_insert_tprocedimiento ('PM_CCFILDEP_SEL', 'Consulta  de centro de costos filtrado por el departamento que llega como parametros id_depto
                    ademas si la opcio filtrar = grupo_ep ademas anhade al filtro las 
                    lo grupo_de ep correspondiente al usuario', 'si', '', '', 'param.f_centro_costo_sel');
select pxp.f_insert_tprocedimiento ('PM_CCFILDEP_CONT', 'Conteo de registros de la Consulta  de centro de costos filtrado por el departamento que llega como parametros id_depto', 'si', '', '', 'param.f_centro_costo_sel');
select pxp.f_insert_tprocedimiento ('PM_PERSUB_SIN', 'Generación de los periodos subsistema para los subsistemas recientes', 'si', '', '', 'param.f_gestion_ime');
select pxp.f_insert_tprocedimiento ('PM_SINCEPUO_IME', 'Sincronizar todas las ep o uo en el depto selecionado', 'si', '', '', 'param.ft_depto_uo_ep_ime');
select pxp.f_insert_tprocedimiento ('PM_GETALA_SEL', 'recupera datos de la alerta especificada', 'si', '', '', 'param.ft_alarma_sel');


/***********************************F-DAT-JRR-PARAM-0-25/04/2014*****************************************/



/***********************************I-DAT-RAC-PARAM-0-15/05/2014*****************************************/

select pxp.f_add_catalog('PARAM','tdepto_usuario_cargo','responsable');
select pxp.f_add_catalog('PARAM','tdepto_usuario_cargo','auxiliar');

/***********************************F-DAT-RAC-PARAM-0-15/05/2014*****************************************/




/***********************************I-DAT-RAC-PARAM-0-28/10/2015*****************************************/

INSERT INTO pxp.variable_global ("variable", "valor", "descripcion")
VALUES (E'moneda_intercambio', E'false', E'el sistema maneja moneda de intercambio');

/***********************************F-DAT-RAC-PARAM-0-28/10/2015*****************************************/


/***********************************I-DAT-RCM-PARAM-0-21/01/2016*****************************************/
select pxp.f_add_catalog('PARAM','tmoneda__origen','nacional');
select pxp.f_add_catalog('PARAM','tmoneda__origen','extranjera');
select pxp.f_add_catalog('PARAM','tmoneda__tipo_actualizacion','sin_actualizacion');
select pxp.f_add_catalog('PARAM','tmoneda__tipo_actualizacion','por_saldo');
select pxp.f_add_catalog('PARAM','tmoneda__tipo_actualizacion','por_transaccion');
/***********************************F-DAT-RCM-PARAM-0-21/01/2016*****************************************/



/***********************************I-DAT-RCM-PARAM-0-24/01/2016*****************************************/


select pxp.f_insert_tgui ('Entidad', 'Entidad', 'ENT', 'si', 10, 'sis_parametros/vista/entidad/Entidad.php', 2, '', 'Entidad', 'PARAM');
select pxp.f_insert_testructura_gui ('ENT', 'PARAM');

/***********************************F-DAT-RCM-PARAM-0-24/01/2016*****************************************/




/***********************************I-DAT-RAC-PARAM-0-12/04/2016*****************************************/

/* Data for the 'pxp.variable_global' table  (Records 1 - 1) */

INSERT INTO pxp.variable_global ("variable", "valor", "descripcion")
VALUES 
  (E'param_comunicado', E'usuario', E'(usuario , funcionario) envio de copmunicados a usuarios de sistema o todos los funcionarios');


select pxp.f_insert_tgui ('<i class="fa fa-wrench fa-2x"></i> PARAMETROS GENERALES', 'Parametros Generales', 'PARAM', 'si', 2, '', 1, '', 'Sistema de Parametros', 'PARAM');
select pxp.f_insert_tgui ('Alarmas', 'Para programar las alarmas', 'ALARM', 'si', 0, 'sis_parametros/vista/alarma/Alarma.php', 2, '', 'Alarma', 'PARAM');
select pxp.f_insert_tgui ('Departamentos', 'Departamentos', 'DEPTO', 'si', 0, 'sis_parametros/vista/depto/Depto.php', 2, '', 'Depto', 'PARAM');
select pxp.f_insert_tgui ('Lugar', 'Lugar', 'LUG', 'si', 0, 'sis_parametros/vista/lugar/Lugar.php', 2, '', 'Lugar', 'PARAM');
select pxp.f_insert_tgui ('Institucion', 'Detalle de instituciones', 'INSTIT', 'si', 0, 'sis_parametros/vista/institucion/Institucion.php', 2, '', 'Institucion', 'PARAM');
select pxp.f_insert_tgui ('Proyecto', 'Proyecto EP proviene de ENDESIS', 'PRO', 'si', 5, 'sis_parametros/vista/proyecto/Proyecto.php', 2, '', 'Proyecto', 'PARAM');
select pxp.f_insert_tgui ('Proveedores', 'Registro de Proveedores', 'PROVEE', 'si', 3, 'sis_parametros/vista/proveedor/Proveedor.php', 2, '', 'proveedor', 'PARAM');
select pxp.f_insert_tgui ('Documentos', 'Documentos por Sistema', 'DOCUME', 'si', 0, 'sis_parametros/vista/documento/Documento.php', 2, '', 'Documento', 'PARAM');
select pxp.f_insert_tgui ('Configuracion Alarmas', 'Para configurar las alarmas', 'CONALA', 'si', 0, 'sis_parametros/vista/config_alarma/ConfigAlarma.php', 2, '', 'ConfigAlarma', 'PARAM');
select pxp.f_insert_tgui ('Unidades de Medida', 'Registro de Unidades de Medida', 'UME', 'si', 0, 'sis_parametros/vista/unidad_medida/UnidadMedida.php', 2, '', 'UnidadMedida', 'PARAM');
select pxp.f_insert_tgui ('Gestion', 'Manejo de gestiones', 'GESTIO', 'si', 0, 'sis_parametros/vista/gestion/Gestion.php', 2, '', 'Gestion', 'PARAM');
select pxp.f_insert_tgui ('Catalogo', 'Catalogo', 'CATA', 'si', 0, 'sis_parametros/vista/catalogo/Catalogo.php', 2, '', 'Catalogo', 'PARAM');
select pxp.f_insert_tgui ('Periodo', 'Periodo', 'PERIOD', 'si', 0, 'sis_parametros/vista/periodo/Periodo.php', 2, '', 'Periodo', 'PARAM');
select pxp.f_insert_tgui ('Moneda', 'Monedas', 'MONPAR', 'si', 0, 'sis_parametros/vista/moneda/Moneda.php', 2, '', 'Moneda', 'PARAM');
select pxp.f_insert_tgui ('Tipos de Catálogos', 'Tipos de Catálogos', 'PACATI', 'si', 0, 'sis_parametros/vista/catalogo_tipo/CatalogoTipo.php', 2, '', 'CatalogoTipo', 'PARAM');
select pxp.f_insert_tgui ('Servicios', 'Para registro de los servicios', 'SERVIC', 'si', 0, 'sis_parametros/vista/servicio/Servicio.php', 2, '', 'Servicio', 'PARAM');
select pxp.f_insert_tgui ('EP', 'Elementos de la Estructura Programatica', 'CEP', 'si', 1, '', 2, '', '', 'PARAM');
select pxp.f_insert_tgui ('Compras', 'Parametrizaciones re lacionadas con compras', 'CCOM', 'si', 2, '', 3, '', '', 'PARAM');
select pxp.f_insert_tgui ('Aprobadores', 'Aprobadores de Compras', 'APROC', 'si', 1, 'sis_parametros/vista/aprobador/Aprobador.php', 4, '', 'Aprobador', 'PARAM');
select pxp.f_insert_tgui ('Financiador', 'Financiadores de Compras', 'FIN', 'si', 1, 'sis_parametros/vista/financiador/Financiador.php', 3, '', 'Financiador', 'PARAM');
select pxp.f_insert_tgui ('Regional', 'Regionales de Compras', 'REGIO', 'si', 2, 'sis_parametros/vista/regional/Regional.php', 3, '', 'Regional', 'PARAM');
select pxp.f_insert_tgui ('Programa', 'Programas de Compras', 'PROG', 'si', 3, 'sis_parametros/vista/programa/Programa.php', 3, '', 'Programa', 'PARAM');
select pxp.f_insert_tgui ('Actividad', 'Actividad', 'ACT', 'si', 5, 'sis_parametros/vista/actividad/Actividad.php', 3, '', 'Actividad', 'PARAM');
select pxp.f_insert_tgui ('Programa-Proyecto-Actividad', 'programa proyecto actividad', 'PPA', 'si', 6, 'sis_parametros/vista/programa_proyecto_acttividad/ProgramaProyectoActtividad.php', 3, '', 'ProgramaProyectoActtividad', 'PARAM');
select pxp.f_insert_tgui ('Financiador-Regional-Programa-Proyecto', 'financiadores Regionales Programas Proyectos', 'FRPP', 'si', 7, 'sis_parametros/vista/ep/Ep.php', 3, '', 'Ep', 'PARAM');
select pxp.f_insert_tgui ('Empresa', 'Empresa', 'EMP', 'si', 0, 'sis_parametros/vista/empresa/Empresa.php', 2, '', 'Empresa', 'PARAM');
select pxp.f_insert_tgui ('Concepto de Ingreso/Gasto', 'Parametrizaciond e concepto de gasto o ingreso', 'CONIG', 'si', 2, 'sis_parametros/vista/concepto_ingas/ConceptoIngas.php', 4, '', 'ConceptoIngas', 'PARAM');
select pxp.f_insert_tgui ('Centro de Costo', 'Centro de costo', 'CCOST', 'si', 9, 'sis_parametros/vista/centro_costo/CentroCosto.php', 2, '', 'CentroCosto', 'PARAM');
select pxp.f_insert_tgui ('Tipo de Cambio', 'tipo de cambio', 'TCB', 'si', 0, 'sis_parametros/vista/tipo_cambio/TipoCambio.php', 2, '', 'TipoCambio', 'PARAM');
select pxp.f_insert_tgui ('Asistentes', 'Asistentes', 'ASI', 'si', 4, 'sis_parametros/vista/asistente/Asistente.php', 2, '', 'Asistente', 'PARAM');
select pxp.f_insert_tgui ('Documentos Fiscales', 'Listado de todos los Documentos fiscales', 'DF', 'si', 0, 'sis_parametros/vista/documento_fiscal/DocumentoFiscal.php', 2, '', 'DocumentoFiscal', 'PARAM');
select pxp.f_insert_tgui ('Plantillas', 'Plantillas', 'PLANT', 'si', 0, 'sis_parametros/vista/plantilla/Plantilla.php', 2, '', 'Plantilla', 'PARAM');
select pxp.f_insert_tgui ('Usuarios por Departamento', 'Usuarios por Departamento', 'DEPTO.1', 'no', 0, 'sis_parametros/vista/depto_usuario/DeptoUsuario.php', 3, '', '50%', 'PARAM');
select pxp.f_insert_tgui ('Usuarios', 'Usuarios', 'DEPTO.1.1', 'no', 0, 'sis_seguridad/vista/usuario/Usuario.php', 4, '', 'usuario', 'PARAM');
select pxp.f_insert_tgui ('Personas', 'Personas', 'DEPTO.1.1.1', 'no', 0, 'sis_seguridad/vista/persona/Persona.php', 5, '', 'persona', 'PARAM');
select pxp.f_insert_tgui ('Roles', 'Roles', 'DEPTO.1.1.2', 'no', 0, 'sis_seguridad/vista/usuario_rol/UsuarioRol.php', 5, '', 'usuario_rol', 'PARAM');
select pxp.f_insert_tgui ('Subir foto', 'Subir foto', 'DEPTO.1.1.1.1', 'no', 0, 'sis_seguridad/vista/persona/subirFotoPersona.php', 6, '', 'subirFotoPersona', 'PARAM');
select pxp.f_insert_tgui ('Ubicacion Lugar', 'Ubicacion Lugar', 'LUG.1', 'no', 0, 'sis_parametros/vista/lugar/mapaLugar.php', 3, '', '50%', 'PARAM');
select pxp.f_insert_tgui ('Items/Servicios ofertados', 'Items/Servicios ofertados', 'PROVEE.1', 'no', 0, 'sis_parametros/vista/proveedor_item_servicio/ProveedorItemServicio.php', 3, '', '50%', 'PARAM');
select pxp.f_insert_tgui ('Periodos', 'Periodos', 'GESTIO.1', 'no', 0, 'sis_parametros/vista/periodo/Periodo.php', 3, '', 'Periodo', 'PARAM');
select pxp.f_insert_tgui ('subir Logo', 'subir Logo', 'EMP.1', 'no', 0, 'sis_parametros/vista/empresa/subirLogo.php', 3, '', 'subirLogo', 'PARAM');
select pxp.f_insert_tgui ('Generadores de Alarma', 'Configuracion funciones que generan alarmas', 'GAL', 'si', 0, 'sis_parametros/vista/generador_alarma/GeneradorAlarma.php', 2, '', 'GeneradorAlarma', 'PARAM');
select pxp.f_insert_tgui ('Grupos', 'Grupos', 'GQP', 'si', 8, 'sis_parametros/vista/grupo/Grupo.php', 3, '', 'Grupo', 'PARAM');
select pxp.f_insert_tgui ('Depto - UO', 'Depto - UO', 'DEPTO.2', 'no', 0, 'sis_parametros/vista/depto_uo/DeptoUo.php', 3, '', '50%', 'PARAM');
select pxp.f_insert_tgui ('Depto - EP', 'Depto - EP', 'DEPTO.3', 'no', 0, 'sis_parametros/vista/depto_ep/DeptoEp.php', 3, '', '50%', 'PARAM');
select pxp.f_insert_tgui ('Depto UO - EP', 'Depto UO - EP', 'DEPTO.4', 'no', 0, 'sis_parametros/vista/depto_uo_ep/DeptoUoEp.php', 3, '', '50%', 'PARAM');
select pxp.f_insert_tgui ('Firmas Documentos', 'Firmas Documentos', 'DEPTO.5', 'no', 0, 'sis_parametros/vista/firma/Firma.php', 3, '', '50%', 'PARAM');
select pxp.f_insert_tgui ('Subsistema', 'Subsistema', 'DEPTO.6', 'no', 0, 'id_subsistema', 3, '', 'Subsistema...', 'PARAM');
select pxp.f_insert_tgui ('EP\', 'EP\', 'DEPTO.1.1.3', 'no', 0, 'sis_seguridad/vista/usuario_grupo_ep/UsuarioGrupoEp.php', 5, '', ', 
          width:400,
          cls:', 'PARAM');
select pxp.f_insert_tgui ('Personas', 'Personas', 'INSTIT.1', 'no', 0, 'sis_seguridad/vista/persona/Persona.php', 3, '', 'persona', 'PARAM');
select pxp.f_insert_tgui ('Subir foto', 'Subir foto', 'INSTIT.1.1', 'no', 0, 'sis_seguridad/vista/persona/subirFotoPersona.php', 4, '', 'subirFotoPersona', 'PARAM');
select pxp.f_insert_tgui ('Personas', 'Personas', 'PROVEE.2', 'no', 0, 'sis_seguridad/vista/persona/Persona.php', 3, '', 'persona', 'PARAM');
select pxp.f_insert_tgui ('Instituciones', 'Instituciones', 'PROVEE.3', 'no', 0, 'sis_parametros/vista/institucion/Institucion.php', 3, '', 'Institucion', 'PARAM');
select pxp.f_insert_tgui ('Subir foto', 'Subir foto', 'PROVEE.2.1', 'no', 0, 'sis_seguridad/vista/persona/subirFotoPersona.php', 4, '', 'subirFotoPersona', 'PARAM');
select pxp.f_insert_tgui ('Personas', 'Personas', 'PROVEE.3.1', 'no', 0, 'sis_seguridad/vista/persona/Persona.php', 4, '', 'persona', 'PARAM');
select pxp.f_insert_tgui ('Catálogo', 'Catálogo', 'UME.1', 'no', 0, 'sis_parametros/vista/catalogo/Catalogo.php', 3, '', 'Catalogo', 'PARAM');
select pxp.f_insert_tgui ('Catálogo', 'Catálogo', 'GESTIO.2', 'no', 0, 'sis_parametros/vista/catalogo/Catalogo.php', 3, '', 'Catalogo', 'PARAM');
select pxp.f_insert_tgui ('Periodo Subistema', 'Periodo Subistema', 'GESTIO.1.1', 'no', 0, 'sis_parametros/vista/periodo_subsistema/PeriodoSubsistema.php', 4, '', '50%', 'PARAM');
select pxp.f_insert_tgui ('Periodo Subistema', 'Periodo Subistema', 'PERIOD.1', 'no', 0, 'sis_parametros/vista/periodo_subsistema/PeriodoSubsistema.php', 3, '', '50%', 'PARAM');
select pxp.f_insert_tgui ('Funcionarios', 'Funcionarios', 'APROC.1', 'no', 0, 'sis_organigrama/vista/funcionario/Funcionario.php', 5, '', 'funcionario', 'PARAM');
select pxp.f_insert_tgui ('Cuenta Bancaria del Empleado', 'Cuenta Bancaria del Empleado', 'APROC.1.1', 'no', 0, 'sis_organigrama/vista/funcionario_cuenta_bancaria/FuncionarioCuentaBancaria.php', 6, '', 'FuncionarioCuentaBancaria', 'PARAM');
select pxp.f_insert_tgui ('Personas', 'Personas', 'APROC.1.2', 'no', 0, 'sis_seguridad/vista/persona/Persona.php', 6, '', 'persona', 'PARAM');
select pxp.f_insert_tgui ('Instituciones', 'Instituciones', 'APROC.1.1.1', 'no', 0, 'sis_parametros/vista/institucion/Institucion.php', 7, '', 'Institucion', 'PARAM');
select pxp.f_insert_tgui ('Personas', 'Personas', 'APROC.1.1.1.1', 'no', 0, 'sis_seguridad/vista/persona/Persona.php', 8, '', 'persona', 'PARAM');
select pxp.f_insert_tgui ('Subir foto', 'Subir foto', 'APROC.1.1.1.1.1', 'no', 0, 'sis_seguridad/vista/persona/subirFotoPersona.php', 9, '', 'subirFotoPersona', 'PARAM');
select pxp.f_insert_tgui ('Catálogo', 'Catálogo', 'CONIG.1', 'no', 0, 'sis_parametros/vista/catalogo/Catalogo.php', 5, '', 'Catalogo', 'PARAM');
select pxp.f_insert_tgui ('Organigrama', 'Organigrama', 'ASI.1', 'no', 0, 'sis_organigrama/vista/estructura_uo/EstructuraUoCheck.php', 3, '', '60%', 'PARAM');
select pxp.f_insert_tgui ('Funcionarios', 'Funcionarios', 'ASI.2', 'no', 0, 'sis_organigrama/vista/funcionario/Funcionario.php', 3, '', 'funcionario', 'PARAM');
select pxp.f_insert_tgui ('Catálogo', 'Catálogo', 'ASI.3', 'no', 0, 'sis_parametros/vista/catalogo/Catalogo.php', 3, '', 'Catalogo', 'PARAM');
select pxp.f_insert_tgui ('Cargos por Unidad', 'Cargos por Unidad', 'ASI.1.1', 'no', 0, 'sis_organigrama/vista/cargo/Cargo.php', 4, '', 'Cargo', 'PARAM');
select pxp.f_insert_tgui ('Asignacion de Funcionarios a Unidad', 'Asignacion de Funcionarios a Unidad', 'ASI.1.2', 'no', 0, 'sis_organigrama/vista/uo_funcionario/UOFuncionario.php', 4, '', '50%', 'PARAM');
select pxp.f_insert_tgui ('Asignación de Presupuesto por Cargo', 'Asignación de Presupuesto por Cargo', 'ASI.1.1.1', 'no', 0, 'sis_organigrama/vista/cargo_presupuesto/CargoPresupuesto.php', 5, '', '50%', 'PARAM');
select pxp.f_insert_tgui ('Centros de Costo Asignados por Cargo', 'Centros de Costo Asignados por Cargo', 'ASI.1.1.2', 'no', 0, 'sis_organigrama/vista/cargo_centro_costo/CargoCentroCosto.php', 5, '', 'CargoCentroCosto', 'PARAM');
select pxp.f_insert_tgui ('Funcionarios', 'Funcionarios', 'ASI.1.2.1', 'no', 0, 'sis_organigrama/vista/funcionario/Funcionario.php', 5, '', 'funcionario', 'PARAM');
select pxp.f_insert_tgui ('Cuenta Bancaria del Empleado', 'Cuenta Bancaria del Empleado', 'ASI.1.2.1.1', 'no', 0, 'sis_organigrama/vista/funcionario_cuenta_bancaria/FuncionarioCuentaBancaria.php', 6, '', 'FuncionarioCuentaBancaria', 'PARAM');
select pxp.f_insert_tgui ('Personas', 'Personas', 'ASI.1.2.1.2', 'no', 0, 'sis_seguridad/vista/persona/Persona.php', 6, '', 'persona', 'PARAM');
select pxp.f_insert_tgui ('Instituciones', 'Instituciones', 'ASI.1.2.1.1.1', 'no', 0, 'sis_parametros/vista/institucion/Institucion.php', 7, '', 'Institucion', 'PARAM');
select pxp.f_insert_tgui ('Personas', 'Personas', 'ASI.1.2.1.1.1.1', 'no', 0, 'sis_seguridad/vista/persona/Persona.php', 8, '', 'persona', 'PARAM');
select pxp.f_insert_tgui ('Subir foto', 'Subir foto', 'ASI.1.2.1.1.1.1.1', 'no', 0, 'sis_seguridad/vista/persona/subirFotoPersona.php', 9, '', 'subirFotoPersona', 'PARAM');
select pxp.f_insert_tgui ('Catálogo', 'Catálogo', 'DF.1', 'no', 0, 'sis_parametros/vista/catalogo/Catalogo.php', 3, '', 'Catalogo', 'PARAM');
select pxp.f_insert_tgui ('Roles', 'Roles', 'GQP.1', 'no', 0, 'sis_parametros/vista/grupo_ep/GrupoEp.php', 4, '', 'GrupoEp', 'PARAM');
select pxp.f_insert_tgui ('Catálogo', 'Catálogo', 'DEPTO.1.2', 'no', 0, 'sis_parametros/vista/catalogo/Catalogo.php', 4, '', 'Catalogo', 'PARAM');
select pxp.f_insert_tgui ('Subir foto', 'Subir foto', 'PROVEE.3.1.1', 'no', 0, 'sis_seguridad/vista/persona/subirFotoPersona.php', 5, '', 'subirFotoPersona', 'PARAM');
select pxp.f_insert_tgui ('Subir foto', 'Subir foto', 'APROC.1.2.1', 'no', 0, 'sis_seguridad/vista/persona/subirFotoPersona.php', 7, '', 'subirFotoPersona', 'PARAM');
select pxp.f_insert_tgui ('Subir foto', 'Subir foto', 'ASI.1.2.1.2.1', 'no', 0, 'sis_seguridad/vista/persona/subirFotoPersona.php', 7, '', 'subirFotoPersona', 'PARAM');
select pxp.f_insert_tgui ('Cuenta Bancaria del Empleado', 'Cuenta Bancaria del Empleado', 'ASI.2.1', 'no', 0, 'sis_organigrama/vista/funcionario_cuenta_bancaria/FuncionarioCuentaBancaria.php', 4, '', 'FuncionarioCuentaBancaria', 'PARAM');
select pxp.f_insert_tgui ('Personas', 'Personas', 'ASI.2.2', 'no', 0, 'sis_seguridad/vista/persona/Persona.php', 4, '', 'persona', 'PARAM');
select pxp.f_insert_tgui ('Instituciones', 'Instituciones', 'ASI.2.1.1', 'no', 0, 'sis_parametros/vista/institucion/Institucion.php', 5, '', 'Institucion', 'PARAM');
select pxp.f_insert_tgui ('Personas', 'Personas', 'ASI.2.1.1.1', 'no', 0, 'sis_seguridad/vista/persona/Persona.php', 6, '', 'persona', 'PARAM');
select pxp.f_insert_tgui ('Subir foto', 'Subir foto', 'ASI.2.1.1.1.1', 'no', 0, 'sis_seguridad/vista/persona/subirFotoPersona.php', 7, '', 'subirFotoPersona', 'PARAM');
select pxp.f_insert_tgui ('Subir foto', 'Subir foto', 'ASI.2.2.1', 'no', 0, 'sis_seguridad/vista/persona/subirFotoPersona.php', 5, '', 'subirFotoPersona', 'PARAM');
select pxp.f_insert_tgui ('Depto - Cuenta Bancaria', 'Depto - Cuenta Bancaria', 'DEPTO.7', 'no', 0, 'sis_tesoreria/vista/depto_cuenta_bancaria/DeptoCuentaBancaria.php', 3, '', '50%', 'PARAM');
select pxp.f_insert_tgui ('Entidad', 'Entidad', 'ENT', 'si', 0, 'sis_parametros/vista/entidad/Entidad.php', 2, '', 'Entidad', 'PARAM');
select pxp.f_insert_tgui ('Monedas', 'Monedas', 'MNDS', 'si', 2, '', 2, '', '', 'PARAM');
select pxp.f_insert_tgui ('Alarmas', 'Alarmas', 'ALRMS', 'si', 3, '', 2, '', '', 'PARAM');
select pxp.f_insert_tgui ('Empresa', 'Empresa', 'EMPS', 'si', 1, '', 2, '', '', 'PARAM');
select pxp.f_insert_tgui ('Catalogos', 'Catalogos', 'CTLGS', 'si', 2, '', 2, '', '', 'PARAM');
select pxp.f_insert_tgui ('Otros', 'Otros', 'OTROS', 'si', 50, '', 2, '', '', 'PARAM');
select pxp.f_insert_tgui ('Comunicados', 'registro de comunicados ', 'COMAL', 'si', 1, 'sis_parametros/vista/alarma/Comunicado.php', 3, '', 'Comunicado', 'PARAM');




/***********************************F-DAT-RAC-PARAM-0-12/04/2016*****************************************/


/*******************************************I-DAT-JRR-PARAM-0-18/06/2016***********************************************/

select pxp.f_insert_tprocedimiento ('PM_ALARM_SEL', 'Consulta de datos', 'no', '', '', 'param.ft_alarma_sel');
select pxp.f_insert_tprocedimiento ('PM_ALARM_CONT', 'Conteo de registros', 'no', '', '', 'param.ft_alarma_sel');

/*******************************************F-DAT-JRR-PARAM-0-18/06/2016***********************************************/


/*******************************************I-DAT-RAC-PARAM-0-06/09/2016***********************************************/

select pxp.f_insert_tgui ('Dashboard', 'Dashboard', 'DASH', 'si', 50, 'sis_parametros/vista/dashboard/Dashboard.php', 1, '', 'Dashboard', 'PXP');
select pxp.f_insert_testructura_gui ('DASH', 'SISTEMA');

/*******************************************F-DAT-RAC-PARAM-0-06/09/2016***********************************************/



/*******************************************I-DAT-RAC-PARAM-0-07/10/2016***********************************************/

----------------------------------
--COPY LINES TO data.sql FILE  
---------------------------------
select pxp.f_insert_tgui ('Widget', 'Widget para dashboard', 'WIDGET', 'si', 10, 'sis_parametros/vista/widget/WidgetConfig.php', 3, '', 'WidgetConfig', 'PARAM');
----------------------------------
--COPY LINES TO dependencies.sql FILE  
---------------------------------
select pxp.f_insert_testructura_gui ('WIDGET', 'OTROS');



/* Data for the 'param.twidget' table  (Records 1 - 3) */

INSERT INTO param.twidget ("id_usuario_reg", "id_usuario_mod", "fecha_reg", "fecha_mod", "estado_reg", "id_usuario_ai", "usuario_ai", "id_widget", "nombre", "obs", "foto", "clase", "tipo", "ruta")
VALUES 
  (1, 1, E'2016-09-10 04:34:20.673', E'2016-09-11 05:59:54.043', E'activo', NULL, E'NULL', 1, E'Prueba', E'este es un widget  de prueba sin datos relevantes', E'./../../../uploaded_files/sis_parametros/Widget/85ab53cb4ec4e66acb25d58419cfc392_v.jpg', E'Prueba', E'objeto', E'sis_seguridad/widgets/Prueba.php'),
  (1, 1, E'2016-09-10 06:24:19.559', E'2016-09-11 10:36:09.940', E'activo', NULL, E'NULL', 2, E'test', E'test', NULL, E'Prueba3', E'objeto', E'sis_seguridad/widgets/Prueba3.php'),
  (1, NULL, E'2016-09-11 10:59:02.279', NULL, E'activo', NULL, E'NULL', 3, E'iframe', E'iframe', NULL, E'Prueba2', E'iframe', E'sis_seguridad/widgets/Prueba2.php');


/* Data for the 'param.tdashboard' table  (Records 1 - 4) */

INSERT INTO param.tdashboard ("id_usuario_reg", "id_usuario_mod", "fecha_reg", "fecha_mod", "estado_reg", "id_usuario_ai", "usuario_ai", "id_dashboard", "nombre", "id_usuario")
VALUES 
  (1, 1, E'2016-09-10 07:41:23', E'2016-09-11 18:25:46.596', E'activo', NULL, E'NULL', 1, E'mi test', 1),
  (1, NULL, E'2016-09-11 06:24:06.452', NULL, E'activo', NULL, E'NULL', 27, E'Mi dashboard', 1),
  (1, 1, E'2016-09-11 23:07:16.106', E'2016-09-11 23:07:26.357', E'activo', NULL, E'NULL', 28, E'prueba', 1),
  (1, 1, E'2016-09-11 23:07:46.370', E'2016-09-11 23:07:54.814', E'activo', NULL, E'NULL', 29, E'test', 1);


/*******************************************F-DAT-RAC-PARAM-0-07/10/2016***********************************************/



/***********************************I-DAT-GSS-PARAM-0-05/01/2017*****************************************/

select pxp.f_insert_tgui ('Archivos Excel', 'Archivos Excel', 'ARXLS', 'si', 10, 'sis_parametros/vista/plantilla_archivo_excel/PlantillaArchivoExcel.php', 3, '', 'PlantillaArchivoExcel', 'PARAM');
select pxp.f_insert_tgui ('Columnas Excel', 'columnas excel del archivo', 'COLXLS', 'si', 1, 'sis_parametros/vista/columnas_archivo_excel/ColumnasArchivoExcel.php', 4, '', 'ColumnasArchivoExcel', 'PARAM');

select pxp.f_insert_testructura_gui ('ARXLS', 'OTROS');
select pxp.f_insert_testructura_gui ('COLXLS', 'ARXLS');

/***********************************F-DAT-GSS-PARAM-0-05/01/2017*****************************************/


/***********************************I-DAT-FFP-PARAM-0-27/02/2017*****************************************/


select pxp.f_insert_tgui ('Configuracion Lector', 'configuracion lector', 'CONFLECT', 'si', 10, 'sis_parametros/vista/conf_lector_mobile/ConfLectorMobile.php', 3, '', 'ConfLectorMobile', 'PARAM');

select pxp.f_insert_testructura_gui ('CONFLECT', 'OTROS');
/***********************************F-DAT-FFP-PARAM-0-27/02/2017*****************************************/

/***********************************I-DAT-FFP-PARAM-0-24/02/2017*****************************************/

select pxp.f_insert_tgui ('Tipo Archivo', 'tipos de archivos', 'TIPOAR', 'si', 9, 'sis_parametros/vista/tipo_archivo/TipoArchivo.php', 3, '', 'TipoArchivo', 'PARAM');
select pxp.f_insert_testructura_gui ('TIPOAR', 'OTROS');
/***********************************F-DAT-FFP-PARAM-0-24/02/2017*****************************************/


/***********************************I-DAT-RAC-PARAM-0-01/06/2017*****************************************/
select pxp.f_insert_tgui ('Tipo Centro de Costo', 'Tipo de Centro de Costo', 'TIPCC', 'si', 14, 'sis_parametros/vista/tipo_cc/TipoCcArb.php', 3, '', 'TipoCcArb', 'PARAM');
select pxp.f_insert_testructura_gui ('TIPCC', 'CEP');
/***********************************F-DAT-RAC-PARAM-0-01/06/2017*****************************************/



/***********************************I-DAT-RAC-PARAM-0-19/06/2017*****************************************/
select pxp.f_insert_tgui ('Tipo Centro de Costo Trans.', 'Tipo Centro de Costo', 'TCC', 'si', 14, 'sis_parametros/vista/tipo_cc/TipoCc.php', 3, '', 'TipoCc', 'PARAM');
select pxp.f_insert_testructura_gui ('TCC', 'CEP');
/***********************************F-DAT-RAC-PARAM-0-19/06/2017*****************************************/


/***********************************I-DAT-FFP-PARAM-0-11/07/2017*****************************************/
select pxp.f_insert_tgui ('wsMensaje', 'web socket mensaje', 'WSME', 'si', 5, 'sis_parametros/vista/wsmensaje/Wsmensaje.php', 3, '', 'Wsmensaje', 'PARAM');

/***********************************F-DAT-FFP-PARAM-0-11/07/2017*****************************************/



/***********************************I-DAT-RAC-PARAM-0-18/07/2017*****************************************/
select pxp.f_insert_tgui ('Plantillas Var Deptos', 'Plantillas de Variables para Deptos', 'VARDEP', 'si', 2, 'sis_parametros/vista/subsistema_var/SubsistemaConf.php', 3, '', 'SubsistemaConf', 'PARAM');
select pxp.f_insert_testructura_gui ('VARDEP', 'EMPS');

/***********************************F-DAT-RAC-PARAM-0-18/07/2017*****************************************/

/***********************************I-DAT-RAC-PARAM-0-06/09/2017*****************************************/


select pxp.f_insert_tgui ('Categoria de Concepto', 'Categoria de Concepto', 'CATCON', 'si', 3, 'sis_parametros/vista/cat_concepto/CatConcepto.php', 4, '', 'CatConcepto', 'PARAM');
select pxp.f_insert_testructura_gui ('CATCON', 'CCOM');

/***********************************F-DAT-RAC-PARAM-0-06/09/2017*****************************************/


/***********************************I-DAT-RAC-PARAM-0-05/09/2017*****************************************/

----------------------------------
--COPY LINES TO SUBSYSTEM data.sql FILE  
---------------------------------

select param.f_import_tcatalogo_tipo ('insert','tproveedor_tipo','PARAM','tproveedor');
select param.f_import_tcatalogo ('insert','PARAM','Abastecimiento','abastecimiento','tproveedor_tipo');
select param.f_import_tcatalogo ('insert','PARAM','General','general','tproveedor_tipo');

/***********************************F-DAT-RAC-PARAM-0-05/09/2017*****************************************/


/***********************************I-DAT-RAC-PARAM-1-06/09/2017*****************************************/

select wf.f_import_tproceso_macro ('insert','PROV', 'PARAM', 'Proveedores','si');
select wf.f_import_tcategoria_documento ('insert','legales', 'Legales');
select wf.f_import_tcategoria_documento ('insert','proceso', 'Proceso');
select wf.f_import_ttipo_proceso ('insert','REG',NULL,NULL,'PROV','Registro de Proveedores','param.tproveedor','','si','','','','REG',NULL);
select wf.f_import_ttipo_estado ('insert','borrador','REG','Borrador','si','no','no','ninguno','','ninguno','','','no','no',NULL,'<font color="99CC00" size="5"><font size="4">{TIPO_PROCESO}</font></font><br><br><b>&nbsp;</b>Tramite:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; <b>{NUM_TRAMITE}</b><br><b>&nbsp;</b>Usuario :<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {USUARIO_PREVIO} </b>en estado<b>&nbsp; {ESTADO_ANTERIOR}<br></b>&nbsp;<b>Responsable:&nbsp;&nbsp; &nbsp;&nbsp; </b><b>{FUNCIONARIO_PREVIO}&nbsp; {DEPTO_PREVIO}<br>&nbsp;</b>Estado Actual<b>: &nbsp; &nbsp;&nbsp; {ESTADO_ACTUAL}</b><br><br><br>&nbsp;{OBS} <br>','Aviso WF ,  {PROCESO_MACRO}  ({NUM_TRAMITE})','','no','','','','','','','',NULL);
select wf.f_import_ttipo_estado ('insert','revision','REG','revision','no','no','no','todos','','ninguno','','','si','si',NULL,'<font color="99CC00" size="5"><font size="4">{TIPO_PROCESO}</font></font><br><br><b>&nbsp;</b>Tramite:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; <b>{NUM_TRAMITE}</b><br><b>&nbsp;</b>Usuario :<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {USUARIO_PREVIO} </b>en estado<b>&nbsp; {ESTADO_ANTERIOR}<br></b>&nbsp;<b>Responsable:&nbsp;&nbsp; &nbsp;&nbsp; </b><b>{FUNCIONARIO_PREVIO}&nbsp; {DEPTO_PREVIO}<br>&nbsp;</b>Estado Actual<b>: &nbsp; &nbsp;&nbsp; {ESTADO_ACTUAL}</b><br><br><br>&nbsp;{OBS} <br>','Aviso WF ,  {PROCESO_MACRO}  ({NUM_TRAMITE})','','no','','','','','','','',NULL);
select wf.f_import_ttipo_estado ('insert','aprobado','REG','aprobado','no','no','si','anterior','','ninguno','','','no','no',NULL,'<font color="99CC00" size="5"><font size="4">{TIPO_PROCESO}</font></font><br><br><b>&nbsp;</b>Tramite:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; <b>{NUM_TRAMITE}</b><br><b>&nbsp;</b>Usuario :<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {USUARIO_PREVIO} </b>en estado<b>&nbsp; {ESTADO_ANTERIOR}<br></b>&nbsp;<b>Responsable:&nbsp;&nbsp; &nbsp;&nbsp; </b><b>{FUNCIONARIO_PREVIO}&nbsp; {DEPTO_PREVIO}<br>&nbsp;</b>Estado Actual<b>: &nbsp; &nbsp;&nbsp; {ESTADO_ACTUAL}</b><br><br><br>&nbsp;{OBS} <br>','Aviso WF ,  {PROCESO_MACRO}  ({NUM_TRAMITE})','','no','','','','','','','',NULL);
select wf.f_import_ttipo_documento ('insert','NIT','REG','NIT','Numero de Identificación Tributaria','','escaneado',1.00,'{}');
select wf.f_import_ttipo_documento ('insert','MATR','REG','Matricula de Comercio','Matricula de Comercio','','escaneado',1.00,'{}');
select wf.f_import_testructura_estado ('insert','borrador','revision','REG',1,'');
select wf.f_import_testructura_estado ('insert','revision','aprobado','REG',1,'');
select wf.f_import_ttipo_documento_estado ('insert','MATR','REG','borrador','REG','crear','superior','');
select wf.f_import_ttipo_documento_estado ('insert','NIT','REG','borrador','REG','crear','superior','');



INSERT INTO pxp.variable_global ("variable", "valor", "descripcion")
VALUES  (E'param_wf_codigo_proveedor', E'REG', E'Codigo de proceso macro del wf para el flujo de proveedores');

/***********************************F-DAT-RAC-PARAM-1-06/09/2017*****************************************/


/***********************************I-DAT-RAC-PARAM-1-07/09/2017*****************************************/
select pxp.f_insert_tgui ('Proveedor VoBo', 'Proveedor VoBo', 'PROVB', 'si', 4, 'sis_parametros/vista/proveedor/ProveedorVb.php', 4, '', 'ProveedorVb', 'PARAM');
select pxp.f_insert_testructura_gui ('PROVB', 'CCOM');
select pxp.f_insert_tgui ('Proveedor Inicio', 'Proveedor Inicio de Trámite', 'PROVINI', 'si', 3, 'sis_parametros/vista/proveedor/ProveedorInicio.php', 4, '', 'ProveedorInicio', 'PARAM');
select pxp.f_insert_testructura_gui ('PROVINI', 'CCOM');

/***********************************F-DAT-RAC-PARAM-1-07/09/2017*****************************************/

/***********************************I-DAT-FEA-PARAM-1-17/01/2019*****************************************/

/* Data for the 'param.tgestion' table */
INSERT INTO param.tgestion ("id_usuario_reg", "id_usuario_mod", "fecha_reg", "fecha_mod", "estado_reg", "id_usuario_ai", "usuario_ai", "id_gestion", "gestion", "estado", "id_moneda_base", "id_empresa", "fecha_ini", "fecha_fin", "tipo")
VALUES (18, NULL, E'2018-07-30 09:04:11.520', NULL, E'activo', NULL, NULL, 17, 2019, E'activo', 1, 1, NULL, NULL, E'MES');


/* Data for the 'param.tperiodo' table */
INSERT INTO param.tperiodo ("id_usuario_reg", "id_usuario_mod", "fecha_reg", "fecha_mod", "estado_reg", "id_usuario_ai", "usuario_ai", "id_periodo", "periodo", "id_gestion", "fecha_ini", "fecha_fin", "codigo_siga")
VALUES
  (18, NULL, E'2018-07-30 09:04:11.520', NULL, E'activo', NULL, NULL, 1, 1, 17, E'2019-01-01', E'2019-01-31', NULL),
  (18, NULL, E'2018-07-30 09:04:11.520', NULL, E'activo', NULL, NULL, 2, 2, 17, E'2019-02-01', E'2019-02-28', NULL),
  (18, NULL, E'2018-07-30 09:04:11.520', NULL, E'activo', NULL, NULL, 3, 3, 17, E'2019-03-01', E'2019-03-31', NULL),
  (18, NULL, E'2018-07-30 09:04:11.520', NULL, E'activo', NULL, NULL, 4, 4, 17, E'2019-04-01', E'2019-04-30', NULL),
  (18, NULL, E'2018-07-30 09:04:11.520', NULL, E'activo', NULL, NULL, 5, 5, 17, E'2019-05-01', E'2019-05-31', NULL),
  (18, NULL, E'2018-07-30 09:04:11.520', NULL, E'activo', NULL, NULL, 6, 6, 17, E'2019-06-01', E'2019-06-30', NULL),
  (18, NULL, E'2018-07-30 09:04:11.520', NULL, E'activo', NULL, NULL, 7, 7, 17, E'2019-07-01', E'2019-07-31', NULL),
  (18, NULL, E'2018-07-30 09:04:11.520', NULL, E'activo', NULL, NULL, 8, 8, 17, E'2019-08-01', E'2019-08-31', NULL),
  (18, NULL, E'2018-07-30 09:04:11.520', NULL, E'activo', NULL, NULL, 9, 9, 17, E'2019-09-01', E'2019-09-30', NULL),
  (18, NULL, E'2018-07-30 09:04:11.520', NULL, E'activo', NULL, NULL, 10, 10, 17, E'2019-10-01', E'2019-10-31', NULL),
  (18, NULL, E'2018-07-30 09:04:11.520', NULL, E'activo', NULL, NULL, 11, 11, 17, E'2019-11-01', E'2019-11-30', NULL),
  (18, NULL, E'2018-07-30 09:04:11.520', NULL, E'activo', NULL, NULL, 12, 12, 17, E'2019-12-01', E'2019-12-31', NULL);


/* Data for the 'param.tconcepto_ingas' table */

INSERT INTO param.tconcepto_ingas ("id_usuario_reg", "id_usuario_mod", "fecha_reg", "fecha_mod", "estado_reg", "id_usuario_ai", "usuario_ai", "id_concepto_ingas", "tipo", "desc_ingas", "movimiento", "sw_tes", "id_oec", "activo_fijo", "almacenable", "requiere_ot", "filtro_ot", "id_grupo_ots", "pago_automatico", "sw_autorizacion", "descripcion_larga", "id_entidad", "id_actividad_economica", "codigo", "id_unidad_medida", "nandina", "ruta_foto", "id_cat_concepto")
VALUES
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 7, E'Servicio', E'APORTE PATRONAL PARA VIVIENDA PERSONAL PERMANENTE', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 27, E'Servicio', E'TRANSPORTE DE PERSONAL', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,adquisiciones,pago_directo,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 36, E'Servicio', E'OTROS ALQUILERES', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2017-10-30 15:43:26.523', E'activo', NULL, NULL, 151, E'Servicio', E'OTROS SERVICIOS MANUALES (PARCHADO Y/O REENCAUCHE DE LLANTAS, SOLDADURA, TORNEADO, ENMARCADOS y OTROS)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance,adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 233, E'Bien', E'CREDENCIALES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,adquisiciones,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 656, E'Bien', E'SERVIDORES', E'gasto', E'2', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-12-05 10:09:15.591', E'activo', NULL, NULL, 663, E'Bien', E'FIREWALL', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-12-05 10:09:28.280', E'activo', NULL, NULL, 687, E'Bien', E'HANDIES', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-12-05 10:09:38.899', E'activo', NULL, NULL, 696, E'Bien', E'WIRELESS', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo,contrato}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 746, E'Servicio', E'OTROS IMPUESTOS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{caja_chica,fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2015-11-05 17:10:22.155', E'activo', NULL, NULL, 774, E'Servicio', E'LICENCIAS DE FUNCIONAMIENTO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 781, E'Servicio', E'PRIMAS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 783, E'Servicio', E'SUELDOS PERSONAL PERMANENTE', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 784, E'Servicio', E'SUELDOS PERSONAL EVENTUAL', E'gasto', E'2', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 788, E'Servicio', E'OTRAS PREVISIONES', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1589, E'Servicio', E'BONO DE FRONTERA COBIJA', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1590, E'Servicio', E'APORTE PATRONAL PARA VIVIENDA PERSONAL EVENTUAL', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 20, E'2014-08-11 11:06:24.226', E'2018-11-12 17:27:50.273', E'activo', NULL, NULL, 1592, E'Servicio', E'ALQUILER OFICINA CTO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-13 15:46:10.958', E'activo', NULL, NULL, 1593, E'Servicio', E'ALQUILER  DE FOTOCOPIADORAS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1594, E'Servicio', E'ALQUILER DE AERONAVE CP-2550', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1596, E'Servicio', E'ALQUILER DE MOTOR DE AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{adquisiciones,pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1597, E'Servicio', E'ALQUILER DE SIMULADOR DE ENTRENAMIENTO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, 20, E'2014-08-11 11:06:24.226', E'2018-11-12 17:06:25.427', E'activo', NULL, NULL, 1598, E'Servicio', E'ALQUILER DE VEHICULOS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1599, E'Servicio', E'PAGO DE EXPENSAS COMUNES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{pago_directo,adquisiciones,pago_unico,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2017-01-27 11:37:11.268', E'activo', NULL, NULL, 1600, E'Servicio', E'READECUACION Y  REFACCION DE AMBIENTES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 1602, E'Servicio', E'PUBLICIDAD EN MEDIOS DE COMUNICACION', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1603, E'Servicio', E'CURSOS DE CAPACITACION, SEMINARIOS Y OTROS.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance,pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1605, E'Servicio', E'REFRIGERIO AL PERSONAL POR ASISTENCIA A FERIAS Y/O EVENTOS COMERCIALES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1606, E'Servicio', E'REFRIGERIO AL PERSONAL', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_unico,fondo_avance,pago_directo,caja_chica}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1607, E'Servicio', E'REFRIGERIO EN ESPECIE', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance,caja_chica,adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2015-10-01 11:20:51.380', E'activo', NULL, NULL, 1609, E'Bien', E'ROPA Y ACCESORIOS DE SEGURIDAD INDUSTRIAL', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1610, E'Bien', E'UNIFORMES PARA BATALLÓN DE SEGURIDAD ESTATAL.', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-13 15:05:04.847', E'activo', NULL, NULL, 1611, E'Bien', E'UNIFORMES PARA PERSONAL DE LA EMPRESA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1612, E'Bien', E'CALZADOS DE VESTIR', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1613, NULL, E'Aceite,  lubricantes y derivados ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1614, E'Bien', E'Aceites para aeronaves', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1615, E'Bien', E'DIESEL', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo,caja_chica,fondo_avance,adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1616, E'Bien', E'Gasolina ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance,pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1617, NULL, E'COMBUSTIBLE JET FUEL NAVE CP-2550', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1618, E'Bien', E'Lubricantes y derivados de aviación\n', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1619, E'Bien', E'Methanol para Aeronaves', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1621, E'Bien', E'Skydroll para aeronaves', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 12:10:01.056', E'activo', NULL, NULL, 1622, E'Bien', E'ANTENAS DE COMUNICACION Y/O TORRES DE TRANSMISION', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 1623, E'Bien', E'Centrales telefonicas', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1624, E'Bien', E'Duplexores para radio', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1625, E'Bien', E'Equipos de  video y audio', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1627, E'Bien', E'OTROS EQUIPOS DE COMUNICACIÓN', E'gasto', E'1', NULL, E'si', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1628, E'Bien', E'Televisores ', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 1, E'2014-08-11 11:06:24.226', E'2015-08-03 16:21:21.997', E'activo', NULL, NULL, 1629, E'Servicio', E'IMPUESTO POR VIAJES AL EXTERIOR - ISAE', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 1, E'2014-08-11 11:06:24.226', E'2015-08-03 16:08:43.923', E'activo', NULL, NULL, 1630, E'Servicio', E'IMPUESTO  A LAS TRANSACCIONES FINANCIERAS - ITF', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1631, E'Servicio', E'SERVICIO DE INTERNET', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1632, E'Servicio', E'SERVICIO DE TRANSMISIÓN DE DATOS.', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1633, E'Servicio', E'SERVICIO DE VIDEOCONFERENCIAS.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1634, E'Servicio', E'SERVICIOS VPN', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1635, E'Servicio', E'ASIGNACIONES FAMILARES PERSONAL PERMANTE', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1638, E'Servicio', E'AGUINALDOS PERSONAL PERMANENTE', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1641, E'Servicio', E'HORAS EXTRAORDINARIAS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1642, E'Servicio', E'VACACIONES NO UTILIZADAS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1643, E'Servicio', E'REGÍMEN DE CORTO PLAZO (SALUD) PERSONAL EVENTUAL', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1644, E'Servicio', E'REGÍMEN DE CORTO PLAZO (SALUD) PERSONAL PERMANENTE', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 20, E'2014-12-08 18:41:47.969', E'2018-11-27 09:35:12.084', E'activo', NULL, NULL, 1645, E'Servicio', E'SERVICIO DE COURRIER INTERNACIONAL', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{caja_chica,adquisiciones,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 20, E'2014-12-08 18:41:47.969', E'2018-11-27 09:35:22.508', E'activo', NULL, NULL, 1646, E'Servicio', E'SERVICIO DE COURRIER NACIONAL ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{caja_chica,adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1647, E'Servicio', E'SERVICIO DE ENTREGA DE CORRESPONDENCIA LOCAL', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1648, E'Servicio', E'SERVICIO DE ENTREGA DE INVITACIONES PARA EVENTOS COMERCIALES Y OTROS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-12 11:15:28.895', E'activo', NULL, NULL, 1649, E'Servicio', E'ENERGIA ELECTRICA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-13 15:05:18.809', E'activo', NULL, NULL, 1650, E'Servicio', E'AGUA POTABLE', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{pago_directo,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-01-24 14:40:55.973', E'activo', NULL, NULL, 1651, E'Servicio', E'PASAJES POR VIAJES AL INTERIOR  DEL PAIS VIA AEREA.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo,fondo_avance,adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-01-24 14:41:08.007', E'activo', NULL, NULL, 1652, E'Servicio', E'PASAJES POR VIAJES AL INTERIOR  DEL PAIS VIA TERRESTRE.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-01-24 14:41:22.267', E'activo', NULL, NULL, 1653, E'Servicio', E'PASAJES POR VIAJES AL EXTERIOR DEL PAIS VIA AEREA.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo,pago_unico,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-01-24 14:41:33.683', E'activo', NULL, NULL, 1654, E'Servicio', E'PASAJES POR VIAJES AL EXTERIOR DEL PAIS VIA TERRESTRE.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance,adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 10:49:38.119', E'activo', NULL, NULL, 1655, E'Servicio', E'HOSPEDAJE POR VIAJES AL INTERIOR DEL PAIS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo,pago_unico,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1656, E'Servicio', E'Hospedaje por Viajes al Interior del País Personal Externo a BoA ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-23 09:21:59.339', E'activo', NULL, NULL, 1657, E'Servicio', E'VIATICOS  POR VIAJES AL INTERIOR DEL PAIS PERSONAL EXTERNO ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2015-09-24 18:48:34.661', E'inactivo', NULL, NULL, 1658, E'Servicio', E'VIÁTICOS POR VIAJES AL INTERIOR DEL PAÍS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_unico,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 10:53:58.300', E'activo', NULL, NULL, 1659, E'Servicio', E'HOSPEDAJE POR VIAJES AL EXTERIOR DEL PAIS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1660, E'Servicio', E'Hospedaje por Viajes al Exterior del País Personal Externo a BoA ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-23 09:22:04.493', E'activo', NULL, NULL, 1661, E'Servicio', E'VIATICOS  POR VIAJES AL EXTERIOR DEL PAIS PERSONAL EXTERNO ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo,pago_unico,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2015-09-24 18:56:55.770', E'inactivo', NULL, NULL, 1662, E'Servicio', E'VIÁTICOS POR VIAJES AL EXTERIOR DEL PAÍS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1663, E'Servicio', E'GASTO DE ALMACENAMIENTO DE BIENES, EQUIPOS EN GENERAL  (MUEBLES, EQUIPOS, REPUESTOS Y OTROS).', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1664, NULL, E'CARGUÍO Y DESCARGUÍO DE BIENES Y EQUIPOS EN GENERAL  (MUEBLES, EQUIPOS, RESPUESTOSY OTROS).', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1665, E'Servicio', E'MANIPULEO DE CARGA Y COLLECT EN EL EXTERIOR DEL PAÍS.', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1666, E'Servicio', E'SERVICIO DE HANDLING DE CATERING', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1667, E'Servicio', E'TRANSPORTE DE BIENES Y EQUIPOS EN GENERAL (MUEBLES, EQUIPOS, RESPUESTOS Y OTROS).', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2,4}', E'no', E'{caja_chica,adquisiciones,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1668, E'Servicio', E'OTROS SEGUROS.', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2016-04-21 10:11:26.154', E'activo', NULL, NULL, 1669, E'Servicio', E'Seguro Integral Multiriesgo.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo,fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-05-29 18:33:51.679', E'activo', NULL, NULL, 1670, E'Servicio', E'SEGURO AL VIAJERO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo,adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1671, E'Servicio', E'SEGURO DE ACCIDENTES PERSONALES Y COLECTIVOS.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1672, E'Servicio', E'SEGURO DE AERONAVEGABILIDAD.', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1673, E'Servicio', E'SEGURO DE VEHICULOS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-12-04 15:55:09.987', E'activo', NULL, NULL, 1674, E'Servicio', E'SEGURO DE MOTORES AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-01-25 19:41:41.784', E'activo', NULL, NULL, 1675, E'Servicio', E'SEGURO DE RESPONSABILIDAD CIVIL A TERCEROS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2017-06-27 09:26:16.296', E'activo', NULL, NULL, 1677, E'Servicio', E'SERVICIO DE TRANSPORTE  PUBLICO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo,adquisiciones,fondo_avance,caja_chica,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-12 17:06:29.295', E'activo', NULL, NULL, 1679, E'Servicio', E'ALQUILER CAJON POSTAL', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-12 17:06:21.112', E'activo', NULL, NULL, 1680, E'Servicio', E'ALQUILER DE AMBIENTES PARA EVENTOS DE CAPACITACION', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance,adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-12 17:06:33.166', E'activo', NULL, NULL, 1681, E'Servicio', E'ALQUILER DE AMBIENTES PARA RESGUARDO DE EQUIPOS SOPORTE DE TIERRA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-12 17:07:33.875', E'activo', NULL, NULL, 1682, E'Servicio', E'ALQUILER DE AMBIENTES PARA TRABAJOS DE MANTENIMIENTO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-12 17:06:45.224', E'activo', NULL, NULL, 1684, E'Servicio', E'ALQUILER DE ESPACIOS PARA ANTENAS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-12 17:11:17.714', E'activo', NULL, NULL, 1685, E'Servicio', E'ALQUILER DE ESPACIOS PARA PARTICIPACION EN EVENTOS COMERCIALES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,contrato,pago_directo,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-12 17:06:51.437', E'activo', NULL, NULL, 1686, E'Servicio', E'ALQUILER DE GARAJE PARA VEHICULOS Y MOTOCICLETAS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-12 17:06:55.693', E'activo', NULL, NULL, 1687, E'Servicio', E'ALQUILER DE PISCINA PARA ENTRENAMIENTOS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{fondo_avance,caja_chica}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1688, E'Servicio', E'DERECHO DE ATERRIZAJE, RECARGO NOCTURNO Y RECARGO FERIADO NAVE CP-2550', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2012-08-11 18:10:19.881', NULL, E'activo', NULL, NULL, 1690, E'Servicio', E'RECARGOS FERIADOS.', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2012-08-11 18:10:19.913', NULL, E'activo', NULL, NULL, 1691, E'Servicio', E'RECARGOS NOCTUNOS.', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1692, E'Servicio', E'INSTALACIÓN Y ARMADO DE STAND PARA FERIAS.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1693, E'Servicio', E'MANTENIMIENTO  PROGRAMADO SERVICIO C - AERONAVE CP-2550', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 15:04:11.358', E'activo', NULL, NULL, 1694, E'Servicio', E'MANTENIMIENTO DE REDES ELECTRICAS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1695, E'Servicio', E'MANTENIMIENTO Y ACTUALIZACIONES DE SOFTWARE', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3,4}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1697, E'Servicio', E'REENCAUCHE DE LLANTAS PRINCIPALES Y DE NARIZ PARA AERONAVES.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{4}', E'no', E'{pago_directo,adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-12 16:17:06.669', E'activo', NULL, NULL, 1699, E'Servicio', E'SERVICIOS DE CABLEADO Y ESTRUCTURADO DE RED', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo,adquisiciones,contrato}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2017-03-13 09:29:22.053', E'activo', NULL, NULL, 1700, E'Servicio', E'CHEQUEO MEDICO AERONAUTICO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{fondo_avance,adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 15:16:45.062', E'activo', NULL, NULL, 1701, E'Servicio', E'GASTOS ESPECIALIZADOS POR ATENCION MEDICA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo,caja_chica,fondo_avance,contrato}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1702, E'Servicio', E'ESTUDIOS DE MERCADO.', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1703, E'Servicio', E'ESTUDIOS SOBRE LA IMPLEMENTACIÓN DE SISTEMAS.', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1705, E'Servicio', E'SERVICIOS DE ASESORAMIENTO LEGAL, CONTABLE, TRIBUTARIO Y OTROS.', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 15:24:43.419', E'activo', NULL, NULL, 1706, E'Servicio', E'SERVICIOS PROFESIONALES PARA EVALUACIONES PSICOLOGICAS Y PSICOMETRICAS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1707, E'Servicio', E'SERVICIOS PÚBLICITARIOS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-12-08 18:41:47.969', E'2018-05-22 15:25:51.960', E'activo', NULL, NULL, 1708, E'Servicio', E'SERVICIOS DE CONSULTORIA EN  LINEA (TRABAJOS\nESPECIALIZADOS Y DE APOYO EN LAS ACTIVIDADES PROPIAS DE LA ENTIDAD)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 15:30:24.722', E'activo', NULL, NULL, 1709, E'Servicio', E'CERTIFICACION DE SALDOS BANCARIOS.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-12 16:20:36.243', E'activo', NULL, NULL, 1710, E'Servicio', E'COMISION POR ADMINISTRACION DE CUENTAS FISCALES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{pago_directo,adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1711, E'Servicio', E'COMISIONES POR TRANSFERENCIAS AL EXTERIOR.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones,pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1712, E'Servicio', E'COMPRA DE CHEQUERAS.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1713, E'Servicio', E'SERVICIO UNICOBRO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1714, E'Servicio', E'SERVICIO DE LIMPIEZA, FUNDAS, ESPALDARES, POSADERAS, ALFOMBRAS Y OTROS  EN AERONAVE CP-2550', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-14 10:21:36.237', E'activo', NULL, NULL, 1715, E'Servicio', E'LIMPIEZA DE AMBIENTES E INSTALACIONES\n', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1716, E'Servicio', E'LIMPIEZA DE BIENES MATERIALES', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-01-31 17:27:22.604', E'activo', NULL, NULL, 1718, E'Servicio', E'SERVICIOS DE FUMIGACION DE AERONAVES  Y OTROS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{pago_directo,adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-01-31 17:27:31.923', E'activo', NULL, NULL, 1719, E'Servicio', E'SERVICIOS DE FUMIGACION DE OFICINAS Y/O AMBIENTES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1720, E'Servicio', E'OTROS SERVICIOS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo,caja_chica,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 15:59:19.027', E'activo', NULL, NULL, 1721, E'Servicio', E'SERVICIO DE REPARACION DE MATERIAL PROMOCIONAL', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{caja_chica,fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 16:01:55.214', E'activo', NULL, NULL, 1724, E'Servicio', E'SERVICIOS DE LEGALIZACION', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,adquisiciones,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1725, E'Servicio', E'SERVICIOS DE PROTOCOLIZACION', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{caja_chica,adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1726, E'Servicio', E'SERVICIOS DE SEGURIDAD PRESTADOS POR LOS BATALLONES DE SEGURIDAD FISICA (POLICIA)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_unico,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1727, E'Servicio', E'SERVICIOS DE SEGURIDAD PRESTADOS POR EMPRESAS PRIVADAS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo,pago_unico,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 16:12:16.384', E'activo', NULL, NULL, 1729, E'Servicio', E'GASTOS DE REPRESENTACION PARA VIAJES AL EXTERIOR (GERENTE GENERAL).', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1730, E'Servicio', E'Otros refrigerios ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance,caja_chica}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1732, E'Bien', E'Hilados, telas en sus diferentes variedades y otros similares en general ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 18:59:30.880', E'activo', NULL, NULL, 1733, E'Bien', E'Cargado de extintores y botellones de nitrogeno y oxigeno.', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1734, E'Bien', E'Insumos farmaceuticos ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1735, E'Bien', E'MEDICAMENTOS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 1737, E'Bien', E'LLANTAS PARA AERONAVES', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{4}', E'no', E'{adquisiciones,pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 1738, E'Bien', E'Llantas para equipo soporte tierra, vehiculos y otros', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1739, E'Bien', E'LLANTAS, NEUMATICOS Y AROS  PARA VEHICULOS Y MOTOCICLETAS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1740, E'Bien', E'Nucleos para ruedas principales y de nariz para aeronaves.', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{4}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1741, E'Bien', E'Bolsas de basura', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1742, E'Bien', E'Bolsas de mareo ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 19:28:54.943', E'activo', NULL, NULL, 1743, E'Bien', E'Letreros y señaleticas de vinil', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1745, E'Bien', E'Precintos de seguridad', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo,adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1746, E'Bien', E'PRODUCTOS DE VIDRIO PLANO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1749, E'Bien', E'HERRAMIENTAS MENORES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1750, E'Bien', E'MATERIAL DE LIMPIEZA', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1752, E'Bien', E'TONER PARA IMPRESORAS Y FOTOCOPIADORAS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1753, NULL, E'UTILES DE ESCRITORIO Y OFICINA (ESPIRALES, SEPARADORES PLASTICOS, ARCHIVADORES PLASTICOS Y OTROS EN GENERAL CONSIDERADOS COMO MATERIAL DE ESCRITORIO.)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1755, E'Bien', E'BATERIAS PARA VEHICULOS Y MOTOCICLETAS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance,adquisiciones,caja_chica,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1756, E'Bien', E'CONJUNTO DE FRENOS PARA AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{4}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1757, NULL, E'OTROS REPUESTOS EN GENERAL - VEHICULOS, EQUIPOS SOPORTE TIERRA Y MOTOCICLETAS (GUIÑADORES, FAROLES, FOCOS, BOCINA, AMORTIGUADORES, FILTROS, ETC, ETC).', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1759, E'Bien', E'OTROS REPUESTOS Y ACCESORIOS EN GENERAL  PARA EQUIPOS DE COMPUTACIÓN', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1760, E'Bien', E'OTROS REPUESTOS Y ACCESORIOS EN GENERAL  PARA EQUIPOS DE COMUNICACIÓN', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1761, E'Bien', E'Repuestos consumibles para Aeronaves', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{4,1}', E'no', E'{adquisiciones,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1762, E'Bien', E'Repuestos Rotables para Aeronaves ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{4,1}', E'no', E'{adquisiciones,caja_chica,fondo_avance,pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 1763, E'Bien', E'Otros materiales y suministros', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo,caja_chica,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1764, E'Bien', E'ANILLADORA', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1765, E'Bien', E'CASILLEROS', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1766, E'Bien', E'CREDENZA', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1768, E'Bien', E'Estantes', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1769, E'Bien', E'GAVETEROS', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1770, E'Bien', E'GUILLOTINA', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance,caja_chica}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1771, E'Bien', E'Mesas', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-12 17:03:08.774', E'activo', NULL, NULL, 1772, E'Bien', E'MOSTRADORES', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1774, E'Bien', E'RACK DE PARED', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo,contrato,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2017-02-16 16:19:32.610', E'activo', NULL, NULL, 1775, E'Bien', E'SILLAS', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1776, E'Bien', E'Computadoras', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo,contrato,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1777, E'Bien', E'Impresoras', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 1, E'2014-08-11 11:06:24.226', E'2015-08-03 16:47:17.375', E'activo', NULL, NULL, 1778, E'Bien', E'OTROS EQUIPOS DE COMPUTACION', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1779, E'Bien', E'SCANNERS', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2016-09-01 11:50:50.193', E'activo', NULL, NULL, 1780, E'Bien', E'VEHICULO', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1781, E'Bien', E'CINTAS TRANSPORTADORAS DE EQUIPAJE', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1782, E'Bien', E'EQUIPOS AUXILIARES PARA MANIOBRAS EN AEROPUERTO Y OTROS.', E'gasto', E'1', NULL, E'si', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1783, E'Bien', E'MONTA CARGAS', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1784, E'Bien', E'OTRA MAQUINARIA Y EQUIPO', E'gasto', E'1', NULL, E'si', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1785, E'Bien', E'TRACTORES', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 1787, E'Bien', E'Equipo de aire acondicionado', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 1788, E'Bien', E'Caja fuerte', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1789, E'Bien', E'CAJAS PARA TRANSPORTE DE ARMAS', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 39, E'2014-08-11 11:06:24.226', E'2018-05-22 19:44:10.896', E'activo', NULL, NULL, 1790, E'Bien', E'Camaras fotográficas y filmadoras', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1791, E'Bien', E'Equipo ultrasonido', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2015-12-11 18:37:30.566', E'activo', NULL, NULL, 1792, E'Bien', E'Escaleras', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1794, E'Bien', E'GLOBOS INSTITUCIONALES', E'gasto', E'1', NULL, E'si', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1796, E'Bien', E'Silla de ruedas', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-10-26 16:17:26.939', E'activo', NULL, NULL, 1797, E'Bien', E'COMPRA LICENCIAS DE SOFTWARE', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3,4,1}', E'no', E'{pago_directo,adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1798, E'Servicio', E'INCREMENTO DE CAJA Y BANCOS', E'gasto', E'2', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1799, E'Servicio', E'SERVICIOS PERSONALES (SUELDOS, BONO DE ANTIGUEDAD, BONO DE FRONTERA Y ASIGNACIONES FAMILIARES)', E'gasto', E'2', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1800, E'Servicio', E'OBLIGRACIONES GENERADAS POR CONCEPTO DE RETENCIONES NO CANCELADAS A FAVOR DE ACREEDORES', E'gasto', E'2', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1801, E'Servicio', E'GASTOS NO PAGADOS EN EJERCICIOS ANTERIORES', E'gasto', E'2', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1802, E'Servicio', E'PAGO DE BENEFICIOS SOCIALES', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', E'{pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1803, E'Servicio', E'IMPUESTO A LAS UTILIDADES DE LAS EMPRESAS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 1, E'2014-08-11 11:06:24.226', E'2015-08-03 16:12:00.747', E'activo', NULL, NULL, 1804, E'Servicio', E'IMPUESTO A LAS TRANSACCIONES - IT, SOBRE LOS INGRESOS BRUTOS DEVENGADOS DURANTE EL PERÍODO FISCAL', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1805, E'Servicio', E'IMPUESTO AL VALOR AGREGADO (IVA) VENTA DE BIENES O MERCADERIA EN GENERAL', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{fondo_avance,pago_unico,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1806, E'Servicio', E'IMPUESTO AL VALOR AGREGADO (IVA) IMPORTACIONES DE BIENES O MERCADERIAS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1,3,4}', E'no', E'{pago_directo,pago_unico,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1808, E'Servicio', E'GRAVAMEN  SOBRE EL VALOR DE LAS IMPORTACIONES CIF FRONTERA O CIF ADUANA.', E'gasto', E'2', NULL, E'no', E'no', E'obligatorio', E'listado', E'{4}', E'no', E'{fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1809, E'Servicio', E'Impuesto Inmuebles', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1810, E'Servicio', E'Impuesto Vehiculos', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{fondo_avance,adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1812, E'Servicio', E'ENTRADAS PARA FERIAS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1813, E'Servicio', E'FORMULARIO VALORADO PARA AUTORIZACIÓN COMPRA DE COMBUSTIBLE', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 1, E'2014-08-11 11:06:24.226', E'2016-01-29 18:04:26.312', E'activo', NULL, NULL, 1814, E'Servicio', E'OTROS VALORES FISCALES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{fondo_avance,adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2017-12-11 09:30:06.983', E'activo', NULL, NULL, 1818, E'Servicio', E'CERTIFICADO DE MATRICULAS PARA AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{pago_unico,pago_directo,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1819, E'Servicio', E'INSCRIPCIÓN DE CONTRATOS DE AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1820, E'Servicio', E'FORMULARIOS PEL (PROCEDIMIENTO EMISION DE LICENCIAS)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{fondo_avance,pago_unico,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1821, E'Servicio', E'OTROS TRAMITES ADMINISTRATIVOS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1822, E'Servicio', E'PRESENTACIÓN DE  PLANILLAS MINISTERIO DE  TRABAJO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{caja_chica,adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-11-08 18:54:48.578', E'activo', NULL, NULL, 1823, E'Servicio', E'ROSETAS DE INSPECCION TECNICA VEHICULAR', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2016-11-25 09:37:52.856', E'activo', NULL, NULL, 1825, E'Servicio', E'PERDIDA EN OPERACIONES BANCARIAS REALIZADAS CON DIVISAS EXTRANJERAS.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1827, E'Servicio', E'COMISIÓN POR TRASLADO DE CARGA', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1828, E'Servicio', E'BONO DE ANTIGUEDAD  PERSONAL PERMANENTE', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-14 10:23:04.141', E'activo', NULL, NULL, 1829, E'Servicio', E'SERVICIO DE TELEFONIA CELULAR ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-27 09:48:03.915', E'activo', NULL, NULL, 1830, E'Servicio', E'SERVICIO DE TELEFONIA FIJA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 15:46:49.666', E'activo', NULL, NULL, 1831, E'Servicio', E'IMPRESION DE FACTURAS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 22, E'2014-12-08 18:41:47.969', E'2017-03-16 12:31:11.629', E'activo', NULL, NULL, 1832, E'Servicio', E'Impresion de formularios especificos (Operaciones, Carga y  Mantenimiento)', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, 22, E'2014-08-11 11:06:24.226', E'2017-02-06 09:59:48.029', E'activo', NULL, NULL, 1833, E'Servicio', E'IMPRESION DE STICKERS Y LOGO PARA AERONAVES.', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1834, NULL, E'SERVICIO DE FOTOCOPIAS Y OTROS REALIZADOS POR TERCEROS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 15:27:18.717', E'activo', NULL, NULL, 1836, E'Servicio', E'SERVICIO DE AUDITORIA DE SEGURIDAD OPERACIONAL.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 15:29:16.560', E'activo', NULL, NULL, 1837, E'Servicio', E'SERVICIOS DE AUDITORIA PARA LA PRESENTACION DE ESTADOS FINANCIEROS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{pago_directo,adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-12 18:07:31.092', E'inactivo', NULL, NULL, 1840, E'Servicio', E'SALARIOS, AGUINALDOS, INDEMNIZACIONES Y PREVISIONES SOCIALES A PERSONAL EN ESTACIONES INTERNACIONALES DE ACUERDO A NORMATIVA VIGENTE', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', E'{}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1841, E'Servicio', E'SERVICIO  FIDEICOMISO IATA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 16:51:04.848', E'activo', NULL, NULL, 1844, E'Servicio', E'SERVICIO ADMINISTRACION VIRTUAL EN REDES SOCIALES (FACEBOOK)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 16:56:26.025', E'activo', NULL, NULL, 1846, E'Servicio', E'SERVICIO DE FILMACION DE EVENTOS.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1849, E'Servicio', E'SERVICIO SISTEMA DE GESTION PARA CALL CENTER', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-27 09:39:19.889', E'activo', NULL, NULL, 1853, E'Servicio', E'SERVICIOS DE ENERGIA ELECTRICA, AGUA, TELEFONIA PRESTADOS POR EMPRESAS TERCIARIZADAS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo,adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1854, E'Servicio', E'SERVICIOS DE REPRESENTACIÓN COMO AGENTE.', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1855, E'Servicio', E'SERVICIOS ESPECIALIZADOS PARA AERONAVE CP-2550  (TECNICOS EXTERNOS)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1856, E'Bien', E'SERVICIO DE CATERING NACIONAL E INTERNACIONAL AERONAVE CP-2550', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 22, E'2013-08-02 10:56:23.072', E'2017-03-13 18:10:02.745', E'inactivo', NULL, NULL, 1857, E'Servicio', E'SERVICIO DE BAR Y MISCELÁNEOS AERONAVE CP-2550', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 1, E'2014-08-11 11:06:24.226', E'2015-08-03 16:48:43.794', E'activo', NULL, NULL, 1859, E'Servicio', E'MANTENIMIENTO Y REPARACION DE  EQUIPOS DE COMPUTACION', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1860, E'Servicio', E'MANTENIMIENTO DE EQUIPOS DE SOPORTE DE TIERRA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance,adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1861, E'Servicio', E'MANTENIMIENTO DE OTROS EQUIPOS (AIRE ACONDICIONADO, SILLA DE RUEDAS, ETC)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1862, E'Servicio', E'MANTENIMIENTO DE VEHICULOS, TRACTORES Y MOTOCICLETAS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1863, E'Servicio', E'MANTENIMIENTO Y CALIBRACION DE EQUIPOS ESPECIALIZADOS (BOROSCOPO, EQUIPO ULTRASONIDO, MANOMETROS, BALANZAS Y OTROS)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1864, E'Servicio', E'PRIMA DE RIESGO PROFESIONAL RÉGIMEN DE LARGO PLAZO PERSONAL EVENTUAL', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1865, E'Servicio', E'PRIMA DE RIESGO PROFESIONAL RÉGIMEN DE LARGO PLAZO PERSONAL PERMANENTE', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1866, E'Servicio', E'MANTENIMIENTO Y REPARACION DE MUEBLES Y ENSERES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 18:17:22.769', E'activo', NULL, NULL, 1867, E'Bien', E'MADERAS DE CONSTRUCCION, PUERTAS, VENTANAS, VIGAS, PLANTAS Y OTROS.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 18:31:59.371', E'activo', NULL, NULL, 1868, E'Bien', E'Catalogo de repuestos de aeronaves.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1869, E'Bien', E'Libros sobre normativa legal, contable , tributaria y otros.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1870, E'Bien', E'MANUALES DE  AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2,4}', E'no', E'{adquisiciones,pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 18:34:47.882', E'activo', NULL, NULL, 1871, E'Bien', E'MANUALES MERCANCIAS PELIGROSAS, ANIMALES VIVOS Y PRODUCTOS PERECEDEROS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1872, E'Bien', E'Otros libros, manuales y revistas en general', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3,4}', E'no', E'{adquisiciones,caja_chica,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1874, E'Servicio', E'ACCIONES TELEFÓNICAS EN COOPERATIVAS Y OTROS.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1877, E'Servicio', E'APORTE PATRONAL SOLIDARIO PERSONAL EVENTUAL', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1878, E'Servicio', E'APORTE PATRONAL SOLIDARIO PERSONAL PERMANENTE', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 16:04:24.835', E'activo', NULL, NULL, 1880, E'Servicio', E'DERECHO DE ACCESO A PAGINAS WEB PARA CONSULTAS TECNICAS, OPERATIVAS Y OTROS.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo,adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1881, E'Servicio', E'DERECHO DE USO DE BIENES Y ACTIVOS DE PROPIEDAD COMERCIAL O INTELECTUAL', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 16:05:47.832', E'activo', NULL, NULL, 1882, E'Servicio', E'DERECHO DE USO DE FRECUENCIA NACIONAL E INTERNACIONAL EN RADIO COMUNICACION.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_unico,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-12 17:55:13.779', E'activo', NULL, NULL, 1883, E'Servicio', E'DOMINIO DE INTERNET', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 18:37:21.160', E'activo', NULL, NULL, 1884, E'Bien', E'SUSCRIPCION DE PERIODICOS, BOLETINES, GACETA OFICIAL.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{caja_chica,adquisiciones,pago_directo,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 1885, E'Bien', E'Maletines de cuero', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 1886, E'Bien', E'Productos de cuerina', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2017-09-06 13:22:37.799', E'activo', NULL, NULL, 1887, E'Servicio', E'GASTOS DEVENGADOS NO PAGADOS POR SERVISIOS NO PERSONALES, MATERIALES Y SUMINISTROS, ACTIVOS REALES Y FINANCIEROS Y SERVICIO DE LA DEUDA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1888, E'Servicio', E'ASIGNACIONES FAMILIARES PERSONAL EVENTUAL', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1891, E'Bien', E'TACHOS PLASTICOS FOD', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1893, E'Servicio', E'SERVICIO DE FLETES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,4,3}', E'no', E'{fondo_avance,adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1894, E'Servicio', E'ALQUILER DE IMPRESORAS, SCANER, COMPUTADORA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-27 09:50:50.395', E'activo', NULL, NULL, 1896, E'Servicio', E'SERVICIO TELEFONICO  VIA INTERNET IPLAN', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1897, E'Servicio', E'SERVICIO DE INTERNET MOVIL 4G', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'todos', E'{2,3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1898, E'Servicio', E'Viáticos por Viajes al Interior del País Base Sao Paulo\n', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2017-12-14 16:18:45.725', E'activo', NULL, NULL, 1899, E'Servicio', E'SEGUROS PARA PERSONAS', E'gasto', E'2', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1904, E'Servicio', E'ALQUILER PRUFICADOR DE AGUA', E'gasto', E'2', NULL, E'no', E'no', E'obligatorio', E'todos', E'{2,3}', E'no', E'{fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-27 11:49:45.281', E'activo', NULL, NULL, 1907, E'Servicio', E'PUBLICIDAD VIA INTERNET\n\n', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1909, E'Servicio', E'EMPASTADOS DE DOCUMENTOS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1910, E'Servicio', E'SEGURIDAD AEREA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2017-03-14 10:30:24.230', E'activo', NULL, NULL, 1911, E'Servicio', E'SUMINISTRO DE AGUA PARA LOS SANITARIOS DE AERONAVE N-234AX', E'gasto', E'2', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-30 10:33:26.299', E'activo', NULL, NULL, 1915, E'Servicio', E'AGUINALDOS A PERSONAL EN ESTACIONES INTERNACIONALES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1916, E'Servicio', E'VACACIONES A PERSONAL EN ESTACIONES INTERNACIONALES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1917, E'Servicio', E'FONDO DE GARANTIA A PERSONAL EN ESTACIONES INTERNACIONALES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1919, E'Servicio', E'CONTINGENCIAS POR RETIRO DEL PERSONAL EN ESTACIONES INTERNACIONALES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1920, E'Servicio', E'VALE DE REFRIGERIO BASE SAO PAULO - BRASIL', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1921, E'Servicio', E'CESTA BASICA -BASE SAO PAULO - BRASIL', E'gasto', E'2', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1923, E'Bien', E'EQUIPO PARA SEGURIDAD DE RED DE AREA AMPLIA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 39, E'2014-08-11 11:06:24.226', E'2018-05-22 19:09:53.761', E'activo', NULL, NULL, 1924, E'Bien', E'EQUIPO DE RADIO COMUNICACION', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 39, E'2014-08-11 11:06:24.226', E'2018-05-22 19:10:13.955', E'activo', NULL, NULL, 1925, E'Bien', E'Repetidora de radio comunicacion\n', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1926, E'Servicio', E'IMPUESTO A LA PROPIEDAD Y TIERRA URBANA ( IPTU) BASE BRASIL', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1927, E'Servicio', E'TASA DE EXPEDICIÓN DE CERTIFICADO DE CATASTRO E INSPECCIÓN DE EMPRESA DE TRANSPORTE AERO INTERNACIONAL', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1928, E'Bien', E'Caniles para transporte de mascotas', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1931, E'Bien', E'Switch', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-08-10 16:49:41.965', E'activo', NULL, NULL, 1933, E'Servicio', E'REFRIGERIO PARA PERSONAL DE SEGURIDAD POLICIAL\n', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo,pago_unico,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1936, E'Servicio', E'SERVICIO DE TELFONIA FIJA LOCAL', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1938, E'Servicio', E'BONO DE ANTIGUEDAD  PERSONAL EVENTUAL', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1939, E'Servicio', E'SEGURO COBERTURA DE OFICINA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-12-04 15:55:50.395', E'activo', NULL, NULL, 1940, E'Servicio', E'SEGURO DE CAUCION ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1944, E'Servicio', E'SERVICIOS ESPECIALIZADOS PARA TRAFICO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2017-10-20 10:22:07.634', E'activo', NULL, NULL, 1946, E'Bien', E'Insecticida, desinfectante', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1949, E'Servicio', E'OBRA SOCIAL BUE', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1950, E'Servicio', E'RIESGO DE TRABAJO', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1951, E'Servicio', E'SEGURO COLECTIVO DE VIDA', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1952, E'Servicio', E'PREVISIÓN INCREMENTO SALARIAL', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1953, E'Servicio', E'PREVISIÓN PARA DESPIDOS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1956, E'Servicio', E'DESAHUCIO', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1958, E'Servicio', E'REENCAUCHE DE LLANTAS DE EQUIPOS SOPORTE TIERRA Y VEHÍCULOS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1959, E'Servicio', E'VENTA DE SERVICIO DE TRANSPORTE AÉREO DE PASAJEROS A NIVEL NACIONAL.', E'recurso', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1960, E'Servicio', E'VENTA DE SERVICIO DE TRANSPORTE AÉREO DE PASAJEROS A NIVEL INTERNACIONAL.', E'recurso', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1961, E'Servicio', E'SERVICIO DE TRANSPORTE DE CARGA Y CORREO A  NIVEL NACIONAL', E'recurso', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1962, E'Servicio', E'SERVICIO DE TRANSPORTE DE CARGA Y CORREO A  NIVEL INTERNACIONAL', E'recurso', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1963, E'Servicio', E'SERVICIO DE VUELOS CHARTER', E'recurso', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1965, E'Servicio', E'OTROS INGRESOS DE OPERACIÓN', E'recurso', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1966, E'Servicio', E'DISMINUCIÓN DE CAJA Y BANCOS', E'recurso', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1968, E'Servicio', E'SEGURO DE AERONAVE CP-2550', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1969, E'Servicio', E'SEGURO DE MOTORES ALQUILADOS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2012-09-05 17:15:54.060', NULL, E'activo', NULL, NULL, 1972, E'Servicio', E'MANTENIMIENTO PROGRAMADO DE AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1973, E'Servicio', E'MANTENIMIENTO NO PROGRAMADO DE AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1974, E'Servicio', E'RESERVA DE MANTENIMIENTO AERONAVE CP-2550', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1975, E'Servicio', E'RESERVA DE MANTENIMIENTO MOTORES DE AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 1976, E'Servicio', E'RESERVA DE MANTENIMIENTO MOTORES ALQUILADOS AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1979, NULL, E'CONSULTORIA POR PRODUCTO', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2013-08-02 10:56:23.072', NULL, E'inactivo', NULL, NULL, 1981, E'Servicio', E'SERVICIOS DE IMPRENTA, FOTOCOPIADO Y FOTOGRAFICOS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 1982, E'Servicio', E'CAPACITACION DEL PERSONAL', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 39, E'2014-08-11 11:06:24.226', E'2016-01-07 10:40:50.660', E'activo', NULL, NULL, 2006, E'Bien', E'Utensilios de Cocina, Comedor y otros de cocina en general', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2020, E'Servicio', E'COMUNICACIONES', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2030, E'Servicio', E'MANTENIMIENTO Y REPARACION DE VEHICULOS, MAQUINARIA Y EQUIPOS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2037, E'Servicio', E'OTROS GASTOS POR CONCEPTO DE INSTALACION, MANTENIMIENTO Y REPARACION', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3,4}', E'no', E'{fondo_avance,adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2039, E'Servicio', E'OTRAS COMISIONES Y GASTOS BANCARIOS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{pago_directo,pago_unico,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2042, E'Servicio', E'DERECHOS SOBRE BIENES INTANGIBLES', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2043, E'Servicio', E'SERVICIOS PUBLICOS', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2044, E'Servicio', E'SERVICIOS POR TRASLADO DE VALORES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2051, E'Servicio', E'GASTOS POR ALIMENTACION Y OTROS SIMILARES', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2055, E'Bien', E'PERIODICOS Y BOLETINES', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2080, E'Bien', E'PROYECTORES (DATA SHOW)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2087, E'Bien', E'BOTELLONES DE OXIGENO Y NITROGENO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2101, E'Servicio', E'SERVICIO DE LAVADO DE VEHICULOS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,adquisiciones,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2106, E'Servicio', E'SERVICIO DE PINTADO EN GENERAL', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 2107, E'Servicio', E'SERVICIOS NOTARIALES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2112, E'Servicio', E'SERVICIO DE TRASLADO Y CUSTODIA DE VALORES (FERIAS)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2115, E'Servicio', E'REFRIGERIOS EN CAPACITACIONES, CONFERENCIAS, REUNIONES, LANZAMIENTOS COMERCIALES, ANIVERSARIOS Y OTROS.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,adquisiciones,fondo_avance,pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2119, E'Bien', E'MASILLA PLASTICA Y/O CATALIZADORES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 2127, E'Bien', E'Cemento', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-12-08 18:41:47.969', E'2016-03-31 10:41:36.167', E'activo', NULL, NULL, 2130, E'Bien', E'VASOS DE PLASTICO (REUTILIZABLE)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 1, E'2014-08-11 11:06:24.226', E'2016-01-18 15:16:22.314', E'activo', NULL, NULL, 2131, E'Bien', E'Termos metalicos', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 2134, E'Bien', E'Estetoscopio', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{4,2}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2137, E'Bien', E'LAMPARA DETECTORA DE BILLETES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2141, E'Bien', E'REPUESTOS Y ACCESORIOS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3,4,1}', E'no', E'{caja_chica,fondo_avance,adquisiciones,pago_unico,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2150, E'Bien', E'ESCRITORIOS', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,contrato,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2156, E'Bien', E'MOBILIARIO EN GENERAL', E'gasto', E'1', NULL, E'si', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2186, E'Servicio', E'SEGURO OBLIGATORIO ACCIDENTES DE TRANSITO (SOAT)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 2188, E'Servicio', E'SERVICIO DE TRANSPORTE PARA PERSONAL  CCO, ATOS, MTTO, CARGA, PERSONAL DE BOA.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2200, E'Servicio', E'DERECHO DE ESTACIONAMIENTO AERONAVE CP-2550', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2016-06-23 08:38:26.763', E'activo', NULL, NULL, 2207, E'Servicio', E'MANTENIMIENTO Y ACTUALIZACION SISTEMA FMCS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{4}', E'no', E'{adquisiciones,caja_chica,fondo_avance,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-23 09:33:32.472', E'activo', NULL, NULL, 2208, E'Servicio', E'MANTENIMIENTO Y REPARACIÓN DE AERONAVES, COMPONENTES ROTABLES Y OTROS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{4}', E'no', E'{adquisiciones,pago_unico,pago_directo,boarep}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2214, E'Servicio', E'OTRAS CONSULTORIAS POR PRODUCTO', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2221, E'Bien', E'THINNER', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance,pago_unico,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2016-05-31 17:15:42.125', E'activo', NULL, NULL, 2228, E'Servicio', E'ALQUILER DE EQUIPO Y MAQUINARIAS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3,1}', E'no', E'{caja_chica,fondo_avance,adquisiciones,pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2234, E'Bien', E'IMPRESIÓN MATERIAL PROMOCIONAL O INFORMATIVO', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 137, E'2014-08-11 11:06:24.226', E'2016-03-04 15:56:48.851', E'activo', NULL, NULL, 2237, E'Servicio', E'ENTRENAMIENTO INICIAL Y RECURRENTE TRIPULACION DE COMANDO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{pago_directo,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 18:39:51.444', E'activo', NULL, NULL, 2241, E'Bien', E'ADQUISICION DE TAPICES, ALFOMBRAS, SABANAS, TOALLAS, SACOS DE FIBRAS, COLCHONES, CARPAS, CORTINAS, MANTAS Y OTROS TEXTILES SIMILARES.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-01-11 17:18:19.519', E'activo', NULL, NULL, 2251, E'Bien', E'Otros Disolventes (aguarras)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 39, E'2014-08-11 11:06:24.226', E'2018-05-22 17:55:50.577', E'activo', NULL, NULL, 2267, E'Bien', E'UTILES Y MATERIALES DE CAPACITACION', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2268, E'Bien', E'PAPEL DE ESCRITORIO EN SUS DIVERSAS VARIEDADES (BOND, FAX, SABANA, CARBONICO, LUSTE, DE COLOR Y OTROS)', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-12-06 14:09:09.075', E'activo', NULL, NULL, 2302, E'Servicio', E'ALIMENTACION DE PASAJEROS PERJUDICADOS POR VUELOS INTERRUMPIDOS DE AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,pago_unico,fondo_avance,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-27 11:34:12.216', E'activo', NULL, NULL, 2303, E'Servicio', E'HOSPEDAJE PASAJEROS PERJUDICADOS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{pago_directo,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2304, E'Servicio', E'PASAJES DE PASAJEROS PERJUDICADOS POR VUELOS INTERRUMPIDOS DE AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2305, E'Servicio', E'TRANSPORTE DE PASAJEROS PERJUDICADOS POR VUELOS INTERRUMPIDOS DE AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{pago_unico,adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2306, E'Servicio', E'REPARACION Y REPOSICION DE EQUIPAJE A PASAJEROS-AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'todos', E'{2}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2308, E'Bien', E'ARREGLOS FLORALES PARA EVENTOS COMERCIALES', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2309, E'Bien', E'PAPEL MEMBRETADO CON LOGO', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2310, E'Bien', E'REVISTAS PARA OFICINAS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2312, E'Bien', E'BOLSAS DE LONA', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2313, E'Bien', E'UNIFORMES, VESTIMENTA DE DIVERSOS TIPOS, ROPA DE TRABAJO, DISTINTIVOS, ACCESORIOS Y OTRAS PRENDAS DE VESTIR EN GENERAL', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2314, E'Bien', E'Calzados de seguridad', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2328, E'Servicio', E'CREDENCIALES DE SABSA, AASANA.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 18, E'2014-08-11 11:06:24.226', E'2015-07-08 09:09:32.004', E'activo', NULL, NULL, 2332, E'Servicio', E'PEAJES Y PARQUEOS PUBLICOS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2017-01-30 10:24:47.676', E'activo', NULL, NULL, 2333, E'Servicio', E'TASAS DE REGULACION DE LA ATT', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2334, E'Servicio', E'TIMBRES PARA TRAMITES ADMINISTRATIVOS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-12-05 15:13:28.230', E'activo', NULL, NULL, 2343, E'Servicio', E'COMISION POR VENTA  DE PASAJES NACIONAL (AGENCIAS DE VIAJE)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2351, E'Servicio', E'SERVICIO DE AUDITORIA ESPECIAL', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{contrato,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-22 14:43:24.872', E'activo', NULL, NULL, 2354, E'Servicio', E'INDEMNIZACION A PASAJEROS PERJUDICADOS ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,pago_directo,pago_unico,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 17:56:19.709', E'activo', NULL, NULL, 2358, E'Servicio', E'SERVICIO TRANSACCION IINET', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-23 08:57:26.483', E'activo', NULL, NULL, 2359, E'Servicio', E'SERVICIO  USO DE SISTEMAS INFORMATICOS DE VENTAS Y RESERVA DE PASAJES RESIBER, AMADEUS Y TRAVELPORT (GDS)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones,pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 16:51:37.662', E'activo', NULL, NULL, 2361, E'Servicio', E'SERVICIO DE ADMINISTRACION DE TARJETAS DE CREDITO. (LINKSER, ATC, AMEX)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2363, E'Servicio', E'SERVICIO FCOM, TEFIS, FLIGHT PLANNING', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{4}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2366, E'Servicio', E'SERVICIOS INTEGRALES ATO BUE', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2368, E'Servicio', E'SERVICIOS DE ASISTENCIA EN TIERRA, RAMPA Y ROYALTIE NAVE CP-2550', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 39, E'2014-08-11 11:06:24.226', E'2018-05-22 18:59:30.022', E'activo', NULL, NULL, 2374, E'Bien', E'EQUIPOS MEDICOS (DESFIBRILADOR Y OTROS)', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{4}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2013-08-02 10:56:23.072', NULL, E'inactivo', NULL, NULL, 2391, E'Bien', E'ARCHIVADOR DE PALANCA', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2392, E'Bien', E'ROLLO DE PAPEL DE TURNO', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 16:04:57.716', E'activo', NULL, NULL, 2395, E'Servicio', E'DERECHO DE USO CODIGO DE IDENTIFICACION IATA.', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (381, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2408, E'Bien', E'FOLDER COLGANTE DE CARTON', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2411, E'Servicio', E'FORMULARIOS PRE IMPRESOS (MICROPERFORADO)', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2416, E'Servicio', E'SEGURO DE ALQUILER', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2417, E'Servicio', E'TRANSPORTE PERSONAL EN ESTACIONES INTERNACIONALES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-12 18:12:11.036', E'activo', NULL, NULL, 2418, E'Servicio', E'ALQUILER DE INSTALACIONES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2419, E'Servicio', E'ALQUILER DE SCANER', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2421, E'Servicio', E'ALQUILER PURIFICADOR CENTRAL TELEFONICA', E'gasto', E'2', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2422, E'Servicio', E'REVISIÓN MEDICA, EXAMEN PRE-OCUPACIONAL', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance,adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 2424, E'Bien', E'ADQUISICION DE MATERIAL PROMOCIONAL Y/O INFORMATIVO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2428, E'Servicio', E'SERVICIOS TERCIARIZADOS ENERGIA ELECTRICA, AGUA, AIRE ACONDICIONADO, BASURA Y OTROS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2430, E'Servicio', E'SERVICIO DE ENTRETENIMIMIENTO', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 16:30:22.920', E'activo', NULL, NULL, 2434, E'Servicio', E'JUBILACION DEL TRABAJADOR Y ATENCION MEDICA  A PERSONAL EN ESTACIONES INTERNACIONALES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2438, E'Bien', E'TRILLO DE CONJUNTO DE ARCHIVO', E'gasto', E'2', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2449, E'Servicio', E'LIMPIEZA DE PRENDAS DE VESTIR', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 20, E'2014-08-11 11:06:24.226', E'2018-11-12 17:03:14.301', E'activo', NULL, NULL, 2457, E'Servicio', E'ALQUILER DE MOSTRADORES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 18:03:34.814', E'activo', NULL, NULL, 2458, E'Servicio', E'TRAMITACION OPERATIVA DE INGRESO Y SALIDA DE CARGA Y CORREO INTERNACIONAL', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2464, E'Servicio', E'SERVICIO DE POTABILIZACION DE AGUA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2470, E'Bien', E'CAJAS DE PLASTICO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2476, E'Servicio', E'PUBLICACION DE AVISOS PARA CONVOCATORIAS Y OTROS (EXTRAVIO DE DOCUMENTOS)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{caja_chica,fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2477, E'Servicio', E'GASTOS ADUANEROS IMPORTACION PIEZAS AVION', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2478, E'Servicio', E'FALLAS DE CAJA', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2479, E'Servicio', E'SERVICIO DE LIMPIEZA POR DERRAME DE COMBUSTIBLE', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-23 09:19:11.660', E'activo', NULL, NULL, 2480, E'Servicio', E'TSA INICIAL Y RECURRENTE GERENCIA OPERACIONES (PERMISO INGRESO DE LA TIRPULACION A EEUU)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2481, E'Servicio', E'TSA INICIAL GERENCIA OPERACIONES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2482, E'Servicio', E'DERECHO DE SALIDAS', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2483, E'Servicio', E'DERECHO DE MERCANCIAS', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2484, E'Servicio', E'DERECHO DE SEGURIDAD', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2485, E'Servicio', E'DERECHO DE APROXIMACIÓN', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2488, E'Servicio', E'DERECHOS DE SOBREVUELO', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2489, E'Servicio', E'SUMINISTRO DE ENERGÍA ELÉCTRICA 400 HZ - AERONAVE N-234AX', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2490, E'Servicio', E'SALA VIP', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2016-06-09 19:41:34.855', E'activo', NULL, NULL, 2491, E'Servicio', E'SALA VIP - PASAJEROS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{pago_directo,adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2492, E'Bien', E'Peliculas ', E'gasto', E'2', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2494, E'Bien', E'Liquido refrigerante', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2495, E'Bien', E'Aceite hidraulico', E'gasto', E'2', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 22, E'2014-12-08 18:41:47.969', E'2018-05-22 15:45:31.197', E'activo', NULL, NULL, 2496, E'Servicio', E'IMPRESION CON LOGO INSTITUCIONAL (CINTAS Y OTROS)', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2497, E'Bien', E'Agua destilada', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2498, E'Bien', E'Agua acidulada', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2499, E'Bien', E'MICRÓFONOS', E'gasto', E'1', NULL, E'si', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2500, E'Bien', E'EQUIPO EDUCACIONAL', E'gasto', E'1', NULL, E'si', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2501, E'Bien', E'Equipos de telefonia IP', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2502, E'Bien', E'PUPITRES', E'gasto', E'1', NULL, E'si', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2503, E'Bien', E'PIZARRA ACRILICA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2504, E'Bien', E'Ventiladores', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 2505, E'Bien', E'Bandejas de \r\nplasticos', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2506, NULL, E'CONSTRUCCIONES Y REMODELACIONES DE AMBIENTES', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2017-03-16 09:10:50.097', E'activo', NULL, NULL, 2507, E'Servicio', E'SERVICIO DE ALBAÑILERIA,\nCARPINTERIA, HERRERIA, CERRAJERIA, PLOMERIA Y/O JARDINERIA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance,contrato,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2508, E'Servicio', E'COMISIÓN POR VENTAS CARGA NACIONAL', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2511, E'Servicio', E'TRANSPORTE DE EQUIPAJE A PASAJEROS PERJUDICADOS POR VUELOS INTERRUMPIDOS DE AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2512, E'Bien', E'CAMARAS DE SEGURIDAD', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo,contrato}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2513, E'Bien', E'Motocicletas', E'gasto', E'2', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2515, E'Bien', E'Relojes biometricos', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 22, E'2014-12-08 18:41:47.969', E'2016-05-25 09:02:07.265', E'activo', NULL, NULL, 2516, E'Servicio', E'IMPRESION DE STICKER, LOGOS, CODIGOS Y OTROS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2517, E'Servicio', E'SUPLENCIAS', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2518, E'Servicio', E'PROGRAMAS Y PROYECTOS DE INVERSIÓN', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2519, E'Servicio', E'ALQUILER DE AMBIENTES EN AEROPUERTO', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2520, E'Bien', E'GPS', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 2521, E'Bien', E'Cocinas', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2522, E'Servicio', E'SERVICIO ACMI (TASAS, VISAS Y OTROS TRIPULACION OMNI)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2523, E'Servicio', E'HOSPEDAJE POR VIAJES AL EXTERIOR DEL PAÍS (TRIPULACION COMANDO/CABINA ACMI- MADRID)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2017-01-09 17:30:22.447', E'activo', NULL, NULL, 2524, E'Servicio', E'TRANSPORTE TRIPULACION', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2525, E'Servicio', E'INCREMENTO DE CUENTAS POR PAGAR A CORTO PLAZO POR SUELDOS Y JORNALES', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2526, E'Servicio', E'INGRESOS POR APORTE DE CAPITAL', E'recurso', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2537, E'Servicio', E'GASTOS CON CARGO A RENDICIÓN', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2541, E'Bien', E'SOBRE MANILA', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2543, E'Bien', E'CARTULINA', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2547, E'Bien', E'PINTURAS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3,4}', E'no', E'{fondo_avance,adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2566, E'Servicio', E'ALQUILER DE EDIFICIOS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2568, E'Servicio', E'TARJETAS PREPAGO PARA MOVIL', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2569, E'Servicio', E'SERVICIOS EN RUTA, RADIO AYUDA, PROTECCION AL VUELO Y SOBREVUELO NAVE CP-2552', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2570, E'Servicio', E'TASA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2573, E'Bien', E'Grasa', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2015-07-07 09:02:56.391', E'activo', NULL, NULL, 2574, E'Servicio', E'BOTELLON DE AGUA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2575, E'Bien', E'BORRADORES, REGLAS, NEPACOS, PEGAMENTO', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2576, E'Bien', E'CINTA DE EMBALAJE', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2578, E'Servicio', E'SERVICIO DE CORREO', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2579, E'Servicio', E'TELEVISION POR CABLE', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2580, E'Servicio', E'SERVICIO DE FAX', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2581, E'Servicio', E'ALQUILERE DE GRUAS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2582, E'Servicio', E'ALQUILER DE ARRANCADOR DE AERONAVE', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2583, E'Servicio', E'MANTENIMIENTO DE SILLA DE RUEDAS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 2584, E'Servicio', E'MANTENIMIENTO Y REPARACION DE CAJAS FUERTES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2585, E'Servicio', E'EXCHANGE-OVERHAUL DE COMPONENTES ROTABLES AERONAUTICOS-NAVE CP-2550', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2017-01-20 16:38:46.270', E'activo', NULL, NULL, 2587, E'Servicio', E'ADQUISICION DE LETREROS, BANERS O ROLLERS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{caja_chica,adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2588, E'Servicio', E'Impresion de material para ATOs (Bag Tag, y otros )', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2589, E'Servicio', E'SERVICIO DE COPIADO DE LLAVES Y ARREGLO DE CHAPAS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,adquisiciones,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2590, E'Servicio', E'SOLVENCIA DE ESTADOS FINANCIEROS Y OTROS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2591, E'Bien', E'ALIMENTOS PARA SURVIVAL KIT', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2592, E'Bien', E'Productos de serigrafia', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2593, E'Bien', E'Pita de amarre', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2594, E'Bien', E'VELCRO - SCRACH', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2596, E'Bien', E'PERSIANAS DE MADERA', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2597, E'Bien', E'SEÑALETICA DE TRUPAN', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2598, E'Bien', E'Botas de goma', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 2599, E'Bien', E'Algodon', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{caja_chica,adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 2600, E'Bien', E'Productos para impermeabilizacion (Sika)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2601, E'Bien', E'RUEDAS PARA EQUIPOS SOPORTE TIERRA', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2602, E'Bien', E'Persianas de plastico', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 2603, E'Bien', E'Tubos sanitarios de plastico o PVC', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 2604, E'Bien', E'CABLE CANAL', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2605, E'Bien', E'Lingotes, planchas, planchones, hojalata, perfiles,\nalambres, varillas y otros similares', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 19:39:51.271', E'activo', NULL, NULL, 2606, E'Bien', E'Puertas, ventanas, cortinas, tinglados, carrocerias\nmetalicas y demas estructuras metalicas acabadas', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-29 17:43:01.635', E'activo', NULL, NULL, 2607, E'Bien', E'Articulos de hojalata, cuchilleria, ferreteria, tornillos, tuercas, brocas,\nredes, cercas y demas productos metalicos', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{caja_chica,adquisiciones,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 2608, E'Bien', E'CANDADOS Y/O CHAPAS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2609, E'Bien', E'PRODUCTOS METALICOS EN GENERAL Y OTROS SIMILARES', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2610, E'Bien', E'Jabalinas, hojas de sierra, visagras, alambre de amarre, varilla rosca', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2611, E'Bien', E'Soporte metalico (Caballetes y otros)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 2612, E'Bien', E'Piedra', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2613, E'Bien', E'PISTOLA DE AIRE', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2614, E'Bien', E'JABONES Y/O DETERGENTES \r\nDESINFECTANTES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 2615, E'Bien', E'Vajilla de comedor para oficinas', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2616, E'Bien', E'LAPICES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2617, E'Bien', E'MANIQUI PARA PRIMEROS AUXILIOS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2618, E'Bien', E'MANUALES DE ENTRENAMIENTO (PARA CAPACITACION TRIPULANTES)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2619, NULL, E'FOCOS, CABLES ELÉCTRICOS Y DE TRANSMISIÓN DE DATOS, SOCKETS,\nTUBOS FLUORESCENTES, ACCESORIOS DE RADIOS, LÁMPARAS DE ESCRITORIO, ELECTRODOS, PLANCHAS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', E'{caja_chica}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2620, E'Bien', E'LINTERNAS, CONDUCTORES, AISLADORES, FUSIBLES, BATERÍAS, PILAS, INTERRUPTORES, CONMUTADORES,\nENCHUFES Y OTROS RELACIONADOS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2621, E'Bien', E'BATERIAS PARA HANDIES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2622, E'Bien', E'DISCOS DUROS, MEMORIA RAM, TARJETA MADRE, LECTORES EXTERNOS, DISCO DURO EXTERNO, ADAPTADORES DE PUERTOS, TECLADOS, MOUSE, HEAD SET, MICROFONO', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2623, E'Bien', E'VENTILADORES PARA RACK', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


/* Data for the 'param.tconcepto_ingas' table  (Records 501 - 1000) */

INSERT INTO param.tconcepto_ingas ("id_usuario_reg", "id_usuario_mod", "fecha_reg", "fecha_mod", "estado_reg", "id_usuario_ai", "usuario_ai", "id_concepto_ingas", "tipo", "desc_ingas", "movimiento", "sw_tes", "id_oec", "activo_fijo", "almacenable", "requiere_ot", "filtro_ot", "id_grupo_ots", "pago_automatico", "sw_autorizacion", "descripcion_larga", "id_entidad", "id_actividad_economica", "codigo", "id_unidad_medida", "nandina", "ruta_foto", "id_cat_concepto")
VALUES
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2624, E'Bien', E'FLASH MEMORY, PENDRIVE', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2625, NULL, E'PERFORADORA, ENGRANPADORA, PIZARRA DE CORCHO, CINTA ETIQUETADORA, SACA GRAPAS, BANDEJA PORTA PAPEL, PORTA LAPICEROS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 36, E'2014-08-11 11:06:24.226', E'2018-03-09 12:08:00.557', E'activo', NULL, NULL, 2626, E'Bien', E'RELOJ DE PARED', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2627, NULL, E'TAJADOR, POS-IT, SEPARADORES PLASTICOS, ALMOHADILLA, TIJERAS, ESPONJEROS, PORTA ESCOTCH, BINDERS, CINTA DE EMBALAJE, TAMPO, TINTA PARA TAMPO, SELLOS.', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2628, E'Bien', E'PAPEL HIGIENICO, PAPEL TOALLA, PAPEL COCINA, SERVILLETAS, BABEROS DESECHABLES, MANTELES ANTIDESLIZANTES, MANDILES DESECHABLES', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (381, NULL, E'2014-11-17 15:49:56.218', NULL, E'activo', NULL, NULL, 2629, E'Bien', E'LIGAS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 2630, E'Bien', E'Guantes desechables de vinil y/o barbijos desechables', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 2631, E'Bien', E'Extintores de un kilo', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2632, E'Bien', E'PARCHES, LIJAS, BROCHAS, RODILLOS, ASERRIN, TEFLON, MANGO PARA AZADON, DISCO DE CORTE', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2633, E'Bien', E'AERONAVES', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2634, E'Bien', E'CARRO PORTA EQUIPAJE (CALA CALA)', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 2635, E'Bien', E'Equipo porta manguera', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2636, E'Bien', E'Compresora', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2637, E'Servicio', E'TRAMITES JUDICIALES (TESTIMONIO, TIMBRES, CARATULA NOTARIAL, REPOSICION DE FORMULARIO, FOLDERS)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{caja_chica,adquisiciones,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2638, E'Servicio', E'MULTAS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo,fondo_avance,caja_chica,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2639, E'Servicio', E'LICENCIAS POR PUBLICIDAD', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_unico,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2640, E'Servicio', E'CERTIFICACION DE EMISION DE GASES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2652, E'Servicio', E'SERVICIOS DE ASISTENCIA EN TIERRA, RAMPA Y ROYALTIE NAVE CP-2551', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2653, E'Servicio', E'SERVICIOS EN RUTA, RADIO AYUDA, PROTECCION AL VUELO Y SOBREVUELO  NAVE CP-2550', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2654, E'Servicio', E'SERVICIOS EN RUTA, RADIO AYUDA, PROTECCION AL VUELO Y SOBREVUELO NAVE CP-2551', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2655, E'Servicio', E'SERVICIOS EN RUTA, RADIO AYUDA, PROTECCION AL VUELO Y SOBREVUELO NAVE CP-2717', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2656, E'Servicio', E'SERVICIOS EN RUTA, RADIO AYUDA, PROTECCION AL VUELO Y SOBREVUELO NAVE CP-2684', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2657, E'Servicio', E'SERVICIOS EN RUTA, RADIO AYUDA, PROTECCION AL VUELO Y SOBREVUELO NAVE CP-2716', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2658, E'Servicio', E'SERVICIOS EN RUTA, RADIO AYUDA, PROTECCION AL VUELO Y SOBREVUELO NAVE CP-2640', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2659, E'Servicio', E'SERVICIOS EN RUTA, RADIO AYUDA, PROTECCION AL VUELO Y SOBREVUELO NAVE CP-2718', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2660, E'Servicio', E'SERVICIOS EN RUTA, RADIO AYUDA, PROTECCION AL VUELO Y SOBREVUELO NAVE CP-2815', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2661, E'Servicio', E'SERVICIOS EN RUTA, RADIO AYUDA, PROTECCION AL VUELO Y SOBREVUELO NAVE CP-2554', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2662, E'Servicio', E'SERVICIOS DE ASISTENCIA EN TIERRA, RAMPA Y ROYALTIE NAVE CP-2552', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2663, E'Servicio', E'SERVICIOS DE ASISTENCIA EN TIERRA, RAMPA Y ROYALTIE NAVE CP-2554', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2664, E'Servicio', E'SERVICIOS DE ASISTENCIA EN TIERRA, RAMPA Y ROYALTIE NAVE CP-2684', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2665, E'Servicio', E'SERVICIOS DE ASISTENCIA EN TIERRA, RAMPA Y ROYALTIE NAVE CP-2716', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2666, E'Servicio', E'SERVICIOS DE ASISTENCIA EN TIERRA, RAMPA Y ROYALTIE NAVE CP-2717', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2667, E'Servicio', E'SERVICIOS DE ASISTENCIA EN TIERRA, RAMPA Y ROYALTIE NAVE CP-2640', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2668, E'Servicio', E'SERVICIOS DE ASISTENCIA EN TIERRA, RAMPA Y ROYALTIE NAVE CP-2718', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2669, E'Servicio', E'SERVICIOS DE ASISTENCIA EN TIERRA, RAMPA Y ROYALTIE NAVE CP-2815', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2670, E'Servicio', E'DERECHO DE ATERRIZAJE, RECARGO NOCTURNO Y RECARGO FERIADO NAVE CP-2551', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-14 17:29:06.756', NULL, E'inactivo', NULL, NULL, 2671, E'Servicio', E'DERECHO DE ATERRIZAJE, RECARGO NOCTURNO Y RECARGO FERIADO NAVE CP-2552', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2672, E'Servicio', E'DERECHO DE ATERRIZAJE, RECARGO NOCTURNO Y RECARGO FERIADO NAVE CP-2554', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2673, E'Servicio', E'DERECHO DE ATERRIZAJE, RECARGO NOCTURNO Y RECARGO FERIADO NAVE CP-2684', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2674, E'Servicio', E'DERECHO DE ATERRIZAJE, RECARGO NOCTURNO Y RECARGO FERIADO NAVE CP-2716', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-14 17:30:15.397', NULL, E'inactivo', NULL, NULL, 2675, E'Servicio', E'DERECHO DE ATERRIZAJE, RECARGO NOCTURNO Y RECARGO FERIADO NAVE CP-2717', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2676, E'Servicio', E'DERECHO DE ATERRIZAJE, RECARGO NOCTURNO Y RECARGO FERIADO NAVE CP-2640', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2677, E'Servicio', E'DERECHO DE ATERRIZAJE, RECARGO NOCTURNO Y RECARGO FERIADO NAVE CP-2718', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2678, E'Servicio', E'DERECHO DE ATERRIZAJE, RECARGO NOCTURNO Y RECARGO FERIADO NAVE CP-2815', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2679, E'Servicio', E'DERECHO DE ESTACIONAMIENTO AERONAVE CP-2551', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2680, E'Servicio', E'DERECHO DE ESTACIONAMIENTO AERONAVE CP-2552', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2681, E'Servicio', E'DERECHO DE ESTACIONAMIENTO AERONAVE CP-2554', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2682, E'Servicio', E'DERECHO DE ESTACIONAMIENTO AERONAVE CP-2684', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2683, E'Servicio', E'DERECHO DE ESTACIONAMIENTO AERONAVE CP-2716', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2684, E'Servicio', E'DERECHO DE ESTACIONAMIENTO AERONAVE CP-2717', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2685, E'Servicio', E'DERECHO DE ESTACIONAMIENTO AERONAVE CP-2640', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2686, E'Servicio', E'DERECHO DE ESTACIONAMIENTO AERONAVE CP-2718', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2687, E'Servicio', E'DERECHO DE ESTACIONAMIENTO AERONAVE CP-2815', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2688, E'Servicio', E'TRANSPORTE DE PASAJEROS PERJUDICADOS POR VUELOS INTERRUMPIDOS AERONAVE N-234AX', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2697, E'Servicio', E'TRANSPORTE DE EQUIPAJE A PASAJEROS PERJUDICADOS POR VUELOS INTERRUMPIDOS AERONAVE N-234AX', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2706, E'Servicio', E'HOSPEDAJE PASAJEROS PERJUDICADOS POR VUELOS INTERRUMPIDOS AERONAVE N-234AX (ACMI-MADRI)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2715, E'Servicio', E'SERVICIOS MANUALES (CONFECCION DE FUNDAS, ESPALDARES, POSADERAS, ALFOMBRAS Y OTROS SERVICIOS) PARA AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-19 16:09:20.060', NULL, E'inactivo', NULL, NULL, 2716, E'Bien', E'COMBUSTIBLE JET FUEL NAVE CP-2551', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-19 16:10:12.456', NULL, E'inactivo', NULL, NULL, 2717, E'Bien', E'COMBUSTIBLE JET FUEL NAVE CP-2552', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-19 16:12:40.219', NULL, E'inactivo', NULL, NULL, 2720, E'Bien', E'COMBUSTIBLE JET FUEL NAVE CP-2684', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-19 16:12:58.131', NULL, E'inactivo', NULL, NULL, 2721, E'Bien', E'COMBUSTIBLE JET FUEL NAVE CP-2716', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-19 16:13:13.918', NULL, E'inactivo', NULL, NULL, 2722, E'Bien', E'COMBUSTIBLE JET FUEL NAVE CP-2717', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-19 16:13:32.659', NULL, E'inactivo', NULL, NULL, 2723, E'Bien', E'COMBUSTIBLE JET FUEL NAVE CP-2640', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-19 16:13:48.777', NULL, E'inactivo', NULL, NULL, 2724, E'Bien', E'COMBUSTIBLE JET FUEL NAVE CP-2718', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-19 16:14:05.401', NULL, E'inactivo', NULL, NULL, 2725, E'Bien', E'COMBUSTIBLE JET FUEL NAVE CP-2815', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-19 19:52:14.701', NULL, E'inactivo', NULL, NULL, 2735, E'Bien', E'COMBUSTIBLE JET FUEL NAVE CP-2554', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2737, E'Bien', E'COMBUSTIBLE JET FUEL NAVE N-234AX', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2738, E'Servicio', E'RESERVA DE MANTENIMIENTO AERONAVE CP-2551', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2739, E'Servicio', E'RESERVA DE MANTENIMIENTO AERONAVE CP-2552', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2740, E'Servicio', E'RESERVA DE MANTENIMIENTO AERONAVE CP-2554', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2741, E'Servicio', E'RESERVA DE MANTENIMIENTO AERONAVE CP-2684', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2742, E'Servicio', E'RESERVA DE MANTENIMIENTO AERONAVE CP-2716', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2743, E'Servicio', E'RESERVA DE MANTENIMIENTO AERONAVE CP-2717', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2744, E'Servicio', E'RESERVA DE MANTENIMIENTO AERONAVE CP-2640', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2745, E'Servicio', E'RESERVA DE MANTENIMIENTO AERONAVE CP-2718', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2746, E'Servicio', E'RESERVA DE MANTENIMIENTO AERONAVE CP-2815', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2756, E'Servicio', E'ALIMENTACION DE PASAJEROS PERJUDICADOS POR VUELOS INTERRUMPIDOS AERONAVE N-234AX (ACMI-MADRID)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2757, E'Servicio', E'PASAJES DE PASAJEROS PERJUDICADOS POR VUELOS INTERRUMPIDOS AERONAVE N-234AX (ACMI- MAD)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2758, E'Servicio', E'SERVICIOS EN RUTA, RADIO AYUDA, PROTECCION AL VUELO Y SOBREVUELO NAVE N-234AX', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2759, E'Servicio', E'SERVICIOS DE ASISTENCIA EN TIERRA, RAMPA Y ROYALTIE NAVE N-234AX', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 17:55:56.001', E'activo', NULL, NULL, 2760, E'Servicio', E'SERVICIOS TRADUCCION, TRANSCRIPCION Y OTROS RELACIONADOS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'todos', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2014-02-21 16:22:39.707', NULL, E'inactivo', NULL, NULL, 2761, E'Bien', E'SERVICIO DE CATERING NACIONAL E INTERNACIONAL AERONAVE CP-2551', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-21 16:23:05.104', NULL, E'inactivo', NULL, NULL, 2762, E'Bien', E'SERVICIO DE CATERING NACIONAL E INTERNACIONAL AERONAVE CP-2552', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-21 16:23:18.071', NULL, E'inactivo', NULL, NULL, 2763, E'Bien', E'SERVICIO DE CATERING NACIONAL E INTERNACIONAL AERONAVE CP-2554', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-21 16:23:35.781', NULL, E'inactivo', NULL, NULL, 2764, E'Bien', E'SERVICIO DE CATERING NACIONAL E INTERNACIONAL AERONAVE CP-2684', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-21 16:23:52.036', NULL, E'inactivo', NULL, NULL, 2765, E'Bien', E'SERVICIO DE CATERING NACIONAL E INTERNACIONAL AERONAVE CP-2716', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-21 16:24:06.609', NULL, E'inactivo', NULL, NULL, 2766, E'Bien', E'SERVICIO DE CATERING NACIONAL E INTERNACIONAL AERONAVE CP-2717', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-21 16:24:22.414', NULL, E'inactivo', NULL, NULL, 2767, E'Bien', E'SERVICIO DE CATERING NACIONAL E INTERNACIONAL AERONAVE CP-2640', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-21 16:24:35.549', NULL, E'inactivo', NULL, NULL, 2768, E'Bien', E'SERVICIO DE CATERING NACIONAL E INTERNACIONAL AERONAVE CP-2718', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-21 16:24:50.085', NULL, E'inactivo', NULL, NULL, 2769, E'Bien', E'SERVICIO DE CATERING NACIONAL E INTERNACIONAL AERONAVE CP-2815', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2770, E'Bien', E'SERVICIO DE CATERING NACIONAL E INTERNACIONAL AERONAVE N-234AX', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2771, E'Servicio', E'DERECHO DE ESTACIONAMIENTO AERONAVE N-234AX', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2772, E'Servicio', E'DERECHO DE ATERRIZAJE, RECARGO NOCTURNO Y RECARGO FERIADO NAVE N-234AX', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2773, E'Servicio', E'MANTENIMIENTO  PROGRAMADO SERVICIO C - AERONAVE CP-2551', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2774, E'Servicio', E'MANTENIMIENTO  PROGRAMADO SERVICIO C - AERONAVE CP-2552', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2775, E'Servicio', E'MANTENIMIENTO  PROGRAMADO SERVICIO C - AERONAVE CP-2554', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2776, E'Servicio', E'MANTENIMIENTO  PROGRAMADO SERVICIO C - AERONAVE CP-2684', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2777, E'Servicio', E'MANTENIMIENTO  PROGRAMADO SERVICIO C - AERONAVE CP-2716', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2778, E'Servicio', E'MANTENIMIENTO  PROGRAMADO SERVICIO C - AERONAVE CP-2717', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2779, E'Servicio', E'MANTENIMIENTO  PROGRAMADO SERVICIO C - AERONAVE CP-2640', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2780, E'Servicio', E'MANTENIMIENTO  PROGRAMADO SERVICIO C - AERONAVE CP-2718', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2781, E'Servicio', E'MANTENIMIENTO  PROGRAMADO SERVICIO C - AERONAVE CP-2815', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2782, E'Servicio', E'EXCHANGE-OVERHAUL DE COMPONENTES ROTABLES AERONAUTICOS-NAVE CP-2551', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2783, E'Servicio', E'EXCHANGE-OVERHAUL DE COMPONENTES ROTABLES AERONAUTICOS-NAVE CP-2552', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2784, E'Servicio', E'EXCHANGE-OVERHAUL DE COMPONENTES ROTABLES AERONAUTICOS-NAVE CP-2554', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2785, E'Servicio', E'EXCHANGE-OVERHAUL DE COMPONENTES ROTABLES AERONAUTICOS-NAVE CP-2684', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2786, E'Servicio', E'EXCHANGE-OVERHAUL DE COMPONENTES ROTABLES AERONAUTICOS-NAVE CP-2716', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2787, E'Servicio', E'EXCHANGE-OVERHAUL DE COMPONENTES ROTABLES AERONAUTICOS-NAVE CP-2717', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2788, E'Servicio', E'EXCHANGE-OVERHAUL DE COMPONENTES ROTABLES AERONAUTICOS-NAVE CP-2640', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2789, E'Servicio', E'EXCHANGE-OVERHAUL DE COMPONENTES ROTABLES AERONAUTICOS-NAVE CP-2718', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2790, E'Servicio', E'EXCHANGE-OVERHAUL DE COMPONENTES ROTABLES AERONAUTICOS-NAVE CP-2815', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-23 09:32:11.248', E'activo', NULL, NULL, 2791, E'Servicio', E'EXCHANGE (INTERCAMBIO DE REPUESTOS Y PARTES DE AERONAVES)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{4,1}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2792, E'Servicio', E'OTROS GASTOS POR CONCEPTO DE INSTALACION, MANTENIMIENTO Y REPARACION AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2793, E'Servicio', E'SERVICIO DE LIMPIEZA, FUNDAS, ESPALDARES, POSADERAS, ALFOMBRAS Y OTROS  EN AERONAVE CP-2551', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2794, E'Servicio', E'SERVICIO DE LIMPIEZA, FUNDAS, ESPALDARES, POSADERAS, ALFOMBRAS Y OTROS  EN AERONAVE CP-2552', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2795, E'Servicio', E'SERVICIO DE LIMPIEZA, FUNDAS, ESPALDARES, POSADERAS, ALFOMBRAS Y OTROS  EN AERONAVE CP-2554', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2796, E'Servicio', E'SERVICIO DE LIMPIEZA, FUNDAS, ESPALDARES, POSADERAS, ALFOMBRAS Y OTROS  EN AERONAVE CP-2684', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2797, E'Servicio', E'SERVICIO DE LIMPIEZA, FUNDAS, ESPALDARES, POSADERAS, ALFOMBRAS Y OTROS  EN AERONAVE CP-2716', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2798, E'Servicio', E'SERVICIO DE LIMPIEZA, FUNDAS, ESPALDARES, POSADERAS, ALFOMBRAS Y OTROS  EN AERONAVE CP-2717', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2799, E'Servicio', E'SERVICIO DE LIMPIEZA, FUNDAS, ESPALDARES, POSADERAS, ALFOMBRAS Y OTROS  EN AERONAVE CP-2640', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2800, E'Servicio', E'SERVICIO DE LIMPIEZA, FUNDAS, ESPALDARES, POSADERAS, ALFOMBRAS Y OTROS  EN AERONAVE CP-2718', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2801, E'Servicio', E'SERVICIO DE LIMPIEZA, FUNDAS, ESPALDARES, POSADERAS, ALFOMBRAS Y OTROS  EN AERONAVE CP-2815', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2802, E'Servicio', E'LIMPIEZA DE AERONAVE N-234AX', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2803, E'Servicio', E'SERVICIOS DE FUMIGACIÓN DE AERONAVE CP-2550', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2804, E'Servicio', E'SERVICIOS DE FUMIGACIÓN DE AERONAVE CP-2551', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2805, E'Servicio', E'SERVICIOS DE FUMIGACIÓN DE AERONAVE CP-2552', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2806, E'Servicio', E'SERVICIOS DE FUMIGACIÓN DE AERONAVE CP-2554', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2807, E'Servicio', E'SERVICIOS DE FUMIGACIÓN DE AERONAVE CP-2684', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2808, E'Servicio', E'SERVICIOS DE FUMIGACIÓN DE AERONAVE CP-2716', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2809, E'Servicio', E'SERVICIOS DE FUMIGACIÓN DE AERONAVE CP-2717', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2810, E'Servicio', E'SERVICIOS DE FUMIGACIÓN DE AERONAVE CP-2640', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2811, E'Servicio', E'SERVICIOS DE FUMIGACIÓN DE AERONAVE CP-2718', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2812, E'Servicio', E'SERVICIOS DE FUMIGACIÓN DE AERONAVE CP-2815', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2813, E'Servicio', E'SERVICIOS DE FUMIGACIÓN DE AERONAVE N-234AX', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2814, E'Servicio', E'INDEMINIZACION, ADELANTOS EMERGENCIA P PASAJEROS PERJUDICADOS POR VLOS. AERONAVE N-234AX (ACMI-MADRID)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2823, E'Servicio', E'OTROS SERVICIOS AERONAVE CP-2815', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2824, E'Servicio', E'OTROS SERVICIOS (ALQUILER AERONAVE N-234AX  ACMI- MADRID)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2825, E'Servicio', E'OTROS SERVICIOS (SEGURO AERONAVE N-234AX  ACMI- MADRID)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2826, E'Servicio', E'OTROS SERVICIOS AERONAVE N-234AX  (ACMI- MADRID)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2828, E'Servicio', E'ALQUILER DE AERONAVE CP-2551', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2829, E'Servicio', E'ALQUILER DE AERONAVE CP-2552', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2830, E'Servicio', E'ALQUILER DE AERONAVE CP-2554', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2831, E'Servicio', E'ALQUILER DE AERONAVE CP-2684', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2832, E'Servicio', E'ALQUILER DE AERONAVE CP-2716', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2833, E'Servicio', E'ALQUILER DE AERONAVE CP-2717', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2834, E'Servicio', E'ALQUILER DE AERONAVE CP-2640', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2835, E'Servicio', E'ALQUILER DE AERONAVE CP-2718', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2836, E'Servicio', E'ALQUILER DE AERONAVE CP-2815', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2837, E'Servicio', E'ALQUILER EQUIPO, MAQUINARIA Y HERRAMIENTAS AERONAVE', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2838, E'Servicio', E'SEGURO DE AERONAVE CP-2551', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2839, E'Servicio', E'SEGURO DE AERONAVE CP-2552', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2840, E'Servicio', E'SEGURO DE AERONAVE CP-2554', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2841, E'Servicio', E'SEGURO DE AERONAVE CP-2684', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2842, E'Servicio', E'SEGURO DE AERONAVE CP-2716', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2843, E'Servicio', E'SEGURO DE AERONAVE CP-2717', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2844, E'Servicio', E'SEGURO DE AERONAVE CP-2640', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2845, E'Servicio', E'SEGURO DE AERONAVE CP-2718', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2846, E'Servicio', E'SEGURO DE AERONAVE CP-2815', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-26 10:53:17.561', NULL, E'inactivo', NULL, NULL, 2847, E'Servicio', E'SERVICIO DE BAR Y MISCELÁNEOS AERONAVE CP-2551', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-26 10:53:33.475', NULL, E'inactivo', NULL, NULL, 2848, E'Servicio', E'SERVICIO DE BAR Y MISCELÁNEOS AERONAVE CP-2552', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-26 10:54:23.931', NULL, E'inactivo', NULL, NULL, 2849, E'Servicio', E'SERVICIO DE BAR Y MISCELÁNEOS AERONAVE CP-2554', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-26 10:54:50.075', NULL, E'inactivo', NULL, NULL, 2850, E'Servicio', E'SERVICIO DE BAR Y MISCELÁNEOS AERONAVE CP-2684', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-26 10:55:22.834', NULL, E'inactivo', NULL, NULL, 2851, E'Servicio', E'SERVICIO DE BAR Y MISCELÁNEOS AERONAVE CP-2716', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-26 10:56:04.569', NULL, E'inactivo', NULL, NULL, 2852, E'Servicio', E'SERVICIO DE BAR Y MISCELÁNEOS AERONAVE CP-2717', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-26 10:58:23.812', NULL, E'inactivo', NULL, NULL, 2853, E'Servicio', E'SERVICIO DE BAR Y MISCELÁNEOS AERONAVE CP-2640', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-26 10:59:23.835', NULL, E'inactivo', NULL, NULL, 2854, E'Servicio', E'SERVICIO DE BAR Y MISCELÁNEOS AERONAVE CP-2718', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-02-26 10:59:37.555', NULL, E'inactivo', NULL, NULL, 2855, E'Servicio', E'SERVICIO DE BAR Y MISCELÁNEOS AERONAVE CP-2815', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2856, E'Bien', E'SERVICIO DE BAR Y MISCELÁNEOS AERONAVE N-234AX', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2857, E'Servicio', E'PASAJES POR VIAJES AL EXTERIOR DEL PAÍS VÍA AÉREA (COMANDO-CABINA FLOTA BOA Y MAD)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2858, E'Servicio', E'HOSPEDAJE POR VIAJES AL INTERIOR DEL PAÍS (COMANDO-CABINA-EOVS-TÉCNICOS MTTO.) ( TRIP. EN VUELO)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2859, E'Servicio', E'VIÁTICOS POR VIAJES AL INTERIOR DEL PAÍS (COMANDO-CABINA-EOVS-TÉCNICOS MTTO.) (TRIP. EN VUELO)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2860, E'Servicio', E'HOSPEDAJE POR VIAJES AL EXTERIOR DEL PAÍS (COMANDO-CABINA-EOVS-TÉNICOS MTTO.) (TRIP. EN VUELO)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2861, E'Servicio', E'VIÁTICOS POR VIAJES AL EXTERIOR DEL PAÍS (COMANDO-CABINA-EOVS-TÉCNICOS MTTO.)  (TRIP. EN VUELO)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2862, E'Servicio', E'MANIPULEO DE CARGA - REPUESTOS AERONAUTICOS, FLETES Y COLLECT EN EL EXTERIOR DEL PAÍS PARA AERONAVES.', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-12-05 15:13:38.559', E'activo', NULL, NULL, 2863, E'Servicio', E'COMISION POR VENTA  DE PASAJES INTERNACIONAL (AGENCIAS DE VIAJE)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2864, E'Servicio', E'COMISIÓN POR VENTAS CARGA INTERNACIONAL', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-01-11 19:31:13.076', E'activo', NULL, NULL, 2865, E'Servicio', E'TARIFA DE APROXIMACION', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2866, E'Servicio', E'TASA DE MERCANCIAS (SALIDA DE CARGA AÉREA)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2867, E'Servicio', E'HOSPEDAJE POR VIAJES AL EXTERIOR DEL PAÍS (TECNICOS DE MTTO\n. A BORDO ACMI- MADRID)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2868, E'Servicio', E'VIÁTICOS POR VIAJES AL EXTERIOR DEL PAÍS (TECNICOS DE MTTO. A BORDO ACMI- MADRID)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2869, E'Servicio', E'VIÁTICOS POR VIAJES AL EXTERIOR DEL PAÍS (TRIPULACION COMANDO/CABINA ACMI- MADRID)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2870, E'Servicio', E'SERVICIOS ESPECIALIZADOS PARA AERONAVE CP-2551  (TECNICOS EXTERNOS)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2871, E'Servicio', E'SERVICIOS ESPECIALIZADOS PARA AERONAVE CP-2552  (TECNICOS EXTERNOS)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2872, E'Servicio', E'SERVICIOS ESPECIALIZADOS PARA AERONAVE CP-2554  (TECNICOS EXTERNOS)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2873, E'Servicio', E'SERVICIOS ESPECIALIZADOS PARA AERONAVE CP-2684  (TECNICOS EXTERNOS)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2874, E'Servicio', E'SERVICIOS ESPECIALIZADOS PARA AERONAVE CP-2716  (TECNICOS EXTERNOS)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2875, E'Servicio', E'SERVICIOS ESPECIALIZADOS PARA AERONAVE CP-2717  (TECNICOS EXTERNOS)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2876, E'Servicio', E'SERVICIOS ESPECIALIZADOS PARA AERONAVE CP-2640  (TECNICOS EXTERNOS)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2877, E'Servicio', E'SERVICIOS ESPECIALIZADOS PARA AERONAVE CP-2718  (TECNICOS EXTERNOS)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2878, E'Servicio', E'SERVICIOS ESPECIALIZADOS PARA AERONAVE CP-2815  (TECNICOS EXTERNOS)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2879, E'Bien', E'OTROS MATERIALES Y SUMINISTROS PARA AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2880, E'Bien', E'OTROS PRODUCTOS DE ARTES GRAFICAS EN GENERAL', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 2881, E'Servicio', E'OTROS SERVICIOS DE AERONAVE', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{adquisiciones,pago_directo,fondo_avance,caja_chica,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2882, E'Bien', E'OTROS REPUESTOS Y ACCESORIOS PARA AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-04-09 15:08:44.160', NULL, E'inactivo', NULL, NULL, 2883, E'Bien', E'OTROS REPUESTOS Y ACCESORIOS AERONAVE CP-2550', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-04-09 15:39:25.140', NULL, E'inactivo', NULL, NULL, 2884, E'Bien', E'OTROS REPUESTOS Y ACCESORIOS AERONAVE CP-2551', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-04-09 15:40:28.712', NULL, E'inactivo', NULL, NULL, 2885, E'Bien', E'OTROS REPUESTOS Y ACCESORIOS AERONAVE CP-2552', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-04-09 15:40:53.605', NULL, E'inactivo', NULL, NULL, 2886, E'Bien', E'OTROS REPUESTOS Y ACCESORIOS AERONAVE CP-2554', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-04-09 15:41:15.978', NULL, E'inactivo', NULL, NULL, 2887, E'Bien', E'OTROS REPUESTOS Y ACCESORIOS AERONAVE CP-2684', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-04-09 15:41:32.985', NULL, E'inactivo', NULL, NULL, 2888, E'Bien', E'OTROS REPUESTOS Y ACCESORIOS AERONAVE CP-2716', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-04-09 15:41:45.406', NULL, E'inactivo', NULL, NULL, 2889, E'Bien', E'OTROS REPUESTOS Y ACCESORIOS AERONAVE CP-2717', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-04-09 15:41:57.968', NULL, E'inactivo', NULL, NULL, 2890, E'Bien', E'OTROS REPUESTOS Y ACCESORIOS AERONAVE CP-2640', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-04-09 15:42:11.096', NULL, E'inactivo', NULL, NULL, 2891, E'Bien', E'OTROS REPUESTOS Y ACCESORIOS AERONAVE CP-2718', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-04-09 15:42:24.908', NULL, E'inactivo', NULL, NULL, 2892, E'Bien', E'OTROS REPUESTOS Y ACCESORIOS AERONAVE CP-2815', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2893, E'Bien', E'OTROS PRODUCTOS QUIMICOS Y FARMACEUTICOS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3,4}', E'no', E'{fondo_avance,adquisiciones,caja_chica,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2894, E'Bien', E'OTROS REPUESTOS Y ACCESORIOS AERONAVE N234AX (ACMI MADRID)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 2895, E'Servicio', E'Servicio de desaduanizacion, tramite DUE, servicio de Alm., logistico y seguro\n', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2,1}', E'no', E'{adquisiciones,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2896, E'Bien', E'MATERIALES, SUMINISTROS E INSUMOS PARA SURVIVAL KIT', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2898, E'Servicio', E'OTROS SERVICIOS DE PUBLICIDAD (SPOT, ETC)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{fondo_avance,adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2899, E'Servicio', E'SERVICIOS ESPECIALIZADOS PARA AERONAVES BOA  (TECNICOS EXTERNOS)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{adquisiciones,pago_directo,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 2900, E'Servicio', E'SERVICIO DE LIMPIEZA, FUNDAS, ESPALDARES, POSADERAS, ALFOMBRAS Y OTROS DE AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,pago_directo,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2901, E'Servicio', E'SERVICIO DE PINTADO (TROLLEY, ASIENTOS Y OTROS) DE AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-07-01 11:01:53.168', NULL, E'inactivo', NULL, NULL, 2902, E'Servicio', E'SERVICIOS EN RUTA, RADIO AYUDA, PROTECCION AL VUELO Y SOBREVUELO DE AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'inactivo', NULL, NULL, 2903, E'Servicio', E'SERVICIOS DE ASISTENCIA EN TIERRA, RAMPA Y ROYALTIE DE AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', E'{}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 18:16:06.171', E'activo', NULL, NULL, 2904, E'Bien', E'SERVICIO DE BAR Y MISCELANEOS PARA AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2905, E'Servicio', E'Servicios en ruta, radio ayuda, proteccion al vuelo y sobrevuelo  de Aeronaves', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{5,2}', E'no', E'{pago_unico,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-12-07 16:28:36.379', E'activo', NULL, NULL, 2906, E'Servicio', E'DERECHO DE ATERRIZAJE - AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{5}', E'no', E'{adquisiciones,pago_directo,pago_unico,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-11-13 15:44:12.412', E'activo', NULL, NULL, 2907, E'Servicio', E'DERECHO DE ESTACIONAMIENTO DE AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{5}', E'no', E'{pago_unico,adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 20, E'2014-08-11 11:06:24.226', E'2018-12-04 08:29:24.752', E'activo', NULL, NULL, 2909, E'Bien', E'COMBUSTIBLE JET FUEL - AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,pago_directo,pago_unico,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2910, E'Bien', E'SERVICIO DE CATERING NACIONAL E INTERNACIONAL  PARA AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,pago_directo,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-11 11:06:24.226', NULL, E'activo', NULL, NULL, 2911, E'Servicio', E'HOSPEDAJE POR VIAJES AL INTERIOR DEL PAÍS (TRIPULACION ENTRENAMIENTO)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 10:51:02.992', E'activo', NULL, NULL, 2912, E'Servicio', E'VIATICOS POR VIAJES AL INTERIOR DEL PAIS (TRIPULACION ENTRENAMIENTO)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2018-05-22 10:55:16.368', E'activo', NULL, NULL, 2913, E'Servicio', E'HOSPEDAJE POR VIAJES AL EXTERIOR DEL PAIS (TRIPULACION ENTRENAMIENTO)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 22, E'2014-08-11 11:06:24.226', E'2015-09-28 14:15:38.863', E'activo', NULL, NULL, 2914, E'Servicio', E'VIATICOS POR VIAJES AL EXTERIOR DEL PAÍS (TRIPULACION ENTRENAMIENTO)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-18 09:28:00.841', NULL, E'inactivo', NULL, NULL, 3596, E'Servicio', E'ALQUILER DE AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-08-18 11:40:23.540', NULL, E'activo', NULL, NULL, 3597, E'Servicio', E'RESERVA DE MANTENIMIENTO AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{pago_directo,pago_unico,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3598, E'Servicio', E'SEGURO DE AERONAVES FLOTA BOA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{pago_directo,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (39, NULL, E'2014-08-21 15:50:58.540', NULL, E'inactivo', NULL, NULL, 3599, E'Servicio', E'DERECHO DE METEREOLOGÍA', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (39, NULL, E'2014-08-21 15:51:39.857', NULL, E'inactivo', NULL, NULL, 3600, E'Servicio', E'CLASIFICACIÓN ACÚSTICA', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (39, NULL, E'2014-08-21 16:40:59.731', NULL, E'inactivo', NULL, NULL, 3601, E'Servicio', E'PASARELAS TELESCÓPICAS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (39, NULL, E'2014-08-21 16:41:31.912', NULL, E'inactivo', NULL, NULL, 3602, E'Servicio', E'HANDLING PASAJEROS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (39, NULL, E'2014-08-21 16:42:10.833', NULL, E'inactivo', NULL, NULL, 3603, E'Servicio', E'HANDLING CARGA', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (39, NULL, E'2014-08-21 16:42:45.850', NULL, E'inactivo', NULL, NULL, 3604, E'Servicio', E'MANT. CONTENEDORES AERONAVE', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (39, NULL, E'2014-08-21 16:43:53.091', NULL, E'inactivo', NULL, NULL, 3605, E'Servicio', E'MANT. TROLLEY AERONAVE', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (39, NULL, E'2014-08-21 16:44:17.390', NULL, E'inactivo', NULL, NULL, 3606, E'Servicio', E'DESADUANIZACIÓN MATERIALES', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2014-08-23 12:06:43.229', NULL, E'inactivo', NULL, NULL, 3610, E'Servicio', E'MANTENIMIENTO FDM', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2014-08-23 12:23:23.721', NULL, E'inactivo', NULL, NULL, 3611, E'Servicio', E'IMÁGEN CORPORATIVA', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2014-08-23 12:46:36.681', NULL, E'inactivo', NULL, NULL, 3612, E'Bien', E'MATERIAL DE ESCRITORIO EN  GENERAL.', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2014-08-24 16:47:24.019', NULL, E'inactivo', NULL, NULL, 3613, E'Servicio', E'MANTENIMIENTO Y REPARACIÓN TROLLEYS DE AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-08-27 10:57:29.248', NULL, E'inactivo', NULL, NULL, 3614, E'Servicio', E'SERVICIOS TELEFONICOS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (39, NULL, E'2014-08-27 11:34:09.526', NULL, E'inactivo', NULL, NULL, 3615, E'Servicio', E'SEGUROS.', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2014-08-27 11:36:21.214', NULL, E'inactivo', NULL, NULL, 3616, E'Servicio', E'PASAJES AL INTERIOR DEL PAÍS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2014-08-27 11:37:11.410', NULL, E'inactivo', NULL, NULL, 3617, E'Servicio', E'PASAJES AL EXTERIOR DEL PAÍS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (39, 22, E'2014-08-27 11:46:34.425', E'2017-02-02 10:24:29.533', E'inactivo', NULL, NULL, 3618, E'Servicio', E'ALQUILER DE EQUIPOS Y MAQUINARIAS.', E'gasto', E'2', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, NULL, E'2014-08-27 11:53:17.174', NULL, E'inactivo', NULL, NULL, 3619, E'Servicio', E'OTROS ALQUILERES.', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (39, NULL, E'2014-08-27 12:00:31.540', NULL, E'inactivo', NULL, NULL, 3620, E'Servicio', E'MANTENIMIENTO Y REPARACIÓN DE INMUEBLES.', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (39, NULL, E'2014-08-27 14:55:25.758', NULL, E'inactivo', NULL, NULL, 3621, E'Servicio', E'SERVICIOS MANUALES EN GENERAL.', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2014-08-27 15:35:11.372', NULL, E'inactivo', NULL, NULL, 3622, E'Servicio', E'SERVICIOS TERCIARIZADOS EN AEROPUERTOS, SUELDOS Y SALARIOS PARA PERSONAS EN ESTACIONES INTERNACIONALES.', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (39, NULL, E'2014-08-27 15:43:37.272', NULL, E'inactivo', NULL, NULL, 3623, E'Bien', E'COMBUSTIBLE, LUBRICANTES Y DERIVADOS PARA CONSUMO.', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (1, 20, E'2014-01-29 16:49:29.763', E'2018-11-12 17:01:34.609', E'activo', NULL, NULL, 3624, E'Bien', E'MATERIALES ELECTRICOS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo,caja_chica,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2014-08-27 16:15:19.188', NULL, E'inactivo', NULL, NULL, 3625, E'Servicio', E'PAGO DE EXPENSAS COMUNES Y READECUACIÓN DE AMBIENTES.', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-08-27 16:33:04.803', NULL, E'activo', NULL, NULL, 3626, E'Servicio', E'Derechos y otros similares', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2014-08-27 16:36:20.762', NULL, E'inactivo', NULL, NULL, 3627, E'Servicio', E'SERVICIOS LEGALES EN GENERAL', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 22, E'2014-08-27 16:52:57.751', E'2018-01-11 19:54:08.819', E'activo', NULL, NULL, 3628, E'Bien', E'Productos de artes graficas, papel y carton', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, NULL, E'2014-08-27 19:21:42.855', NULL, E'inactivo', NULL, NULL, 3629, E'Servicio', E'TRANSFERENCIAS\nEFECTUADAS A ORGANISMOS INTERNACIONALES POR CUOTAS EXTRAORDINARIAS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (39, NULL, E'2014-08-28 15:41:51.325', NULL, E'inactivo', NULL, NULL, 3630, E'Servicio', E'COMISIONES POR VENTAS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-09-01 10:59:48.641', NULL, E'inactivo', NULL, NULL, 3634, E'Servicio', E'INCREMENTO DE CUENTAS POR PAGAR A CORTO PLAZO POR RETENCIONES', E'recurso', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-09-01 11:00:10.715', NULL, E'inactivo', NULL, NULL, 3635, E'Servicio', E'INCREMENTO DE CUENTAS POR PAGAR A CORTO PLAZO POR APORTES PATRONALES', E'recurso', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-09-01 11:01:14.189', NULL, E'inactivo', NULL, NULL, 3636, E'Servicio', E'INCREMENTO DE CUENTAS POR PAGAR A CORTO PLAZO POR DEUDAS COMERCIALES', E'recurso', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3637, E'Servicio', E'CLOUD COMPUTING', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3638, E'Servicio', E'PASARELA DE PAGO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3639, E'Servicio', E'CUTE', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3640, E'Servicio', E'ALQUILER DE AERONAVE', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3641, E'Servicio', E'GDS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3642, E'Servicio', E'IMPRESION DE LOGO INSTITUCIONAL', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-09-16 16:51:54.655', NULL, E'activo', NULL, NULL, 3643, E'Bien', E'Diurex', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2014-09-12 10:56:24.177', NULL, E'inactivo', NULL, NULL, 3644, E'Bien', E'BOLÍGRAFOS', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2014-09-12 10:56:48.515', NULL, E'activo', NULL, NULL, 3645, E'Bien', E'GRAPAS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2014-09-12 11:32:43.278', NULL, E'inactivo', NULL, NULL, 3647, E'Bien', E'FOLDER', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2014-09-12 11:33:10.521', NULL, E'activo', NULL, NULL, 3648, E'Bien', E'Borradores', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2014-09-12 11:34:15.270', NULL, E'inactivo', NULL, NULL, 3649, E'Bien', E'CLIP', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2014-09-12 11:34:45.543', NULL, E'activo', NULL, NULL, 3650, E'Bien', E'REGLA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2014-09-12 15:35:47.561', NULL, E'activo', NULL, NULL, 3651, E'Bien', E'Estilete', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2014-09-12 11:35:46.835', NULL, E'activo', NULL, NULL, 3652, E'Bien', E'PEGAMENTO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2014-09-12 11:36:10.102', NULL, E'activo', NULL, NULL, 3653, E'Bien', E'TAJADOR', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2014-09-12 11:36:28.406', NULL, E'activo', NULL, NULL, 3654, E'Bien', E'CUADERNOS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2014-09-12 11:37:16.780', NULL, E'inactivo', NULL, NULL, 3655, E'Bien', E'SOBRE PORTA CD', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2014-09-12 11:37:52.963', NULL, E'inactivo', NULL, NULL, 3656, E'Bien', E'SEPARADORES DE HOJAS', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3657, E'Bien', E'BOLIGRAFOS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3659, E'Bien', E'FOLDERS PLASTICO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3660, E'Bien', E'CORRECTOR', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-09-19 12:38:36.522', NULL, E'activo', NULL, NULL, 3661, E'Bien', E'CLIPS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3667, E'Bien', E'SEÑALADORES', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3668, E'Bien', E'Folder amarillo de cartulina', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3669, E'Bien', E'Sobres', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3670, E'Servicio', E'MISCELLANEOUS INVOICE - IATA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3672, E'Bien', E'CD', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3673, E'Bien', E'DVD', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3674, E'Bien', E'CALCULADORAS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3675, E'Bien', E'POS IT', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3676, E'Bien', E'NEPACO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3677, E'Bien', E'RESALTADORES', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3678, E'Bien', E'MARCADORES', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3679, E'Bien', E'MICROPUNTAS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3680, E'Bien', E'SEPARADORES PLASTICOS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3681, E'Bien', E'PERFORADORA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{caja_chica,fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3682, E'Bien', E'SACA GRAPA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'todos', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3683, E'Bien', E'Balanza', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2014-09-23 11:14:38.243', NULL, E'activo', NULL, NULL, 3685, E'Bien', E'VASOS DE VIDRIO PARA SERVICIOS A BORDO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3686, E'Servicio', E'SERVICIO DE HOSTING PAGINA WEB', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{pago_directo,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-12-08 18:30:35.874', E'2017-03-29 11:58:33.892', E'activo', NULL, NULL, 3687, E'Bien', E' Perforadora Semindustrial', E'gasto', E'2', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3690, E'Bien', E'Mueble para impresora', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-12-08 18:30:35.874', E'2018-11-29 15:35:49.890', E'activo', NULL, NULL, 3691, E'Servicio', E'MEMBRESIA IATA, ALTA, CATARA, JURCA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3692, E'Servicio', E'AGUINALDO PERSONAL EVENTUAL', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3693, E'Servicio', E'BONO DE FRONTERA PERSONAL EVENTUAL COBIJA', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3694, E'Servicio', E'BONO DE PRODUCCION', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3695, E'Servicio', E'COMPENSACION COSTO DE VIDA PERSONAL ASIGNADO EN EL EXTERIOR', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-12-08 18:30:35.874', E'2018-11-13 15:14:00.055', E'activo', NULL, NULL, 3696, E'Servicio', E'GAS DOMICILIARIO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3698, E'Servicio', E'FLETES, ALMACENAMIENTO Y MANIPULEO DE BIENES Y EQUIPOS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,4,3}', E'no', E'{adquisiciones,pago_directo,caja_chica,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3699, E'Servicio', E'ALQUILER DE SILLAS, MESAS, SOMBRILLAS, VAJILLA Y OTROS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{caja_chica,fondo_avance,adquisiciones,pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3700, E'Servicio', E'ALQUILER DE ESPACIOS PARA PUBLICIDAD', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-12-08 18:30:35.874', E'2018-11-23 09:43:32.340', E'activo', NULL, NULL, 3701, E'Servicio', E' SERVICIO C PARA AERONAVE', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-10-08 09:54:44.516', NULL, E'inactivo', NULL, NULL, 3702, E'Servicio', E'REENCAUCHE DE LLANTAS DE EQUIPOS DE SOPORTE TIERRA Y VEHÍCULOS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3703, E'Servicio', E'REVALORIZACION DE ACTIVOS FIJOS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3704, E'Servicio', E'IMPRESION DE LOGO INSTITUCIONAL EN MATERIAL PARA SERVICIO A BORDO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3705, E'Servicio', E'CERTIFICADOS DIGITALES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3706, E'Bien', E'Papel Bond Tamaño Carta 75 Gr.', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3707, E'Bien', E'Papel Bond Tamaño Oficio 75 Gr.', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3708, E'Bien', E'Papel sabana rayado', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3709, E'Bien', E'PAPEL BOND TAMAÑO A4', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3710, E'Bien', E'Papel bond tamaño carta a colores', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3711, E'Bien', E'BOTINES DE SEGURIDAD', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3712, E'Bien', E'Gasa', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3,4}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3713, E'Bien', E'Cotonetes para uso medicinal', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3714, E'Bien', E'SODA CAUSTICA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3715, E'Bien', E'Silicona', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3716, E'Bien', E'Protectores auditivos de algodon', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3717, E'Bien', E'Neumaticos para equipo soporte tierra, vehiculos y otros', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3718, E'Bien', E'Aros para equipo soporte tierra, vehiculos y otros', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3719, E'Bien', E'Portafolios de cuero', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3720, E'Bien', E'Productos de caucho y otros similares ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3721, E'Bien', E'Tubo corrugado', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3722, E'Bien', E'POLITUBO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3723, E'Bien', E'Abrasaderas plasticas', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance,caja_chica}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3724, E'Bien', E'Cal', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3725, E'Bien', E'YESO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3726, E'Bien', E'Cortinas de plastico', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3727, E'Bien', E'Cintas plasticas y/o laminas reflectivas', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3728, E'Bien', E'Niples plasticos o PVC', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3729, E'Bien', E'Codos plasticos o PVC', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3730, E'Bien', E'ACOPLE PLASTICO O PVC', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3731, E'Bien', E'LADRILLO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3732, E'Bien', E'ARENA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3733, E'Bien', E'GRAVA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3734, E'Bien', E'Vajilla de porcelana para servicios a bordo', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3735, E'Bien', E'TENSIOMETRO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{4,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3736, E'Bien', E'Termometro', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{4,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3737, E'Bien', E'Audifonos y otros similares', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,4,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3738, E'Bien', E'ARTICULOS DE PLASTOFORMO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3739, E'Bien', E'Jarras de vidrio para servicios a bordo', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3740, E'Bien', E'VAJILLA DE VIDRIO PARA SERVICIOS A BORDO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3741, E'Bien', E'PANTALLA ECRAN', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3742, E'Bien', E'REFRIGERADOR', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3743, E'Bien', E'Microondas', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3744, E'Bien', E'EXTINTORES', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 1, E'2014-12-08 18:30:35.874', E'2015-08-03 16:47:03.049', E'activo', NULL, NULL, 3745, E'Servicio', E'ACTUALIZACION DE PROGRAMAS DE COMPUTACION', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'todos', E'{3,2}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-12-16 12:04:24.876', NULL, E'activo', NULL, NULL, 3746, E'Bien', E'RENOVACION DE LICENCIAS\n DE OPERACION', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3747, E'Bien', E'PISTOLA SELLADORA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3748, E'Bien', E'Soplador', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3749, E'Bien', E'Pistola cautin para soldar', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3750, E'Bien', E'Remachadora portatil', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3751, E'Bien', E'Pistola engrasadora y aceitera', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3752, E'Bien', E'Cepillos y/o escobas', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3753, E'Bien', E'Paños de limpieza', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3754, E'Bien', E'BINDERS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-12-08 18:30:35.874', E'2017-07-28 09:30:33.361', E'activo', NULL, NULL, 3755, E'Bien', E'TINTA PARA TAMPO', E'gasto', E'2', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3756, E'Bien', E'TIJERA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (381, NULL, E'2014-11-17 15:55:05.020', NULL, E'activo', NULL, NULL, 3757, E'Bien', E'Esponjeros', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3758, E'Bien', E'PORTA ESCOTCH', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-12-08 18:30:35.874', E'2017-07-28 09:30:39.227', E'activo', NULL, NULL, 3759, E'Bien', E'TAMPO', E'gasto', E'2', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3760, E'Bien', E'Almohadilla', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (381, NULL, E'2014-11-17 11:39:13.425', NULL, E'activo', NULL, NULL, 3761, E'Bien', E'PIZARRA DE CORCHO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3762, E'Bien', E'Cinta etiquetadora', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3763, E'Bien', E'ENGRAMPADORA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3764, E'Bien', E'Bandeja porta papel', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3765, E'Bien', E'PORTA LAPICEROS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3766, E'Bien', E'PARLANTES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3767, E'Bien', E'LECTORES Y/O QUEMADORES DE DVD EXTERNOS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3768, E'Bien', E'MEMORIA RAM', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3769, E'Bien', E'TARJETA MADRE PARA PC', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3770, E'Bien', E'DISCOS DUROS INTERNOS O EXTERNOS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3771, E'Bien', E'ADAPTADORES DE PUERTOS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3772, E'Bien', E'TECLADO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3773, E'Bien', E'MOUSE', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3774, E'Bien', E'DUPLEXOR PARA RADIO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3775, E'Bien', E'TARJETA FXO-FXS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3776, E'Bien', E'Paraguas', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3777, E'Bien', E'Manguera para uso domestico ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3778, E'Bien', E'Cinta antideslizante', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance,caja_chica}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3779, E'Bien', E'Mandiles desechables', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3780, E'Bien', E'Manteles antideslizantes', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3781, E'Bien', E'Papel toalla y/o papel cocina', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3782, E'Bien', E'Servilletas', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance,caja_chica}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3783, E'Bien', E'Papel higienico', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance,caja_chica}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3784, E'Bien', E'ASERRIN', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3785, E'Bien', E'Brochas', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3786, E'Bien', E'Rodillos', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 25, E'2014-12-08 18:30:35.874', E'2018-03-21 14:51:57.409', E'activo', NULL, NULL, 3787, E'Bien', E'Disco de corte', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3788, E'Bien', E'Aparatos telefonicos', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3789, E'Bien', E'MOTOR PARA AERONAVE', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{adquisiciones,pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-12-08 18:30:35.874', E'2015-08-26 09:21:45.904', E'activo', NULL, NULL, 3790, E'Bien', E'SERVICIO EMISION REPORTE JET FUEL (AIR BP)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3791, E'Bien', E'BEBIDAS A BORDO VUELOS NACIONAL E INTERNACIONAL', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3792, E'Bien', E'Carpeta de cuero', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3793, E'Bien', E'Portalapiz de cuero', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3794, E'Bien', E'Porta memo en cuero', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3795, E'Bien', E'Mouse pad en cuero', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3796, E'Bien', E'Carpeton en cuero', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3797, E'Bien', E'Kit de limpieza', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3798, E'Bien', E'CINTA PARA IMPRESORA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3802, E'Bien', E'Bebedero agua caliente y frio', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3803, E'Bien', E'Marbete de identificacion con logotipo, iman y esmaltado', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo,adquisiciones,fondo_avance,caja_chica}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3804, E'Bien', E'OTROS EQUIPOS PARA MANTENIMIENTO', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3805, E'Bien', E'Malla poliester', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3806, E'Bien', E'Archivador Plastico de Palanca\n', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (381, NULL, E'2014-11-17 10:43:42.327', NULL, E'activo', NULL, NULL, 3807, E'Bien', E'LIBRO DE ACTAS EMPASTADO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-11-17 09:54:22.459', NULL, E'inactivo', NULL, NULL, 3808, E'Bien', E'FOLDER DE COLOR TAMAÑO OFICIO CARTULINA', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3809, E'Bien', E'Archivador de palanca lomo ancho carton', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3810, E'Bien', E'Sobre manila tamaño extra oficio', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3812, E'Bien', E'Sobre manila tamaño 1/2 oficio', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3813, E'Bien', E'Sobre manila tamaño oficio', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3814, E'Bien', E'Sobre manila tamaño carta', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3815, E'Bien', E'Archivador de palanca tamaño letra carton', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-01-12 10:59:48.558', NULL, E'activo', NULL, NULL, 3816, E'Bien', E'Archivador tipo acordeon', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3817, E'Bien', E'Archivador colgante gavetero', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-12-08 18:30:35.874', NULL, E'inactivo', NULL, NULL, 3818, E'Bien', E'FOLDERS AMARILLO TAMAÑO CARTA CARTULINA', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-12-08 18:30:35.874', NULL, E'inactivo', NULL, NULL, 3819, E'Bien', E'FOLDERS AMARILLO TAMAÑO OFICIO CARTULINA', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-12-08 18:30:35.874', NULL, E'inactivo', NULL, NULL, 3820, E'Bien', E'FOLDES DE COLOR TAMAÑO CARTA CARTULINA', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3821, E'Bien', E'CARTULINA TAMAÑO CARTA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3822, E'Bien', E'Papel cubo - Boa', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3823, E'Bien', E'CARTULINA TAMAÑO OFICIO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3824, E'Bien', E'HOJAS DE CARTULINA TAMAÑO CARTA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3825, E'Bien', E'Cajas de carton (embalaje)', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,fondo_avance,caja_chica}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3826, E'Bien', E'FOLDER DE CARTULINA TAMAÑO CARTA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3827, E'Bien', E'FOLDER DE CARTULINA TAMAÑO OFICIO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3828, E'Bien', E'Archivador de palanca 1/2 lomo carton', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3830, E'Bien', E'Archivador tipo acordeon carton', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3831, E'Bien', E'ARCHIVADOR COLGANTE TIPO GAVETERO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3833, E'Bien', E'CUADERNO ESPIRAL PEQUEÑO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3834, E'Bien', E'Carpetas plasticas de 1\"', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3835, E'Bien', E'CARPETA PLASTICA DE 1.5\"', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3836, E'Bien', E'Carpeta plastica de 2\"', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3837, E'Bien', E'Carpeta plastica de 2.5\"', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3838, E'Bien', E'Carpeta plastica de 3\"', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3839, E'Bien', E'Cuaderno empastado tamaño carta', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3840, E'Bien', E'CUADERNO 1/2 OFICIO EMPASTADO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3841, E'Bien', E'Cuaderno empastado tamaño oficio', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3842, E'Bien', E'CUADERNO ESPIRAL TAMAÑO OFICIO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3843, E'Bien', E'CUADERNO ESPIRAL TAMAÑO CARTA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3844, E'Bien', E'CUADERNO ESPIRAL 1/2 OFICIO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3845, E'Bien', E'Cuaderno amarillo rayado carta', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3846, E'Bien', E'CARPETA PLASTICA CON VISOR 2\"', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3847, E'Bien', E'Carpetas plasticas con visor 2.5\"', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3848, E'Bien', E'CARPETAS PLASTICAS CON VISOR 3\"', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3849, E'Bien', E'Archivador de palanca lomo ancho plastico', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3850, E'Bien', E'CUADERNO EMPASTADO TAMAÑO CARTA CARTON', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3851, E'Bien', E'Cuaderno empastado tamaño carta express carton', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3852, E'Bien', E'CUADERNO EMPASTADO TAMAÑO OFICIO CARTON', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3853, E'Bien', E'Cuaderno espiral tamaño pequeño', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3854, E'Bien', E'LIBRO DE ACTAS TAMAÑO OFICIO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3855, E'Bien', E'CARPETAS PLASTICAS VISOR 1\"', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3856, E'Bien', E'Carpetas plasticas visor 1.5\"', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance,caja_chica}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3858, E'Bien', E'Cuaderno amarillo carta sabana', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3859, E'Bien', E'Cuaderno empastado tamaño 1/2 oficio', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3863, E'Bien', E'Carpeta azul plastica 1/2 carta', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3864, E'Bien', E'Almohadilla para pizarra acrilica', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3865, E'Bien', E'Boligrafos color negro azul rojo', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3866, E'Bien', E'Corrector liquido', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3867, E'Bien', E'Borrador de miga', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3868, E'Bien', E'Binder clip de 2\"', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3869, E'Bien', E'Binder clip de 1\"', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,fondo_avance,caja_chica}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3870, E'Bien', E'Binder clip de 1/2\"', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3871, E'Bien', E'Binder clip de 1 1/4\"', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3872, E'Bien', E'Binder clip de 1 5/8\"', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3873, E'Bien', E'Clip pequeños', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3874, E'Bien', E'Clip tamaño mediano', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3875, E'Bien', E'Clip tamaño grande', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3876, E'Bien', E'Clips mariposa', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3877, E'Bien', E'CALCULADORA PEQUEÑA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3878, E'Bien', E'CALCULADORA MEDIANA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3879, E'Bien', E'CALCULADORA GRANDE WINCHADORA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3880, E'Bien', E'Chinches pequeños', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3881, E'Bien', E'Carpicola en bote', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3882, E'Bien', E'Chinches con cabeza de colores', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3883, E'Bien', E'Cinta de embalaje de 30 yardas', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3884, E'Bien', E'Cinta de embalaje de 100 yardas', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3885, E'Bien', E'Corrector en cinta', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3886, E'Bien', E'Cinta etiquetadora Dymo', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3887, E'Bien', E'Engrampadora tamaño mediano', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3888, E'Bien', E'Engrampadora tamaño grande', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3889, E'Bien', E'Estilete caña plastica', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3890, E'Bien', E'Fundas plasticas tamaño carta', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3891, E'Bien', E'Fundas plasticas tamaño oficio', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3892, E'Bien', E'Grapas 24/6 metalicas', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3893, E'Bien', E'GRAPAS 26/6 METALICAS PEQUEÑAS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3894, E'Bien', E'PAPEL PARA WINCHADORA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3895, E'Bien', E'Lapiz bicolor', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3896, E'Bien', E'Lapiz color negro', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3897, E'Bien', E'LAPIZ COLOR ROJO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3898, E'Bien', E'MARCADOR PARA CDS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3899, E'Bien', E'Marcador de agua', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


/* Data for the 'param.tconcepto_ingas' table  (Records 1001 - 1500) */

INSERT INTO param.tconcepto_ingas ("id_usuario_reg", "id_usuario_mod", "fecha_reg", "fecha_mod", "estado_reg", "id_usuario_ai", "usuario_ai", "id_concepto_ingas", "tipo", "desc_ingas", "movimiento", "sw_tes", "id_oec", "activo_fijo", "almacenable", "requiere_ot", "filtro_ot", "id_grupo_ots", "pago_automatico", "sw_autorizacion", "descripcion_larga", "id_entidad", "id_actividad_economica", "codigo", "id_unidad_medida", "nandina", "ruta_foto", "id_cat_concepto")
VALUES
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3900, E'Bien', E'Marcador permanente negro, rojo azul, verde', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3901, E'Bien', E'MICROPUNTA AZUL, NEGRO, ROJO, VERDE', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3902, E'Bien', E'NEPACO METALICO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3903, E'Bien', E'NEPACO PLASTICO DE COLORES', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3904, E'Bien', E'PEGAMENTO UHU EN BARRA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3905, E'Bien', E'PERFORADORA 3 HUECOS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3906, E'Bien', E'PERFORADORA MEDIANA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance,caja_chica}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-12-08 18:30:35.874', E'2017-09-27 16:46:25.623', E'activo', NULL, NULL, 3907, E'Bien', E'PERFORADORA PEQUEÑA', E'gasto', E'2', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3908, E'Bien', E'PESTAÑAS LARGAS DE COLORES', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3909, E'Bien', E'PERFORADORA DE 2 HUECOS GRANDE', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3911, E'Bien', E'Porta clips', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3912, E'Bien', E'Porta cubo', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'inactivo', NULL, NULL, 3913, E'Bien', E'PORTA LAPICERO', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3914, E'Bien', E'BANDEJA PORTA DOCUMENTOS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3915, E'Bien', E'POS IT MEDIANOS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 39, E'2014-12-08 18:30:35.874', E'2018-05-22 17:31:58.574', E'activo', NULL, NULL, 3916, E'Bien', E'Pos it pequeños', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3917, E'Bien', E'PUSH PINS DE COLORES', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3919, E'Bien', E'REGLA 30 CM PLASTICA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3920, E'Bien', E'REGLA 30 CM METALICA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance,caja_chica}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3921, E'Bien', E'SCOTCH 3/4 PEQUEÑO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'todos', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3922, E'Bien', E'Saca grapas metalico', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3923, E'Bien', E'Separadores de colores de 10 divisiones', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3924, E'Bien', E'TABLEROS DE CAMPO PISA PAPEL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3925, E'Bien', E'TAJADOR DE MESA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3926, E'Bien', E'TAJADOR PEQUEÑO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3927, E'Bien', E'TIJERAS MEDIANAS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3928, E'Bien', E'TINTA PARA TAMPO NEGRO, ROJO, AZUL, VERDE', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance,caja_chica,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3929, E'Bien', E'TAMPO NEGRO, AZUL, ROJO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3930, E'Bien', E'Resaltadores de colores', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3931, E'Bien', E'PORTA SCOCH PEQUEÑO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3932, E'Bien', E'Cds blancos', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3933, E'Bien', E'DVDS BLANCOS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{caja_chica,adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3934, E'Bien', E'CARTUCHO NEGRO 21 - A', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3935, E'Bien', E'Cartucho a colores 22 - A', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3936, E'Bien', E'CARTUCHO NEGRO 74 - A', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3937, E'Bien', E'Cartucho a colores 75 - A', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3938, E'Bien', E'TONER 05 - A', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3939, E'Bien', E'TONER 12 - A', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3940, E'Bien', E'TONER 36 - A', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance,caja_chica}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3941, E'Bien', E'TONER 51 - A', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3942, E'Bien', E'TONER 53 - A', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3943, E'Bien', E'TONER 70 - A NEGRO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance,caja_chica}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3945, E'Bien', E'Toner 71 - A color', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3946, E'Bien', E'TONER GRP CANON NEGRO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (381, NULL, E'2014-11-17 12:05:25.189', NULL, E'inactivo', NULL, NULL, 3947, E'Bien', E'PORTA SCOTCH MEDIANO', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3948, E'Bien', E'TONER 35 - A', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3949, E'Bien', E'Folders plasticos tamaño carta', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3950, E'Bien', E'Folders plasticos tamaño oficio', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3951, E'Bien', E'Sobres para cds', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3952, E'Bien', E'ENGRAMPADORA SEMI INDUSTRIAL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3953, E'Bien', E'PERFORADORA SEMI INDUSTRIAL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3954, E'Bien', E'Grapas 23/10', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3955, E'Bien', E'Grapas 23/08', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3956, E'Bien', E'Señaladores de colores', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3957, E'Bien', E'Grapas 23/13', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3958, E'Bien', E'TAPAS PARA CDS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3959, E'Bien', E'Despachador en cinta', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3960, E'Bien', E'Separadores plasticos de colores de 5 divisiones', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3961, E'Bien', E'TONER 55 - A', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3962, E'Bien', E'GRAPAS 23/17', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3963, E'Bien', E'TONER FS - 3900', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3964, E'Bien', E'TONER FS - 4000', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3965, E'Bien', E'Boligrafos con base y cadena', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3966, E'Bien', E'Toner 72 - A color', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3967, E'Bien', E'Toner 73 - A color', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3968, E'Bien', E'TONER LEXMARK GRANDE X651', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3969, E'Bien', E'TONER LEXMARK X264 PEQUEÑO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3970, E'Bien', E'PERFORADORA SEMIINDUSTRIAL GRANDE', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3971, E'Bien', E'Engrampadora semi industrial grande', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3972, E'Bien', E'GUILLOTINA SEMI INDUSTRIAL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3973, E'Bien', E'CINTA DE IMPRESORA EPSON - FX - 890', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3974, E'Bien', E'Toner a color impresora lexmark', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3975, E'Bien', E'Cinta epson - 8750', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3976, E'Bien', E'Cinta epson - tmu 220', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3977, E'Bien', E'Cinta epson - tmu - 950 ', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-12-08 18:30:35.874', E'2015-06-24 14:31:22.270', E'activo', NULL, NULL, 3978, E'Bien', E'TONER LEXMARK - MK - 310', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3979, E'Bien', E'DISKETTES 1 1/4', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3980, E'Bien', E'Archivador plastico de palanca 3 huecos 3\"', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3981, E'Bien', E'Archivador plastico de palanca 3 huecos 2\"', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'inactivo', NULL, NULL, 3984, E'Bien', E'PAPEL BOND TAMAÑO OFICIO 75 GR', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'inactivo', NULL, NULL, 3985, E'Bien', E'PAPEL BOND TAMAÑO CARTA 75 GR', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3986, E'Bien', E'Papel de fax', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3987, E'Bien', E'Papel continuo blanco', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3989, E'Bien', E'Papel Graf', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3991, E'Bien', E'Papel bond tamaño oficio a colores', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3993, E'Bien', E'PAPEL AMARILLO RAYADO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{pago_directo,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3994, E'Bien', E'Polera dama talla XS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3995, E'Bien', E'Polera dama talla S', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3996, E'Bien', E'Polera dama talla M', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3997, E'Bien', E'POLERA DAMA TALLA L', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3998, E'Bien', E'Polera dama talla XL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 3999, E'Bien', E'Polera dama talla 2XL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4000, E'Bien', E'Chaleco reflectivo para lluvia', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 25, E'2014-12-08 18:30:35.874', E'2017-10-04 17:23:51.407', E'activo', NULL, NULL, 4001, E'Bien', E'MANDIL DAMA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4002, E'Bien', E'Bone para dama', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-12-08 18:30:35.874', E'2017-06-29 17:43:32.637', E'activo', NULL, NULL, 4003, E'Bien', E'FALDA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 37, E'2014-12-08 18:30:35.874', E'2017-07-04 19:09:16.792', E'activo', NULL, NULL, 4004, E'Bien', E'ABRIGO MUJER', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 20, E'2014-12-08 18:30:35.874', E'2017-06-29 17:43:04.986', E'activo', NULL, NULL, 4005, E'Bien', E'VESTIDO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 37, E'2014-12-08 18:30:35.874', E'2017-07-04 15:56:41.246', E'activo', NULL, NULL, 4006, E'Bien', E'PANTALON MUJER', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 37, E'2014-12-08 18:30:35.874', E'2017-07-04 19:05:39.974', E'activo', NULL, NULL, 4007, E'Bien', E'SACO MUJER', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 37, E'2014-12-08 18:30:35.874', E'2017-07-04 19:05:13.365', E'activo', NULL, NULL, 4008, E'Bien', E'SACO VARON', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4009, E'Bien', E'PANTALON VARON', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 37, E'2014-12-08 18:30:35.874', E'2017-07-04 19:06:13.721', E'activo', NULL, NULL, 4010, E'Bien', E'ABRIGO VARON', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 22, E'2014-12-08 18:30:35.874', E'2018-06-22 12:03:13.857', E'activo', NULL, NULL, 4011, E'Bien', E'Presillas', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4012, E'Bien', E'Polera dama talla 3XL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4013, E'Bien', E'Chaleco reflectivo de red naranja', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4014, E'Bien', E'Chaleco reflectivo enmallado naranja', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4015, E'Bien', E'LENTES DE SEGURIDAD', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-12-08 18:30:35.874', E'2018-07-04 17:59:32.969', E'activo', NULL, NULL, 4016, E'Bien', E'Protectores auditivos', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4017, E'Bien', E'Impermeables amarillos, azules distintas tallas', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 37, E'2014-12-08 18:30:35.874', E'2017-06-26 17:35:10.909', E'activo', NULL, NULL, 4018, E'Bien', E'CHOMPA AZUL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'todos', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 37, E'2014-12-08 18:30:35.874', E'2017-06-26 16:10:11.752', E'activo', NULL, NULL, 4019, E'Bien', E'CHOMPA AZUL DAMA', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4020, E'Bien', E'TAPONES AUDITIVOS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4022, E'Bien', E'Corbatas', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4023, E'Bien', E'Pañoletas azules logo BOA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 37, E'2014-12-08 18:30:35.874', E'2017-06-27 16:41:20.520', E'activo', NULL, NULL, 4024, E'Bien', E'Faja lumbar', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4025, E'Bien', E'Gorras de seguridad anti choque', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4026, E'Bien', E'Paraguas con logo BoA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4027, E'Bien', E'Guantes de hilo', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 37, E'2014-12-08 18:30:35.874', E'2017-06-27 16:43:10.370', E'activo', NULL, NULL, 4028, E'Bien', E'Guantes de nitrilo', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4029, E'Bien', E'Guantes de neopreno', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4030, E'Bien', E'Guantes de cuero', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-12-08 18:30:35.874', E'2018-07-10 17:09:17.018', E'activo', NULL, NULL, 4031, E'Bien', E'Poleras de tipo Polo con logo BoA ', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4032, E'Bien', E'Parkas de tela azul', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4033, E'Bien', E'Parkas termicas azules', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4035, E'Bien', E'Guantes corrugados negros', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-12-08 18:30:35.874', E'2018-11-13 15:04:15.166', E'activo', NULL, NULL, 4036, E'Bien', E'UNIFORME COMPLETO PARA DAMAS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, 20, E'2014-12-08 18:30:35.874', E'2018-11-13 15:04:26.021', E'activo', NULL, NULL, 4037, E'Bien', E'UNIFORME COMPLETO PARA  VARONES\n', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4038, E'Bien', E'Lentes de seguridad claros', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-12-08 18:30:35.874', E'2017-07-20 16:36:48.076', E'activo', NULL, NULL, 4039, E'Bien', E'PANTALON DE TRABAJO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4040, E'Bien', E'CAMISA DE TRABAJO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4041, E'Bien', E'CAMISA DE TRABAJO TALLA M', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4042, E'Bien', E'CAMISA DE TRABAJO TALLA L', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4043, E'Bien', E'CAMISA DE TRABAJO TALLA XL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4044, E'Bien', E'CAMISA DE TRABAJO TALLA XXL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4045, E'Bien', E'CAMISA DE TRABAJO TALLA XXXL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4046, E'Bien', E'Impermeable talla S', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4047, E'Bien', E'Impermeable talla M', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4048, E'Bien', E'Impermeable talla L', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4049, E'Bien', E'Impermeable talla XL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4050, E'Bien', E'Impermeable talla XXL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4051, E'Bien', E'Impermeable talla XXXL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4052, E'Bien', E'Chompa varón talla S', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4053, E'Bien', E'Chompa varón talla M', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4054, E'Bien', E'Chompa varón talla L', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 1, E'2014-12-08 18:30:35.874', E'2015-08-05 13:58:39.818', E'activo', NULL, NULL, 4055, E'Bien', E'Chompa varón talla XL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4056, E'Bien', E'Chompa varón talla 2XL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4057, E'Bien', E'Chompa varón talla 3XL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4058, E'Bien', E'Chompa dama talla S', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4059, E'Bien', E'Chompa dama talla M', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4060, E'Bien', E'Chompa dama talla L', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4061, E'Bien', E'Chompa dama talla XL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4062, E'Bien', E'Chompa dama talla 2XL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4063, E'Bien', E'Chompa dama talla 3XL ', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-12-08 18:30:35.874', E'2017-07-20 17:36:01.178', E'activo', NULL, NULL, 4064, E'Bien', E'Pantalon de trabajo talla 38', E'gasto', E'2', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, 22, E'2014-12-08 18:30:35.874', E'2017-07-20 17:36:15.958', E'activo', NULL, NULL, 4065, E'Bien', E'Pantalon de trabajo talla 40', E'gasto', E'2', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, 22, E'2014-12-08 18:30:35.874', E'2017-07-20 17:36:23.563', E'activo', NULL, NULL, 4066, E'Bien', E'Pantalon de trabajo talla 42', E'gasto', E'2', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, 22, E'2014-12-08 18:30:35.874', E'2017-07-20 17:36:29.309', E'activo', NULL, NULL, 4067, E'Bien', E'Pantalon de trabajo talla 44', E'gasto', E'2', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, 22, E'2014-12-08 18:30:35.874', E'2017-07-20 17:36:35.100', E'activo', NULL, NULL, 4068, E'Bien', E'Pantalon de trabajo talla 46', E'gasto', E'2', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, 22, E'2014-12-08 18:30:35.874', E'2017-07-20 17:36:40.345', E'activo', NULL, NULL, 4069, E'Bien', E'Pantalon de trabajo talla 48', E'gasto', E'2', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, 22, E'2014-12-08 18:30:35.874', E'2017-07-20 17:36:46.266', E'activo', NULL, NULL, 4070, E'Bien', E'Pantalon de trabajo talla 50', E'gasto', E'2', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, 22, E'2014-12-08 18:30:35.874', E'2017-07-20 17:36:52.993', E'activo', NULL, NULL, 4071, E'Bien', E'Pantalon de trabajo talla 52', E'gasto', E'2', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, 22, E'2014-12-08 18:30:35.874', E'2017-07-20 17:36:59.857', E'activo', NULL, NULL, 4072, E'Bien', E'Pantalon de trabajo talla 54', E'gasto', E'2', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, 22, E'2014-12-08 18:30:35.874', E'2017-07-20 17:37:06.671', E'activo', NULL, NULL, 4073, E'Bien', E'Pantalon de trabajo talla 56', E'gasto', E'2', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, 22, E'2014-12-08 18:30:35.874', E'2017-07-20 17:37:12.987', E'activo', NULL, NULL, 4074, E'Bien', E'Pantalon de trabajo talla 58', E'gasto', E'2', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4075, E'Bien', E'POLERA VARON TALLA S', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4076, E'Bien', E'Polera varon talla M', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4077, E'Bien', E'Polera varon talla L', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4078, E'Bien', E'Polera varon talla XL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4079, E'Bien', E'Polera varon talla 2XL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4080, E'Bien', E'Polera varon talla 3XL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4081, E'Bien', E'CAMISA DE TRABAJO TALLA S', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4082, E'Bien', E'BLUSA BLANCA DAMA TALLA XL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4083, E'Bien', E'BLUSA BLANCA DAMA TALLA XXL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4084, E'Bien', E'BLUSA BLANCA DAMA TALLA 3X', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-12-08 18:30:35.874', E'2017-07-05 16:43:26.641', E'activo', NULL, NULL, 4085, E'Bien', E'CHALECO ANARANJADO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4086, E'Bien', E'Pañoletas rojas, amarilla', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4087, E'Bien', E'Mandiles para damas', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4088, E'Bien', E'Chamarras impermeables', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4089, E'Bien', E'Chalecos naranjados reflectivo de tela', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4090, E'Bien', E'CAMISA VARON BLANCA TALLA 14 1/2', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4091, E'Bien', E'CAMISA VARON BLANCA TALLA 15 1/2', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4092, E'Bien', E'CAMISA VARON BLANCA TALLA 16', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4093, E'Bien', E'CAMISA VARON BLANCA TALLA 16 1/2', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4094, E'Bien', E'CAMISA VARON BLANCA TALLA 17', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4095, E'Bien', E'CAMISA VARON BLANCA TALLA 17 1/2', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4096, E'Bien', E'CAMISA VARON BLANCA TALLA 18', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4097, E'Bien', E'CAMISA VARON BLANCA TALLA 18 1/2', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4098, E'Bien', E'BLUSA BLANCA DAMA XS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (381, NULL, E'2014-11-17 15:25:00.583', NULL, E'inactivo', NULL, NULL, 4099, E'Bien', E'CAMISA VARON BLANCA TALLA S', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4100, E'Bien', E'BLUSA BLANCA DAMA S', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4101, E'Bien', E'BLUSA BLANCA DAMA M', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4102, E'Bien', E'BLUSA BLANCA DAMA L', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4103, E'Bien', E'BOTA DE AGUA TALLA 38', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4104, E'Bien', E'BOTA DE AGUA TALLA 39', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4105, E'Bien', E'BOTA DE AGUA TALLA 40', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4106, E'Bien', E'BOTA DE AGUA TALLA 41', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4107, E'Bien', E'BOTA DE AGUA TALLA 42', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4108, E'Bien', E'BOTA DE AGUA TALLA 43', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4109, E'Bien', E'BOTA DE AGUA PUNTA DE ACERO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4110, E'Bien', E'Botines de seguridad talla 40', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4111, E'Bien', E'Botines de seguridad talla 45', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4112, E'Bien', E'Botines de seguridad talla 43', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4113, E'Bien', E'Botines de seguridad talla 41', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4114, E'Bien', E'Botines de seguridad talla 39', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4115, E'Bien', E'Botines de seguridad talla 38', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4116, E'Bien', E'BOTAS DE AGUA COLOR NEGRO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4118, E'Bien', E'Guantes de nylon', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4119, E'Bien', E'Ligas para documentos', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4120, E'Bien', E'MASKING DE 1\" BLANCO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4121, E'Bien', E'MASKING DE 1/4\" BLANCO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 22, E'2014-12-08 18:30:35.874', E'2018-01-30 15:37:04.658', E'activo', NULL, NULL, 4125, E'Bien', E'SANITIZADOR DE MANOS (GEL)', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', E'{}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4126, E'Bien', E'Masking 1/4\"', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4127, E'Bien', E'Masking 1\"', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4128, E'Bien', E'Masking 2\"', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4129, E'Bien', E'Masking 3\"', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance,caja_chica}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4130, E'Bien', E'Archivador de carton tipo acordeon t/carta', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4131, E'Bien', E'Archivador de carton tipo acordeon t/A4', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4132, E'Bien', E'Archivador de carton tipo acordeon t/oficio', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4133, E'Bien', E'CARPETA COLGANTE DE CARTULINA CON VISOR 2\"', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4134, E'Bien', E'CARPETA COLGANTE DE CARTULINA CON VISOR 2.5\"', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4135, E'Bien', E'CARPETA COLGANTE DE CARTULINA CON VISOR 3\"', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4136, E'Bien', E'ARCHIVADOR PLASTICO TIPO ACORDEON T/A4', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4137, E'Bien', E'ARCHIVADOR PLASTICO TIPO ACORDEON T/CARTA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4138, E'Bien', E'ARCHIVADOR PLASTICO TIPO ACORDEON T/OFICIO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (83, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4139, E'Bien', E'Tacos Comail', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4140, E'Servicio', E'PAPEL MEMBRETADO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4141, E'Servicio', E'ALQUILER DE CONTENEDOR Y OTROS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 20, E'2014-12-08 18:30:35.874', E'2018-11-13 15:02:07.126', E'activo', NULL, NULL, 4142, E'Servicio', E'INDEMNIZACION EQUIPAJE ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,pago_directo,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4143, E'Bien', E'Cargador de bateria ', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4144, E'Servicio', E'Monitoreo motor de aeronave', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{4,1}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4145, E'Bien', E'Contenedor metalico', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 22, E'2014-12-08 18:30:35.874', E'2016-04-04 09:39:10.986', E'activo', NULL, NULL, 4146, E'Bien', E'Otros productos de minerales no metalicos y plasticos\n', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance,caja_chica}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:30:35.874', NULL, E'activo', NULL, NULL, 4149, E'Bien', E'Gorra para piloto', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:36:26.357', NULL, E'activo', NULL, NULL, 4614, E'Bien', E'CINTA PARA PRESILLA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:36:26.357', NULL, E'activo', NULL, NULL, 4615, E'Bien', E'Boton', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 4627, E'Servicio', E'INCREMENTO DE CUENTAS POR PAGAR A CP POR SUELDOS Y JORNALES', E'recurso', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'inactivo', NULL, NULL, 4634, E'Servicio', E'SEGURO COVERTURA DE OFICINA', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (175, 22, E'2014-12-08 18:41:47.969', E'2018-05-22 15:19:22.817', E'activo', NULL, NULL, 4641, E'Servicio', E'Consultoria por producto (estudios,\ninvestigaciones y otras actividades\ntecnico profesionales)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 4645, E'Servicio', E'Servicio de fotocopias, fotograficos y otros realizados por terceros', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance,pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 4654, E'Bien', NULL, E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, NULL, E'2014-12-08 18:41:47.969', NULL, E'activo', NULL, NULL, 4656, E'Bien', E'Lubricantes y derivados para equipos soporte tierra y otros', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{caja_chica,fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (37, NULL, E'2014-12-12 18:23:20.984', NULL, E'activo', NULL, NULL, 4707, E'Bien', E'PRODUCTOS QUIMICOS Y FARMACÉUTICOS PARA AERONAVES', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{4}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-12-18 11:44:12.680', NULL, E'activo', NULL, NULL, 4709, E'Bien', E'Repuestos para equipo soporte tierra', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{caja_chica,adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2014-12-18 11:45:12.201', NULL, E'activo', NULL, NULL, 4710, E'Bien', E'Repuestos para vehiculos', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance,adquisiciones,caja_chica,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (83, NULL, E'2015-01-07 18:26:27.129', NULL, E'activo', NULL, NULL, 4711, E'Servicio', E'PLANILLA DE SUELDOS', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-01-12 10:28:50.042', NULL, E'inactivo', NULL, NULL, 4712, E'Bien', E'ARCHIVADOR', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-01-12 11:04:24.418', NULL, E'activo', NULL, NULL, 4714, E'Bien', E'Catrera', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-01-12 17:17:14.317', NULL, E'activo', NULL, NULL, 4715, E'Bien', E'Bowl (envase plastico)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-01-12 17:18:22.920', NULL, E'activo', NULL, NULL, 4716, E'Bien', E'Marco metalico', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-01-13 18:03:55.836', NULL, E'activo', NULL, NULL, 4717, E'Servicio', E'IMPRESION DE TARJETA DE SEGURIDAD PARA AERONAVE', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-01-14 11:18:43.196', NULL, E'activo', NULL, NULL, 4718, E'Bien', E'Generador de energia', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-01-14 18:38:01.109', NULL, E'activo', NULL, NULL, 4719, E'Bien', E'Sello', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo,adquisiciones,caja_chica,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-01-15 11:46:07.177', NULL, E'activo', NULL, NULL, 4720, E'Servicio', E'IMPRESION DE FORMULARIOS PARA AERONAVE', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (1, 22, E'2015-01-15 15:22:50.597', E'2018-06-05 09:29:26.695', E'activo', NULL, NULL, 4721, E'Servicio', E'MANTENIMIENTO DE SOFTWARE', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2015-01-19 15:05:50.876', NULL, E'activo', NULL, NULL, 4723, E'Bien', E'TROLLEY FULL STANDARD', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-01-19 15:06:19.962', NULL, E'activo', NULL, NULL, 4724, E'Bien', E'TROLLEY HALF STANDARD', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-01-26 11:26:56.860', NULL, E'activo', NULL, NULL, 4725, E'Servicio', E'SERVICIOS DE ELECTRICIDAD', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-02-04 18:34:04.462', NULL, E'activo', NULL, NULL, 4726, E'Bien', E'EQUIPO DE COMUNICACION', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-02-12 19:44:01.278', NULL, E'activo', NULL, NULL, 4727, E'Bien', E'Basurero plastico', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-02-19 18:05:13.895', NULL, E'activo', NULL, NULL, 4728, E'Bien', E'CAMISA VARON BLANCA TALLA 14', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-02-19 18:13:17.212', NULL, E'activo', NULL, NULL, 4729, E'Bien', E'BLUSA BLANCA DAMA TALLA XXXL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-02-19 18:27:03.672', NULL, E'activo', NULL, NULL, 4730, E'Bien', E'CAMISA VARON BLANCA TALLA 15', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-02-20 18:44:40.413', NULL, E'activo', NULL, NULL, 4731, E'Bien', E'BASE DE DATOS DE SOFTWARE (TAKEOFF/LANDING, CLIMOUT AND ENROUTE PERFORMANCE SOFTWARE DATABASES).', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{1,3,4}', E'no', E'{pago_directo,adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-03-04 09:41:22.178', NULL, E'activo', NULL, NULL, 4732, E'Bien', E'Lijas', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2015-03-04 17:02:20.655', NULL, E'activo', NULL, NULL, 4733, E'Servicio', E'GASTOS EMERGENTES DE LA DISTRIBUCIÓN DE UTILIDADES GENERADAS EN EL PERIODO ANTERIOR.', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2015-03-04 17:12:36.336', NULL, E'activo', NULL, NULL, 4734, E'Servicio', E'TRANSFERENCIAS CORRIENTES AL ÓRGANO EJECUTIVO DEL ESTADO PLURINACIONAL POR SUBSIDIOS O SUBVENCIONES.', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-03-10 12:15:13.461', NULL, E'inactivo', NULL, NULL, 4737, E'Servicio', E'RENOVACION PERMISO DE OPERACION', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-03-11 11:12:21.778', NULL, E'activo', NULL, NULL, 4738, E'Servicio', E'Impresion de sobre porta boletos', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-03-11 12:38:12.034', NULL, E'activo', NULL, NULL, 4739, E'Bien', E'Aceite para equipo soporte tierra y vehiculo en general', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo,caja_chica,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 20, E'2015-03-11 12:39:01.068', E'2018-11-12 17:01:08.404', E'activo', NULL, NULL, 4740, E'Bien', E'PILA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2015-03-25 11:47:25.038', NULL, E'activo', NULL, NULL, 4741, E'Servicio', E'Alquiler de simulador estatico', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-03-31 09:54:16.556', NULL, E'activo', NULL, NULL, 4742, E'Servicio', E'Monitoreo de aeronave RVSM', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-03-31 19:33:21.547', NULL, E'activo', NULL, NULL, 4743, E'Bien', E'Tinta para sello troyat', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-04-02 14:08:46.009', NULL, E'activo', NULL, NULL, 4744, E'Bien', E'Caja monedera/billete metalico', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-04-09 12:19:48.518', NULL, E'activo', NULL, NULL, 4745, E'Servicio', E'Reparacion de motor y/o APU', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1,4}', E'no', E'{pago_directo,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-04-09 20:07:09.990', NULL, E'activo', NULL, NULL, 4746, E'Bien', E'MANGUERA PARA VEHICULO, EQUIPO SOPORTE TIERRA, MOTOCICLETA Y OTROS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-04-21 11:51:58.898', NULL, E'activo', NULL, NULL, 4747, E'Bien', E'Cinta para dama', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-04-21 19:36:55.721', NULL, E'activo', NULL, NULL, 4748, E'Bien', E'Camisa varon blanca talla 19', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-04-21 19:37:33.188', NULL, E'activo', NULL, NULL, 4749, E'Bien', E'Camisa varon blanca talla 20', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-04-27 11:18:20.774', NULL, E'activo', NULL, NULL, 4750, E'Servicio', E'Boroscopia motor de aeronave', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{adquisiciones,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 20, E'2015-04-28 10:42:29.593', E'2018-09-18 10:58:06.492', E'activo', NULL, NULL, 4751, E'Bien', E'PAPEL TERMICO\n', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2015-04-28 19:30:34.484', NULL, E'activo', NULL, NULL, 4752, E'Bien', E'Papel madera pliego', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-04-29 14:50:53.455', NULL, E'activo', NULL, NULL, 4753, E'Bien', E'Infraestructura portatil para segregacion carga internacional', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-04-30 16:14:32.295', NULL, E'activo', NULL, NULL, 4754, E'Bien', E'Lentes de seguridad oscuros', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-04-30 16:19:07.690', NULL, E'activo', NULL, NULL, 4755, E'Bien', E'Botines de seguridad talla 44', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-04-30 16:19:41.294', NULL, E'activo', NULL, NULL, 4756, E'Bien', E'Botines de seguridad talla 35', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-04-30 16:19:57.989', NULL, E'activo', NULL, NULL, 4757, E'Bien', E'Botines de seguridad talla 36', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-04-30 16:20:22.534', NULL, E'activo', NULL, NULL, 4758, E'Bien', E'Botines de seguridad talla 37', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-04-30 16:22:17.959', NULL, E'activo', NULL, NULL, 4759, E'Bien', E'Botines de seguridad talla 42', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-04-30 16:27:51.900', NULL, E'activo', NULL, NULL, 4760, E'Bien', E'Bota de agua punta de acero talla 37', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-04-30 16:28:42.765', NULL, E'activo', NULL, NULL, 4761, E'Bien', E'Bota de agua punta de acero talla 36', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-04-30 16:29:44.617', NULL, E'activo', NULL, NULL, 4762, E'Bien', E'Bota de agua punta de acero talla 35', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-04-30 16:32:17.345', NULL, E'activo', NULL, NULL, 4763, E'Bien', E'Bota de agua punta de acero talla 38', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-04-30 16:32:33.683', NULL, E'activo', NULL, NULL, 4764, E'Bien', E'Bota de agua punta de acero talla 39', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-04-30 16:32:49.816', NULL, E'activo', NULL, NULL, 4765, E'Bien', E'Bota de agua punta de acero talla 40', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-04-30 16:33:06.511', NULL, E'activo', NULL, NULL, 4766, E'Bien', E'Bota de agua punta de acero talla 41', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-04-30 16:33:19.380', NULL, E'activo', NULL, NULL, 4767, E'Bien', E'Bota de agua punta de acero talla 42', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-04-30 16:33:32.085', NULL, E'activo', NULL, NULL, 4768, E'Bien', E'Bota de agua punta de acero talla 43', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-04-30 16:33:43.457', NULL, E'activo', NULL, NULL, 4769, E'Bien', E'Bota de agua punta de acero talla 44', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-04-30 16:33:55.702', NULL, E'activo', NULL, NULL, 4770, E'Bien', E'Bota de agua punta de acero talla 45', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-04-30 16:37:11.474', NULL, E'activo', NULL, NULL, 4771, E'Bien', E'OVEROL TERMICO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-05-07 10:32:12.564', NULL, E'inactivo', NULL, NULL, 4772, E'Servicio', E'Hospedaje por Viajes al Interior del Pais Personal Externo a BoA ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-05-07 10:32:42.504', NULL, E'inactivo', NULL, NULL, 4773, E'Servicio', E'Hospedaje por Viajes al Exterior del Pais Personal Externo a BoA ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (37, 20, E'2015-05-07 11:07:20.519', E'2018-11-23 09:22:15.454', E'activo', NULL, NULL, 4774, E'Servicio', E'HOSPEDAJE PERSONAL EXTERNO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo,pago_unico,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2015-05-08 10:59:24.903', NULL, E'activo', NULL, NULL, 4775, E'Bien', E'BOTINES DE SEGURIDAD TALLA 46', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-05-08 11:03:55.775', NULL, E'activo', NULL, NULL, 4776, E'Bien', E'BOTINES DE SEGURIDAD TALLA 47', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-05-11 10:53:57.443', NULL, E'inactivo', NULL, NULL, 4777, E'Bien', E'material', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-05-11 11:00:20.270', NULL, E'inactivo', NULL, NULL, 4778, E'Bien', E'MATERIALES (PRUEBA)', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (37, 18, E'2015-05-12 10:05:45.647', E'2016-03-28 09:31:58.279', E'activo', NULL, NULL, 4779, E'Servicio', E'Hospedaje regionales nacionales', E'gasto', E'2', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-05-12 10:20:17.033', NULL, E'inactivo', NULL, NULL, 4780, E'Servicio', E'Mantenimiento y reparacion de extintor', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2015-05-13 12:13:30.722', NULL, E'inactivo', NULL, NULL, 4781, E'Servicio', E'AGUA REGIONALES ', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2015-05-13 12:22:41.201', NULL, E'activo', NULL, NULL, 4782, E'Servicio', E'AGUA REGIONALES', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', E'{}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2015-05-13 12:24:58.479', NULL, E'inactivo', NULL, NULL, 4783, E'Servicio', E'ENERGIA ELECTRICA', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2015-05-13 12:26:02.683', NULL, E'activo', NULL, NULL, 4784, E'Servicio', E'ENERGIA ELECTRICA REGIONALES', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', E'{}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, 22, E'2015-05-13 12:26:34.704', E'2017-02-01 18:32:12.984', E'activo', NULL, NULL, 4785, E'Servicio', E'EXPENSAS COMUNES REGIONALES', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', E'{}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2015-05-13 14:51:11.029', NULL, E'activo', NULL, NULL, 4786, E'Bien', E'PAPEL ARAÑA', E'gasto', E'2', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2015-05-13 15:54:38.373', NULL, E'activo', NULL, NULL, 4787, E'Servicio', E'ALQUILER AMBIENTES PARA CARGA', E'gasto', E'2', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{pago_directo,adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2015-05-13 17:23:56.137', NULL, E'activo', NULL, NULL, 4788, E'Bien', E'BATERIA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3,4}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 20, E'2015-05-14 16:05:47.246', E'2018-11-13 15:18:17.015', E'activo', NULL, NULL, 4789, E'Bien', E'MATERIAL DE ESCRITORIO EN GENERAL\n', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance,caja_chica}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, 1, E'2015-05-14 17:07:02.787', E'2015-11-05 13:18:42.881', E'activo', NULL, NULL, 4790, E'Bien', E'JAULA METALICA', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'todos', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2015-05-15 09:06:10.986', NULL, E'inactivo', NULL, NULL, 4791, E'Servicio', E'TASA DE REGULACIÓN ATT', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (83, NULL, E'2015-05-15 11:03:07.028', NULL, E'inactivo', NULL, NULL, 4792, E'Bien', E'sillasprueba', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2015-05-28 16:05:08.684', NULL, E'activo', NULL, NULL, 4793, E'Bien', E'VASOS DESECHABLES', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo,fondo_avance,caja_chica}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (37, NULL, E'2015-06-02 17:56:40.036', NULL, E'activo', NULL, NULL, 4794, E'Bien', E'Maquina hidrolavadora', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-06-09 10:25:29.333', NULL, E'activo', NULL, NULL, 4795, E'Bien', E'Separadores de fila', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 22, E'2015-06-09 16:17:31.806', E'2017-07-19 14:52:50.421', E'activo', NULL, NULL, 4796, E'Bien', E'PANTALON DE TRABAJO', E'gasto', E'2', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (37, NULL, E'2015-06-16 10:29:45.920', NULL, E'activo', NULL, NULL, 4797, E'Servicio', E'Alquiler espacio para Letrero', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance,pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, 20, E'2015-06-19 17:09:45.290', E'2017-10-23 15:31:48.173', E'activo', NULL, NULL, 4798, E'Bien', E'CASETA DE SEGURIDAD ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2015-06-24 14:23:32.453', NULL, E'inactivo', NULL, NULL, 4799, E'Bien', E'TONER LEXMARK - X656', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-06-24 14:27:08.210', NULL, E'activo', NULL, NULL, 4800, E'Bien', E'TONER LEXMARK - X656', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-06-24 14:34:48.064', NULL, E'activo', NULL, NULL, 4801, E'Bien', E'TONER HP LASER JET LJ2055 (05X)', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-06-24 14:37:58.826', NULL, E'activo', NULL, NULL, 4802, E'Bien', E'TONER HP LASER JET LJ3015 (55X)', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-06-24 14:41:33.897', NULL, E'activo', NULL, NULL, 4803, E'Bien', E'TONER LEXMARK 10K MX611 ', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-06-24 14:44:36.190', NULL, E'activo', NULL, NULL, 4804, E'Bien', E'TONER LEXMARK 5K MS415', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-07-01 08:24:32.333', NULL, E'inactivo', NULL, NULL, 4805, E'Bien', E'ESCRITORIOSSSSS\n', E'gasto', E'1', NULL, E'si', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (1, 1, E'2015-07-01 09:04:42.773', E'2015-07-01 09:05:03.899', E'inactivo', NULL, NULL, 4806, E'Servicio', E'Impuestos retenidos', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (1, 1, E'2015-07-01 09:05:26.658', E'2015-07-01 09:05:47.921', E'inactivo', NULL, NULL, 4807, E'Servicio', E'Depositos en Garantia', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-07-01 10:50:17.134', NULL, E'activo', NULL, NULL, 4808, E'Bien', E'Papel lustroso', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-07-02 15:19:20.983', NULL, E'activo', NULL, NULL, 4809, E'Bien', E'Medidor electrico', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (37, NULL, E'2015-07-07 14:32:13.526', NULL, E'activo', NULL, NULL, 4810, E'Servicio', E'PARQUEO PRIVADO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{caja_chica,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-07-09 18:02:43.932', NULL, E'activo', NULL, NULL, 4811, E'Bien', E'Platillos desechables', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2015-07-13 10:35:54.063', NULL, E'activo', NULL, NULL, 4812, E'Bien', E'LINTERNA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2015-07-16 15:37:19.739', NULL, E'activo', NULL, NULL, 4813, E'Bien', E'VAJILLA PARA SERVICIOS A BORDO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 22, E'2015-07-20 11:30:51.429', E'2015-09-24 17:53:53.858', E'activo', NULL, NULL, 4814, E'Servicio', E'VIATICOS POR VIAJES AL INTERIOR DEL PAIS (TRIPULACION EN VUELO)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 22, E'2015-07-20 11:31:05.832', E'2015-09-24 17:54:02.398', E'activo', NULL, NULL, 4815, E'Servicio', E'VIATICOS POR VIAJES AL EXTERIOR DEL PAIS (TRIPULACION EN VUELO)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-07-24 15:41:42.027', NULL, E'activo', NULL, NULL, 4816, E'Bien', E'TONER HP LJ 3600', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-07-27 09:07:16.318', NULL, E'inactivo', NULL, NULL, 4817, E'Bien', E'Chompa varon talla M', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-07-27 09:07:27.465', NULL, E'inactivo', NULL, NULL, 4818, E'Bien', E'Chompa varon talla L', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-07-27 09:07:33.816', NULL, E'inactivo', NULL, NULL, 4819, E'Bien', E'Chompa varon talla XL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (1, NULL, E'2015-08-03 16:38:24.105', NULL, E'inactivo', NULL, NULL, 4820, E'Servicio', E'REPARACION DE EQUIPO DE COMPUTACION', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-08-12 16:21:59.713', NULL, E'activo', NULL, NULL, 4821, E'Bien', E'EQUIPO SIMULADOR DE VUELO', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-08-17 18:11:48.718', NULL, E'inactivo', NULL, NULL, 4822, E'Servicio', E'VIATICOS POR VIAJES AL INTERIOR DEL PAIS - ADMINISTRATIVO', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-08-17 18:20:40.978', NULL, E'inactivo', NULL, NULL, 4823, E'Servicio', E'VIATICOS POR VIAJES AL EXTERIOR DEL PAIS - ADMINISTRATIVO', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-08-17 18:25:33.400', NULL, E'activo', NULL, NULL, 4824, E'Bien', E'TONER LEXMARK 10K MX511', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 22, E'2015-08-17 18:40:51.334', E'2015-09-28 10:40:24.481', E'inactivo', NULL, NULL, 4825, E'Servicio', E'VIATICOS POR VIAJES AL INTERIOR DEL PAIS - COMERCIAL', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-08-17 18:45:04.876', NULL, E'inactivo', NULL, NULL, 4826, E'Servicio', E'VIATICO POR VIAJES AL EXTERIOR DEL PAIS - COMERCIAL', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-08-17 19:07:58.856', NULL, E'inactivo', NULL, NULL, 4827, E'Servicio', E'VIATICOS POR VIAJES AL INTERIOR DEL PAIS (ENTRENAMIENTO-RECURREN)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-08-17 19:10:48.139', NULL, E'inactivo', NULL, NULL, 4828, E'Servicio', E'VIATICOS POR VIAJES AL EXTERIOR DEL PAIS (ENTRENAMIENTO-RECURREN)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-08-18 17:07:56.105', NULL, E'activo', NULL, NULL, 4829, E'Servicio', E'RENOVACION DE LICENCIA PILOTOS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2015-08-19 15:59:07.871', NULL, E'activo', NULL, NULL, 4830, E'Bien', E'Edificio', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (1, NULL, E'2015-08-20 14:44:27.286', NULL, E'activo', NULL, NULL, 4831, E'Servicio', E'DEPOSITOS EN GARANTIA', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', E'{especial}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (1, 1, E'2015-08-20 15:06:23.888', E'2015-08-20 15:14:15.360', E'activo', NULL, NULL, 4832, E'Servicio', E'RETENCIONES IUE - BE (SERVICIOS) ', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', E'{especial}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (1, NULL, E'2015-08-20 15:11:05.998', NULL, E'activo', NULL, NULL, 4833, E'Servicio', E'RETENCIONES IT', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', E'{especial}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (1, NULL, E'2015-08-20 15:15:01.983', NULL, E'activo', NULL, NULL, 4834, E'Servicio', E'RETENCIONES IUE (SERVICIOS) ', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', E'{especial}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (1, NULL, E'2015-08-20 15:15:24.570', NULL, E'activo', NULL, NULL, 4835, E'Servicio', E'RETENCIONES IUE (BIENES) ', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', E'{especial}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-08-20 17:11:01.647', NULL, E'inactivo', NULL, NULL, 4836, E'Bien', E'UTENSILIOS DE COCINA, COMEDOR Y OTROS PARA OFICINA', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (37, NULL, E'2015-08-20 17:18:25.467', NULL, E'activo', NULL, NULL, 4837, E'Bien', E'UTENSILIOS PARA SERVICIOS A BORDO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 20, E'2015-08-21 14:45:15.242', E'2018-12-07 16:23:08.456', E'activo', NULL, NULL, 4838, E'Servicio', E'SERVICIOS DE ASISTENCIA EN TIERRA (ROYALTIE)  AERONAVES\n', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{5}', E'no', E'{fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2015-08-21 14:47:42.642', NULL, E'activo', NULL, NULL, 4839, E'Servicio', E'SERVICIOS DE ASISTENCIA EN TIERRA (HANDLING)  AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{5}', E'no', E'{pago_unico,pago_directo,fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, 1, E'2015-08-24 08:11:42.473', E'2015-11-05 13:19:28.392', E'activo', NULL, NULL, 4840, E'Bien', E'TRACTOR DE ARRASTRE', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, 1, E'2015-08-24 08:17:08.985', E'2015-11-05 13:19:18.736', E'activo', NULL, NULL, 4841, E'Bien', E'CARRO (MOTORIZADO) AGUA POTABLE ', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, 1, E'2015-08-24 08:17:50.216', E'2015-11-05 13:19:09.249', E'activo', NULL, NULL, 4842, E'Bien', E'CARRO (MOTORIZADO) AGUAS SERVIDAS', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, 1, E'2015-08-24 08:19:12.162', E'2015-11-05 13:18:59.659', E'activo', NULL, NULL, 4843, E'Bien', E'ESCALERA MOTORIZADA DE PASAJEROS', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, 1, E'2015-08-24 08:19:56.714', E'2015-11-05 13:18:54.176', E'activo', NULL, NULL, 4844, E'Bien', E'TRACTOR DE REMOLQUE', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, 1, E'2015-08-24 08:21:54.072', E'2015-11-05 13:18:20.908', E'activo', NULL, NULL, 4845, E'Bien', E'CINTA BELT LOADER', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (1, NULL, E'2015-08-24 15:25:39.094', NULL, E'activo', NULL, NULL, 4846, E'Servicio', E'SERVICIO DE REVENUE ACCOUNTING', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 22, E'2015-08-26 09:14:52.826', E'2015-08-26 09:29:27.864', E'activo', NULL, NULL, 4847, E'Servicio', E'SERVICIO ENTRETENIMIENTO A BORDO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,4}', E'no', E'{pago_directo,adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-08-26 09:34:56.972', NULL, E'activo', NULL, NULL, 4848, E'Servicio', E'IMPLEMENTACION ENTRETENIMIENTO A BORDO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2015-08-26 19:04:04.502', NULL, E'activo', NULL, NULL, 4849, E'Bien', E'Construcción Hangar de Mantenimiento', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, 39, E'2015-08-26 19:04:51.646', E'2018-05-22 18:28:15.679', E'activo', NULL, NULL, 4850, E'Bien', E'Construccion Edificio Santa Cruz', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, 39, E'2015-08-26 19:05:27.069', E'2018-05-22 18:27:43.337', E'activo', NULL, NULL, 4851, E'Bien', E'Construccion Edificio CEAC', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2015-08-26 19:09:02.853', NULL, E'activo', NULL, NULL, 4852, E'Servicio', E'Servicios Terciarizados', E'ingreso', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, 1, E'2015-08-26 19:14:04.322', E'2015-11-05 13:19:23.143', E'activo', NULL, NULL, 4853, E'Bien', E'Equipo de Transporte', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, 39, E'2015-08-26 19:14:28.123', E'2018-05-22 18:55:24.306', E'activo', NULL, NULL, 4854, E'Bien', E'Equipo de Elevacion', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2015-08-26 19:15:04.182', NULL, E'activo', NULL, NULL, 4855, E'Servicio', E'Consultoría construcción Hangar de Mantenimiento', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2015-08-26 19:15:43.118', NULL, E'activo', NULL, NULL, 4856, E'Servicio', E'Consultoría construcción edificio Santa Cruz', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2015-08-26 19:16:09.452', NULL, E'activo', NULL, NULL, 4857, E'Servicio', E'Consultoría construcción edificio CEAC', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2015-08-26 19:17:19.194', NULL, E'inactivo', NULL, NULL, 4858, E'Bien', E'Equipo de Elevación', E'gasto', E'1', NULL, E'si', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2015-08-26 19:51:10.530', NULL, E'activo', NULL, NULL, 4859, E'Servicio', E'DISMINUCION DE CUENTAS POR COBRAR A CORTO PLAZO', E'ingreso', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2015-08-26 21:43:43.541', NULL, E'activo', NULL, NULL, 4860, E'Servicio', E'GASTOS DEVENGADOS NO PAGADOS POR SERVICIOS NO PERSONALES, MATERIALES Y SUMINISTROS, ACTIVOS REALES Y FINANCIEROS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-09-03 11:39:05.864', NULL, E'activo', NULL, NULL, 4861, E'Bien', E'JUEGO DE LIVING', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (37, NULL, E'2015-09-04 11:52:15.911', NULL, E'activo', NULL, NULL, 4862, E'Servicio', E'Alquiler de Otros Ambientes', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo,contrato,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2015-09-08 10:25:10.900', NULL, E'activo', NULL, NULL, 4863, E'Bien', E'CUBIERTOS DESECHABLES PARA SERVICIO A BORDO ', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2015-09-08 10:39:39.051', NULL, E'activo', NULL, NULL, 4864, E'Servicio', E'SERVICIO DE RECOJO DE RESIDUOS AERONAUTICOS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{pago_directo,adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-09-08 10:55:22.603', NULL, E'activo', NULL, NULL, 4865, E'Servicio', E'COMISION POR CARGA INTERNACIONAL', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2015-09-22 15:30:10.855', NULL, E'inactivo', NULL, NULL, 4866, E'Servicio', E'ALQUILER DE VEHICULO', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-09-23 17:12:04.063', NULL, E'activo', NULL, NULL, 4867, E'Bien', E'TONER HP CB 540A', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-09-23 17:13:23.490', NULL, E'activo', NULL, NULL, 4868, E'Bien', E'TONER HP CB 541A', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-09-23 17:13:34.121', NULL, E'activo', NULL, NULL, 4869, E'Bien', E'TONER HP CB 542A', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-09-23 17:13:40.882', NULL, E'activo', NULL, NULL, 4870, E'Bien', E'TONER HP CB 543A', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-09-28 10:42:14.847', NULL, E'inactivo', NULL, NULL, 4871, E'Servicio', E'VIATICOS POR VIAJES AL EXTERIOR DEL PAIS - COMERCIAL', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 22, E'2015-09-28 10:43:15.709', E'2017-07-27 11:19:14.830', E'activo', NULL, NULL, 4872, E'Servicio', E'VIATICOS POR VIAJES AL INTERIOR DEL PAIS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, 22, E'2015-09-28 10:43:57.399', E'2017-07-27 11:19:06.037', E'activo', NULL, NULL, 4873, E'Servicio', E'VIATICOS POR VIAJES AL EXTERIOR DEL PAIS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2015-09-28 10:44:50.134', NULL, E'inactivo', NULL, NULL, 4874, E'Servicio', E'VIATICOS POR VIAJES AL INTERIOR DEL PAIS - OPERATIVO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-09-28 10:46:04.651', NULL, E'inactivo', NULL, NULL, 4875, E'Servicio', E'VIATICOS POR VIAJES AL EXTERIOR DEL PAIS - OPERATIVO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2015-10-01 15:43:40.295', NULL, E'inactivo', NULL, NULL, 4876, E'Bien', E'TRACTOR DE ARRASTRE', E'gasto', E'1', NULL, E'si', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (37, 1, E'2015-10-01 17:41:14.478', E'2015-11-05 13:19:36.296', E'activo', NULL, NULL, 4877, E'Bien', E'GPU', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (37, 1, E'2015-10-01 17:41:40.734', E'2015-11-05 13:19:04.728', E'activo', NULL, NULL, 4878, E'Bien', E'BARRA DE TIRO', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, 39, E'2015-10-06 15:34:33.184', E'2018-05-22 18:26:07.778', E'activo', NULL, NULL, 4879, E'Bien', E'Infraestructura portatil', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, 22, E'2015-10-12 11:49:14.626', E'2015-10-12 11:57:06.835', E'activo', NULL, NULL, 4880, E'Bien', E'PINES-INSIGNIA-PRENDEDOR', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, 22, E'2015-10-14 09:38:49.561', E'2018-05-22 19:26:00.642', E'activo', NULL, NULL, 4881, E'Bien', E'Bolsas de Plastico\n', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2015-10-20 11:17:24.891', NULL, E'activo', NULL, NULL, 4882, E'Servicio', E'IMPUESTO AL JUEGO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-10-21 09:05:33.284', NULL, E'activo', NULL, NULL, 4883, E'Servicio', E'HOSPEDAJE A NIVEL NACIONAL (SIN CONVENIO DE HOTEL)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-10-21 17:02:03.898', NULL, E'activo', NULL, NULL, 4884, E'Servicio', E'HOSPEDAJE POR VIAJES AL INTERIOR DEL PAIS (COMANDO-CABINA-EOVS-TECNICOS MTTO) (TRIP. EN VUELO)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-10-21 17:33:50.564', NULL, E'activo', NULL, NULL, 4885, E'Servicio', E'HOSPEDAJE POR VIAJES AL EXTERIOR DEL PAIS (COMANDO-CABINA-EOVS-TECNICOS MTTO) (TRIP. EN VUELO)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo,fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (37, NULL, E'2015-10-23 09:11:18.488', NULL, E'inactivo', NULL, NULL, 4886, E'Servicio', E'Consultoría CEAC', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, 22, E'2015-10-29 15:26:23.476', E'2018-01-24 14:41:53.185', E'activo', NULL, NULL, 4887, E'Servicio', E'PASAJES POR VIAJES AL EXTERIOR DEL PAIS PERSONAL EXTERNO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_unico,contrato,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (37, 1, E'2015-11-03 17:41:50.018', E'2015-11-05 13:18:36.181', E'activo', NULL, NULL, 4888, E'Bien', E'Mampara Móvil', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 1, E'2015-11-03 17:50:16.648', E'2015-11-05 13:18:30.626', E'activo', NULL, NULL, 4889, E'Bien', E'DETECTOR DE METAL PORTATIL', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, NULL, E'2015-11-05 16:50:48.101', NULL, E'inactivo', NULL, NULL, 4890, E'Servicio', E'HOSPEDAJE PERSONAL EXTERNO A BOA', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2015-11-17 18:12:54.064', NULL, E'activo', NULL, NULL, 4891, E'Servicio', E'HOSPEDAJE A NIVEL INTERNACIONAL (SIN CONVENIO DE HOTEL)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{fondo_avance,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, 1, E'2015-11-20 15:32:15.819', E'2015-12-29 18:21:35.079', E'activo', NULL, NULL, 4892, E'Bien', E'FUENTE DE ALIMENTACION', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (37, 175, E'2015-12-07 09:29:40.594', E'2015-12-17 18:00:50.082', E'activo', NULL, NULL, 4893, E'Bien', E'REMOLQUE', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2016-01-04 10:30:19.490', NULL, E'activo', NULL, NULL, 4894, E'Bien', E'PAPEL CREPE', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (37, 37, E'2016-01-12 09:18:40.839', E'2016-01-12 10:16:53.755', E'activo', NULL, NULL, 4895, E'Bien', E'MANUALES IATA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2016-01-15 18:08:29.572', NULL, E'inactivo', NULL, NULL, 4896, E'Servicio', E'PRUEBA OTROS OTROS PRUEBA', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2016-01-18 08:38:46.900', NULL, E'inactivo', NULL, NULL, 4897, E'Servicio', E'PRUEBA GASTOS PRUEBA', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', E'{adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 22, E'2016-01-20 12:05:04.502', E'2016-01-20 12:10:17.708', E'activo', NULL, NULL, 4898, E'Servicio', E'FONDOS EN AVANCE', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', E'{especial}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 22, E'2016-02-11 17:34:06.469', E'2016-02-11 17:36:01.817', E'activo', NULL, NULL, 4899, E'Bien', E'AERONAVES BOMBARDIER CRJ-200', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{contrato,pago_directo}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2016-02-17 12:01:20.660', NULL, E'activo', NULL, NULL, 4900, E'Bien', E'TONER LEXMARK MS410', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2016-02-17 12:02:24.113', NULL, E'activo', NULL, NULL, 4901, E'Bien', E'TONER LEXMARK MS312', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2016-02-18 09:34:22.631', NULL, E'activo', NULL, NULL, 4902, E'Bien', E'TONER LEXMARK X364', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 22, E'2016-02-18 12:12:26.781', E'2016-02-18 12:12:59.818', E'activo', NULL, NULL, 4903, E'Servicio', E'FONDOS RECIBIDOS EN CUSTODIA (ISAE)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', E'{especial}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2016-02-24 09:22:05.685', NULL, E'activo', NULL, NULL, 4904, E'Servicio', E'SEGUNDO AGUINALDO CONSULTORES EN LINEA', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', E'{pago_unico}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 22, E'2016-03-02 11:51:43.495', E'2016-03-02 12:00:43.593', E'activo', NULL, NULL, 4905, E'Bien', E'CINTA DE IMPRESORA EPSON LQ-590', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 22, E'2016-03-02 11:52:07.533', E'2016-03-02 12:00:31.259', E'activo', NULL, NULL, 4906, E'Bien', E'CINTA DE IMPRESORA EPSON ERC-45', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2016-03-21 17:51:02.449', NULL, E'activo', NULL, NULL, 4907, E'Bien', E'ARANDELA PARA PAPEL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 22, E'2016-03-29 17:58:16.592', E'2016-03-29 18:02:22.519', E'activo', NULL, NULL, 4908, E'Servicio', E'SUPERVISION DE CONSTRUCCIONES Y MEJORAS DE BIENES PUBLICOS DE DOMINIO PRIVADO', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 22, E'2016-03-31 11:27:33.360', E'2016-03-31 11:35:29.691', E'activo', NULL, NULL, 4909, E'Bien', E'SANITIZADOR DE MANOS - GEL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,caja_chica,fondo_avance}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, NULL, E'2016-04-07 10:00:22.715', NULL, E'activo', NULL, NULL, 4910, E'Servicio', E'REPARACION DE CELULARES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (137, NULL, E'2016-04-12 19:45:56.364', NULL, E'activo', NULL, NULL, 4911, E'Servicio', E'RETENCION DE GARANTIA 7%', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', E'{especial}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 18, E'2016-04-14 18:02:47.494', E'2018-11-30 11:23:57.628', E'activo', NULL, NULL, 4912, E'Servicio', E'BOLETOS INTERLINEA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{especial,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2016-04-21 17:37:03.257', NULL, E'activo', NULL, NULL, 4913, E'Servicio', E'MEMBRESIA ALTA\n', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2016-04-27 12:18:14.123', NULL, E'activo', NULL, NULL, 4914, E'Bien', E'PAPEL CUBO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, 39, E'2016-04-27 18:02:24.355', E'2016-04-28 09:27:44.729', E'activo', NULL, NULL, 4915, E'Bien', E'CINTA ZEBRA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, NULL, E'2016-04-27 18:09:46.638', NULL, E'activo', NULL, NULL, 4916, E'Bien', E'ETIQUETA PARA IMPRESORA ZEBRA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, NULL, E'2016-04-28 10:37:32.331', NULL, E'inactivo', NULL, NULL, 4917, E'Servicio', E'SEGURO INTEGRAL ADMINISTRATIVO', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', E'{3}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, 175, E'2016-04-28 19:47:14.349', E'2016-04-29 11:44:26.115', E'activo', NULL, NULL, 4918, E'Bien', E'INSTRUMENTAL MENOR MEDICO QUIRURGICO\n', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{4}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2016-05-04 11:13:35.932', NULL, E'activo', NULL, NULL, 4919, E'Bien', E'SOMBRERO ALA ANCHA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2016-05-10 10:33:21.240', NULL, E'activo', NULL, NULL, 4920, E'Bien', E'MEDIDOR DE EQUIPAJE DE MANO', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2016-05-23 09:08:44.781', NULL, E'activo', NULL, NULL, 4921, E'Servicio', E'LIMPIEZA DE CORTINAS, MANTELES Y OTROS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, 37, E'2016-05-23 18:37:01.776', E'2017-06-27 16:58:55.654', E'activo', NULL, NULL, 4922, E'Bien', E'WAMPA X4A', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, 37, E'2016-05-23 18:37:54.056', E'2017-06-27 16:59:03.371', E'activo', NULL, NULL, 4923, E'Bien', E'WAMPA 95', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2016-05-24 08:59:17.827', NULL, E'activo', NULL, NULL, 4924, E'Bien', E'CHALECO REFLECTIVO CON FRISA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2016-05-24 09:02:57.066', NULL, E'activo', NULL, NULL, 4925, E'Bien', E'BOTA DE AGUA PUNTA DE ACERTO TALLA 47', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2016-05-31 17:55:19.258', NULL, E'activo', NULL, NULL, 4926, E'Bien', E'PAPEL CARBONICO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, 36, E'2016-06-02 12:08:27.474', E'2016-06-07 16:00:45.654', E'activo', NULL, NULL, 4927, E'Bien', E'ESTUFA ELECTRICA', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2016-06-02 18:14:28.585', NULL, E'activo', NULL, NULL, 4928, E'Bien', E'Chompa dama talla XS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2016-06-02 18:32:14.401', NULL, E'activo', NULL, NULL, 4929, E'Bien', E'VITRINA METALICA', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, NULL, E'2016-06-08 16:53:59.731', NULL, E'activo', NULL, NULL, 4930, E'Servicio', E'ALQUILER DE AMBIENTES PARA RESGUARDO DE EQUIPOS Y MATERIALES PARA MANTENIMIENTO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2016-06-09 09:13:09.815', NULL, E'activo', NULL, NULL, 4931, E'Bien', E'Pantalon de trabajo talla 39', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2016-06-09 09:13:35.287', NULL, E'activo', NULL, NULL, 4932, E'Bien', E'Pantalon de trabajo talla 41', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2016-06-09 09:13:55.317', NULL, E'activo', NULL, NULL, 4933, E'Bien', E'Pantalon de trabajo talla 43', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2016-06-09 09:14:19.653', NULL, E'inactivo', NULL, NULL, 4934, E'Bien', E'Pantalon de trabajo talla 43', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2016-06-09 09:14:39.744', NULL, E'activo', NULL, NULL, 4935, E'Bien', E'Pantalon de trabajo talla 45', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, 22, E'2016-06-29 15:29:07.354', E'2016-07-19 16:54:04.473', E'activo', NULL, NULL, 4936, E'Bien', E'CARRO REFLECTOR PORTATIL', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, 22, E'2016-07-04 15:26:34.211', E'2018-12-11 09:39:00.562', E'activo', NULL, NULL, 4937, E'Servicio', E'TASA (A7)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', E'{especial,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2016-07-05 17:17:55.586', NULL, E'activo', NULL, NULL, 4938, E'Bien', E'GATA HIDRAULICA', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, 22, E'2016-07-20 17:10:06.162', E'2016-08-02 11:26:40.733', E'activo', NULL, NULL, 4939, E'Bien', E'MUEBLE PARA TOMA DE CORRIENTE (CELULAR)', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2016-07-22 11:59:45.928', NULL, E'activo', NULL, NULL, 4940, E'Bien', E'TORRE DE LUZ PORTATIL', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2016-08-02 11:50:16.608', NULL, E'activo', NULL, NULL, 4941, E'Bien', E'MUEBLE PARA PRE EMBARQUE', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2016-08-09 15:28:16.334', NULL, E'activo', NULL, NULL, 4942, E'Bien', E'PROTECTOR SOLAR', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2016-08-09 15:42:53.408', NULL, E'activo', NULL, NULL, 4943, E'Bien', E'CONOS DE SEGURIDAD', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2016-08-09 17:01:12.833', NULL, E'activo', NULL, NULL, 4944, E'Bien', E'BATERIA PARA LINTERNA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2016-08-10 09:11:01.100', NULL, E'activo', NULL, NULL, 4945, E'Servicio', E'LIMPIEZA AERONAVES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones,pago_unico,pago_directo,especial}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2016-08-11 12:14:19.365', NULL, E'activo', NULL, NULL, 4946, E'Bien', E'CAMARA FOTOGRAFICA', E'gasto', E'1', NULL, E'si', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (22, NULL, E'2016-08-15 11:20:30.587', NULL, E'activo', NULL, NULL, 4947, E'Bien', E'CABEZALES DE CUERO PARA ASIENTOS DE AERONAVE', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{1}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, 20, E'2016-08-15 14:46:28.206', E'2017-02-16 16:19:26.935', E'activo', NULL, NULL, 4948, E'Bien', E'SILLAS GIRATORIAS', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (39, NULL, E'2016-08-17 16:51:11.242', NULL, E'activo', NULL, NULL, 4949, E'Bien', E'INFLABLE TIPO HANGAR', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2016-08-18 12:33:07.472', NULL, E'activo', NULL, NULL, 4950, E'Bien', E'PAPEL OFICIO 80 GRS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', NULL, NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, 20, E'2016-08-18 15:03:08.359', E'2016-08-18 15:03:18.384', E'activo', NULL, NULL, 4951, E'Bien', E'DESINFECTANTES', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{fondo_avance}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2016-08-18 15:10:59.444', NULL, E'activo', NULL, NULL, 4952, E'Bien', E'TONER HP 1102', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', NULL, NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2016-08-18 15:17:53.790', NULL, E'inactivo', NULL, NULL, 4953, E'Bien', E'PANTALON', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2016-08-18 16:05:11.265', NULL, E'activo', NULL, NULL, 4954, E'Bien', E'VENTILADORA DE PIE', E'gasto', E'1', NULL, E'si', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, 22, E'2016-08-19 09:54:01.538', E'2018-05-22 16:41:10.300', E'activo', NULL, NULL, 4955, E'Servicio', E'PROCESAMIENTO ELECTRONICO DE TARJETAS DE CREDITO ', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, 20, E'2016-08-19 11:59:36.740', E'2018-11-23 09:11:31.254', E'activo', NULL, NULL, 4956, E'Servicio', E'SERVICIO FLIGHT DECK PRO (APLICACION PARA PILOTOS QUE INDICA LAS CARTAS DE NAVEGACION)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{4}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, 20, E'2016-08-19 12:00:15.217', E'2018-11-23 09:13:23.606', E'activo', NULL, NULL, 4957, E'Servicio', E'SERVICIO OPT (APLICACION QUE INDICA LAS CARACTERISTICAS DE PESO, BALANCE, VELOCIDAD DE DESPEGUE Y ATERRIZAJE PARA CADA AERONAVE)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', E'{}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, 20, E'2016-08-19 12:00:51.011', E'2018-11-23 09:12:16.423', E'activo', NULL, NULL, 4958, E'Servicio', E'SERVICIO I-QRH (APLICACION PARA ESTABLECER EL CUMPLIMIENTO DE NORMAS DE SEGURIDAD DE VUELO)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2016-08-22 15:21:36.096', NULL, E'activo', NULL, NULL, 4959, E'Bien', E'TOBOGAN', E'gasto', E'1', NULL, E'si', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2016-08-22 15:21:57.032', NULL, E'activo', NULL, NULL, 4960, E'Bien', E'BOTE ', E'gasto', E'1', NULL, E'si', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2016-08-22 15:28:15.811', NULL, E'activo', NULL, NULL, 4961, E'Bien', E'CAPUCHA DE PROTECCION RESPIRATORIA ', E'gasto', E'1', NULL, E'si', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', NULL, NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2016-08-22 15:35:42.869', NULL, E'activo', NULL, NULL, 4962, E'Bien', E'MANIQUI', E'gasto', E'1', NULL, E'si', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_unico,pago_directo,contrato}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (22, NULL, E'2016-08-25 17:51:40.711', NULL, E'activo', NULL, NULL, 4963, E'Bien', E'SOFA CAMA', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, 39, E'2016-08-29 11:18:48.282', E'2016-08-29 11:21:40.894', E'inactivo', NULL, NULL, 4964, E'Bien', E'CHOMPA DAMA TRIP. TALLA S', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, NULL, E'2016-08-29 14:36:07.156', NULL, E'activo', NULL, NULL, 4965, E'Bien', E'CHOMPA ABIERTA DAMA TALLA S', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, 39, E'2016-08-29 14:36:58.535', E'2016-08-29 14:37:24.686', E'activo', NULL, NULL, 4966, E'Bien', E'CHOMPA ABIERTA DAMA TALLA  M', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, NULL, E'2016-08-29 14:38:09.134', NULL, E'activo', NULL, NULL, 4967, E'Bien', E'CHOMPA ABIERTA DAMA TALLA L', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, NULL, E'2016-08-29 14:39:05.907', NULL, E'activo', NULL, NULL, 4968, E'Bien', E'CHOMPA ABIERTA DAMA TALLA XL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, NULL, E'2016-08-29 14:39:57.216', NULL, E'activo', NULL, NULL, 4969, E'Bien', E'CHOMPA ABIERTA DAMA TALLA XXL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL);


/* Data for the 'param.tconcepto_ingas' table  (Records 1501 - 1693) */

INSERT INTO param.tconcepto_ingas ("id_usuario_reg", "id_usuario_mod", "fecha_reg", "fecha_mod", "estado_reg", "id_usuario_ai", "usuario_ai", "id_concepto_ingas", "tipo", "desc_ingas", "movimiento", "sw_tes", "id_oec", "activo_fijo", "almacenable", "requiere_ot", "filtro_ot", "id_grupo_ots", "pago_automatico", "sw_autorizacion", "descripcion_larga", "id_entidad", "id_actividad_economica", "codigo", "id_unidad_medida", "nandina", "ruta_foto", "id_cat_concepto")
VALUES
  (39, NULL, E'2016-08-29 14:43:51.931', NULL, E'activo', NULL, NULL, 4970, E'Bien', E'CHOMPA ABIERTA VARON TALLA S', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, NULL, E'2016-08-29 14:44:41.717', NULL, E'activo', NULL, NULL, 4971, E'Bien', E'CHOMPA ABIERTA VARON TALLA M', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, 39, E'2016-08-29 14:45:10.753', E'2016-08-29 14:46:07.240', E'activo', NULL, NULL, 4972, E'Bien', E'CHOMPA ABIERTA VARON TALLA L', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, 39, E'2016-08-29 14:45:51.228', E'2016-08-29 14:46:16.581', E'activo', NULL, NULL, 4973, E'Bien', E'CHOMPA ABIERTA VARON TALLA XL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, NULL, E'2016-08-29 14:46:53.475', NULL, E'activo', NULL, NULL, 4974, E'Bien', E'CHOMPA ABIERTA VARON TALLA XXL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, 18, E'2016-08-30 08:09:43.909', E'2017-12-13 14:59:41.817', E'activo', NULL, NULL, 4975, E'Bien', E'EXTRACTOR', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2016-08-30 08:17:57.541', NULL, E'activo', NULL, NULL, 4976, E'Bien', E'CARRO PORTA BOTELLONES', E'gasto', E'1', NULL, E'si', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2016-08-30 08:18:51.638', NULL, E'activo', NULL, NULL, 4977, E'Bien', E'CARRO PORTA NUCLEOS', E'gasto', E'1', NULL, E'si', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2016-08-31 07:47:27.619', NULL, E'inactivo', NULL, NULL, 4978, E'Servicio', E'SEGUROS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2016-08-31 16:48:58.785', NULL, E'activo', NULL, NULL, 4979, E'Servicio', E'SERVICIO DE FIBRA OPTICA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2016-08-31 16:54:21.047', NULL, E'activo', NULL, NULL, 4980, E'Bien', E'CARGADORES PARA HANDIE', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2016-08-31 18:05:43.670', NULL, E'activo', NULL, NULL, 4981, E'Bien', E'FUENTE DE ALIMENTACION PARA EQUIPO DE RADIO COMUNICACION', E'gasto', E'1', NULL, E'si', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', NULL, NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2016-09-01 10:09:47.798', NULL, E'activo', NULL, NULL, 4982, E'Bien', E'PALLET DOLLEY', E'gasto', E'1', NULL, E'si', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2016-09-01 11:26:55.989', NULL, E'activo', NULL, NULL, 4983, E'Bien', E'PAPEL SERIGRAFICO', E'gasto', E'2', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (22, 22, E'2016-09-01 17:28:03.526', E'2016-09-05 12:13:41.649', E'inactivo', NULL, NULL, 4984, E'Servicio', E'CUENTAS A COBRAR A CORTO PLAZO AGENCIAS DE VIAJES BOLIVIA M/N', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, 22, E'2016-09-01 17:29:13.832', E'2016-09-05 12:13:48.086', E'inactivo', NULL, NULL, 4985, E'Servicio', E'CUENTAS A COBRAR A CORTO PLAZO AGENCIAS DE VIAJES BOLIVIA M/E', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2016-09-01 17:42:44.322', NULL, E'activo', NULL, NULL, 4986, E'Servicio', E'TRABAJOS DIRIGIDOS Y PASANTIAS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (37, NULL, E'2016-09-02 20:36:56.884', NULL, E'activo', NULL, NULL, 4987, E'Servicio', E'DISMINUCIÓN DE CUENTAS POR COBRAR A CORTO PLAZO', E'recurso', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (37, NULL, E'2016-09-02 20:45:12.769', NULL, E'activo', NULL, NULL, 4988, E'Servicio', E'Incremento de Cuentas por Pagar a Corto Plazo por Deudas Comerciales', E'recurso', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (37, NULL, E'2016-09-02 20:46:13.106', NULL, E'activo', NULL, NULL, 4989, E'Servicio', E'Incremento de Cuentas por Pagar a Corto Plazo por Aportes Patronales', E'recurso', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (37, NULL, E'2016-09-02 20:47:30.188', NULL, E'activo', NULL, NULL, 4990, E'Servicio', E'Incremento de Cuentas por Pagar a Corto Plazo por Retenciones', E'recurso', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2016-09-15 16:09:45.313', NULL, E'inactivo', NULL, NULL, 4991, E'Servicio', E'OTROS SERVICIOS (PRUEBA)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, 39, E'2016-09-21 19:45:02.039', E'2016-09-21 19:45:29.190', E'activo', NULL, NULL, 4992, E'Bien', E'POLERA MANGA LARGA DAMA XS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, NULL, E'2016-09-21 19:46:05.227', NULL, E'activo', NULL, NULL, 4993, E'Bien', E'POLERA MANGA LARGA DAMA S', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, NULL, E'2016-09-21 19:46:54.653', NULL, E'activo', NULL, NULL, 4994, E'Bien', E'POLERA MANGA LARGA DAMA M', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, NULL, E'2016-09-21 19:47:50.596', NULL, E'activo', NULL, NULL, 4995, E'Bien', E'POLERA MANGA LARGA DAMA L', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, NULL, E'2016-09-21 19:49:29.141', NULL, E'activo', NULL, NULL, 4996, E'Bien', E'POLERA MANGA LARGA DAMA XL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, NULL, E'2016-09-21 19:50:00.113', NULL, E'activo', NULL, NULL, 4997, E'Bien', E'POLERA MANGA LARGA DAMA 2XL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, NULL, E'2016-09-21 19:51:01.222', NULL, E'activo', NULL, NULL, 4998, E'Bien', E'POLERA MANGA LARGA DAMA 3XL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, NULL, E'2016-09-21 19:54:23.606', NULL, E'activo', NULL, NULL, 4999, E'Bien', E'POLERA MANGA LARGA VARON XS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, NULL, E'2016-09-21 19:54:57.541', NULL, E'activo', NULL, NULL, 5000, E'Bien', E'POLERA MANGA LARGA VARON S', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, NULL, E'2016-09-21 19:55:45.414', NULL, E'activo', NULL, NULL, 5001, E'Bien', E'POLERA MANGA LARGA VARON M', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, 39, E'2016-09-21 19:56:23.532', E'2016-09-21 19:57:25.172', E'activo', NULL, NULL, 5002, E'Bien', E'POLERA MANGA LARGA VARON XL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, NULL, E'2016-09-21 19:56:54.666', NULL, E'activo', NULL, NULL, 5003, E'Bien', E'POLERA MANGA LARGA VARON L', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, NULL, E'2016-09-21 19:58:13.468', NULL, E'activo', NULL, NULL, 5004, E'Bien', E'POLERA MANGA LARGA VARON 2XL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, NULL, E'2016-09-21 19:59:42.930', NULL, E'activo', NULL, NULL, 5005, E'Bien', E'POLERA MANGA LARGA VARON 3XL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2016-09-28 14:56:13.804', NULL, E'inactivo', NULL, NULL, 5006, E'Bien', E'CASCO DE SEGURIDAD INDUSTRIAL', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, 20, E'2016-10-07 16:44:00.415', E'2018-02-02 12:10:14.964', E'activo', NULL, NULL, 5007, E'Bien', E'CARRO TRANSPORTADOR  DE MATERIALES, EQUIPOS, CARGA', E'gasto', E'1', NULL, E'si', E'no', E'opcional', E'todos', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, 39, E'2016-10-14 18:34:56.962', E'2016-10-14 19:36:52.639', E'activo', NULL, NULL, 5008, E'Bien', E'AIRE DE PRECISION (CEAC)', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones,contrato,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, 39, E'2016-10-14 18:51:26.290', E'2016-10-14 18:59:24.212', E'activo', NULL, NULL, 5009, E'Bien', E'CHILLER ENFRIADOR DE AGUA (CEA)', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones,pago_directo,contrato}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, 39, E'2016-10-14 18:54:08.098', E'2016-10-14 19:26:36.538', E'activo', NULL, NULL, 5010, E'Bien', E'EQUIPO DE EXTRACCION DE AIRE (CEAC)', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'todos', E'{3}', E'no', E'{adquisiciones,pago_directo,contrato}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, NULL, E'2016-10-20 17:42:20.238', NULL, E'activo', NULL, NULL, 5011, E'Servicio', E'INSTALACION, MANTENIMIENTO, REPARACION Y CAMBIO DE TCAS (AERONAVES)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, NULL, E'2016-10-24 16:00:13.847', NULL, E'activo', NULL, NULL, 5012, E'Bien', E'PORTA TARJETERO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{caja_chica,adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, NULL, E'2016-10-26 16:09:40.151', NULL, E'activo', NULL, NULL, 5013, E'Bien', E'TRANSFORMADOR-ALIMENTADOR DE BAJA TENSION', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (39, NULL, E'2016-10-27 16:03:55.851', NULL, E'inactivo', NULL, NULL, 5014, E'Bien', E'CARRO DE CARGA', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3,5}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2016-11-14 17:34:18.400', NULL, E'inactivo', NULL, NULL, 5015, E'Servicio', E'COMISION INTERLINEAL-ISC (INTERLINEA)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2016-11-14 17:35:10.784', NULL, E'inactivo', NULL, NULL, 5016, E'Servicio', E'COMISION POR CODIGO COMPARTIDO (INTERLINEA)', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2016-11-21 11:49:16.610', NULL, E'activo', NULL, NULL, 5017, E'Servicio', E'TARJETA DE CONTROL AERO B-SISA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{pago_unico,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2016-11-23 17:51:45.979', NULL, E'activo', NULL, NULL, 5018, E'Servicio', E'REMOCION MOTOR AERONAVE', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, 22, E'2016-12-14 09:48:10.460', E'2017-01-12 11:34:22.125', E'activo', NULL, NULL, 5019, E'Bien', E'EMC UNITY', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2016-12-15 10:24:35.753', NULL, E'activo', NULL, NULL, 5020, E'Servicio', E'COMISION DE CODIGO COMPARTIDO POR VENTA INTERLINEA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (37, 18, E'2016-12-19 10:28:13.772', E'2018-08-16 15:25:03.933', E'activo', NULL, NULL, 5021, E'Servicio', E'SERVICIO DE INTERMEDIACION FINANCIERA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones,contrato,pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2016-12-19 11:22:08.071', NULL, E'activo', NULL, NULL, 5022, E'Servicio', E'INTERES POR ADQUISICION DE AERONAVE', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2017-01-17 17:32:38.271', NULL, E'activo', NULL, NULL, 5023, E'Bien', E'FOLIADOR', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,caja_chica}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, 20, E'2017-01-26 18:03:38.814', E'2017-01-27 09:03:11.068', E'activo', NULL, NULL, 5024, E'Servicio', E'PAGO CUOTAS COMPRA AERONAVE', E'gasto', E'2', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{especial}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, 20, E'2017-02-02 17:58:21.763', E'2017-03-15 10:53:56.234', E'activo', NULL, NULL, 5025, E'Bien', E'VENTILADOR DE PARED', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, 20, E'2017-02-07 10:55:14.469', E'2017-02-07 14:38:54.688', E'activo', NULL, NULL, 5026, E'Bien', E'GUANTES', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2017-02-09 15:42:07.403', NULL, E'activo', NULL, NULL, 5027, E'Servicio', E'SEGURO PASAJEROS PERJUDICADOS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2017-02-10 09:56:46.672', NULL, E'activo', NULL, NULL, 5028, E'Bien', E'SERVICIO DE COMUNICACION PARA PASAJEROS PERJUDICADOS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2017-02-17 16:08:02.347', NULL, E'activo', NULL, NULL, 5029, E'Bien', E'LECTOR CODIGO DE BARRAS ', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2017-02-24 09:49:30.586', NULL, E'activo', NULL, NULL, 5030, E'Servicio', E'CONSULTORIA CONSTRUCCION  EDIFICIO AEROPUERTO CBBA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'todos', E'{2}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2017-03-09 10:05:07.480', NULL, E'activo', NULL, NULL, 5031, E'Servicio', E'SEGURO RIESGO MONTAJE', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2017-03-09 10:05:47.067', NULL, E'activo', NULL, NULL, 5032, E'Servicio', E'SEGURO DE TRANSPORTE ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2017-03-14 12:20:12.321', NULL, E'activo', NULL, NULL, 5033, E'Bien', E'MUEBLE EMPOTRADO', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (37, 37, E'2017-03-14 18:45:11.681', E'2017-03-14 18:49:23.520', E'activo', NULL, NULL, 5034, E'Bien', E'UNIDAD POTENTE DE ENERGIA NEUMATICA - ASU', E'gasto', E'2', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, 20, E'2017-03-22 16:50:20.138', E'2018-11-23 08:54:31.816', E'activo', NULL, NULL, 5035, E'Servicio', E'INSPECCION AERONAVES DGAC', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2017-03-30 11:53:58.856', NULL, E'activo', NULL, NULL, 5036, E'Bien', E'PORTA SELLOS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (37, NULL, E'2017-04-03 16:51:18.614', NULL, E'activo', NULL, NULL, 5037, E'Bien', E'PORTA PALLETS', E'gasto', E'2', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, 20, E'2017-04-10 12:16:39.212', E'2018-06-04 15:44:26.975', E'activo', NULL, NULL, 5038, E'Servicio', E'SERVICIO MANUAL ESTIBADORES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{fondo_avance,caja_chica,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2017-04-27 17:00:04.663', NULL, E'activo', NULL, NULL, 5039, E'Servicio', E'SERVICIO DE ALMACENAJE Y VIGILANCIA DE RECORDS DE AERONAVES ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2017-05-10 12:24:05.661', NULL, E'activo', NULL, NULL, 5040, E'Bien', E'ESTAÑO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, 22, E'2017-05-23 17:05:48.003', E'2017-06-06 15:42:35.523', E'activo', NULL, NULL, 5041, E'Bien', E'CAMISA BLANCA MANGA LARGA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, 22, E'2017-05-23 17:08:45.763', E'2017-06-06 15:42:43.507', E'activo', NULL, NULL, 5042, E'Bien', E'CAMISA BLANCA MANGA CORTA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, 22, E'2017-05-23 17:10:34.198', E'2017-06-06 15:42:50.835', E'activo', NULL, NULL, 5043, E'Bien', E'CAMISA BLANCA MANGA LARGA C/P', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, 22, E'2017-05-23 17:11:42.870', E'2017-06-06 15:42:58.948', E'activo', NULL, NULL, 5044, E'Bien', E'CAMISA BLANCA MANGA CORTA C/P', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, 22, E'2017-05-23 17:12:56.727', E'2017-06-06 15:41:23.965', E'activo', NULL, NULL, 5045, E'Bien', E'BLUSA BLANCA MANGA LARGA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'todos', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, 22, E'2017-05-23 17:13:41.199', E'2017-06-06 15:41:38.030', E'activo', NULL, NULL, 5046, E'Bien', E'BLUSA BLANCA MANGA CORTA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'todos', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2017-05-29 10:36:02.479', NULL, E'activo', NULL, NULL, 5047, E'Bien', E'EQUIPO DE BOROSCOPIA', E'gasto', E'1', NULL, E'si', E'no', E'opcional', E'todos', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2017-06-06 17:54:19.887', NULL, E'activo', NULL, NULL, 5048, E'Bien', E'ASPIRADORA ', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'todos', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2017-06-07 15:59:55.851', NULL, E'activo', NULL, NULL, 5049, E'Servicio', E'CARGUIO Y DISTRIBUCION DE TARIFAS', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2017-06-08 09:38:07.288', NULL, E'activo', NULL, NULL, 5050, E'Servicio', E'RMS (REVENUE MANAGEMENT SYSTEM)', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2017-06-22 11:05:31.301', NULL, E'activo', NULL, NULL, 5051, E'Servicio', E'CUMPLIMIENTO RESOLUCION REGULATORIA N° 01-00007-15 DE LA AUTORIDAD DE FISCALIZACION DEL JUEGO AJ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2017-06-29 10:38:25.810', NULL, E'activo', NULL, NULL, 5052, E'Bien', E'REGULADOR FLUJO DE AIRE', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2017-07-05 10:40:52.296', NULL, E'activo', NULL, NULL, 5053, E'Servicio', E'SIN CONCEPTO', E'gasto', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2017-07-06 15:47:07.153', NULL, E'activo', NULL, NULL, 5054, E'Bien', E'REGULADOR DE BOTELLONES DE OXIGENO Y/O NITROGENO ', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'todos', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2017-07-13 12:08:27.862', NULL, E'activo', NULL, NULL, 5055, E'Bien', E'ESCANER EQUIPO DETECTOR DE TRAZAS', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2017-07-14 08:46:57.209', NULL, E'activo', NULL, NULL, 5056, E'Servicio', E'SALA CUNA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, 20, E'2017-08-04 17:54:32.799', E'2018-11-27 11:50:19.782', E'activo', NULL, NULL, 5057, E'Servicio', E'SERVICIO DE FOTOCOPIADO', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2017-08-04 18:35:17.846', NULL, E'activo', NULL, NULL, 5058, E'Bien', E'TARJETA DE PVC', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, 20, E'2017-08-09 11:58:56.376', E'2017-08-09 11:59:06.084', E'activo', NULL, NULL, 5059, E'Bien', E'OTRA MAQUINARIA Y EQUIPO\n', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3,4}', E'no', E'{adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (14, NULL, E'2017-08-15 18:45:26.720', NULL, E'activo', NULL, NULL, 5060, E'Servicio', E'Soporte y Mantenimiento de Base de Datos PostGres.', E'gasto', E'2', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2017-08-25 11:19:40.273', NULL, E'activo', NULL, NULL, 5061, E'Servicio', E'SEGURO PERDIDA DE LICENCIA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2017-08-30 12:24:54.787', NULL, E'activo', NULL, NULL, 5062, E'Servicio', E'BONO FRONTERA GUAYARAMERIN', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2017-08-30 12:25:52.443', NULL, E'activo', NULL, NULL, 5063, E'Servicio', E'BONO FRONTERA RURRENABAQUE', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2017-08-30 12:26:09.882', NULL, E'activo', NULL, NULL, 5064, E'Servicio', E'BONO FRONTERA RIBERALTA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2017-08-30 12:26:32.465', NULL, E'activo', NULL, NULL, 5065, E'Servicio', E'BONO FRONTERA PUERTO SUAREZ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2017-08-31 00:07:11.848', NULL, E'activo', NULL, NULL, 5066, E'Servicio', E'EXCESO DE EQUIPAJE', E'recurso', E'2', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2017-08-31 08:47:30.392', NULL, E'activo', NULL, NULL, 5067, E'Servicio', E'DISMINUCION DE OTRAS CUENTAS POR PAGAR A LARGO PLAZO', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, 20, E'2017-08-31 09:01:08.087', E'2017-08-31 09:04:07.164', E'activo', NULL, NULL, 5068, E'Servicio', E'INCREMENTO CUANTAS POR PAGAR A CORTO PLAZO POR IMPUESTOS, REGALIAS Y TASAS', E'recurso', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2017-08-31 09:02:07.898', NULL, E'activo', NULL, NULL, 5069, E'Servicio', E'INCREMENTO  DE OTRAS CUENTAS POR PAGA A LARGO PLAZO', E'recurso', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2017-09-06 13:21:12.034', NULL, E'activo', NULL, NULL, 5070, E'Servicio', E'GASTOS DEVENGADOS NO PAGADOS POR SERVICIOS NO PERSONALES', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2017-09-06 13:21:54.947', NULL, E'activo', NULL, NULL, 5071, E'Servicio', E'GASTOS DEVENGADOS NO PAGADOS POR MATERIALES Y SUMINISTROS', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (25, 22, E'2017-09-18 17:50:41.554', E'2017-09-18 18:15:01.551', E'activo', NULL, NULL, 5072, E'Bien', E'ALFILER DE PIZARRA', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 10, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:07:00.319', E'2017-09-20 12:07:00.319', E'inactivo', NULL, E'NULL', 5073, E'Servicio', E'TRANSPORTE DE CARGA INTERNACIONAL ', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'TCI', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:07:19.693', E'2017-09-20 12:07:19.693', E'activo', NULL, E'NULL', 5074, E'Servicio', E'INGRESOS POR CORREO INTERNACIONAL', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'ICI', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:07:47.588', E'2017-09-20 12:07:47.588', E'inactivo', NULL, E'NULL', 5075, E'Servicio', E'CARGA COLLECT INTERNACIONAL', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'CCI', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:08:13.434', E'2017-09-20 12:08:13.434', E'inactivo', NULL, E'NULL', 5076, E'Servicio', E'SERVICIO DE MANIPULEO', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'SM', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:08:40.005', E'2017-09-20 12:08:40.005', E'activo', NULL, E'NULL', 5077, E'Servicio', E'TRANSPORTE DE CARGA NACIONAL', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'TCN', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:09:11.358', E'2017-09-20 12:09:11.358', E'activo', NULL, E'NULL', 5078, E'Servicio', E'INGRESOS POR CORREO NACIONAL', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'ICN', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:09:36.973', E'2017-09-20 12:09:36.973', E'inactivo', NULL, E'NULL', 5079, E'Servicio', E'SERVICIO A TERCEROS', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 2, E'SAT', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:10:51.277', E'2017-09-20 12:10:51.277', E'activo', NULL, E'NULL', 5080, E'Servicio', E'REPOSICION CREDENCIAL-MARBETE FUNCIONARIO', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'RCMF', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:12:48.168', E'2017-09-20 12:12:48.168', E'activo', NULL, E'NULL', 5081, E'Servicio', E'HABILITACION SISTEMA AGT PARA VENTA PASAJES ', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'HSAPVP', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:13:33.428', E'2017-09-20 12:13:33.428', E'activo', NULL, E'NULL', 5082, E'Servicio', E'PENALIDAD PASE A BORDO ADELANTADO', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'PPBA', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:13:56.220', E'2017-09-20 12:13:56.220', E'activo', NULL, E'NULL', 5083, E'Servicio', E'PENALIDAD PASE A BORDO ADELANTADO INTERNAC.', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'PPBAI', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:15:25.516', E'2017-09-20 12:15:25.516', E'activo', NULL, E'NULL', 5084, E'Servicio', E'GASTOS ADMINISTRATIVOS / CERTIFICACION NACIONAL', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'GACN', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:16:05.553', E'2017-09-20 12:16:05.553', E'activo', NULL, E'NULL', 5085, E'Servicio', E'MENOR NO ACOMPANADO MIA', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'MNAM', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:17:17.022', E'2017-09-20 12:17:17.022', E'activo', NULL, E'NULL', 5086, E'Servicio', E'SERVICIOS ESPECIALES ATENCION EN VUELO', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'SEAV', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:18:13.561', E'2017-09-20 12:18:13.561', E'activo', NULL, E'NULL', 5087, E'Servicio', E'EXCESOS DE EQUIPAJE INTERNACIONAL', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'EEI', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:18:53.111', E'2017-09-20 12:18:53.111', E'activo', NULL, E'NULL', 5088, E'Servicio', E'VENTA TKT NACIONAL RUTA CBB-SLCH', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'VTNRCS', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:19:47.465', E'2017-09-20 12:19:47.465', E'activo', NULL, E'NULL', 5089, E'Servicio', E'SERVICIO DE CUNA RUTA A/DE MIA Y MAD', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'SCRMM', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:20:15.293', E'2017-09-20 12:20:15.293', E'activo', NULL, E'NULL', 5090, E'Servicio', E'EXCESOS DE EQUIPAJE NACIONAL', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'EEN', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:20:52.029', E'2017-09-20 12:20:52.029', E'activo', NULL, E'NULL', 5091, E'Servicio', E'VENTA E-TKT NACIONAL / INFANTE', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'VTNI', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:21:43.670', E'2017-09-20 12:21:43.670', E'activo', NULL, E'NULL', 5092, E'Servicio', E'CAMBIO DE RUTA INTERNACIONAL', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'CRI', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:22:04.413', E'2017-09-20 12:22:04.413', E'activo', NULL, E'NULL', 5093, E'Servicio', E'CAMBIO DE RUTA NACIONAL  ', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'CRN', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:22:53.534', E'2017-09-20 12:22:53.534', E'activo', NULL, E'NULL', 5094, E'Servicio', E'CAMBIO DE FECHA INTERNACIONAL', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'cfi', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:24:12.469', E'2017-09-20 12:24:12.469', E'activo', NULL, E'NULL', 5095, E'Servicio', E'CAMBIO DE FECHA NACIONAL', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'CFN', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:24:42.910', E'2017-09-20 12:24:42.910', E'activo', NULL, E'NULL', 5096, E'Servicio', E'NO SHOW INTERNACIONAL', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'NSI', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:24:59.255', E'2017-09-20 12:24:59.255', E'activo', NULL, E'NULL', 5097, E'Servicio', E'NO SHOW NACIONAL', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'NSN', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:25:28.191', E'2017-09-20 12:25:28.191', E'activo', NULL, E'NULL', 5098, E'Servicio', E'MENOR NO ACOMPANADO MADRID', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'MNAM', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:34:59.251', E'2017-09-20 12:34:59.251', E'activo', NULL, E'NULL', 5099, E'Servicio', E'GASTOS ADMINISTRATIVOS / CERTIFICACION INT', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'GACI', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:36:47.606', E'2017-09-20 12:36:47.606', E'activo', NULL, E'NULL', 5100, E'Servicio', E'CHARTER VUELOS INTERN. ORIGEN BOLIVIA', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 3, E'CVIOB', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:37:17.331', E'2017-09-20 12:37:17.331', E'activo', NULL, E'NULL', 5101, E'Servicio', E'CHARTER VUELOS INTERN. ORIGEN EXTERIOR', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 3, E'CVIOE', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:37:49.704', E'2017-09-20 12:37:49.704', E'activo', NULL, E'NULL', 5102, E'Servicio', E'CHARTER VUELOS RUTAS NACIONALES', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 3, E'CVRN', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 12:39:46.965', E'2017-09-20 12:39:46.965', E'activo', NULL, E'NULL', 5103, E'Servicio', E'REPOSICION ROPA DE TRABAJO', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'RRDT', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 14:32:20.900', E'2017-09-20 14:32:20.900', E'activo', NULL, E'NULL', 5104, E'Servicio', E'OTROS INGRESOS', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'OI', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 16:05:16.184', E'2017-09-20 16:05:16.184', E'activo', NULL, E'NULL', 5105, E'Servicio', E'REPOSICION CRED-MARBETE-ROSETA PARQUEO BOA', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'RCMRPB', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 16:07:45.302', E'2017-09-20 16:07:45.302', E'activo', NULL, E'NULL', 5106, E'Servicio', E'CONVENIO INTERCAMBIO IMAGEN', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 4, E'CII', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 16:12:39.812', E'2017-09-20 16:12:39.812', E'activo', NULL, E'NULL', 5107, E'Servicio', E'INCENTIVO VENTAS GDS', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'IVG', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 16:13:28.637', E'2017-09-20 16:13:28.637', E'activo', NULL, E'NULL', 5108, E'Servicio', E'CAPACITACION Y ENTRENAMIENTO', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 5, E'CYE', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 16:33:32.128', E'2017-09-20 16:33:32.128', E'activo', NULL, E'NULL', 5109, E'Servicio', E'VENTA E-TKT INTERNACIONAL', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'VTI', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 16:34:09.037', E'2017-09-20 16:34:09.037', E'activo', NULL, E'NULL', 5110, E'Servicio', E'VENTA E-TKT NACIONAL', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'VTN', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 16:34:49.405', E'2017-09-20 16:34:49.405', E'activo', NULL, E'NULL', 5111, E'Servicio', E'DIF.TARIFARIA INTERNACIONAL', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'DTI', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 16:35:07.023', E'2017-09-20 16:35:07.023', E'activo', NULL, E'NULL', 5112, E'Servicio', E'DIF.TARIFARIA NACIONAL', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'DTN', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 16:40:46.821', E'2017-09-20 16:40:46.821', E'activo', NULL, E'NULL', 5113, E'Servicio', E'UPGRADE MADRID', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'UM', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 16:41:29.273', E'2017-09-20 16:41:29.273', E'activo', NULL, E'NULL', 5114, E'Servicio', E'VENTA E-TKT NACIONAL CF', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'VTNCF', NULL, E'', NULL, NULL),
  (18, NULL, E'2017-09-20 16:42:02.642', E'2017-09-20 16:42:02.642', E'activo', NULL, E'NULL', 5115, E'Servicio', E'VENTA E-TKT INTERNACIONAL CF', E'recurso', NULL, NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, E'', 1, 1, E'VTICF', NULL, E'', NULL, NULL),
  (25, 22, E'2017-09-26 18:23:35.899', E'2018-01-24 14:42:15.472', E'activo', NULL, NULL, 5116, E'Servicio', E'PASAJES POR VIAJES AL EXTERIOR DEL PAIS VIA AEREA  (TRIPULACION ENTRENAMIENTO)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (25, 22, E'2017-09-26 18:26:27.431', E'2018-01-24 14:42:36.321', E'activo', NULL, NULL, 5117, E'Servicio', E'PASAJES POR VIAJES AL EXTERIOR DEL PAIS VIA TERRESTRE  (TRIPULACION ENTRENAMIENTO)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones,pago_unico}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (25, NULL, E'2017-10-06 15:47:44.968', NULL, E'activo', NULL, NULL, 5118, E'Bien', E'Caja metalica de seguridad', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, 20, E'2017-11-15 17:35:41.521', E'2017-11-15 17:36:54.899', E'activo', NULL, NULL, 5119, E'Servicio', E'INDEMNIZACION A PASAJEROS POR DEMANDAS JUDICIALES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2018-01-02 09:39:41.106', NULL, E'activo', NULL, NULL, 5120, E'Servicio', E'GASTOS DEVENGADOS NO PAGADOS POR ACTIVOS REALES', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2018-01-11 15:08:13.092', NULL, E'inactivo', NULL, NULL, 5121, E'Servicio', E'SERVICIO DE INTERMEDIACION FINANCIERA', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, 22, E'2018-01-25 19:20:57.793', E'2018-01-25 19:21:59.776', E'activo', NULL, NULL, 5122, E'Servicio', E'SEGURO DE ACCIDENTES PERSONALES POR AERONAVEGACION', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{3}', E'no', E'{pago_directo,adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (22, NULL, E'2018-01-25 20:03:13.268', NULL, E'activo', NULL, NULL, 5123, E'Servicio', E'SEGURO REPUESTOS Y EQUIPO DE LA AERONAVE ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{4}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, 20, E'2018-02-07 15:18:20.809', E'2018-11-23 09:34:09.541', E'activo', NULL, NULL, 5124, E'Servicio', E'MANTENIMIENTO  PROGRAMADO SERVICIO A PARA AERONAVE', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{1}', E'no', E'{}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2018-03-20 15:32:26.373', NULL, E'inactivo', NULL, NULL, 5125, E'Bien', E'THINNER', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2018-04-27 10:41:44.990', NULL, E'activo', NULL, NULL, 5126, E'Bien', E'PAPEL BOND EN PLIEGO ', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{fondo_avance,adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2018-06-19 10:07:14.628', NULL, E'activo', NULL, NULL, 5127, E'Bien', E'CONSTRUCCION EDIFICO TECNICO ADMNISTRATIVO BoA-AEROPUERTO COCHABAMBA', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2018-07-04 18:00:39.117', NULL, E'activo', NULL, NULL, 5128, E'Bien', E'PROTECTOR AUDITIVO DESECHABLE ', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2018-07-26 12:10:43.769', NULL, E'activo', NULL, NULL, 5129, E'Bien', E'CAJONERA', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (25, NULL, E'2018-08-20 18:43:29.573', NULL, E'activo', NULL, NULL, 5130, E'Servicio', E'BONO FRONTERA YACUIBA', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2018-08-21 11:43:50.282', NULL, E'activo', NULL, NULL, 5131, E'Servicio', E'Intereses de la Deuda Pública Interna a Largo Plazo', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2018-08-23 15:14:51.348', NULL, E'activo', NULL, NULL, 5132, E'Servicio', E'EN EFECTIVO', E'recurso', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2018-08-23 15:39:17.580', NULL, E'activo', NULL, NULL, 5133, E'Bien', E'MESA DE TRABAJO', E'gasto', E'1', NULL, E'si', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2018-08-23 16:57:18.441', NULL, E'activo', NULL, NULL, 5134, E'Servicio', E'Recursos Devengados no Cobrados por Cuentas por Cobrar de Corto Plazo', E'recurso', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2018-08-29 12:15:44.425', NULL, E'activo', NULL, NULL, 5135, E'Servicio', E'OTROS ALQUILERES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (25, NULL, E'2018-08-31 11:04:37.349', NULL, E'activo', NULL, NULL, 5136, E'Bien', E'SOFA', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (25, NULL, E'2018-09-18 10:54:15.345', NULL, E'activo', NULL, NULL, 5137, E'Bien', E'GLOBOS INSTITUCIONALES', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, NULL, E'2018-09-18 10:58:48.089', NULL, E'activo', NULL, NULL, 5138, E'Servicio', E'IMPRESION PAPEL TERMICO PASES A BORDO', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', E'{adquisiciones,fondo_avance}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, 20, E'2018-10-22 15:36:14.301', E'2018-10-22 15:36:35.349', E'activo', NULL, NULL, 5139, E'Bien', E'CONSTRUCCION  HANGAR Y TALLERES DE MANTENIMIENTO ', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2018-10-22 15:37:33.896', NULL, E'activo', NULL, NULL, 5140, E'Servicio', E'CONSULTORIA CONSTRUCCION  HANGAR Y TALLERES DE MANTENIMIENTO ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2018-10-26 16:18:19.598', NULL, E'activo', NULL, NULL, 5141, E'Bien', E'RENOVACION LICENCIAS DE SOFTWARE', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3,4,1}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2018-11-12 10:40:52.432', NULL, E'activo', NULL, NULL, 5142, E'Bien', E'ACTUALIZACION LICENCIAS DE SOFTWARE', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2,3,4,1}', E'no', E'{adquisiciones,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, 20, E'2018-11-12 16:57:59.327', E'2018-11-12 16:58:40.201', E'activo', NULL, NULL, 5143, E'Bien', E'MATERIAL DE LIMPIEZA (ESPONJA, ESCOBA, DETERGENTES Y OTROS)\n', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2018-11-13 09:29:48.959', NULL, E'inactivo', NULL, NULL, 5144, E'Bien', E'PROTECTOR FACIAL', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, 20, E'2018-11-13 09:32:55.473', E'2018-11-13 09:33:41.725', E'inactivo', NULL, NULL, 5145, E'Bien', E'OVEROL DESCARTABLE', E'gasto', E'1', NULL, E'no', E'si', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2018-11-13 09:35:45.424', NULL, E'activo', NULL, NULL, 5146, E'Bien', E'OVEROL DESCARTABLE', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{3,2}', E'no', NULL, NULL, NULL, NULL, NULL, 1, E'', NULL, NULL),
  (20, 20, E'2018-11-16 12:00:16.199', E'2019-01-10 15:59:25.063', E'activo', NULL, NULL, 5147, E'Bien', E'SOPORTE PARA MOTOR', E'gasto', E'1', NULL, E'si', E'no', E'obligatorio', E'listado', E'{2}', E'no', E'{adquisiciones}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2018-11-20 11:03:17.860', NULL, E'activo', NULL, NULL, 5148, E'Servicio', E'DISMINUCION DE DOCUMENTOS POR COBRAR A CORTO PLAZO', E'recurso', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, 20, E'2018-11-20 14:10:48.701', E'2018-11-20 14:11:57.930', E'activo', NULL, NULL, 5152, E'Servicio', E'GANANCIAS EN OPERACIONES CAMBIARIAS\n', E'recurso', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2018-11-20 14:13:44.807', NULL, E'inactivo', NULL, NULL, 5153, E'Servicio', E'Recursos Dev. no Cobrados por Cuentas por Cobrar de CP', E'recurso', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2018-11-20 14:17:08.217', NULL, E'inactivo', NULL, NULL, 5154, E'Servicio', E'MULTAS', E'recurso', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, 20, E'2018-11-22 14:57:43.489', E'2018-11-30 10:33:02.278', E'activo', NULL, NULL, 5155, E'Servicio', E'SALARIOS A PERSONAL EN ESTACIONES INTERNACIONALES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_unico,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2018-11-22 14:59:37.611', NULL, E'activo', NULL, NULL, 5156, E'Servicio', E'INDEMNIZACIONES A PERSONAL EN ESTACIONES INTERNACIONALES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, 20, E'2018-11-27 12:20:11.553', E'2018-11-27 12:27:05.843', E'activo', NULL, NULL, 5157, E'Servicio', E'SERVICIO DE CARGA TERCIARIZADO BASES INTERNACIONALES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_unico,pago_directo}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, 20, E'2018-11-27 14:48:36.680', E'2018-11-29 15:10:12.126', E'activo', NULL, NULL, 5158, E'Servicio', E'CONSULTORIA CONTABLE BASES INTERNACIONALES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2018-11-27 14:49:11.261', NULL, E'activo', NULL, NULL, 5159, E'Servicio', E'CONSULTORIA LEGAL BASES INTERNACIONALES', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2018-11-27 15:40:35.140', NULL, E'activo', NULL, NULL, 5160, E'Servicio', E'SERVICIOS LEGALES', E'gasto', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', E'{pago_directo,pago_unico}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2018-11-29 15:08:43.696', NULL, E'activo', NULL, NULL, 5161, E'Servicio', E'OTROS SERVICIOS PRESTADOS POR TERCEROS (SERVICIOS TERCIARIZADOS)', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', E'{pago_directo,pago_unico,boarep}', NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2018-11-29 15:21:10.265', NULL, E'activo', NULL, NULL, 5162, E'Servicio', E'COMPRA ALIMENTOS  ATENCION PASAJEROS A BORDO', E'gasto', E'1', NULL, E'no', E'si', E'obligatorio', E'listado', E'{2}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, 20, E'2018-11-29 15:25:10.872', E'2018-11-29 15:25:35.265', E'activo', NULL, NULL, 5163, E'Servicio', E'TASA POR ATENCION SERVICIOS BASICOS', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2018-11-30 10:36:18.804', NULL, E'activo', NULL, NULL, 5164, E'Servicio', E'APORTES PATRONALES A PERSONAL EN ESTACIONES INTERNACIONALES ', E'gasto', E'1', NULL, E'no', E'no', E'obligatorio', E'listado', E'{2,3}', E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL),
  (20, NULL, E'2019-01-09 17:14:39.036', NULL, E'activo', NULL, NULL, 5165, E'Servicio', E'Incremento de Otros Pasivos y Otras Cuentas por Pagar a Corto Plazo', E'recurso', E'1', NULL, E'no', E'no', E'opcional', E'todos', NULL, E'no', NULL, NULL, NULL, NULL, NULL, NULL, E'', NULL, NULL);

  /* Data for the 'param.tcatalogo_tipo' table */

INSERT INTO param.tcatalogo_tipo ("id_usuario_reg", "id_usuario_mod", "fecha_reg", "fecha_mod", "estado_reg", "id_usuario_ai", "usuario_ai", "id_catalogo_tipo", "id_subsistema", "nombre", "tabla", "tabla_estado", "columna_estado")
VALUES
  (1, NULL, E'2014-02-01 23:04:39.840', E'2014-02-01 23:04:39.840', E'activo', NULL, NULL, 1, 2, E'tunidad_medida', E'tunidad_medida', NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.009', E'2014-02-01 23:04:40.009', E'activo', NULL, NULL, 2, 2, E'tdocumento_fiscal__estado', E'tdocumento_fiscal__estado', NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.151', E'2014-02-01 23:04:40.151', E'activo', NULL, NULL, 3, 2, E'tgral__bandera', E'tgral__bandera', NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.197', E'2014-02-01 23:04:40.197', E'activo', NULL, NULL, 4, 2, E'tgral__estado', E'tgral__estado', NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.197', E'2014-02-01 23:04:40.197', E'activo', NULL, NULL, 5, 2, E'tgral__gestion', E'tgral__gestion', NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.224', E'2014-02-01 23:04:40.224', E'activo', NULL, NULL, 6, 2, E'tgral__bandera_min', E'tgral__bandera_min', NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.319', E'2014-02-01 23:04:40.319', E'activo', NULL, NULL, 7, 4, E'tfuncionario__opciones', E'tfuncionario__opciones', NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.553', E'2014-02-01 23:04:40.553', E'activo', NULL, NULL, 8, 6, E'tmovimiento_tipo_tipo', E'tmovimiento_tipo_tipo', NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:41.175', E'2014-02-01 23:04:41.175', E'activo', NULL, NULL, 9, 6, E'titem__opciones', E'titem__opciones', NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:41.332', E'2014-02-01 23:04:41.332', E'activo', NULL, NULL, 10, 6, E'tmovimiento_tipo_tipo1', E'tmovimiento_tipo_tipo1', NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:41.375', E'2014-02-01 23:04:41.375', E'activo', NULL, NULL, 11, 6, E'tpreingreso__tipo', E'tpreingreso__tipo', NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:41.424', E'2014-02-01 23:04:41.424', E'activo', NULL, NULL, 12, 6, E'tmovimiento__all_tipo_mov', E'tmovimiento__all_tipo_mov', NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:42.049', E'2014-02-01 23:04:42.049', E'activo', NULL, NULL, 13, 10, E'tplantilla_calculo__prioridad', E'tplantilla_calculo__prioridad', NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:42.049', E'2014-02-01 23:04:42.049', E'activo', NULL, NULL, 14, 10, E'tplantilla_calculo__debe_haber', E'tplantilla_calculo__debe_haber', NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:42.049', E'2014-02-01 23:04:42.049', E'activo', NULL, NULL, 15, 10, E'tplantilla_calculo__tipo_importe', E'tplantilla_calculo__tipo_importe', NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:42.049', E'2014-02-01 23:04:42.049', E'activo', NULL, NULL, 16, 10, E'tcomprobante__accion', E'tcomprobante__accion', NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:42.123', E'2014-02-01 23:04:42.123', E'activo', NULL, NULL, 17, 2, E'tgral__direc', E'tgral__direc', NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:42.149', E'2014-02-01 23:04:42.149', E'activo', NULL, NULL, 18, 10, E'tttipo_relacion_contable__partida_tipo', E'tttipo_relacion_contable__partida_tipo', NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:42.149', E'2014-02-01 23:04:42.149', E'activo', NULL, NULL, 19, 10, E'tttipo_relacion_contable__partida_rubro', E'tttipo_relacion_contable__partida_rubro', NULL, NULL),
  (1, NULL, E'2014-06-03 12:15:14.578', E'2014-06-03 12:15:14.578', E'activo', NULL, NULL, 20, 2, E'tdepto_usuario_cargo', E'tdepto_usuario_cargo', NULL, NULL),
  (1, NULL, E'2014-06-03 12:15:14.743', E'2014-06-03 12:15:14.743', E'activo', NULL, NULL, 21, 5, E'ttipo_propiedad__tipo_dato', E'ttipo_propiedad__tipo_dato', NULL, NULL),
  (1, NULL, E'2016-03-22 09:06:49.091', E'2016-03-22 09:06:49.091', E'activo', NULL, NULL, 22, 2, E'tmoneda__origen', E'tmoneda__origen', NULL, NULL),
  (1, NULL, E'2016-03-22 09:06:49.091', E'2016-03-22 09:06:49.091', E'activo', NULL, NULL, 23, 2, E'tmoneda__tipo_actualizacion', E'tmoneda__tipo_actualizacion', NULL, NULL),
  (18, NULL, E'2016-08-09 18:31:28.467', NULL, E'activo', NULL, NULL, 24, 8, E'unidad_medida', E'tmemoria_calculo', NULL, NULL),
  (83, 83, E'2017-03-17 15:04:33.521', E'2017-03-17 15:05:16.137', E'activo', NULL, NULL, 25, 25, E'tipo_punto_venta', E'tpunto_venta', NULL, NULL),
  (1, NULL, E'2017-08-28 16:19:10.150', E'2017-08-28 16:19:10.150', E'activo', NULL, NULL, 26, 20, E'tcuenta_doc', E'tcuenta_doc', NULL, NULL),
  (1, NULL, E'2017-09-11 10:23:00.703', E'2017-09-11 10:23:00.703', E'activo', NULL, NULL, 27, 2, E'tproveedor_tipo', E'tproveedor', NULL, NULL),
  (1, NULL, E'2017-09-18 09:37:34.734', E'2017-09-18 09:37:34.734', E'activo', NULL, NULL, 28, 33, E'tactivo_fijo_valores__tipo', E'tactivo_fijo_valores__tipo', NULL, NULL),
  (1, NULL, E'2017-09-18 09:37:34.814', E'2017-09-18 09:37:34.814', E'activo', NULL, NULL, 29, 33, E'tactivo_fijo__codigo', E'tactivo_fijo__codigo', NULL, NULL),
  (1, 1, E'2017-09-18 09:37:34.859', E'2017-09-18 09:37:34.942', E'activo', NULL, NULL, 30, 33, E'tmovimiento__id_cat_movimiento', E'tmovimiento__id_cat_movimiento', NULL, NULL),
  (1, NULL, E'2017-09-18 09:37:34.942', E'2017-09-18 09:37:34.942', E'activo', NULL, NULL, 31, 33, E'tactivo_fijo__id_cat_estado_fun', E'tactivo_fijo__id_cat_estado_fun', NULL, NULL),
  (1, NULL, E'2017-09-18 09:37:34.942', E'2017-09-18 09:37:34.942', E'activo', NULL, NULL, 32, 33, E'tclasificacion__id_cat_metodo_dep', E'tclasificacion__id_cat_metodo_dep', NULL, NULL),
  (1, NULL, E'2017-09-18 09:37:34.942', E'2017-09-18 09:37:34.942', E'activo', NULL, NULL, 33, 33, E'tactivo_fijo__id_cat_estado_compra', E'tactivo_fijo__id_cat_estado_compra', NULL, NULL),
  (1, NULL, E'2017-09-18 09:37:35.224', E'2017-09-18 09:37:35.224', E'activo', NULL, NULL, 34, 33, E'tclasificacion_variable__tipo_dato', E'tclasificacion_variable__tipo_dato', NULL, NULL),
  (1, NULL, E'2017-09-18 09:37:35.325', E'2017-09-18 09:37:35.325', E'activo', NULL, NULL, 35, 33, E'tactivo_fijo__estado', E'tactivo_fijo__estado', NULL, NULL),
  (597, NULL, E'2017-09-27 18:56:43.706', NULL, E'activo', NULL, NULL, 36, 1, E'sistema_externo', E'tusuario_externo', NULL, NULL),
  (1, NULL, E'2017-09-29 10:43:42.223', E'2017-09-29 10:43:42.223', E'activo', NULL, NULL, 37, 33, E'tclasificacion_variable__obligatorio', E'tclasificacion_variable__obligatorio', NULL, NULL),
  (1, NULL, E'2017-10-17 17:40:34.874', E'2017-10-17 17:40:34.874', E'activo', NULL, NULL, 38, 33, E'tmovimiento__tipo_asig', E'tmovimiento__tipo_asig', NULL, NULL),
  (18, NULL, E'2017-10-20 17:17:11.760', NULL, E'activo', NULL, NULL, 39, 25, E'leyenda_ley_453', E'tdosificacion', NULL, NULL),
  (18, NULL, E'2017-10-20 17:17:41.185', NULL, E'activo', NULL, NULL, 40, 25, E'sistema_facturacion', E'tdosificacion', NULL, NULL),
  (18, NULL, E'2017-10-20 17:18:07.913', NULL, E'activo', NULL, NULL, 41, 25, E'nro_resolución', E'tdosificacion', NULL, NULL),
  (18, NULL, E'2017-10-20 17:18:29.929', NULL, E'activo', NULL, NULL, 42, 25, E'regimen_tributario', E'tcliente', NULL, NULL),
  (1, 1, E'2017-10-23 09:08:45.518', E'2018-01-08 16:41:36.040', E'activo', NULL, NULL, 43, 11, E'tplan_pago', E'tplan_pago', NULL, NULL),
  (612, 612, E'2017-10-23 15:47:47.402', E'2017-10-23 16:01:22.419', E'activo', NULL, NULL, 46, 2, E'caja_salud', E'tfield_tipo_archivo', NULL, NULL),
  (612, NULL, E'2017-10-23 16:16:55.595', NULL, E'activo', NULL, NULL, 47, 2, E'entidad_emisora', E'tfield_tipo_archivo', NULL, NULL),
  (18, NULL, E'2017-10-27 10:43:02.885', NULL, E'activo', NULL, NULL, 48, 2, E'carrera', E'tfield_tipo_archivo', NULL, NULL),
  (18, NULL, E'2017-10-27 10:43:12.651', NULL, E'activo', NULL, NULL, 49, 2, E'nivel_academico', E'tfield_tipo_archivo', NULL, NULL),
  (18, 18, E'2017-10-27 11:53:28.784', E'2017-10-27 11:55:08.172', E'activo', NULL, NULL, 50, 2, E'estado_civil', E'tfield_tipo_archivo', NULL, NULL),
  (18, NULL, E'2017-10-27 12:07:38.116', NULL, E'activo', NULL, NULL, 51, 2, E'afp', E'tfield_tipo_archivo', NULL, NULL),
  (18, NULL, E'2017-10-27 18:32:37.524', NULL, E'activo', NULL, NULL, 52, 2, E'tipo_discapacidad', E'tfield_tipo_archivo', NULL, NULL),
  (18, NULL, E'2017-10-27 18:34:45.229', NULL, E'activo', NULL, NULL, 53, 2, E'deficiencia', E'tfield_tipo_archivo', NULL, NULL),
  (18, NULL, E'2017-11-24 15:37:44.439', NULL, E'activo', NULL, NULL, 54, 2, E'categoria_licencia', E'tfield_tipo_archivo', NULL, NULL),
  (18, NULL, E'2017-11-24 15:37:55.210', NULL, E'activo', NULL, NULL, 55, 2, E'tipo_licencia', E'tfield_tipo_archivo', NULL, NULL),
  (612, NULL, E'2018-07-06 02:06:28.543', NULL, E'activo', NULL, NULL, 56, 7, E'prioridad', E'tsolicitud', NULL, NULL),
  (878, 878, E'2018-11-21 17:46:30.444', E'2018-11-21 17:51:11.318', E'activo', NULL, NULL, 57, 33, E'anexo', E'tanexo', NULL, NULL);


  /* Data for the 'param.tcatalogo' table */

INSERT INTO param.tcatalogo ("id_usuario_reg", "id_usuario_mod", "fecha_reg", "fecha_mod", "estado_reg", "id_usuario_ai", "usuario_ai", "id_catalogo", "codigo", "descripcion", "id_catalogo_tipo", "orden", "icono")
VALUES
  (1, NULL, E'2014-02-01 23:04:39.840', E'2014-02-01 23:04:39.840', E'activo', NULL, NULL, 1, NULL, E'Longitud', 1, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:39.840', E'2014-02-01 23:04:39.840', E'activo', NULL, NULL, 2, NULL, E'Masa', 1, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:39.840', E'2014-02-01 23:04:39.840', E'activo', NULL, NULL, 3, NULL, E'Tiempo', 1, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:39.840', E'2014-02-01 23:04:39.840', E'activo', NULL, NULL, 4, NULL, E'Intensidad eléctrica', 1, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:39.840', E'2014-02-01 23:04:39.840', E'activo', NULL, NULL, 5, NULL, E'Temperatura', 1, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:39.840', E'2014-02-01 23:04:39.840', E'activo', NULL, NULL, 6, NULL, E'Intensidad luminosa', 1, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:39.840', E'2014-02-01 23:04:39.840', E'activo', NULL, NULL, 7, NULL, E'Cantidad de sustancia', 1, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.009', E'2014-02-01 23:04:40.009', E'activo', NULL, NULL, 8, NULL, E'Incompleto', 2, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.009', E'2014-02-01 23:04:40.009', E'activo', NULL, NULL, 9, NULL, E'Completo', 2, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.009', E'2014-02-01 23:04:40.009', E'activo', NULL, NULL, 10, NULL, E'Anulado', 2, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.151', E'2014-02-01 23:04:40.151', E'activo', NULL, NULL, 11, NULL, E'Si', 3, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.151', E'2014-02-01 23:04:40.151', E'activo', NULL, NULL, 12, NULL, E'No', 3, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.197', E'2014-02-01 23:04:40.197', E'activo', NULL, NULL, 13, NULL, E'activo', 4, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.197', E'2014-02-01 23:04:40.197', E'activo', NULL, NULL, 14, NULL, E'inactivo', 4, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.197', E'2014-02-01 23:04:40.197', E'activo', NULL, NULL, 15, NULL, E'2005', 5, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.197', E'2014-02-01 23:04:40.197', E'activo', NULL, NULL, 16, NULL, E'2006', 5, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.197', E'2014-02-01 23:04:40.197', E'activo', NULL, NULL, 17, NULL, E'2007', 5, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.197', E'2014-02-01 23:04:40.197', E'activo', NULL, NULL, 18, NULL, E'2008', 5, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.197', E'2014-02-01 23:04:40.197', E'activo', NULL, NULL, 19, NULL, E'2009', 5, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.197', E'2014-02-01 23:04:40.197', E'activo', NULL, NULL, 20, NULL, E'2010', 5, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.197', E'2014-02-01 23:04:40.197', E'activo', NULL, NULL, 21, NULL, E'2011', 5, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.197', E'2014-02-01 23:04:40.197', E'activo', NULL, NULL, 22, NULL, E'2012', 5, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.197', E'2014-02-01 23:04:40.197', E'activo', NULL, NULL, 23, NULL, E'2013', 5, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.197', E'2014-02-01 23:04:40.197', E'activo', NULL, NULL, 24, NULL, E'2014', 5, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.197', E'2014-02-01 23:04:40.197', E'activo', NULL, NULL, 25, NULL, E'2015', 5, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.197', E'2014-02-01 23:04:40.197', E'activo', NULL, NULL, 26, NULL, E'2016', 5, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.197', E'2014-02-01 23:04:40.197', E'activo', NULL, NULL, 27, NULL, E'2017', 5, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.197', E'2014-02-01 23:04:40.197', E'activo', NULL, NULL, 28, NULL, E'2018', 5, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.197', E'2014-02-01 23:04:40.197', E'activo', NULL, NULL, 29, NULL, E'2019', 5, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.197', E'2014-02-01 23:04:40.197', E'activo', NULL, NULL, 30, NULL, E'2020', 5, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.197', E'2014-02-01 23:04:40.197', E'activo', NULL, NULL, 31, NULL, E'2021', 5, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.197', E'2014-02-01 23:04:40.197', E'activo', NULL, NULL, 32, NULL, E'2022', 5, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.197', E'2014-02-01 23:04:40.197', E'activo', NULL, NULL, 33, NULL, E'2023', 5, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.197', E'2014-02-01 23:04:40.197', E'activo', NULL, NULL, 34, NULL, E'2024', 5, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.197', E'2014-02-01 23:04:40.197', E'activo', NULL, NULL, 35, NULL, E'2025', 5, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.224', E'2014-02-01 23:04:40.224', E'activo', NULL, NULL, 36, NULL, E'si', 6, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.224', E'2014-02-01 23:04:40.224', E'activo', NULL, NULL, 37, NULL, E'no', 6, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.319', E'2014-02-01 23:04:40.319', E'activo', NULL, NULL, 38, NULL, E'Todos los Funcionarios', 7, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.319', E'2014-02-01 23:04:40.319', E'activo', NULL, NULL, 39, NULL, E'Seleccionar Funcionarios', 7, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.319', E'2014-02-01 23:04:40.319', E'activo', NULL, NULL, 40, NULL, E'Por Organigrama', 7, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.553', E'2014-02-01 23:04:40.553', E'activo', NULL, NULL, 41, NULL, E'ingreso', 8, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:40.553', E'2014-02-01 23:04:40.553', E'activo', NULL, NULL, 42, NULL, E'salida', 8, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:41.175', E'2014-02-01 23:04:41.175', E'activo', NULL, NULL, 43, NULL, E'Todos los Items', 9, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:41.175', E'2014-02-01 23:04:41.175', E'activo', NULL, NULL, 44, NULL, E'Seleccionar Items', 9, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:41.175', E'2014-02-01 23:04:41.175', E'activo', NULL, NULL, 45, NULL, E'Por Clasificacion', 9, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:41.332', E'2014-02-01 23:04:41.332', E'activo', NULL, NULL, 46, NULL, E'ingresos y salidas', 10, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:41.332', E'2014-02-01 23:04:41.332', E'activo', NULL, NULL, 47, NULL, E'ingreso', 10, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:41.332', E'2014-02-01 23:04:41.332', E'activo', NULL, NULL, 48, NULL, E'salida', 10, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:41.375', E'2014-02-01 23:04:41.375', E'activo', NULL, NULL, 49, NULL, E'almacen', 11, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:41.375', E'2014-02-01 23:04:41.375', E'activo', NULL, NULL, 50, NULL, E'activo_fijo', 11, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:41.424', E'2014-02-01 23:04:41.424', E'activo', NULL, NULL, 51, NULL, E'ingreso', 12, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:41.424', E'2014-02-01 23:04:41.424', E'activo', NULL, NULL, 52, NULL, E'salida', 12, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:41.424', E'2014-02-01 23:04:41.424', E'activo', NULL, NULL, 53, NULL, E'ingreso_salida', 12, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:42.049', E'2014-02-01 23:04:42.049', E'activo', NULL, NULL, 54, NULL, E'1', 13, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:42.049', E'2014-02-01 23:04:42.049', E'activo', NULL, NULL, 55, NULL, E'2', 13, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:42.049', E'2014-02-01 23:04:42.049', E'activo', NULL, NULL, 56, NULL, E'3', 13, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:42.049', E'2014-02-01 23:04:42.049', E'activo', NULL, NULL, 57, NULL, E'debe', 14, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:42.049', E'2014-02-01 23:04:42.049', E'activo', NULL, NULL, 58, NULL, E'haber', 14, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:42.049', E'2014-02-01 23:04:42.049', E'activo', NULL, NULL, 59, NULL, E'porcentaje', 15, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:42.049', E'2014-02-01 23:04:42.049', E'activo', NULL, NULL, 60, NULL, E'importe', 15, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:42.049', E'2014-02-01 23:04:42.049', E'activo', NULL, NULL, 61, NULL, E'contable', 16, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:42.049', E'2014-02-01 23:04:42.049', E'activo', NULL, NULL, 62, NULL, E'ejecucion', 16, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:42.123', E'2014-02-01 23:04:42.123', E'activo', NULL, NULL, 63, NULL, E'asc', 17, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:42.123', E'2014-02-01 23:04:42.123', E'activo', NULL, NULL, 64, NULL, E'desc', 17, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:42.149', E'2014-02-01 23:04:42.149', E'activo', NULL, NULL, 65, NULL, E'flujo', 18, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:42.149', E'2014-02-01 23:04:42.149', E'activo', NULL, NULL, 66, NULL, E'presupuestaria', 18, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:42.149', E'2014-02-01 23:04:42.149', E'activo', NULL, NULL, 67, NULL, E'flujo_presupuestaria', 18, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:42.149', E'2014-02-01 23:04:42.149', E'activo', NULL, NULL, 68, NULL, E'recurso', 19, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:42.149', E'2014-02-01 23:04:42.149', E'activo', NULL, NULL, 69, NULL, E'gasto', 19, NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:42.149', E'2014-02-01 23:04:42.149', E'activo', NULL, NULL, 70, NULL, E'recurso_gasto', 19, NULL, NULL),
  (1, NULL, E'2014-06-03 12:15:14.578', E'2014-06-03 12:15:14.578', E'activo', NULL, NULL, 71, NULL, E'responsable', 20, NULL, NULL),
  (1, NULL, E'2014-06-03 12:15:14.578', E'2014-06-03 12:15:14.578', E'activo', NULL, NULL, 72, NULL, E'auxiliar', 20, NULL, NULL),
  (1, NULL, E'2014-06-03 12:15:14.743', E'2014-06-03 12:15:14.743', E'activo', NULL, NULL, 73, NULL, E'string', 21, NULL, NULL),
  (1, NULL, E'2014-06-03 12:15:14.743', E'2014-06-03 12:15:14.743', E'activo', NULL, NULL, 74, NULL, E'date', 21, NULL, NULL),
  (1, NULL, E'2014-06-03 12:15:14.743', E'2014-06-03 12:15:14.743', E'activo', NULL, NULL, 75, NULL, E'numeric', 21, NULL, NULL),
  (175, NULL, E'2015-05-08 17:53:50.374', NULL, E'activo', NULL, NULL, 76, E'', E'contador', 20, NULL, NULL),
  (175, NULL, E'2015-05-08 17:57:34.446', NULL, E'activo', NULL, NULL, 77, E'', E'supervisor', 20, NULL, NULL),
  (1, NULL, E'2016-03-22 09:06:49.091', E'2016-03-22 09:06:49.091', E'activo', NULL, NULL, 78, NULL, E'nacional', 22, NULL, NULL),
  (1, NULL, E'2016-03-22 09:06:49.091', E'2016-03-22 09:06:49.091', E'activo', NULL, NULL, 79, NULL, E'extranjera', 22, NULL, NULL),
  (1, NULL, E'2016-03-22 09:06:49.091', E'2016-03-22 09:06:49.091', E'activo', NULL, NULL, 80, NULL, E'sin_actualizacion', 23, NULL, NULL),
  (1, NULL, E'2016-03-22 09:06:49.091', E'2016-03-22 09:06:49.091', E'activo', NULL, NULL, 81, NULL, E'por_saldo', 23, NULL, NULL),
  (1, NULL, E'2016-03-22 09:06:49.091', E'2016-03-22 09:06:49.091', E'activo', NULL, NULL, 82, NULL, E'por_transaccion', 23, NULL, NULL),
  (1, NULL, E'2016-05-05 13:04:25.520', E'2016-05-05 13:04:25.520', E'activo', NULL, NULL, 83, E'unidad', E'unidad', NULL, NULL, NULL),
  (1, NULL, E'2016-05-05 13:04:25.520', E'2016-05-05 13:04:25.520', E'activo', NULL, NULL, 84, E'meses', E'meses', NULL, NULL, NULL),
  (1, NULL, E'2016-05-05 13:04:25.520', E'2016-05-05 13:04:25.520', E'activo', NULL, NULL, 85, E'global', E'global', NULL, NULL, NULL),
  (1, NULL, E'2016-05-05 13:04:25.520', E'2016-05-05 13:04:25.520', E'activo', NULL, NULL, 86, E'pieza', E'pieza', NULL, NULL, NULL),
  (18, NULL, E'2016-08-09 18:32:01.437', NULL, E'activo', NULL, NULL, 87, E'meses', E'meses', 24, NULL, NULL),
  (18, NULL, E'2016-08-09 18:32:13.623', NULL, E'activo', NULL, NULL, 88, E'global', E'global', 24, NULL, NULL),
  (18, NULL, E'2016-08-09 18:32:30.728', NULL, E'activo', NULL, NULL, 89, E'unidad', E'unidad', 24, NULL, NULL),
  (18, NULL, E'2016-08-09 18:32:44.161', NULL, E'activo', NULL, NULL, 90, E'pieza', E'pieza', 24, NULL, NULL),
  (18, NULL, E'2016-08-17 18:12:14.731', NULL, E'activo', NULL, NULL, 91, E'dias', E'dias', 24, NULL, NULL),
  (18, NULL, E'2016-08-18 14:59:01.121', NULL, E'activo', NULL, NULL, 92, E'resma', E'resma', 24, NULL, NULL),
  (18, NULL, E'2016-08-18 14:59:14.401', NULL, E'activo', NULL, NULL, 93, E'caja', E'caja', 24, NULL, NULL),
  (18, NULL, E'2016-08-18 14:59:27.448', NULL, E'activo', NULL, NULL, 94, E'paquete', E'paquete', 24, NULL, NULL),
  (1, NULL, E'2017-03-15 10:07:33.110', E'2017-03-15 10:07:33.110', E'activo', NULL, NULL, 95, E'registrado', E'registrado', NULL, NULL, NULL),
  (1, NULL, E'2017-03-15 10:07:33.110', E'2017-03-15 10:07:33.110', E'activo', NULL, NULL, 96, E'comprado', E'comprado', NULL, NULL, NULL),
  (1, NULL, E'2017-03-15 10:07:33.110', E'2017-03-15 10:07:33.110', E'activo', NULL, NULL, 97, E'finalizado', E'finalizado', NULL, NULL, NULL),
  (83, NULL, E'2017-03-17 15:05:43.454', NULL, E'activo', NULL, NULL, 98, E'ato', E'aeropuerto', 25, NULL, NULL),
  (83, NULL, E'2017-03-17 15:05:49.979', NULL, E'activo', NULL, NULL, 99, E'cto', E'cto', 25, NULL, NULL),
  (1, 18, E'2017-08-28 16:19:10.150', E'2017-08-29 11:07:50.660', E'activo', NULL, NULL, 100, E'contabilizado', E'Entregado', 26, NULL, NULL),
  (1, 18, E'2017-08-28 16:19:10.150', E'2017-08-29 11:07:55.728', E'activo', NULL, NULL, 101, E'finalizado', E'Finalizado', 26, NULL, NULL),
  (18, NULL, E'2017-08-29 11:04:43.416', NULL, E'activo', NULL, NULL, 102, E'borrador', E'Borrador', 26, NULL, NULL),
  (18, NULL, E'2017-08-29 11:06:12.401', NULL, E'activo', NULL, NULL, 103, E'vbtesoreria', E'VoBo Tesoreria', 26, NULL, NULL),
  (18, NULL, E'2017-08-29 11:06:44.925', NULL, E'activo', NULL, NULL, 104, E'vbgaf', E'VoBo GAF', 26, NULL, NULL),
  (1, NULL, E'2017-09-11 10:23:00.703', E'2017-09-11 10:23:00.703', E'activo', NULL, NULL, 105, E'abastecimiento', E'Abastecimiento', 27, NULL, NULL),
  (1, NULL, E'2017-09-11 10:23:00.703', E'2017-09-11 10:23:00.703', E'activo', NULL, NULL, 106, E'general', E'General', 27, NULL, NULL),
  (1, NULL, E'2017-09-18 09:37:34.734', E'2017-09-18 09:37:34.734', E'activo', NULL, NULL, 107, E'alta', E'Alta', 28, NULL, E''),
  (1, NULL, E'2017-09-18 09:37:34.734', E'2017-09-18 09:37:34.734', E'activo', NULL, NULL, 108, E'reval', E'Revalorizacion', 28, NULL, E''),
  (1, NULL, E'2017-09-18 09:37:34.734', E'2017-09-18 09:37:34.734', E'activo', NULL, NULL, 109, E'otro', E'Otros', 28, NULL, E''),
  (1, NULL, E'2017-09-18 09:37:34.814', E'2017-09-18 09:37:34.814', E'activo', NULL, NULL, 110, NULL, E'texto', 29, NULL, NULL),
  (1, NULL, E'2017-09-18 09:37:34.814', E'2017-09-18 09:37:34.814', E'activo', NULL, NULL, 111, NULL, E'barras', 29, NULL, NULL),
  (1, NULL, E'2017-09-18 09:37:34.814', E'2017-09-18 09:37:34.814', E'activo', NULL, NULL, 112, NULL, E'qr', 29, NULL, NULL),
  (1, 1, E'2017-09-18 09:37:34.859', E'2017-09-18 09:37:34.942', E'activo', NULL, NULL, 113, E'transf', E'Transferencia', 30, 4, E'transferencia.png'),
  (1, 1, E'2017-09-18 09:37:34.859', E'2017-09-18 09:37:34.942', E'activo', NULL, NULL, 116, E'tranfdep', E'Transferencia Deposito', 30, 7, E'transfdep.png'),
  (1, NULL, E'2017-09-18 09:37:34.942', E'2017-09-18 09:37:34.942', E'activo', NULL, NULL, 117, E'3', E'Malo en Uso', 31, NULL, NULL),
  (1, NULL, E'2017-09-18 09:37:34.942', E'2017-09-18 09:37:34.942', E'activo', NULL, NULL, 118, E'4', E'Malo en Desuso', 31, NULL, NULL),
  (1, NULL, E'2017-09-18 09:37:34.942', E'2017-09-18 09:37:34.942', E'activo', NULL, NULL, 119, E'1', E'Bueno', 31, NULL, NULL),
  (1, NULL, E'2017-09-18 09:37:34.942', E'2017-09-18 09:37:34.942', E'activo', NULL, NULL, 120, E'2', E'Regular', 31, NULL, NULL),
  (1, NULL, E'2017-09-18 09:37:34.942', E'2017-09-18 09:37:34.942', E'activo', NULL, NULL, 121, NULL, E'lineal', 32, NULL, NULL),
  (1, NULL, E'2017-09-18 09:37:34.942', E'2017-09-18 09:37:34.942', E'activo', NULL, NULL, 122, NULL, E'hrs_prod', 32, NULL, NULL),
  (1, NULL, E'2017-09-18 09:37:34.942', E'2017-09-18 09:37:34.942', E'activo', NULL, NULL, 123, E'nuevo', E'Nuevo', 33, NULL, NULL),
  (1, NULL, E'2017-09-18 09:37:34.942', E'2017-09-18 09:37:34.942', E'activo', NULL, NULL, 124, E'usado', E'Usado', 33, NULL, NULL),
  (1, NULL, E'2017-09-18 09:37:34.942', E'2017-09-18 09:37:34.942', E'activo', NULL, NULL, 125, E'alta', E'Alta', 30, 1, E'alta.png'),
  (1, NULL, E'2017-09-18 09:37:34.942', E'2017-09-18 09:37:34.942', E'activo', NULL, NULL, 126, E'baja', E'Baja', 30, 12, E'baja.png'),
  (1, 839, E'2017-09-18 09:37:34.942', E'2018-12-19 18:09:05.252', E'activo', NULL, NULL, 127, E'reval', E'Revalorización/Renovación', 30, 8, E'reval.png'),
  (1, NULL, E'2017-09-18 09:37:34.942', E'2017-09-18 09:37:34.942', E'activo', NULL, NULL, 128, E'deprec', E'Depreciación/Actualización', 30, 5, E'depreciacion.png'),
  (1, NULL, E'2017-09-18 09:37:34.942', E'2017-09-18 09:37:34.942', E'activo', NULL, NULL, 129, E'asig', E'Asignación', 30, 2, E'asignacion.png'),
  (1, NULL, E'2017-09-18 09:37:34.942', E'2017-09-18 09:37:34.942', E'activo', NULL, NULL, 130, E'devol', E'Devolución', 30, 3, E'devolucion.png'),
  (1, NULL, E'2017-09-18 09:37:34.942', E'2017-09-18 09:37:34.942', E'activo', NULL, NULL, 131, E'ajuste', E'Ajustes', 30, 10, E'ajuste.png'),
  (1, NULL, E'2017-09-18 09:37:34.942', E'2017-09-18 09:37:34.942', E'activo', NULL, NULL, 132, E'retiro', E'Retiros', 30, 11, E'retiro.png'),
  (1, NULL, E'2017-09-18 09:37:35.042', E'2017-09-18 09:37:35.042', E'activo', NULL, NULL, 133, E'actua', E'Actualización', 30, 6, E'actualizacion.png'),
  (1, NULL, E'2017-09-18 09:37:35.224', E'2017-09-18 09:37:35.224', E'activo', NULL, NULL, 134, E'fecha', E'Fecha', 34, NULL, NULL),
  (1, NULL, E'2017-09-18 09:37:35.224', E'2017-09-18 09:37:35.224', E'activo', NULL, NULL, 135, E'numero', E'Número', 34, NULL, NULL),
  (1, NULL, E'2017-09-18 09:37:35.224', E'2017-09-18 09:37:35.224', E'activo', NULL, NULL, 136, E'texto', E'Texto', 34, NULL, NULL),
  (1, 839, E'2017-09-18 09:37:35.224', E'2018-12-19 18:09:30.255', E'activo', NULL, NULL, 137, E'mejora', E'Mejora/Actualización', 30, 9, E'mejora.png'),
  (1, NULL, E'2017-09-18 09:37:35.224', E'2017-09-18 09:37:35.224', E'activo', NULL, NULL, 138, E'divis', E'División de valores', 30, 13, E'division.png'),
  (1, NULL, E'2017-09-18 09:37:35.224', E'2017-09-18 09:37:35.224', E'activo', NULL, NULL, 139, E'desgl', E'Desglose', 30, 14, E'desglose.png'),
  (1, NULL, E'2017-09-18 09:37:35.224', E'2017-09-18 09:37:35.224', E'activo', NULL, NULL, 140, E'intpar', E'Intercambio de partes', 30, 15, E'partes.png'),
  (1, NULL, E'2017-09-18 09:37:35.224', E'2017-09-18 09:37:35.224', E'activo', NULL, NULL, 141, E'transito', E'Activos fijos en Transito', 30, 16, E'transito.png'),
  (1, NULL, E'2017-09-18 09:37:35.325', E'2017-09-18 09:37:35.325', E'activo', NULL, NULL, 142, E'registrado', E'Registrado', 35, NULL, NULL),
  (1, NULL, E'2017-09-18 09:37:35.325', E'2017-09-18 09:37:35.325', E'activo', NULL, NULL, 143, E'alta', E'Alta', 35, NULL, NULL),
  (1, NULL, E'2017-09-18 09:37:35.325', E'2017-09-18 09:37:35.325', E'activo', NULL, NULL, 144, E'transito', E'Tránsito', 35, NULL, NULL),
  (1, NULL, E'2017-09-18 09:37:35.325', E'2017-09-18 09:37:35.325', E'activo', NULL, NULL, 145, E'baja', E'Baja', 35, NULL, NULL),
  (1, NULL, E'2017-09-18 09:37:35.325', E'2017-09-18 09:37:35.325', E'activo', NULL, NULL, 146, E'retiro', E'Retiro', 35, NULL, NULL),
  (597, NULL, E'2017-09-27 18:57:21.538', NULL, E'activo', NULL, NULL, 147, E'', E'Infomix', 36, NULL, NULL),
  (597, NULL, E'2017-09-27 18:57:38.080', NULL, E'activo', NULL, NULL, 148, E'', E'Amadeus ', 36, NULL, NULL),
  (597, NULL, E'2017-09-27 18:57:52.754', NULL, E'activo', NULL, NULL, 149, E'', E'Sigep', 36, NULL, NULL),
  (1, NULL, E'2017-09-29 10:43:42.223', E'2017-09-29 10:43:42.223', E'activo', NULL, NULL, 150, E'si', E'si', 37, NULL, NULL),
  (1, NULL, E'2017-09-29 10:43:42.223', E'2017-09-29 10:43:42.223', E'activo', NULL, NULL, 151, E'no', E'no', 37, NULL, NULL),
  (1, NULL, E'2017-10-17 17:40:34.874', E'2017-10-17 17:40:34.874', E'activo', NULL, NULL, 152, E'todos', E'Todos los Activos', 38, NULL, E''),
  (1, NULL, E'2017-10-17 17:40:34.874', E'2017-10-17 17:40:34.874', E'activo', NULL, NULL, 153, E'seleccionar', E'Seleccionar', 38, NULL, E''),
  (18, NULL, E'2017-10-20 17:21:55.053', NULL, E'activo', NULL, NULL, 154, E'', E'Ley N° 453: Si se te ha vulnerado algún derecho puedes exigir la reposición o restauración.', 39, NULL, NULL),
  (18, NULL, E'2017-10-20 17:22:10.541', NULL, E'activo', NULL, NULL, 155, E'', E'Ley N° 453: El proveedor deberá dar cumplimiento a las condiciones ofertadas.', 39, NULL, NULL),
  (18, NULL, E'2017-10-20 17:22:28.444', NULL, E'activo', NULL, NULL, 156, E'', E'Ley N° 453: Están prohibidas las prácticas comerciales abusivas, tienes derecho a denunciarlas.', 39, NULL, NULL),
  (18, NULL, E'2017-10-20 17:22:44.639', NULL, E'activo', NULL, NULL, 157, E'', E'Ley N° 453: Tienes derecho a recibir información que te proteja de la publicidad engañosa.', 39, NULL, NULL),
  (18, NULL, E'2017-10-20 17:23:07.846', NULL, E'activo', NULL, NULL, 158, E'', E'Ley N° 453: Puedes acceder a la reclamación cuando tus derechos han sido vulnerados.', 39, NULL, NULL),
  (18, NULL, E'2017-10-20 17:23:32.370', NULL, E'activo', NULL, NULL, 159, E'', E'Ley N° 453: Los contratos de adhesión deben redactarse en términos claros, comprensibles, legibles y deben informar todas las facilidades y limitaciones.', 39, NULL, NULL),
  (18, NULL, E'2017-10-20 17:24:43.275', NULL, E'activo', NULL, NULL, 160, E'', E'Ley N° 453: Se debe promover el consumo solidario, justo, en armonía con la Madre Tierra y precautelando el hábitat, en el marco del Vivir Bien.', 39, NULL, NULL),
  (18, NULL, E'2017-10-20 17:24:59.321', NULL, E'activo', NULL, NULL, 161, E'', E'Ley N° 453: El proveedor de productos debe habilitar medios e instrumentos para efectuar consultas y reclamaciones.', 39, NULL, NULL),
  (18, NULL, E'2017-10-20 17:25:16.520', NULL, E'activo', NULL, NULL, 162, E'', E'Ley N° 453: El proveedor debe brindar atención sin discriminación, con respeto, calidez y cordialidad a los usuarios y consumidores.', 39, NULL, NULL),
  (18, NULL, E'2017-10-20 17:25:32.678', NULL, E'activo', NULL, NULL, 163, E'', E'Ley N° 453: Los servicios deben suministrarse en condiciones de inocuidad, calidad y seguridad.', 39, NULL, NULL),
  (18, NULL, E'2017-10-20 17:25:43.988', NULL, E'activo', NULL, NULL, 164, E'', E'Ley N° 453: Tienes derecho a un trato equitativo sin discriminación en la oferta de servicios.', 39, NULL, NULL),
  (18, NULL, E'2017-10-20 17:25:55.842', NULL, E'activo', NULL, NULL, 165, E'', E'Ley N° 453: El proveedor deberá suministrar el servicio en las modalidades y términos ofertados o convenidos.', 39, NULL, NULL),
  (18, NULL, E'2017-10-20 17:26:11.945', NULL, E'activo', NULL, NULL, 166, E'', E'Ley N° 453: En caso de incumplimiento a lo ofertado o convenido, el proveedor debe reparar o sustituir el servicio.', 39, NULL, NULL),
  (18, NULL, E'2017-10-20 17:26:33.130', NULL, E'activo', NULL, NULL, 167, E'', E'Ley N° 453: Tienes derecho a recibir información sobre las características y contenidos de los servicios que utilices.', 39, NULL, NULL),
  (18, NULL, E'2017-10-20 17:26:52.604', NULL, E'activo', NULL, NULL, 168, E'', E'Ley N° 453: La interrupción del servicio debe comunicarse con anterioridad a las Autoridades que correspondan y a los usuarios afectados.', 39, NULL, NULL),
  (18, NULL, E'2017-10-20 17:27:04.710', NULL, E'activo', NULL, NULL, 169, E'', E'Ley N° 453: El proveedor de servicios debe habilitar medios e instrumentos para efectuar consultas y reclamaciones.', 39, NULL, NULL),
  (18, NULL, E'2017-10-20 17:27:25.301', NULL, E'activo', NULL, NULL, 170, E'', E'Ley N° 453: El proveedor debe exhibir certificaciones de habilitación o documentos que acrediten las capacidades u ofertas de servicios especializados.', 39, NULL, NULL),
  (18, NULL, E'2017-10-20 17:29:50.200', NULL, E'activo', NULL, NULL, 171, E'', E'SISTEMAFACTURACIONBOA', 40, NULL, NULL),
  (18, NULL, E'2017-10-20 17:30:02.068', NULL, E'activo', NULL, NULL, 172, E'', E'SISTEMA FACTURACION NCD', 40, NULL, NULL),
  (18, NULL, E'2017-10-20 17:31:33.427', NULL, E'activo', NULL, NULL, 173, E'', E'BOA CARGO', 40, NULL, NULL),
  (18, NULL, E'2017-10-20 17:32:08.328', NULL, E'activo', NULL, NULL, 174, E'', E'RND 10-0021-16 Sistema de Facturación Virtual – Ultimo', 41, NULL, NULL),
  (18, NULL, E'2017-10-20 17:32:48.326', NULL, E'activo', NULL, NULL, 175, E'', E'Persona Natural', 42, NULL, NULL),
  (18, NULL, E'2017-10-20 17:33:15.202', NULL, E'activo', NULL, NULL, 176, E'', E'Régimen Tributario Simplificado', 42, NULL, NULL),
  (18, NULL, E'2017-10-20 17:34:07.843', NULL, E'activo', NULL, NULL, 177, E'', E'Régimen General', 42, NULL, NULL),
  (1, 1, E'2017-10-23 09:08:45.518', E'2018-01-08 16:41:36.040', E'activo', NULL, NULL, 178, E'devengado', E'Devengado', 43, NULL, NULL),
  (1, 1, E'2017-10-23 09:08:45.518', E'2018-01-08 16:41:36.040', E'activo', NULL, NULL, 179, E'borrador', E'Borrador', 43, NULL, NULL),
  (1, 1, E'2017-10-23 09:08:45.518', E'2018-01-08 16:41:36.040', E'activo', NULL, NULL, 180, E'anulado', E'Anulado', 43, NULL, NULL),
  (1, 1, E'2017-10-23 09:08:45.518', E'2018-01-08 16:41:36.040', E'activo', NULL, NULL, 181, E'pago_exterior', E'Pago Exterior', 43, NULL, NULL),
  (1, 1, E'2017-10-23 09:08:45.518', E'2018-01-08 16:41:36.040', E'activo', NULL, NULL, 182, E'pagado', E'Contabilizado', 43, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 183, E'UCATEC', E'Uni. Priv. de Cs. Administrativas y Tecnológicas', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 184, E'UDABOL', E'Universidad de Aquino Bolivia', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 185, E'UAB', E'Universidad Adventista de Bolivia', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 186, E'UPAL', E'Universidad Privada Abierta Latinoamericana', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 187, E'UPB', E'Universidad Privada Boliviana', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 188, E'UNIFRANZ', E'Universidad Privada Franz Tamayo', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 189, E'UNITEPC', E'Universidad Técnica Privada Cosmos', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 190, E'UPEA', E'Universidad Pública de El Alto', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 191, E'ULS', E'Universidad La Salle', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 192, E'UBI', E'Universidad Boliviana de Informática', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 193, E'UNUR', E'Universidad Nur', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 194, E'ULOYOLA', E'Universidad Loyola', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 195, E'UNSLP', E'Universidad Privada Nuestra Señora de La Paz', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 196, E'USFA', E'Universidad Privada San Francisco de Asis', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 197, E'UREAL', E'Universidad Real', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 198, E'USALESIANA', E'Universidad Salesiana de Bolivia', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 199, E'UDELOSANDES', E'Universidad de los Andes', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 200, E'UPIEB', E'Universidad para la Investig. Estratégica en Bolivia', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 201, E'UTB', E'Universidad Tecnológica Boliviana', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 202, E'UB', E'Universidad Unión Bolivariana', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 203, E'USP', E'Universidad Saint Paul', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 204, E'UCORDILLERA', E'Universidad de la Cordillera', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 205, E'UNIOR', E'Universidad Privada De Oruro', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 206, E'UAP', E'Universidad Amazónica de Pando', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 207, E'UNO', E'Universidad Nacional del Oriente', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 208, E'UECOLOGICA', E'Univ. Nac. Ecológica Santa Cruz', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 209, E'UCEBOL', E'Universidad Cristiana de Bolivia', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 210, E'UEMKULJIS', E'Universidad Empresarial Mateo Kuljis', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 211, E'UEB', E'Universidad Evangélica Boliviana', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 212, E'UPCUMBRE', E'Universidad Privada Cumbre', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 213, E'UNIBETH', E'Universidad Bethesda', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 214, E'UPSA', E'Univ. Priv. de Sta. Cruz de la Sierra', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 215, E'UPDS', E'Universidad Privada Domingo Savio', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 216, E'UTEPSA', E'Univ. Tecnológica Priv. de Sta. Cruz', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 217, E'UATF', E'Universidad Autónoma Tomás Frías', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 218, E'UNSXX', E'Universidad Nacional Siglo XX', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 19:04:04', E'2017-10-23 19:04:04', E'activo', NULL, NULL, 219, E'UAJMS', E'Universidad Autónoma Juan Misael Saracho', 47, NULL, NULL),
  (612, 612, E'2017-10-23 15:48:52.313', E'2017-10-23 16:36:47.390', E'activo', NULL, NULL, 220, E'cordes_cbba', E'Cordes Cochabamba', 46, NULL, NULL),
  (612, 612, E'2017-10-23 15:49:27.246', E'2017-10-23 16:36:58.653', E'activo', NULL, NULL, 221, E'cordes_lp', E'Cordes La Paz', 46, NULL, NULL),
  (612, 612, E'2017-10-23 15:50:02.431', E'2017-10-23 16:37:19.183', E'activo', NULL, NULL, 222, E'cordes_scz', E'Cordes Santa Cruz', 46, NULL, NULL),
  (612, NULL, E'2017-10-23 16:18:14.314', NULL, E'activo', NULL, NULL, 223, E'UMSS', E'Universidad Mayor de San Simón', 47, NULL, NULL),
  (612, 612, E'2017-10-23 16:18:47.260', E'2017-10-23 16:40:39.954', E'activo', NULL, NULL, 224, E'UMSA', E'Universidad Mayor de San Andrés', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 16:22:10.506', NULL, E'activo', NULL, NULL, 225, E'UAGRM', E'Universidad Autónoma Gabriel René Moreno', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 16:23:35.362', NULL, E'activo', NULL, NULL, 226, E'UTO', E'Universidad Técnica de Oruro', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 16:25:02.706', NULL, E'activo', NULL, NULL, 227, E'UABJB', E'Universidad Autónoma del Beni José Ballivián', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 16:27:09.884', NULL, E'activo', NULL, NULL, 228, E'USFX', E'Universidad Mayor de San Francisco Xavier', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 16:27:43.134', NULL, E'activo', NULL, NULL, 229, E'SEDUCA', E'SEDUCA', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 16:28:55.351', NULL, E'activo', NULL, NULL, 230, E'UASB', E'Universidad Andina Simón Bolívar', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 16:30:45.735', NULL, E'activo', NULL, NULL, 231, E'UNIVALLE', E'Universidad Privada del Valle (UNIVALLE)', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 16:31:43.176', NULL, E'activo', NULL, NULL, 232, E'EMI', E'Escuela Militar de Ingeniería ', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 16:32:26.809', NULL, E'activo', NULL, NULL, 233, E'USIP', E'Universidad Simón I. Patiño ', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 16:33:06.616', NULL, E'activo', NULL, NULL, 234, E'UNICEN', E'Universidad Central', 47, NULL, NULL),
  (612, NULL, E'2017-10-23 16:34:12.082', NULL, E'activo', NULL, NULL, 235, E'UCB', E'Universidad Católica Boliviana San Pablo', 47, NULL, NULL),
  (18, 18, E'2017-10-27 10:44:30.794', E'2017-10-27 10:45:20.463', E'activo', NULL, NULL, 236, E'TM', E'Técnico Medio', 49, NULL, NULL),
  (18, NULL, E'2017-10-27 10:44:49.815', NULL, E'activo', NULL, NULL, 237, E'TS', E'Técnico Superior', 49, NULL, NULL),
  (18, NULL, E'2017-10-27 10:45:11.490', NULL, E'activo', NULL, NULL, 238, E'LC', E'Licenciatura', 49, NULL, NULL),
  (18, NULL, E'2017-10-27 10:48:22.708', NULL, E'activo', NULL, NULL, 239, E'ADM', E'Administración de Empresas', 48, NULL, NULL),
  (18, NULL, E'2017-10-27 10:48:45.491', NULL, E'activo', NULL, NULL, 240, E'CONT', E'Contaduría Pública', 48, NULL, NULL),
  (18, NULL, E'2017-10-27 10:49:05.808', NULL, E'activo', NULL, NULL, 241, E'COM', E'Comunicación Social', 48, NULL, NULL),
  (18, 18, E'2017-10-27 10:49:22.061', E'2017-10-27 10:49:56.942', E'activo', NULL, NULL, 242, E'TUR', E'Turismo', 48, NULL, NULL),
  (18, NULL, E'2017-10-27 10:50:18.923', NULL, E'activo', NULL, NULL, 243, E'AER', E'Aeronautica', 48, NULL, NULL),
  (18, NULL, E'2017-10-27 10:50:59.734', NULL, E'activo', NULL, NULL, 244, E'MAN', E'Mantenimiento de Aeronaves', 48, NULL, NULL),
  (18, NULL, E'2017-10-27 10:51:22.202', NULL, E'activo', NULL, NULL, 245, E'SIS', E'Ingenieria de Sistemas', 48, NULL, NULL),
  (18, NULL, E'2017-10-27 10:51:33.963', NULL, E'activo', NULL, NULL, 246, E'INF', E'Ingenieria Informatica', 48, NULL, NULL),
  (18, NULL, E'2017-10-27 10:52:40.810', NULL, E'activo', NULL, NULL, 247, E'CJUR', E'Ciencias Juridicas', 48, NULL, NULL),
  (18, NULL, E'2017-10-27 10:53:18.066', NULL, E'activo', NULL, NULL, 248, E'AUD', E'Auditoria', 48, NULL, NULL),
  (18, NULL, E'2017-10-27 10:53:29.536', NULL, E'activo', NULL, NULL, 249, E'ELEC', E'Electrónica', 48, NULL, NULL),
  (18, NULL, E'2017-10-27 10:53:40.085', NULL, E'activo', NULL, NULL, 250, E'ELECM', E'Electromecanica', 48, NULL, NULL),
  (18, NULL, E'2017-10-27 10:53:52.118', NULL, E'activo', NULL, NULL, 251, E'IND', E'Industrial', 48, NULL, NULL),
  (18, NULL, E'2017-10-27 10:54:21.210', NULL, E'activo', NULL, NULL, 252, E'DIS', E'Diseño Gráfico', 48, NULL, NULL),
  (18, NULL, E'2017-10-27 10:54:56.168', NULL, E'activo', NULL, NULL, 253, E'COME', E'Ingenieria Comercial', 48, NULL, NULL),
  (18, NULL, E'2017-10-27 10:55:14.967', NULL, E'activo', NULL, NULL, 254, E'ECO', E'Economia', 48, NULL, NULL),
  (18, NULL, E'2017-10-27 11:55:57.648', NULL, E'activo', NULL, NULL, 255, E'SOL', E'Solter@', 50, NULL, NULL),
  (18, NULL, E'2017-10-27 11:56:07.991', NULL, E'activo', NULL, NULL, 256, E'CAS', E'Casad@', 50, NULL, NULL),
  (18, NULL, E'2017-10-27 11:56:20.142', NULL, E'activo', NULL, NULL, 257, E'VIU', E'Vidud@', 50, NULL, NULL),
  (18, NULL, E'2017-10-27 11:56:45.107', NULL, E'activo', NULL, NULL, 258, E'DIV', E'Divorciad@', 50, NULL, NULL),
  (18, NULL, E'2017-10-27 12:08:00.650', NULL, E'activo', NULL, NULL, 259, E'PREV', E'Previsión', 51, NULL, NULL),
  (18, NULL, E'2017-10-27 12:08:07.709', NULL, E'activo', NULL, NULL, 260, E'FUT', E'Futuro', 51, NULL, NULL),
  (18, 18, E'2017-10-27 18:33:20.071', E'2017-10-27 18:33:39.603', E'activo', NULL, NULL, 261, E'FIS', E'Física', 52, NULL, NULL),
  (18, NULL, E'2017-10-27 18:33:27.029', NULL, E'activo', NULL, NULL, 262, E'SEN', E'Sensorial', 52, NULL, NULL),
  (18, NULL, E'2017-10-27 18:35:26.940', NULL, E'activo', NULL, NULL, 263, E'FIS-MOT', E'Física - Motora', 53, NULL, NULL),
  (18, NULL, E'2017-10-27 18:35:35.073', NULL, E'activo', NULL, NULL, 264, E'AUD', E'Auditiva', 53, NULL, NULL),
  (18, NULL, E'2017-11-24 15:39:23.240', NULL, E'activo', NULL, NULL, 265, E'a', E'A', 54, NULL, NULL),
  (18, NULL, E'2017-11-24 15:39:31.433', NULL, E'activo', NULL, NULL, 266, E'b', E'B', 54, NULL, NULL),
  (18, NULL, E'2017-11-24 15:39:38.340', NULL, E'activo', NULL, NULL, 267, E'c', E'C', 54, NULL, NULL),
  (18, NULL, E'2017-11-24 15:39:51.244', NULL, E'activo', NULL, NULL, 268, E'p', E'P', 54, NULL, NULL),
  (18, NULL, E'2017-11-24 15:40:06.274', NULL, E'activo', NULL, NULL, 269, E'm', E'M', 54, NULL, NULL),
  (18, NULL, E'2017-11-24 15:41:13.386', NULL, E'activo', NULL, NULL, 270, E'PC', E'Piloto Comercial', 55, NULL, NULL),
  (18, NULL, E'2017-11-24 15:41:36.559', NULL, E'activo', NULL, NULL, 271, E'PLA', E'Piloto de Linea Aérea', 55, NULL, NULL),
  (18, NULL, E'2017-11-24 15:41:50.444', NULL, E'activo', NULL, NULL, 272, E'PP', E'Piloto Privado', 55, NULL, NULL),
  (18, NULL, E'2017-11-24 15:42:04.888', NULL, E'activo', NULL, NULL, 273, E'DV', E'Despachador de Vuelo', 55, NULL, NULL),
  (18, NULL, E'2017-11-24 15:42:26.814', NULL, E'activo', NULL, NULL, 274, E'EOV', E'Encargado de Operaciones de Vuelo', 55, NULL, NULL),
  (18, 18, E'2017-11-24 15:43:53.118', E'2017-11-24 15:52:06.666', E'activo', NULL, NULL, 275, E'Me5700', E'Menores a 5.700', 55, NULL, NULL),
  (18, 18, E'2017-11-24 15:44:16.704', E'2017-11-24 15:52:18.065', E'activo', NULL, NULL, 276, E'Ma5700', E'Mayores a 5.700', 55, NULL, NULL),
  (18, NULL, E'2017-11-24 15:53:17.019', NULL, E'activo', NULL, NULL, 277, E'tripulante_cabina', E'Tripulante de Cabina', 55, NULL, NULL),
  (18, NULL, E'2018-01-04 08:53:13.667', NULL, E'activo', NULL, NULL, 278, E'IPE', E'Ingeniería Petrolera', 48, NULL, NULL),
  (18, NULL, E'2018-01-12 16:16:33.374', NULL, E'activo', NULL, NULL, 279, E'OA', E'Oasis del Aire', 47, NULL, NULL),
  (18, NULL, E'2018-01-12 16:16:50.813', NULL, E'activo', NULL, NULL, 280, E'DC', E'Delta Charly', 47, NULL, NULL),
  (18, NULL, E'2018-01-12 16:16:58.998', NULL, E'activo', NULL, NULL, 281, E'IN', E'INAC', 47, NULL, NULL),
  (18, NULL, E'2018-01-12 16:17:15.147', NULL, E'activo', NULL, NULL, 282, E'AE', E'AEREOHORIZONTE', 47, NULL, NULL),
  (18, NULL, E'2018-01-12 16:17:28.978', NULL, E'activo', NULL, NULL, 283, E'ADB', E'Alas del Beni', 47, NULL, NULL),
  (511, NULL, E'2018-01-19 15:32:41.298', NULL, E'activo', NULL, NULL, 284, E'INFIN', E'Ingeniería Financiera', 48, NULL, NULL),
  (511, NULL, E'2018-01-27 14:49:38.962', NULL, E'activo', NULL, NULL, 285, E'SecrAd', E'Secretaria Administrativa', 48, NULL, NULL),
  (511, NULL, E'2018-01-29 10:10:42.665', NULL, E'activo', NULL, NULL, 286, E'CONGRAL', E'CONTADOR GENERAL', 48, NULL, NULL),
  (511, NULL, E'2018-01-29 15:59:32.064', NULL, E'activo', NULL, NULL, 287, E'INS_CATEC', E'INSTITUTO C.A.T.E.C', 47, NULL, NULL),
  (511, NULL, E'2018-01-29 16:29:09.962', NULL, E'activo', NULL, NULL, 288, E'INS-EDUBAN', E'Instituto de Educación Bancaria(Privado)', 47, NULL, NULL),
  (511, NULL, E'2018-01-29 17:38:55.592', NULL, E'activo', NULL, NULL, 289, E'ARQ', E'Arquitectura', 48, NULL, NULL),
  (511, NULL, E'2018-01-30 09:53:11.432', NULL, E'activo', NULL, NULL, 290, E'IPIS', E'Instituto Privado de Informática y Sistemas S.R.L.', 47, NULL, NULL),
  (511, NULL, E'2018-01-30 09:53:55.432', NULL, E'activo', NULL, NULL, 291, E'SECEJE', E'Secretariado Ejecutivo', 48, NULL, NULL),
  (511, NULL, E'2018-02-06 09:20:55.732', NULL, E'activo', NULL, NULL, 292, E'Psico', E'Psicologia', 48, NULL, NULL),
  (511, NULL, E'2018-02-06 16:14:51.093', NULL, E'activo', NULL, NULL, 293, E'ABO', E'Abogado', 48, NULL, NULL),
  (511, NULL, E'2018-02-07 11:32:16.745', NULL, E'activo', NULL, NULL, 294, E'AD_FINA', E'Administrador Financiero', 48, NULL, NULL),
  (511, NULL, E'2018-02-15 16:01:19.390', NULL, E'activo', NULL, NULL, 295, E'COMER_INT', E'Comercio Internacional', 48, NULL, NULL),
  (511, NULL, E'2018-02-15 16:25:34.884', NULL, E'activo', NULL, NULL, 296, E'Comun_coop', E'Comunicación Estratégica y Cooporativa', 48, NULL, NULL),
  (511, NULL, E'2018-02-16 10:58:27.673', NULL, E'activo', NULL, NULL, 297, E'CON_AUX', E'CONTADOR AUXILIAR COMPUTARIZADO', 48, NULL, NULL),
  (511, NULL, E'2018-02-20 09:49:46.737', NULL, E'activo', NULL, NULL, 298, E'Com_per', E'COMUNICACIÓN Y PERIODISMO', 48, NULL, NULL),
  (511, NULL, E'2018-02-20 16:07:53.543', NULL, E'activo', NULL, NULL, 299, E'ELEC_AUTO', E'Electricidad y Electrónica Automotriz', 48, NULL, NULL),
  (511, NULL, E'2018-02-20 16:08:13.505', NULL, E'activo', NULL, NULL, 300, E'ceta', E'CETA', 47, NULL, NULL),
  (511, NULL, E'2018-02-22 11:13:32.085', NULL, E'activo', NULL, NULL, 301, E'POLITOLOGO', E'Politologo', 48, NULL, NULL),
  (511, NULL, E'2018-02-23 12:20:23.855', NULL, E'activo', NULL, NULL, 302, E'SUC', E'Regional Sucre', 46, NULL, NULL),
  (511, NULL, E'2018-02-23 12:22:38.063', NULL, E'activo', NULL, NULL, 303, E'cor_su', E'Cordes Sucre', 46, NULL, NULL),
  (511, NULL, E'2018-02-24 14:26:11.524', NULL, E'activo', NULL, NULL, 304, E'cons', E'Construccion', 48, NULL, NULL),
  (511, NULL, E'2018-02-24 14:27:56.750', NULL, E'activo', NULL, NULL, 305, E'Sant_DomingoSavio', E'Santo Domingo Savio', 47, NULL, NULL),
  (511, NULL, E'2018-02-27 10:42:00.209', NULL, E'activo', NULL, NULL, 306, E'MANT_RECOM', E'Mantenimiento y Reparación de Computadoras', 48, NULL, NULL),
  (511, NULL, E'2018-02-27 10:42:33.026', NULL, E'activo', NULL, NULL, 307, E'ING_DA', E'ING-DATA-COMP', 47, NULL, NULL),
  (511, NULL, E'2018-02-27 15:52:46.456', NULL, E'activo', NULL, NULL, 308, E'Mec_ae', E'Mecánica de Aviación', 48, NULL, NULL),
  (511, 511, E'2018-02-28 10:42:25.890', E'2018-04-04 12:04:37.491', E'activo', NULL, NULL, 309, E'Inst_tec_saca', E'Instituto Técnico \"Sacaba\"(Publico)', 47, NULL, NULL),
  (511, NULL, E'2018-02-28 10:43:49.014', NULL, E'activo', NULL, NULL, 310, E'Inst_tec_Sa', E'Instituto Técnico Sacaba \"Publico\"', 47, NULL, NULL),
  (511, NULL, E'2018-02-28 17:24:56.529', NULL, E'activo', NULL, NULL, 311, E'RE_TJA', E'Regional Tarija', 46, NULL, NULL),
  (511, NULL, E'2018-03-03 08:18:24.709', NULL, E'activo', NULL, NULL, 312, E'uni_joseballi', E'Universidad Boliviana Jose Ballivian', 47, NULL, NULL),
  (511, NULL, E'2018-03-06 16:41:50.591', NULL, E'activo', NULL, NULL, 313, E'MAN_AER', E'Mantenimiento de Aeronaves', 55, NULL, NULL),
  (511, NULL, E'2018-03-21 15:58:28.254', NULL, E'activo', NULL, NULL, 314, E'Man_Ae', E'Mantenimiento en Naves y Motores', 48, NULL, NULL),
  (511, NULL, E'2018-03-22 15:21:21.804', NULL, E'activo', NULL, NULL, 315, E'cENTR_CAM', E'CentroIntegrado Camilo Orruel', 47, NULL, NULL),
  (511, NULL, E'2018-03-22 15:22:00.376', NULL, E'activo', NULL, NULL, 316, E'Mec_Aut', E'Mecánica Automotriz', 48, NULL, NULL),
  (511, NULL, E'2018-03-22 17:09:39.924', NULL, E'activo', NULL, NULL, 317, E'SOCI', E'Sociologia', 48, NULL, NULL),
  (511, NULL, E'2018-03-23 11:32:28.192', NULL, E'activo', NULL, NULL, 318, E'AU_CON', E'Auxiliar de Contabilidad', 48, NULL, NULL),
  (511, NULL, E'2018-03-29 10:36:47.991', NULL, E'activo', NULL, NULL, 319, E'Cur_Esp', E'Curso Especializado', 49, NULL, NULL),
  (511, NULL, E'2018-03-29 12:17:19.248', NULL, E'activo', NULL, NULL, 320, E'R_TV_ELE', E'Radio-TV-Electronica', 48, NULL, NULL),
  (511, NULL, E'2018-03-29 12:19:05.746', NULL, E'activo', NULL, NULL, 321, E'Tec_max', E'Instituto Radio Técnico Maxwell', 47, NULL, NULL),
  (511, NULL, E'2018-04-02 09:42:15.965', NULL, E'activo', NULL, NULL, 322, E'Ins_AE_N', E'Instituto Aeronautico Nacional', 47, NULL, NULL),
  (511, NULL, E'2018-04-02 10:12:03.242', NULL, E'activo', NULL, NULL, 323, E'Inst_Prof_Ae', E'Instituto Profesional Aeronautico', 47, NULL, NULL),
  (511, NULL, E'2018-04-02 17:59:33.876', NULL, E'activo', NULL, NULL, 324, E'In_Mec', E'Ingeniero Mecanico', 48, NULL, NULL),
  (511, NULL, E'2018-04-03 09:31:48.677', NULL, E'activo', NULL, NULL, 325, E'Ing_elec', E'Ingeniero Eléctrico', 48, NULL, NULL),
  (511, NULL, E'2018-04-03 10:02:25.824', NULL, E'activo', NULL, NULL, 326, E'Ing_Sis_Ele', E'Ingeniero en Sistemas Electrónicos', 48, NULL, NULL),
  (511, NULL, E'2018-04-04 11:15:33.826', NULL, E'activo', NULL, NULL, 327, E'Tec_Ensam', E'Tec. en Ensamblaje y Reparación de Computadoras', 48, NULL, NULL),
  (511, NULL, E'2018-04-04 12:07:17.859', NULL, E'activo', NULL, NULL, 329, E'Leniz_Elec', E'LENIZ Electronic Institute', 47, NULL, NULL),
  (511, NULL, E'2018-04-04 12:08:21.717', NULL, E'activo', NULL, NULL, 330, E'Elec_Dig_Micro', E'Electrónica Digital y Microprocesadores ', 48, NULL, NULL),
  (511, 511, E'2018-04-04 12:24:49.025', E'2018-04-04 12:25:30.634', E'activo', NULL, NULL, 331, E'Electro', E'Ingeniero Electrónico ', 48, NULL, NULL),
  (511, NULL, E'2018-04-10 09:15:57.659', NULL, E'activo', NULL, NULL, 332, E'Enc_Ope', E'Encargado Operaciones de Vuelo', 48, NULL, NULL),
  (511, NULL, E'2018-04-10 12:07:40.315', NULL, E'activo', NULL, NULL, 333, E'Training', E'Training and Aviation Services', 47, NULL, NULL),
  (511, NULL, E'2018-04-10 16:54:45.747', NULL, E'activo', NULL, NULL, 334, E'Ing_Elec', E'Ingeniería Electromecánica', 48, NULL, NULL),
  (511, NULL, E'2018-04-12 11:36:23.029', NULL, E'activo', NULL, NULL, 335, E'Fuer_AE', E'Fuerza Aérea Boliviana', 47, NULL, NULL),
  (511, NULL, E'2018-04-12 11:36:52.209', NULL, E'activo', NULL, NULL, 336, E'Estr_Me', E'Estructuras Metalicas', 48, NULL, NULL),
  (511, NULL, E'2018-04-12 16:16:41.829', NULL, E'activo', NULL, NULL, 337, E'Poli_Mil', E'Politécnico Militar de Aeronáutica', 47, NULL, NULL),
  (511, NULL, E'2018-04-13 16:07:29.019', NULL, E'activo', NULL, NULL, 338, E'dOMI_', E'Pedro Domingo Murillo', 47, NULL, NULL),
  (511, NULL, E'2018-04-16 19:49:10.688', NULL, E'activo', NULL, NULL, 339, E'ELEC', E'Electricidad', 48, NULL, NULL),
  (511, NULL, E'2018-04-16 19:49:43.914', NULL, E'activo', NULL, NULL, 340, E'Inst_Apr_bol', E'Instituto Boliviano de Aprendizaje', 47, NULL, NULL),
  (795, NULL, E'2018-04-17 11:30:36.800', NULL, E'activo', NULL, NULL, 341, E'Ins_Tec', E'Instituto Tecnológico de Cochbamba', 47, NULL, NULL),
  (511, NULL, E'2018-04-18 11:00:39.750', NULL, E'activo', NULL, NULL, 342, E'Esp_Mo', E'Especialista en Motores JEt', 48, NULL, NULL),
  (511, NULL, E'2018-04-18 11:47:09.472', NULL, E'activo', NULL, NULL, 343, E'AIC_TRA_CONS', E'Aircraft Training and Consulting', 47, NULL, NULL),
  (511, NULL, E'2018-04-18 19:06:47.487', NULL, E'activo', NULL, NULL, 344, E'Moto', E'Motores', 48, NULL, NULL),
  (511, NULL, E'2018-04-19 15:52:52.516', NULL, E'activo', NULL, NULL, 345, E'Lingu_apli', E'Lingüística Aplicada a la Enseñanza de Lenguas', 48, NULL, NULL),
  (511, NULL, E'2018-04-19 15:54:49.877', NULL, E'activo', NULL, NULL, 346, E'Aux_ Ofi', E'Auxiliar de Oficina', 48, NULL, NULL),
  (511, NULL, E'2018-04-19 15:55:35.386', NULL, E'activo', NULL, NULL, 347, E'Ins_Ed', E'Instituto de Educación Mercantil \"IDEA\"', 47, NULL, NULL),
  (511, NULL, E'2018-04-20 09:26:36.285', NULL, E'activo', NULL, NULL, 348, E'Aerodinos', E'Aerodinos - Centro de Istruccion Aeronáutica', 47, NULL, NULL),
  (511, NULL, E'2018-04-24 10:06:48.106', NULL, E'activo', NULL, NULL, 349, E'CEICOM', E'CEICOM', 47, NULL, NULL),
  (511, NULL, E'2018-04-24 10:07:24.766', NULL, E'activo', NULL, NULL, 350, E'Oper_Com', E'Operador de Computadoras', 48, NULL, NULL),
  (511, NULL, E'2018-05-09 11:57:23.601', NULL, E'activo', NULL, NULL, 351, E'Cen_Ae', E'Centro de Entrenamiento Aeronáutico ', 48, NULL, NULL),
  (511, NULL, E'2018-05-09 11:58:35.101', NULL, E'activo', NULL, NULL, 352, E'Cen_Ae', E'Centro de Entrenamiento Aeronáutico ', 47, NULL, NULL),
  (511, NULL, E'2018-05-09 17:10:47.244', NULL, E'activo', NULL, NULL, 353, E'Comer_Ex', E'Comercio Exterior y Aduanas', 48, NULL, NULL),
  (511, NULL, E'2018-05-09 18:25:05.995', NULL, E'activo', NULL, NULL, 354, E'Elec', E'Electrónica ', 48, NULL, NULL),
  (511, NULL, E'2018-05-09 18:25:26.755', NULL, E'activo', NULL, NULL, 355, E'SINETEC', E'SINETEC', 47, NULL, NULL),
  (511, NULL, E'2018-05-14 10:53:29.418', NULL, E'activo', NULL, NULL, 356, E'Cen_Entr', E'Centro de Entrenamiento MY Mario Patiño Ayoroa LLOYD AEREO BOLIVIANO S.A.', 47, NULL, NULL),
  (511, NULL, E'2018-05-14 10:55:46.601', NULL, E'activo', NULL, NULL, 357, E'TCP', E'Tripulantes Cabina', 48, NULL, NULL),
  (511, NULL, E'2018-05-21 09:43:59.812', NULL, E'activo', NULL, NULL, 358, E'Ind_Sis', E'Ingeniería Industrial y de Sistemas', 48, NULL, NULL),
  (511, NULL, E'2018-05-21 12:30:05.735', NULL, E'activo', NULL, NULL, 359, E'Adm_tur', E'Administración Turística', 48, NULL, NULL),
  (511, NULL, E'2018-05-21 15:49:36.383', NULL, E'activo', NULL, NULL, 360, E'Dise_Comun', E'Diseño Gráfico y Comunicación Visual', 48, NULL, NULL),
  (511, NULL, E'2018-05-21 16:22:42.026', NULL, E'activo', NULL, NULL, 361, E'Ing_Alim', E'Ingeniería de Alimentos', 48, NULL, NULL),
  (511, NULL, E'2018-05-21 19:09:40.448', NULL, E'activo', NULL, NULL, 362, E'Secre_Eje', E'Secretariado Ejecutivo', 48, NULL, NULL),
  (511, NULL, E'2018-05-21 19:10:38.481', NULL, E'activo', NULL, NULL, 363, E'Inst_Nac', E'Instituto Nacional de Comercio \"Federico Alvarez Plata\" (Publico)', 47, NULL, NULL),
  (511, NULL, E'2018-05-23 09:59:48.427', NULL, E'activo', NULL, NULL, 364, E'Ins_ Arri', E'Instituto Arrieta de Oruro', 47, NULL, NULL),
  (511, NULL, E'2018-05-23 10:16:54.392', NULL, E'activo', NULL, NULL, 365, E'IDIOMAS', E'Idiomas', 48, NULL, NULL),
  (511, NULL, E'2018-05-23 11:14:55.678', NULL, E'activo', NULL, NULL, 366, E'Admin_Tur', E'Administración Turística', 48, NULL, NULL),
  (511, NULL, E'2018-05-23 12:19:19.313', NULL, E'activo', NULL, NULL, 367, E'Ciencias_ed', E'Ciencias de la Educación ', 48, NULL, NULL),
  (511, NULL, E'2018-05-23 15:05:58.762', NULL, E'activo', NULL, NULL, 368, E'Turis_Hote', E'Turismo y Hoteleria', 48, NULL, NULL),
  (511, NULL, E'2018-05-23 15:29:52.436', NULL, E'activo', NULL, NULL, 369, E'LING', E'Lingüística Aplicada a la Enseñanza de Lenguas ', 48, NULL, NULL),
  (511, NULL, E'2018-05-24 10:25:29.795', NULL, E'activo', NULL, NULL, 370, E'Ingen_Ambi', E'Ingeniería Ambiental', 48, NULL, NULL),
  (511, NULL, E'2018-05-28 16:22:25.653', NULL, E'activo', NULL, NULL, 371, E'TCP', E'Tripulante de Cabina', 48, NULL, NULL),
  (511, NULL, E'2018-05-28 16:22:54.541', NULL, E'activo', NULL, NULL, 372, E'AVIA', E'AVIA', 47, NULL, NULL),
  (511, NULL, E'2018-06-06 09:55:11.490', NULL, E'activo', NULL, NULL, 373, E'Univ_Pri_Al', E'Universidad Privada del Altiplano', 47, NULL, NULL),
  (511, NULL, E'2018-06-07 16:00:27.761', NULL, E'activo', NULL, NULL, 374, E'Pintado', E'Pintado de Aeronaves', 48, NULL, NULL),
  (511, NULL, E'2018-06-11 10:59:56.714', NULL, E'activo', NULL, NULL, 375, E'ING_TELE', E'Ingeniero en Telecomunicaciones', 48, NULL, NULL),
  (511, NULL, E'2018-06-18 10:36:40.472', NULL, E'activo', NULL, NULL, 376, E'Adm_Sis', E'Administración de Sistemas de Información ', 48, NULL, NULL),
  (511, NULL, E'2018-06-19 18:08:06.503', NULL, E'activo', NULL, NULL, 378, E'Anal_Sis', E'Análisis de Sistemas', 48, NULL, NULL),
  (511, NULL, E'2018-06-19 18:08:26.036', NULL, E'activo', NULL, NULL, 379, E'CATEC', E'CATEC', 47, NULL, NULL),
  (511, NULL, E'2018-07-03 09:14:55.652', NULL, E'activo', NULL, NULL, 380, E'Agro', E'Agroindustrial ', 48, NULL, NULL),
  (511, NULL, E'2018-07-03 10:56:00.488', NULL, E'activo', NULL, NULL, 381, E'Aux. Conta', E'Auxiliar Contable ', 48, NULL, NULL),
  (511, NULL, E'2018-07-03 10:56:34.225', NULL, E'activo', NULL, NULL, 382, E'Inst Bolivia', E'Instituto Boliviano de Turismo y Administración ', 47, NULL, NULL),
  (612, NULL, E'2018-07-06 02:07:55.292', NULL, E'activo', NULL, NULL, 383, E'AOG', E'Prioridad Muy Importante', 56, NULL, NULL),
  (612, NULL, E'2018-07-06 02:08:30.177', NULL, E'activo', NULL, NULL, 384, E'A', E'Prioridad Importante', 56, NULL, NULL),
  (612, NULL, E'2018-07-06 02:08:55.866', NULL, E'activo', NULL, NULL, 385, E'B', E'Prioridad Media', 56, NULL, NULL),
  (612, NULL, E'2018-07-06 02:09:33.728', NULL, E'activo', NULL, NULL, 386, E'C', E'Prioridad Baja', 56, NULL, NULL),
  (612, NULL, E'2018-07-06 02:10:01.692', NULL, E'activo', NULL, NULL, 387, E'N/A', E'No Aplica', 56, NULL, NULL),
  (511, NULL, E'2018-07-11 19:01:49.495', NULL, E'activo', NULL, NULL, 388, E'Pin', E'Pintado de Aeronaves', 48, NULL, NULL),
  (511, NULL, E'2018-07-20 09:59:57.285', NULL, E'activo', NULL, NULL, 389, E'Dis_Comun_Vis', E'Diseño Gráfico y Comunicación Visual', 48, NULL, NULL),
  (511, NULL, E'2018-07-20 12:07:33.673', NULL, E'activo', NULL, NULL, 390, E'bancario', E'Bancario', 48, NULL, NULL),
  (511, NULL, E'2018-07-20 12:07:50.906', NULL, E'activo', NULL, NULL, 391, E'idea', E'IDEA', 47, NULL, NULL),
  (511, NULL, E'2018-07-30 09:35:57.893', NULL, E'activo', NULL, NULL, 392, E'Cont_Com', E'Auxiliar de Contabilidad Computarizada', 48, NULL, NULL),
  (511, NULL, E'2018-07-30 09:36:26.140', NULL, E'activo', NULL, NULL, 393, E'Arrieta', E'Arrieta', 47, NULL, NULL),
  (511, NULL, E'2018-08-01 11:50:28.878', NULL, E'activo', NULL, NULL, 394, E'mEC_gr', E'Mecánica General ', 48, NULL, NULL),
  (511, NULL, E'2018-08-01 11:51:09.123', NULL, E'activo', NULL, NULL, 395, E'Ministerio de Desa', E'Ministerio de Desarrollo Humano ', 47, NULL, NULL),
  (636, NULL, E'2018-09-17 17:41:44.793', NULL, E'activo', NULL, NULL, 396, E'Progra_sis', E'Programador de Sistemas', 48, NULL, NULL),
  (636, NULL, E'2018-09-17 17:43:25.467', NULL, E'activo', NULL, NULL, 397, E'I.C.E.S.I.N', E'I.C.E.S.I.N', 47, NULL, NULL),
  (31, NULL, E'2018-09-18 14:55:01.569', NULL, E'activo', NULL, NULL, 398, E'Minist_edu', E'Ministerio de Educación y Cultura', 47, NULL, NULL),
  (511, NULL, E'2018-10-11 16:38:24.802', NULL, E'activo', NULL, NULL, 399, E'UNIV NAC DE CORDOBA', E'UNIVERSIDAD NACIONAL DE CORDOBA', 47, NULL, NULL),
  (511, NULL, E'2018-10-12 09:52:21.508', NULL, E'activo', NULL, NULL, 400, E'Cordes Cobija', E'Cordes Cobija', 46, NULL, NULL),
  (511, NULL, E'2018-10-17 15:07:35.267', NULL, E'activo', NULL, NULL, 401, E'Cordes Trinidad', E'Cordes Trinidad', 46, NULL, NULL),
  (878, 878, E'2018-11-21 17:48:25.197', E'2018-11-21 17:51:42.978', E'activo', NULL, NULL, 402, E'1', E'Anexo 1', 57, NULL, NULL),
  (878, 878, E'2018-11-21 17:48:48.014', E'2018-11-21 17:49:10.821', E'activo', NULL, NULL, 403, E'2', E'Anexo 2', 57, NULL, NULL),
  (878, NULL, E'2018-11-21 17:49:42.390', NULL, E'activo', NULL, NULL, 404, E'3', E'Anexo 3', 57, NULL, NULL),
  (878, NULL, E'2018-11-21 17:50:04.197', NULL, E'activo', NULL, NULL, 405, E'4', E'Anexo 4', 57, NULL, NULL),
  (511, NULL, E'2018-11-23 15:20:08.261', NULL, E'activo', NULL, NULL, 406, E'UniMil', E'Universidad Militar', 47, NULL, NULL),
  (511, NULL, E'2018-11-23 15:20:55.088', NULL, E'activo', NULL, NULL, 407, E'CienciaMilitar', E'Ciencia y Arte Militar Terrestre', 48, NULL, NULL),
  (511, NULL, E'2018-11-26 10:38:25.220', NULL, E'activo', NULL, NULL, 408, E'ingles', E'Ingles', 48, NULL, NULL),
  (511, NULL, E'2018-12-07 16:59:15.771', NULL, E'activo', NULL, NULL, 409, E'Bio', E'BIOINGENIERIA', 48, NULL, NULL),
  (511, NULL, E'2018-12-11 15:55:28.687', NULL, E'activo', NULL, NULL, 410, E'MINIS_ARE', E'MINISTERIO DE EDUCACION AREQUIPA NORTE', 47, NULL, NULL),
  (830, NULL, E'2019-01-03 16:54:50.072', NULL, E'activo', NULL, NULL, 411, E'5', E'Todos', 31, NULL, NULL);


  /* Data for the 'param.tdocumento' table */

INSERT INTO param.tdocumento ("id_usuario_reg", "id_usuario_mod", "fecha_reg", "fecha_mod", "estado_reg", "id_usuario_ai", "usuario_ai", "id_documento", "id_subsistema", "codigo", "descripcion", "periodo_gestion", "tipo", "tipo_numeracion", "formato", "ruta_plantilla")
VALUES
  (1, 1, E'2013-02-24 00:00:00', E'2013-02-24 08:22:48.436', E'activo', NULL, NULL, 1, 6, E'MOVIN', E'Movimiento tipo Ingreso al Almacen', E'periodo', E'', E'tabla', E'codtabla-I-correlativo-periodo/gestion', NULL),
  (1, 1, E'2013-02-24 00:00:00', E'2013-02-24 08:23:00.205', E'activo', NULL, NULL, 2, 6, E'MOVSAL', E'Moviento tipo Salida de Almacen', E'periodo', E'', E'tabla', E'codtabla-S-correlativo-periodo/gestion', NULL),
  (1, NULL, E'2014-02-01 23:04:41.498', E'2014-02-01 23:04:41.498', E'activo', NULL, NULL, 3, 7, E'SOLC', E'Solicitud de Compra', E'periodo', NULL, E'depto', NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:41.498', E'2014-02-01 23:04:41.498', E'activo', NULL, NULL, 4, 7, E'COT', E'Cotizacion de Compra', E'periodo', NULL, E'depto', NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:41.498', E'2014-02-01 23:04:41.498', E'activo', NULL, NULL, 5, 7, E'OC', E'Orden de Compra', E'periodo', NULL, E'depto', NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:41.890', E'2014-02-01 23:04:41.890', E'activo', NULL, NULL, 6, 10, E'CDIR', E'Comprobante de Diario', E'periodo', NULL, E'depto', NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:41.890', E'2014-02-01 23:04:41.890', E'activo', NULL, NULL, 7, 10, E'CPAG', E'Comprobante de Pago', E'periodo', NULL, E'depto', NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:42.198', E'2014-02-01 23:04:42.198', E'activo', NULL, NULL, 8, 11, E'PGD', E'Pago Directo', E'periodo', NULL, E'depto', NULL, NULL),
  (1, NULL, E'2014-02-01 23:04:42.198', E'2014-02-01 23:04:42.198', E'activo', NULL, NULL, 9, 11, E'SPG', E'Solicitud de Pago', E'periodo', NULL, E'depto', NULL, NULL),
  (1, NULL, E'2014-01-23 00:32:26', E'2014-01-23 00:32:26', E'activo', NULL, NULL, 10, 13, E'PLASUE', E'Planilla de Sueldos', E'periodo', NULL, E'depto', NULL, NULL),
  (83, NULL, E'2014-08-08 00:00:00', E'2014-08-08 14:56:01.851', E'activo', NULL, NULL, 11, 13, E'PLASUB', E'Planilla de Subsidios', E'periodo', E'', E'depto', NULL, NULL),
  (83, 83, E'2014-12-03 00:00:00', E'2014-12-03 16:54:48.440', E'activo', NULL, NULL, 12, 13, E'PLAREISU', E'Planilla de Retroactivo', E'gestion', E'', E'depto', NULL, NULL),
  (83, NULL, E'2014-12-10 00:00:00', E'2014-12-10 17:02:13.907', E'activo', NULL, NULL, 13, 13, E'PLAGUIN', E'Planilla de Aguinaldos', E'gestion', E'', E'depto', NULL, NULL),
  (83, NULL, E'2014-12-17 00:00:00', E'2014-12-17 16:04:09.901', E'activo', NULL, NULL, 14, 13, E'PLASEGAGUI', E'Planilla de Segundo Aguinaldo', E'gestion', E'', E'depto', NULL, NULL),
  (83, NULL, E'2014-12-26 00:00:00', E'2014-12-26 18:08:56.971', E'activo', NULL, NULL, 15, 13, E'PLARETSUB', E'Planilla de Retroactivo de Subsidios', E'gestion', E'', E'depto', NULL, NULL),
  (175, NULL, E'2015-01-05 00:00:00', E'2015-01-05 17:50:12.274', E'activo', NULL, NULL, 16, 11, E'LB', E'Libro Bancos', E'periodo', E'', E'depto', NULL, NULL),
  (1, NULL, E'2015-05-08 15:17:41.902', E'2015-05-08 15:17:41.902', E'activo', NULL, NULL, 17, 11, E'PU', E'Pago Único', E'periodo', NULL, E'depto', NULL, NULL),
  (1, NULL, E'2015-05-08 00:00:00', E'2015-05-08 16:01:59.451', E'activo', NULL, NULL, 18, 7, E'OCN', E'Orden de Compra Nacional', E'periodo', E'', E'depto', NULL, NULL),
  (1, NULL, E'2015-05-08 00:00:00', E'2015-05-08 16:02:30.900', E'activo', NULL, NULL, 19, 7, E'OCI', E'Orden de Compra Internacional', E'periodo', E'', E'depto', NULL, NULL),
  (83, NULL, E'2015-06-22 00:00:00', E'2015-06-22 15:00:08.262', E'activo', NULL, NULL, 20, 13, E'PLAPRI', E'Planilla de Prima', E'gestion', E'', E'depto', NULL, NULL),
  (175, 1, E'2015-08-20 00:00:00', E'2016-06-29 15:18:33.056', E'activo', NULL, NULL, 21, 11, E'PE', E'Pago Especial', E'periodo', E'', E'depto', NULL, NULL),
  (175, NULL, E'2015-10-07 00:00:00', E'2015-10-07 10:37:08.368', E'activo', NULL, NULL, 22, 11, E'PUMIA', E'Pago Unico Miami', E'periodo', E'', E'depto', NULL, NULL),
  (1, NULL, E'2016-04-07 18:14:33.447', E'2016-04-07 18:14:33.447', E'activo', NULL, NULL, 23, 11, E'CAJA', E'Caja Chica', E'gestion', NULL, E'depto', NULL, NULL),
  (1, NULL, E'2016-04-07 18:14:33.447', E'2016-04-07 18:14:33.447', E'activo', NULL, NULL, 24, 11, E'SEFE', E'Solicitud Efectivo', E'gestion', NULL, E'tabla', E'codtabla-coddoc-correlativo-gestion', NULL),
  (1, 1, E'2016-04-07 18:14:33.447', E'2016-11-17 10:29:19.108', E'activo', NULL, NULL, 25, 11, E'REN', E'Rendicion Caja', E'gestion', E'', E'tabla', E'codtabla-coddoc-correlativo-gestion', NULL),
  (1, NULL, E'2016-05-05 00:00:00', E'2016-05-05 13:04:26.423', E'activo', NULL, NULL, 26, 10, E'CBT', E'Numero de Tramite Cbte', E'gestion', E'', E'depto', NULL, NULL),
  (1, NULL, E'2016-06-29 00:00:00', E'2016-06-29 11:59:04.387', E'activo', NULL, NULL, 27, 20, E'MEMOFA', E'Memorándum de ASignación de Fondos', E'gestion', E'', E'depto', E'OB.AA.depto.ME correlativo.gestion', NULL),
  (1, 1, E'2016-07-01 00:00:00', E'2016-11-17 10:29:19.108', E'activo', NULL, NULL, 28, 11, E'REP', E'Reposicion Caja', E'gestion', E'', E'tabla', E'codtabla-coddoc-correlativo-gestion', NULL),
  (1, 1, E'2016-07-01 00:00:00', E'2016-11-17 10:29:19.108', E'activo', NULL, NULL, 29, 11, E'CIER', E'Cierre Caja', E'gestion', E'', E'tabla', E'codtabla-coddoc-correlativo-gestion', NULL),
  (1, 1, E'2016-07-01 00:00:00', E'2016-11-17 10:29:19.108', E'activo', NULL, NULL, 30, 11, E'MEMO', E'Memorandum de Asginacion de Fondos', E'gestion', E'', E'depto', E'OB.AA.depto.ME correlativo.gestion', NULL),
  (1, 1, E'2016-07-01 00:00:00', E'2016-11-17 10:29:19.108', E'activo', NULL, NULL, 31, 11, E'SOLEFE', E'Solicitud Efectivo', E'gestion', NULL, E'tabla', E'codtabla-coddoc-correlativo-gestion', NULL),
  (612, NULL, E'2017-01-25 00:00:00', E'2017-01-25 16:07:37.663', E'activo', NULL, NULL, 32, 7, E'MEM', E'Memorándum de Designación Comité Recepcion', E'gestion', E'', E'depto', E'OB.AD.ME correlativo.gestion', NULL),
  (1, NULL, E'2015-12-03 00:00:00', E'2015-12-03 09:38:53', E'activo', NULL, NULL, 33, 25, E'VEN', E'VEN', E'periodo', E'', E'tabla', E'codtabla-correlativo-periodo/gestion', NULL),
  (175, NULL, E'2017-06-12 00:00:00', E'2017-06-12 15:33:57.549', E'activo', NULL, NULL, 34, 11, E'MEMOCCH', E'Memorandum de Asignacion de Fondos Caja Chica', E'gestion', E'', E'depto', E'OB.AA.depto.MECCH correlativo.gestion', NULL),
  (175, NULL, E'2017-09-21 00:00:00', E'2017-09-21 10:43:00.390', E'activo', NULL, NULL, 35, 11, E'INGEFE', E'Ingreso Efectivo a Caja', E'gestion', E'', E'tabla', E'codtabla-coddoc-correlativo-gestion', NULL),
  (175, NULL, E'2017-12-12 00:00:00', E'2017-12-12 10:49:59.866', E'activo', NULL, NULL, 36, 11, E'SALEFE', E'Salida de Efectivo', E'gestion', E'', E'tabla', E'codtabla-coddoc-correlativo-gestion', NULL),
  (612, NULL, E'2018-01-08 00:00:00', E'2018-01-08 17:34:11.284', E'activo', NULL, NULL, 37, 11, E'PGA', E'Pago Gestion Anterior', E'periodo', E'', E'depto', NULL, NULL),
  (612, NULL, E'2018-01-10 00:00:00', E'2018-01-10 20:11:43.846', E'activo', NULL, NULL, 38, 11, E'APECAJ', E'Apertura Caja', E'gestion', E'', E'tabla', E'codtabla-coddoc-correlativo-gestion', NULL),
  (612, NULL, E'2018-02-01 00:00:00', E'2018-02-01 10:07:05.246', E'activo', NULL, NULL, 39, 11, E'PPM', E'Pago de Procesos Manuales', E'periodo', E'', E'depto', NULL, NULL),
  (612, NULL, E'2018-06-04 00:00:00', E'2018-06-04 12:14:00.886', E'activo', NULL, NULL, 40, 11, E'PCE', E'Pago de Compras en el Exterior', E'periodo', E'', E'depto', NULL, NULL),
  (878, NULL, E'2018-09-28 00:00:00', E'2018-09-28 19:18:35.186', E'activo', NULL, NULL, 41, 19, E'ACM', E'ACM', E'gestion', E'', E'tabla', E'OB-ACM-correlativo-gestion ', NULL),
  (612, 612, E'2018-12-26 00:00:00', E'2018-12-26 10:52:38.655', E'activo', NULL, NULL, 42, 11, E'BR', E'Pago Boa Rep', E'periodo', E'', E'depto', NULL, NULL);

  /* Data for the 'param.ttipo_archivo' table */

INSERT INTO param.ttipo_archivo ("id_usuario_reg", "id_usuario_mod", "fecha_reg", "fecha_mod", "estado_reg", "id_usuario_ai", "usuario_ai", "id_tipo_archivo", "nombre_id", "tipo_archivo", "tabla", "codigo", "nombre", "multiple", "extensiones_permitidas", "ruta_guardar", "tamano", "orden", "obligatorio", "orden_valoracion")
VALUES
  (1, NULL, E'2017-05-16 09:07:27.803', NULL, E'activo', NULL, E'NULL', 1, E'id_sucursal', E'documento', E'tsucursal', E'videoSuc', E'videoSuc', E'si', E'mp4,MP4', E'', NULL, NULL, NULL, NULL),
  (1, 83, E'2017-09-12 12:58:29.018', E'2017-09-21 18:41:08.502', E'activo', NULL, E'NULL', 2, E'id_deposito', E'documento', E'obingresos.tdeposito', E'ESCANDEP', E'Imagen Deposito', E'no', E'PDF,pdf,docx,DOCX,jpg,jpeg,doc,bmp,png,DOC', E'', 10, NULL, NULL, NULL),
  (1, 18, E'2017-09-29 11:24:56.845', E'2017-12-08 09:16:07.365', E'activo', NULL, E'NULL', 10, E'id_funcionario', E'imagen', E'orga.tfuncionario', E'FOTO_FUNCIONARIO', E'Fotografia', E'no', E'jpeg,jpg,png,gif,bmp', E'', 3, 1, E'si', NULL),
  (1, 612, E'2017-10-05 16:11:30.885', E'2019-01-02 17:29:27.935', E'activo', NULL, E'NULL', 11, E'id_funcionario', E'documento', E'orga.tfuncionario', E'CI_FUNCIONARIO', E'Carnet de Identidad', E'no', E'pdf,PDF,jpg', E'', 2, 5, E'si', NULL),
  (612, 612, E'2017-10-18 16:36:21.590', E'2019-01-02 17:29:18.080', E'activo', NULL, E'NULL', 12, E'id_funcionario', E'documento', E'orga.tfuncionario', E'TIT_BACHILLER', E'Titulo de Bachiller', E'no', E'pdf,PDF,jpg', E'', 5, 2, E'si', 4),
  (612, 612, E'2017-10-18 16:37:39.484', E'2019-01-02 17:29:05.540', E'activo', NULL, E'NULL', 13, E'id_funcionario', E'documento', E'orga.tfuncionario', E'TIT_PROF', E'Titulo Profesional en Provision Nacional', E'no', E'pdf,PDF,jpg', E'', 5, 3, E'no', 1),
  (612, 612, E'2017-10-18 16:39:08.584', E'2019-01-02 17:28:58.651', E'activo', NULL, E'NULL', 14, E'id_funcionario', E'documento', E'orga.tfuncionario', E'LIB_MIL', E'Libreta Militar', E'no', E'pdf,PDF,jpg', E'', 4, 8, E'no', NULL),
  (612, 612, E'2017-10-18 16:54:31.183', E'2019-01-02 17:28:51.989', E'activo', NULL, E'NULL', 15, E'id_funcionario', E'documento', E'orga.tfuncionario', E'CER_NAC', E'Certificado de Nacimiento', E'no', E'pdf,PDF,jpg', E'', 4, 6, E'si', NULL),
  (612, 612, E'2017-10-18 16:56:02.233', E'2019-01-02 16:28:27.336', E'activo', NULL, E'NULL', 16, E'id_funcionario', E'documento', E'orga.tfuncionario', E'FELCC', E'FELCC', E'no', E'pdf,PDF,jpg', E'', 4, 12, E'si', NULL),
  (612, 612, E'2017-10-18 16:56:51.190', E'2019-01-02 16:28:36.068', E'activo', NULL, E'NULL', 17, E'id_funcionario', E'documento', E'orga.tfuncionario', E'FELCN', E'FELCN', E'no', E'PDF,pdf,jpg', E'', 4, 13, E'si', NULL),
  (612, 18, E'2017-10-23 12:40:29.715', E'2017-11-20 18:15:32.042', E'activo', NULL, E'NULL', 21, E'id_funcionario', E'documento', E'orga.tfuncionario', E'CARN_ASEG', E'Carnet de Asegurado', E'no', E'PDF,pdf', E'', 1, 11, E'no', NULL),
  (612, 18, E'2017-10-23 12:42:24.907', E'2017-11-20 18:16:01.413', E'activo', NULL, E'NULL', 23, E'id_funcionario', E'documento', E'orga.tfuncionario', E'CONTRA', E'Primera Declaración Jurada Contraloría', E'no', E'pdf,PDF', E'', 1, 14, E'si', NULL),
  (612, 511, E'2017-10-23 12:43:22.634', E'2018-06-18 10:39:29.969', E'activo', NULL, E'NULL', 24, E'id_funcionario', E'documento', E'orga.tfuncionario', E'SIPASS', E'Sipasse', E'no', E'pdf,PDF', E'', 4, 15, E'si', NULL),
  (612, 18, E'2017-10-23 12:45:56.708', E'2017-11-20 18:16:18.329', E'activo', NULL, E'NULL', 25, E'id_funcionario', E'documento', E'orga.tfuncionario', E'DJ_PERS', E'D. J. Percepciones ', E'no', E'PDF,pdf', E'', 1, 17, E'si', NULL),
  (612, 18, E'2017-10-23 12:47:14.667', E'2017-12-14 15:54:24.071', E'activo', NULL, E'NULL', 26, E'id_funcionario', E'documento', E'orga.tfuncionario', E'DJ-PARENT', E'D. J. Parentesco ', E'no', E'pdf,PDF', E'', 4, 16, E'si', NULL),
  (612, 18, E'2017-10-23 12:49:28.757', E'2017-11-20 17:52:33.576', E'activo', NULL, E'NULL', 28, E'id_funcionario', E'documento', E'orga.tfuncionario', E'CONTRATO', E'Primer Memorándum Contrato', E'no', E'pdf,PDF', E'', 2, 19, E'si', NULL),
  (612, 18, E'2017-10-23 12:54:13.266', E'2017-11-20 18:16:48.755', E'activo', NULL, E'NULL', 29, E'id_funcionario', E'documento', E'orga.tfuncionario', E'DECL-HER', E'Declaración de Herederos', E'no', E'pdf,PDF', E'', 1, 21, E'no', NULL),
  (612, 18, E'2017-10-23 13:00:24.689', E'2017-11-20 18:16:24.072', E'activo', NULL, E'NULL', 30, E'id_funcionario', E'documento', E'orga.tfuncionario', E'DESIG', E'Primer Memorándum de Designación', E'no', E'pdf,PDF', E'', 1, 18, E'si', NULL),
  (612, 18, E'2017-10-23 13:01:40.995', E'2017-11-20 18:16:55.406', E'activo', NULL, E'NULL', 31, E'id_funcionario', E'documento', E'orga.tfuncionario', E'CARTA-RENUN', E'Carta de Renuncia', E'no', E'pdf,PDF', E'', 1, 22, E'no', NULL),
  (31, 18, E'2017-10-23 14:54:52.698', E'2017-11-20 18:15:15.332', E'activo', NULL, E'NULL', 34, E'id_funcionario', E'documento', E'orga.tfuncionario', E'AVISO_FILIA', E'Aviso de Afiliacion de Alta', E'no', E'pdf,PDF', E'', 1, 9, E'si', NULL),
  (31, 18, E'2017-10-23 14:55:53.488', E'2017-10-27 16:02:53.370', E'activo', NULL, E'NULL', 35, E'id_funcionario', E'documento', E'orga.tfuncionario', E'FINIQ', E'Finiquito', E'no', E'pdf,PDF', E'', 2, 23, E'no', NULL),
  (31, 18, E'2017-10-23 14:57:35.250', E'2017-11-20 18:17:19.288', E'activo', NULL, E'NULL', 36, E'id_funcionario', E'documento', E'orga.tfuncionario', E'BAJA', E'Aviso de Baja Afiliación', E'no', E'PDF,pdf', E'', 2, 28, E'no', NULL),
  (18, 511, E'2017-10-23 15:39:42.281', E'2018-06-18 10:33:51.259', E'activo', NULL, E'NULL', 37, E'id_funcionario', E'documento', E'orga.tfuncionario', E'CERT_EGRESO', E'Certificado de Egreso', E'no', E'PDF,pdf', E'', 4, 4, E'no', 3),
  (18, 511, E'2017-10-23 15:43:02.157', E'2018-03-26 12:23:27.142', E'activo', NULL, E'NULL', 38, E'id_funcionario', E'documento', E'orga.tfuncionario', E'CERT_MATR', E'Certificado de Matrimonio', E'no', E'pdf,PDF', E'', 2, 7, E'no', NULL),
  (18, 18, E'2017-10-23 15:48:40.833', E'2017-11-23 18:24:01.316', E'activo', NULL, E'NULL', 39, E'id_funcionario', E'documento', E'orga.tfuncionario', E'EXA_PREOC', E'Examen Pre - Ocupacional', E'no', E'PDF,pdf', E'', 2, 10, E'si', NULL),
  (18, 18, E'2017-10-23 16:04:47.370', E'2017-10-27 16:01:40.011', E'activo', NULL, E'NULL', 41, E'id_funcionario', E'documento', E'orga.tfuncionario', E'CART_DESP', E'Carta de Despido', E'no', E'PDF,pdf', E'  ', 1, 24, E'no', NULL),
  (18, 18, E'2017-10-23 16:08:01.469', E'2017-10-27 16:01:51.436', E'activo', NULL, E'NULL', 42, E'id_funcionario', E'documento', E'orga.tfuncionario', E'CONC_CONTR', E'Conclusión de Contrato', E'no', E'PDF,pdf', E'', 1, 25, E'no', NULL),
  (18, 18, E'2017-10-23 16:10:26.442', E'2017-10-27 16:02:25.363', E'activo', NULL, E'NULL', 43, E'id_funcionario', E'documento', E'orga.tfuncionario', E'DESV_PER_PRUE', E'Desvinculación en Periodo de Prueba', E'no', E'PDF,pdf', E'', 1, 26, E'no', NULL),
  (18, 18, E'2017-10-23 16:14:43.337', E'2017-10-27 16:02:38.577', E'activo', NULL, E'NULL', 44, E'id_funcionario', E'documento', E'orga.tfuncionario', E'OTR_RET', E'Otros Tipos de Retiro', E'no', E'PDF,pdf', E'', 1, 27, E'no', NULL),
  (18, 511, E'2017-10-27 11:01:38.547', E'2018-07-11 18:36:41.496', E'activo', NULL, E'NULL', 45, E'id_funcionario', E'documento', E'orga.tfuncionario', E'DIAC', E'Diploma Academico', E'no', E'pdf,PDF', E'', 2, 2, E'no', 2),
  (18, 511, E'2017-10-27 17:58:55.150', E'2018-03-28 10:19:07.003', E'activo', NULL, E'NULL', 46, E'id_funcionario', E'documento', E'orga.tfuncionario', E'TIT_MAES', E'Título Maestria', E'no', E'pdf,PDF', E'', 2, 3, E'no', NULL),
  (18, NULL, E'2017-10-27 18:00:47.807', NULL, E'activo', NULL, E'NULL', 47, E'id_funcionario', E'documento', E'orga.tfuncionario', E'TIT_DOC', E'Título Doctorado', E'no', E'pdf,PDF', E'', 1, 3, E'no', NULL),
  (18, NULL, E'2017-10-27 18:25:40.667', NULL, E'activo', NULL, E'NULL', 48, E'id_funcionario', E'documento', E'orga.tfuncionario', E'CAR_DIS', E'Carnet de Capacidad Diferente', E'no', E'pdf,PDF', E'', 1, 12, E'no', NULL),
  (18, 18, E'2017-10-27 18:47:19.634', E'2018-01-16 11:29:49.573', E'activo', NULL, E'NULL', 49, E'id_funcionario', E'documento', E'orga.tfuncionario', E'SUM', E'Sumario', E'no', E'pdf,PDF', E'', 4, 29, E'no', NULL),
  (18, NULL, E'2017-10-27 18:50:41.834', NULL, E'activo', NULL, E'NULL', 50, E'id_funcionario', E'documento', E'orga.tfuncionario', E'PEN-EX-TRA', E'Pendientes Extrabajadores', E'no', E'pdf,PDF', E'', 2, 30, E'no', NULL),
  (83, NULL, E'2017-11-01 09:47:47.986', NULL, E'activo', NULL, E'NULL', 51, E'id_movimiento_entidad', E'documento', E'obingresos.tmovimiento_entidad', E'ESCANMOVRESP', E'Escaneado Movimiento Respaldo', E'no', E'doc,docx,pdf,jpg,jpeg,png,PDF,DOC,DOCX,xls,xlsx', E'', 5, 1, E'no', NULL),
  (18, 511, E'2017-11-20 17:51:20.092', E'2018-06-18 10:39:39.871', E'activo', NULL, E'NULL', 52, E'id_funcionario', E'documento', E'orga.tfuncionario', E'CREDEN', E'Credencial BoA', E'no', E'PDF,pdf', E'', 4, 15, E'si', NULL),
  (1, NULL, E'2017-11-23 10:53:00.361', NULL, E'activo', NULL, E'NULL', 55, E'id_video', E'documento', E'cola.tvideo', E'videos', E'videos', E'no', E'MP4,mp4', E'', 10, NULL, NULL, NULL),
  (18, 511, E'2017-11-24 15:20:53.938', E'2018-12-13 17:01:37.158', E'activo', NULL, E'NULL', 56, E'id_funcionario', E'documento', E'orga.tfuncionario', E'resolucion_administrativa', E'Resolución Administrativa - SAI', E'si', E'pdf,PDF', E'', 14, 40, E'no', NULL),
  (18, 511, E'2017-11-24 15:30:29.879', E'2018-01-19 15:36:41.986', E'activo', NULL, E'NULL', 58, E'id_funcionario', E'documento', E'orga.tfuncionario', E'licencia_conducir', E'Licencia de Conducir', E'si', E'pdf,PDF', E'', 1, 42, E'no', NULL),
  (18, 511, E'2017-11-24 15:35:55.137', E'2018-04-04 15:09:29.344', E'activo', NULL, E'NULL', 59, E'id_funcionario', E'documento', E'orga.tfuncionario', E'licencia_aeronautica', E'Licencia Aeronautica', E'no', E'pdf,PDF', E'', 1, 5, E'no', NULL),
  (1, 1, E'2017-12-11 17:44:28.982', E'2017-12-11 17:48:58.230', E'activo', NULL, E'NULL', 60, E'id_tipo_archivo', E'documento', E'ttipo_archivo', E'favio', E'Favio', E'no', E'jpg,docx,doc,pdf,jpeg,bmp,gif,png,PDF,DOC,DOCX,xls,XLS,xlsx,XLSX,rar,mp4,MP4', E'', 10, 1, E'si', NULL),
  (511, NULL, E'2018-02-15 16:11:26.638', NULL, E'activo', NULL, E'NULL', 61, E'id_funcionario', E'documento', E'orga.tfuncionario', E'SABS', E'Credencial SABSA', E'no', E'PDF,pdf', E'', 1, 15, E'no', NULL),
  (18, 511, E'2018-03-20 16:22:50.895', E'2018-04-04 15:18:26.833', E'activo', NULL, E'NULL', 62, E'id_funcionario', E'documento', E'orga.tfuncionario', E'SIB', E'Registro SIB ', E'no', E'pdf,PDF', E'', 2, 20, E'no', NULL),
  (18, NULL, E'2018-05-14 09:41:22.912', NULL, E'activo', NULL, E'NULL', 63, E'id_funcionario', E'documento', E'orga.tfuncionario', E'CER_TMED', E'Certificado Medico', E'si', E'pdf,PDF', E'', 1, 40, E'no', NULL);

  /* Data for the 'param.tfield_tipo_archivo' table */

INSERT INTO param.tfield_tipo_archivo ("id_usuario_reg", "id_usuario_mod", "fecha_reg", "fecha_mod", "estado_reg", "id_usuario_ai", "usuario_ai", "id_field_tipo_archivo", "id_tipo_archivo", "nombre", "tipo", "descripcion")
VALUES
  (85, NULL, E'2017-10-23 15:07:50.623', NULL, E'activo', NULL, E'NULL', 12, 28, E'Numero de Cite', E'TextField', E'Numero de Cite'),
  (85, NULL, E'2017-10-23 15:08:08.771', NULL, E'activo', NULL, E'NULL', 13, 28, E'Fecha', E'DateField', E'Fecha'),
  (85, NULL, E'2017-10-23 15:24:46.602', NULL, E'activo', NULL, E'NULL', 14, 30, E'Numero de Cite', E'TextField', E'Numero de Cite'),
  (85, NULL, E'2017-10-23 15:25:00.503', NULL, E'activo', NULL, E'NULL', 15, 30, E'Fecha', E'DateField', E'Fecha'),
  (31, NULL, E'2017-10-23 15:29:36.340', NULL, E'activo', NULL, E'NULL', 16, 35, E'Fecha de Retiro', E'DateField', E'Fecha de Retiro'),
  (18, NULL, E'2017-10-23 15:36:54.488', NULL, E'activo', NULL, E'NULL', 17, 12, E'fecha', E'DateField', E'Fecha de Emision'),
  (18, 18, E'2017-10-23 15:37:11.673', E'2017-10-23 16:16:31.067', E'activo', NULL, E'NULL', 18, 12, E'entidad_emisora', E'ComboBox', E'Entidad Emisora'),
  (18, NULL, E'2017-10-23 15:37:45.334', NULL, E'activo', NULL, E'NULL', 19, 13, E'fecha_emision', E'DateField', E'Fecha de Emisión'),
  (18, 18, E'2017-10-23 15:38:01.087', E'2017-10-23 16:15:59.204', E'activo', NULL, E'NULL', 20, 13, E'entidad_emisora', E'ComboBox', E'Entidad Emisora'),
  (18, NULL, E'2017-10-23 15:40:13.238', NULL, E'activo', NULL, E'NULL', 21, 37, E'fecha_emision', E'DateField', E'Fecha de Emisión'),
  (18, 18, E'2017-10-23 15:40:28.543', E'2017-10-23 16:16:18.592', E'activo', NULL, E'NULL', 22, 37, E'entidad_emisora', E'ComboBox', E'Entidad Emisora'),
  (18, 18, E'2017-10-23 15:44:13.813', E'2017-10-27 18:13:08.583', E'activo', NULL, E'NULL', 23, 34, E'fecha_recepcion', E'DateField', E'Fecha de Recepción'),
  (18, NULL, E'2017-10-23 15:44:52.872', NULL, E'activo', NULL, E'NULL', 24, 34, E'caja_salud', E'ComboBox', E'Caja de Salud'),
  (18, NULL, E'2017-10-23 15:52:23.240', NULL, E'activo', NULL, E'NULL', 25, 23, E'nro_cd', E'TextField', E'Número CD'),
  (18, NULL, E'2017-10-23 15:52:35.272', NULL, E'activo', NULL, E'NULL', 26, 23, E'fecha', E'DateField', E'Fecha de Emision'),
  (612, 18, E'2017-10-23 15:56:27.940', E'2017-10-27 10:33:06.506', E'activo', NULL, E'NULL', 27, 21, E'caja_salud', E'ComboBox', E'Caja de Salud'),
  (18, NULL, E'2017-10-23 15:58:33.289', NULL, E'activo', NULL, E'NULL', 28, 31, E'fecha_recepcion', E'DateField', E'Fecha de Recepcion'),
  (18, 18, E'2017-10-23 16:00:20.791', E'2017-10-27 18:12:55.544', E'activo', NULL, E'NULL', 29, 36, E'fecha_recepcion', E'DateField', E'Fecha de Recepcion'),
  (18, NULL, E'2017-10-23 16:00:33.172', NULL, E'activo', NULL, E'NULL', 30, 36, E'caja_salud', E'ComboBox', E'Caja de Salud'),
  (18, 18, E'2017-10-23 16:03:53.257', E'2017-10-27 10:31:50.792', E'activo', NULL, E'NULL', 31, 31, E'observaciones', E'TextArea', E'Observaciones'),
  (18, NULL, E'2017-10-23 16:05:58.168', NULL, E'activo', NULL, E'NULL', 32, 41, E'fecha_emision', E'DateField', E'Fecha de Emision'),
  (18, 18, E'2017-10-23 16:06:44.446', E'2017-10-27 10:33:52.870', E'activo', NULL, E'NULL', 33, 41, E'observaciones', E'TextArea', E'Observaciones'),
  (18, NULL, E'2017-10-23 16:08:23.690', NULL, E'activo', NULL, E'NULL', 34, 42, E'fecha_emision', E'DateField', E'Fecha de Emision'),
  (18, NULL, E'2017-10-23 16:08:51.182', NULL, E'activo', NULL, E'NULL', 35, 42, E'nro_cite', E'TextField', E'Número de Cite'),
  (18, 18, E'2017-10-23 16:09:02.687', E'2017-10-27 10:34:06.791', E'activo', NULL, E'NULL', 36, 42, E'observaciones', E'TextArea', E'Observaciones'),
  (18, NULL, E'2017-10-23 16:10:50.340', NULL, E'activo', NULL, E'NULL', 37, 43, E'fecha_emision', E'DateField', E'Fecha de Emisión'),
  (18, NULL, E'2017-10-23 16:12:30.579', NULL, E'activo', NULL, E'NULL', 38, 43, E'nro_cite', E'TextField', E'Número de Cite'),
  (18, 18, E'2017-10-23 16:12:42.797', E'2017-10-27 10:34:18.769', E'activo', NULL, E'NULL', 39, 43, E'observaciones', E'TextArea', E'Observaciones'),
  (18, 18, E'2017-10-23 16:15:02.684', E'2017-10-27 10:34:25.287', E'activo', NULL, E'NULL', 40, 44, E'observaciones', E'TextArea', E'Observaciones'),
  (18, 18, E'2017-10-23 16:18:46.378', E'2017-10-27 10:33:36.636', E'activo', NULL, E'NULL', 41, 35, E'observaciones', E'TextArea', E'Observaciones'),
  (18, NULL, E'2017-10-27 10:41:05.474', NULL, E'activo', NULL, E'NULL', 42, 37, E'carrera', E'ComboBox', E'Carrera'),
  (18, 18, E'2017-10-27 10:41:52.558', E'2017-10-27 10:56:56.437', E'activo', NULL, E'NULL', 43, 37, E'nivel_academico', E'ComboBox', E'Nivel Academico '),
  (18, NULL, E'2017-10-27 10:59:17.123', NULL, E'activo', NULL, E'NULL', 44, 13, E'carrera', E'ComboBox', E'Carrera'),
  (18, NULL, E'2017-10-27 10:59:52.795', NULL, E'activo', NULL, E'NULL', 45, 13, E'nivel_academico', E'ComboBox', E'Nivel Academico'),
  (18, 18, E'2017-10-27 11:02:34.447', E'2017-10-27 11:03:50.480', E'activo', NULL, E'NULL', 46, 45, E'fecha', E'DateField', E'Fecha de Emision'),
  (18, NULL, E'2017-10-27 11:02:59.101', NULL, E'activo', NULL, E'NULL', 47, 45, E'entidad_emisora', E'ComboBox', E'Entidad Emisora'),
  (18, NULL, E'2017-10-27 11:03:10.559', NULL, E'activo', NULL, E'NULL', 48, 45, E'carrera', E'ComboBox', E'Carrera'),
  (18, NULL, E'2017-10-27 11:03:26.025', NULL, E'activo', NULL, E'NULL', 49, 45, E'nivel_academico', E'ComboBox', E'Nivel Academico'),
  (18, NULL, E'2017-10-27 11:48:44.114', NULL, E'activo', NULL, E'NULL', 52, 13, E'numero', E'TextField', E'Número de Serie'),
  (18, NULL, E'2017-10-27 11:49:29.133', NULL, E'activo', NULL, E'NULL', 53, 12, E'numero', E'TextField', E'Número de Serie'),
  (18, NULL, E'2017-10-27 11:49:49.525', NULL, E'activo', NULL, E'NULL', 54, 12, E'observaciones', E'TextArea', E'Observaciones'),
  (18, NULL, E'2017-10-27 11:50:21.373', NULL, E'activo', NULL, E'NULL', 55, 37, E'observaciones', E'TextArea', E'Observaciones'),
  (18, NULL, E'2017-10-27 11:52:56.455', NULL, E'activo', NULL, E'NULL', 56, 11, E'estado_civil', E'ComboBox', E'Estado Civil'),
  (18, NULL, E'2017-10-27 11:57:47.796', NULL, E'activo', NULL, E'NULL', 57, 15, E'numero_serie', E'TextField', E'Número de Serie'),
  (18, 18, E'2017-10-27 11:58:53.470', E'2017-10-27 11:59:18.438', E'activo', NULL, E'NULL', 58, 15, E'nombre_padre', E'TextField', E'Nombre del Padre'),
  (18, 18, E'2017-10-27 11:59:07.493', E'2017-10-27 11:59:28.629', E'activo', NULL, E'NULL', 59, 15, E'nombre_madre', E'TextField', E'Nombre de la Madre'),
  (18, NULL, E'2017-10-27 12:01:22.558', NULL, E'activo', NULL, E'NULL', 60, 38, E'numero', E'TextField', E'Número de Serie'),
  (18, 18, E'2017-10-27 12:01:41.410', E'2017-10-27 12:02:46.153', E'activo', NULL, E'NULL', 61, 38, E'esposa', E'TextField', E'Nombre Espos@'),
  (18, NULL, E'2017-10-27 12:02:34.931', NULL, E'activo', NULL, E'NULL', 62, 38, E'fecha', E'DateField', E'Fecha'),
  (18, 18, E'2017-10-27 12:03:20.299', E'2017-10-27 12:04:43.240', E'activo', NULL, E'NULL', 63, 14, E'numero_serie', E'TextField', E'Número de Serie'),
  (18, NULL, E'2017-10-27 12:04:34.146', NULL, E'activo', NULL, E'NULL', 64, 14, E'numero_matricula', E'TextField', E'Número de Matricula'),
  (18, NULL, E'2017-10-27 12:05:19.252', NULL, E'activo', NULL, E'NULL', 65, 14, E'escala', E'TextField', E'Escala'),
  (18, NULL, E'2017-10-27 12:06:32.857', NULL, E'activo', NULL, E'NULL', 66, 39, E'fecha', E'DateField', E'Fecha'),
  (18, NULL, E'2017-10-27 12:06:47.694', NULL, E'activo', NULL, E'NULL', 67, 39, E'afp', E'ComboBox', E'AFP'),
  (18, NULL, E'2017-10-27 12:09:33.222', NULL, E'activo', NULL, E'NULL', 68, 26, E'fecha', E'DateField', E'Fecha'),
  (18, NULL, E'2017-10-27 12:09:49.449', NULL, E'activo', NULL, E'NULL', 69, 25, E'fecha', E'DateField', E'Fecha'),
  (18, NULL, E'2017-10-27 12:10:51.980', NULL, E'activo', NULL, E'NULL', 70, 30, E'primer_cargo', E'TextField', E'Primer Cargo'),
  (18, 511, E'2017-10-27 17:51:51.116', E'2018-04-02 18:02:30.210', E'activo', NULL, E'NULL', 71, 11, E'validez', E'DateField', E'Valida hasta el'),
  (18, 18, E'2017-10-27 17:55:05.517', E'2017-10-27 17:55:13.652', E'activo', NULL, E'NULL', 72, 16, E'fecha_emision', E'DateField', E'Fecha de Emision'),
  (18, NULL, E'2017-10-27 17:55:45.238', NULL, E'activo', NULL, E'NULL', 73, 17, E'fecha_emision', E'DateField', E'Fecha de Emision'),
  (18, NULL, E'2017-10-27 17:56:31.727', NULL, E'activo', NULL, E'NULL', 74, 24, E'nro_serie', E'TextField', E'Número de Serie'),
  (18, NULL, E'2017-10-27 17:56:50.355', NULL, E'activo', NULL, E'NULL', 75, 24, E'fecha_emision', E'DateField', E'Fecha de Emision'),
  (18, NULL, E'2017-10-27 18:02:26.589', NULL, E'activo', NULL, E'NULL', 76, 46, E'nombre_maestria', E'TextArea', E'Nombre Maestria'),
  (18, NULL, E'2017-10-27 18:02:47.891', NULL, E'activo', NULL, E'NULL', 77, 47, E'nombre_doctorado', E'TextArea', E'Nombre Doctorado'),
  (18, NULL, E'2017-10-27 18:03:15.123', NULL, E'activo', NULL, E'NULL', 78, 46, E'nro_serie', E'TextField', E'Número de Serie'),
  (18, NULL, E'2017-10-27 18:04:52.297', NULL, E'activo', NULL, E'NULL', 79, 46, E'fecha_emision', E'DateField', E'Fecha de Emision'),
  (18, NULL, E'2017-10-27 18:05:11.725', NULL, E'activo', NULL, E'NULL', 80, 46, E'entidad_emisora', E'ComboBox', E'Entidad Emisora'),
  (18, NULL, E'2017-10-27 18:05:50.250', NULL, E'activo', NULL, E'NULL', 81, 47, E'nro_serie', E'TextField', E'Número de Serie'),
  (18, NULL, E'2017-10-27 18:06:09.118', NULL, E'activo', NULL, E'NULL', 82, 47, E'fecha_emision', E'DateField', E'Fecha de Emision'),
  (18, NULL, E'2017-10-27 18:06:27.292', NULL, E'activo', NULL, E'NULL', 83, 47, E'entidad_emisora', E'ComboBox', E'Entidad Emisora'),
  (18, 18, E'2017-10-27 18:26:17.931', E'2017-10-27 18:31:00.445', E'activo', NULL, E'NULL', 84, 48, E'numero', E'TextField', E'Número de Registro'),
  (18, NULL, E'2017-10-27 18:31:56.564', NULL, E'activo', NULL, E'NULL', 85, 48, E'tipo_discapacidad', E'ComboBox', E'Tipo de Discapacitad'),
  (18, NULL, E'2017-10-27 18:34:13.613', NULL, E'activo', NULL, E'NULL', 86, 48, E'DEF', E'ComboBox', E'Deficiencia'),
  (18, NULL, E'2017-10-27 18:36:05.970', NULL, E'activo', NULL, E'NULL', 87, 48, E'POR', E'TextField', E'Porcentaje'),
  (18, NULL, E'2017-10-27 18:48:09.254', NULL, E'activo', NULL, E'NULL', 88, 49, E'numero_sumario', E'TextField', E'Número de Sumario'),
  (18, NULL, E'2017-10-27 18:48:51.811', NULL, E'activo', NULL, E'NULL', 89, 49, E'fecha', E'DateField', E'Fecha de Sumario'),
  (18, NULL, E'2017-10-27 18:49:12.356', NULL, E'activo', NULL, E'NULL', 90, 49, E'observaciones', E'TextArea', E'Observaciones'),
  (18, NULL, E'2017-10-27 18:52:44.611', NULL, E'activo', NULL, E'NULL', 91, 50, E'observaciones', E'TextArea', E'Observaciones'),
  (18, NULL, E'2017-11-20 17:53:56.748', NULL, E'activo', NULL, E'NULL', 92, 52, E'fecha_vencimiento', E'DateField', E'Fecha de Vencimiento'),
  (18, NULL, E'2017-11-20 18:22:05.118', NULL, E'activo', NULL, E'NULL', 94, 54, E'fecha_vencimiento', E'DateField', E'Fecha de Vencimiento'),
  (18, NULL, E'2017-11-23 18:24:45.657', NULL, E'activo', NULL, E'NULL', 95, 34, E'codigo', E'TextField', E'Codigo'),
  (18, NULL, E'2017-11-24 15:22:12.119', NULL, E'activo', NULL, E'NULL', 96, 56, E'numero', E'TextField', E'Número'),
  (18, NULL, E'2017-11-24 15:22:24.213', NULL, E'activo', NULL, E'NULL', 97, 56, E'fecha', E'DateField', E'Fecha'),
  (18, NULL, E'2017-11-24 15:22:40.399', NULL, E'activo', NULL, E'NULL', 98, 56, E'sancion', E'TextArea', E'Sanción'),
  (18, NULL, E'2017-11-24 15:31:13.340', NULL, E'activo', NULL, E'NULL', 102, 58, E'categoria_licencia', E'ComboBox', E'Categoria'),
  (18, NULL, E'2017-11-24 15:31:47.296', NULL, E'activo', NULL, E'NULL', 103, 58, E'fecha_vencimiento', E'DateField', E'Fecha de Vencimiento'),
  (18, 18, E'2017-11-24 15:36:18.145', E'2017-11-24 15:38:08.105', E'activo', NULL, E'NULL', 104, 59, E'tipo_licencia', E'ComboBox', E'Tipo'),
  (18, 511, E'2017-11-24 15:36:35.222', E'2018-02-15 16:45:03.119', E'activo', NULL, E'NULL', 105, 59, E'tip_ha', E'TextField', E'tipo de habilitacion'),
  (18, 18, E'2018-01-15 10:40:32.439', E'2018-01-15 10:40:59.552', E'activo', NULL, E'NULL', 106, 13, E'obs', E'TextArea', E'Observaciones'),
  (511, NULL, E'2018-02-15 16:13:01.265', NULL, E'activo', NULL, E'NULL', 107, 61, E'fecha_vencimiento', E'DateField', E'Fecha de Vencimiento'),
  (18, NULL, E'2018-05-14 09:42:30.453', NULL, E'activo', NULL, E'NULL', 108, 63, E'fecha_vencimiento', E'DateField', E'Fecha de Vencimiento'),
  (18, NULL, E'2018-05-14 09:42:52.264', NULL, E'activo', NULL, E'NULL', 109, 63, E'observaciones', E'TextArea', E'Observaciones');

/* Data for the 'param.tplantilla' table */

INSERT INTO param.tplantilla ("id_usuario_reg", "id_usuario_mod", "fecha_reg", "fecha_mod", "estado_reg", "id_usuario_ai", "usuario_ai", "id_plantilla", "nro_linea", "desc_plantilla", "tipo", "sw_tesoro", "sw_compro", "sw_monto_excento", "sw_descuento", "sw_autorizacion", "sw_codigo_control", "tipo_plantilla", "sw_nro_dui", "sw_ic", "tipo_informe", "tipo_excento", "valor_excento", "sw_qr", "sw_nit", "plantilla_qr", "sw_estacion", "sw_punto_venta", "sw_cod_no_iata")
VALUES
  (1, 1, E'2014-06-13 15:39:47.384', E'2016-07-11 16:10:58.026', E'activo', NULL, NULL, 1, 3, E'Compra con Credito Fiscal', 1, E'si', E'si', E'no', E'si', E'si', E'si', E'compra', E'no', E'no', E'lcv', E'variable', 0, E'si', E'si', E'nit|nro_documento|nro_autorizacion|fecha|importe_doc|importe_base|codigo_control|nit_comprador|importe_ice|importe_excento|importe_excento|importe_descuento|', E'no', E'no', E'no'),
  (1, NULL, E'2014-06-13 15:39:47.384', NULL, E'activo', NULL, NULL, 2, 5, E'Venta con Debito Fiscal', 1, E'si', E'no', E'no', E'no', E'no', E'no', E'compra', E'no', E'no', E'lcv', E'variable', 0, E'no', E'si', NULL, E'no', E'no', E'no'),
  (1, NULL, E'2014-06-13 15:39:47.384', NULL, E'activo', NULL, NULL, 3, 5, E'Venta sin Debito Fiscal', 1, E'si', E'no', E'no', E'no', E'no', E'no', E'compra', E'no', E'no', E'lcv', E'variable', 0, E'no', E'si', NULL, E'no', E'no', E'no'),
  (1, 18, E'2014-06-13 15:39:47.384', E'2017-08-04 16:13:28.290', E'activo', NULL, NULL, 4, 1, E'Compra sin Derecho a Credito Fiscal - Factura ZONA FRANCA', 1, E'si', E'si', E'si', E'si', E'si', E'si', E'compra', E'no', E'no', E'lcv', E'porcentual', 1, E'si', E'si', E'nit|nro_documento|nro_autorizacion|fecha|importe_doc|importe_base|codigo_control|nit_comprador|importe_ice|importe_excento|importe_excento|importe_descuento|', E'no', E'no', E'no'),
  (1, NULL, E'2014-06-13 15:39:47.384', NULL, E'activo', NULL, NULL, 5, 1, E'Notas de Debito Fiscal', 4, E'si', E'no', E'no', E'no', E'no', E'no', E'compra', E'no', E'no', E'lcv', E'variable', 0, E'no', E'si', NULL, E'no', E'no', E'no'),
  (1, NULL, E'2014-06-13 15:39:47.384', NULL, E'activo', NULL, NULL, 6, 6, E'Notas de Credito Fiscal', 4, E'si', E'no', E'no', E'no', E'no', E'no', E'compra', E'no', E'no', E'lcv', E'variable', 0, E'no', E'si', NULL, E'no', E'no', E'no'),
  (1, 1, E'2014-06-13 15:39:47.384', E'2016-07-11 16:16:23.888', E'activo', NULL, NULL, 7, 2, E'Compra de Boletos Aereos con CF', 1, E'si', E'si', E'si', E'no', E'si', E'no', E'compra', E'no', E'no', E'lcv', E'variable', 0, E'no', E'si', NULL, E'no', E'no', E'no'),
  (1, 1, E'2014-06-13 15:39:47.384', E'2016-08-18 12:08:34.989', E'activo', NULL, NULL, 8, 1, E'Recibo sin Retenciones', 2, E'si', E'si', E'no', E'no', E'no', E'no', E'compra', E'no', E'no', E'retenciones', E'variable', 0, E'no', E'no', NULL, E'no', E'no', E'no'),
  (1, 1, E'2014-06-13 15:39:47.384', E'2016-08-18 12:17:57.006', E'activo', NULL, NULL, 9, 4, E'Recibo con Retenciones Bienes', 2, E'si', E'si', E'no', E'no', E'no', E'no', E'compra', E'no', E'no', E'retenciones', E'variable', 0, E'no', E'no', NULL, E'no', E'no', E'no'),
  (1, 1, E'2014-06-13 15:39:47.384', E'2016-08-18 12:28:34.632', E'activo', NULL, NULL, 10, 4, E'Recibo con Retenciones Servicios', 2, E'si', E'si', E'no', E'no', E'no', E'no', E'compra', E'no', E'no', E'retenciones', E'variable', 0, E'no', E'no', NULL, E'no', E'no', E'no'),
  (1, 1, E'2014-06-13 15:39:47.384', E'2016-08-18 12:28:05.137', E'activo', NULL, NULL, 11, 1, E'Recibo con Retenciones Bienes - ZF', 2, E'si', E'si', E'no', E'no', E'no', E'no', E'compra', E'no', E'no', E'retenciones', E'variable', 0, E'no', E'no', NULL, E'no', E'no', E'no'),
  (1, 1, E'2014-06-13 15:39:47.384', E'2016-08-18 12:28:14.050', E'activo', NULL, NULL, 12, 1, E'Recibo con Retenciones Servicios - ZF', 2, E'si', E'si', E'no', E'no', E'no', E'no', E'compra', E'no', E'no', E'retenciones', E'variable', 0, E'no', E'no', NULL, E'no', E'no', E'no'),
  (1, 18, E'2014-06-13 15:39:47.384', E'2017-01-17 18:49:23.670', E'activo', NULL, NULL, 13, 1, E'Retenciones RC-IVA', 4, E'si', E'si', E'si', E'no', E'no', E'no', E'compra', E'no', E'no', E'retenciones', E'variable', 0, E'no', E'no', NULL, E'no', E'no', E'no'),
  (1, 1, E'2014-06-13 15:39:47.384', E'2016-08-18 12:27:01.240', E'activo', NULL, NULL, 14, 1, E'Retenciones Remesas', 4, E'si', E'si', E'no', E'no', E'no', E'no', E'compra', E'no', E'no', E'retenciones', E'variable', 0, E'no', E'no', NULL, E'no', E'no', E'no'),
  (1, 1, E'2014-06-13 15:39:47.384', E'2016-07-11 16:15:58.755', E'activo', NULL, NULL, 15, 3, E'Compra con Credito Fiscal Proyectos', 1, E'si', E'si', E'no', E'si', E'si', E'si', E'compra', E'no', E'no', E'lcv', E'variable', 0, E'si', E'si', E'nit|nro_documento|nro_autorizacion|fecha|importe_doc|importe_base|codigo_control|nit_comprador|importe_ice|importe_excento|importe_excento|importe_descuento|', E'no', E'no', E'no'),
  (1, NULL, E'2014-06-13 15:39:47.384', NULL, E'activo', NULL, NULL, 16, 3, E'Proforma de Factura', 3, E'si', E'si', E'no', E'no', E'no', E'no', E'compra', E'no', E'no', E'lcv', E'variable', 0, E'no', E'si', NULL, E'no', E'no', E'no'),
  (1, 175, E'2014-06-13 15:39:47.384', E'2016-08-19 16:52:25.246', E'activo', NULL, NULL, 17, 3, E'Recibo con Retenciones de Alquiler', 2, E'si', E'si', E'no', E'no', E'no', E'no', E'compra', E'no', E'no', E'retenciones', E'variable', 0, E'no', E'no', NULL, E'no', E'no', E'no'),
  (1, NULL, E'2014-06-13 15:39:47.384', NULL, E'activo', NULL, NULL, 18, 1, E'Proforma Factura Proyectos', 3, E'si', E'si', E'no', E'no', E'no', E'no', E'compra', E'no', E'no', E'lcv', E'variable', 0, E'no', E'si', NULL, E'no', E'no', E'no'),
  (1, 1, E'2014-06-13 15:39:47.384', E'2016-08-18 12:24:20.902', E'activo', NULL, NULL, 19, 3, E'Proforma Retención Bienes', 3, E'si', E'si', E'no', E'no', E'no', E'no', E'compra', E'no', E'no', E'retenciones', E'variable', 0, E'no', E'si', NULL, E'no', E'no', E'no'),
  (1, 1, E'2014-06-13 15:39:47.384', E'2016-08-18 12:27:22.512', E'activo', NULL, NULL, 20, 3, E'Proforma Retención Servicios', 3, E'si', E'si', E'no', E'no', E'no', E'no', E'compra', E'no', E'no', E'retenciones', E'variable', 0, E'no', E'si', NULL, E'no', E'no', E'no'),
  (1, 1, E'2014-06-13 15:39:47.384', E'2016-08-18 12:26:27.464', E'activo', NULL, NULL, 21, 2, E'Proforma Retención Bienes - ZF', 3, E'si', E'si', E'no', E'no', E'no', E'no', E'compra', E'no', E'no', E'retenciones', E'variable', 0, E'no', E'si', NULL, E'no', E'no', E'no'),
  (1, 1, E'2014-06-13 15:39:47.384', E'2016-08-18 12:26:35.528', E'activo', NULL, NULL, 22, 2, E'Proforma Retención Servicios - ZF', 3, E'si', E'si', E'no', E'no', E'no', E'no', E'compra', E'no', E'no', E'retenciones', E'variable', 0, E'no', E'si', NULL, E'no', E'no', E'no'),
  (1, 1, E'2014-06-13 15:39:47.384', E'2017-06-02 12:31:36.722', E'activo', NULL, NULL, 23, 3, E'Proforma Recibo de Alquiler', 3, E'si', E'si', E'no', E'no', E'no', E'no', E'compra', E'no', E'no', E'otros', E'variable', 0, E'no', E'si', NULL, E'no', E'no', E'no'),
  (1, 18, E'2014-06-13 15:39:47.384', E'2017-10-17 12:02:00.387', E'activo', NULL, NULL, 24, 1, E'Póliza de Importación - DUI', 1, E'si', E'si', E'no', E'no', E'si', E'no', E'compra', E'si', E'no', E'lcv', E'variable', 0, E'si', E'si', NULL, E'no', E'no', E'no'),
  (1, 1, E'2014-06-13 15:39:47.384', E'2016-07-11 16:15:23.290', E'activo', NULL, NULL, 25, 2, E'Compra con Credito Fiscal Combustible (Vehiculos)', 1, E'si', E'si', E'si', E'si', E'si', E'si', E'compra', E'no', E'no', E'lcv', E'porcentual', 0.3, E'si', E'si', E'nit|nro_documento|nro_autorizacion|fecha|importe_doc|importe_base|codigo_control|nit_comprador|importe_ice|importe_excento|importe_excento|importe_descuento|', E'no', E'no', E'no'),
  (1, 1, E'2014-06-13 15:39:47.384', E'2016-08-18 12:42:09.199', E'activo', NULL, NULL, 26, 1, E'Recibo sin Retenciones Transporte', 2, E'si', E'si', E'no', E'no', E'no', E'no', E'compra', E'no', E'no', E'retenciones', E'variable', 0, E'no', E'no', NULL, E'no', E'no', E'no'),
  (1, 1, E'2014-06-13 15:39:47.384', E'2016-07-11 16:14:55.764', E'activo', NULL, NULL, 27, 3, E'Compra con Credito Fiscal ICE', 1, E'si', E'si', E'si', E'si', E'si', E'si', E'compra', E'no', E'si', E'lcv', E'variable', 0, E'si', E'si', E'nit|nro_documento|nro_autorizacion|fecha|importe_doc|importe_base|codigo_control|nit_comprador|importe_ice|importe_excento|importe_excento|importe_descuento|', E'no', E'no', E'no'),
  (1, 175, E'2014-06-13 15:39:47.384', E'2016-10-14 11:25:09.244', E'activo', NULL, NULL, 28, 3, E'Facturas No Declaradas', 1, E'si', E'si', E'si', E'si', E'si', E'si', E'compra', E'no', E'no', E'otros', E'porcentual', 1, E'si', E'si', E'nit|nro_documento|nro_autorizacion|fecha|importe_doc|importe_base|codigo_control|nit_comprador|importe_ice|importe_excento|importe_excento|importe_descuento|', E'no', E'no', E'no'),
  (1, 175, E'2014-06-13 15:39:47.384', E'2016-12-21 09:18:58.058', E'activo', NULL, NULL, 29, 1, E'INVOICE (EXTERIOR - IUE/BE)', 4, E'si', E'si', E'si', E'no', E'no', E'no', E'compra', E'no', E'no', E'otros', E'variable', 0, E'no', E'no', NULL, E'no', E'no', E'no'),
  (1, 1, E'2014-06-13 15:39:47.384', E'2016-07-11 16:19:49.927', E'activo', NULL, NULL, 30, 1, E'Compra de Boletos Aereos sin CF', 1, E'si', E'si', E'si', E'no', E'si', E'no', E'compra', E'no', E'no', E'lcv', E'porcentual', 1, E'no', E'si', NULL, E'no', E'no', E'no'),
  (1, 1, E'2014-06-13 15:39:47.384', E'2016-07-11 16:15:29.794', E'activo', NULL, NULL, 31, 1, E'Compra con Credito Fiscal Combustible (JET FUEL)', 1, E'si', E'si', E'no', E'si', E'si', E'si', E'compra', E'no', E'no', E'lcv', E'variable', 0, E'si', E'si', E'nit|nro_documento|nro_autorizacion|fecha|importe_doc|importe_base|codigo_control|nit_comprador|importe_ice|importe_excento|importe_excento|importe_descuento|', E'no', E'no', E'no'),
  (1, 175, E'2014-06-13 15:39:47.384', E'2016-12-21 10:40:24.512', E'activo', NULL, NULL, 32, 1, E'INVOICE EXTERIOR', 4, E'si', E'si', E'no', E'no', E'no', E'no', E'compra', E'no', E'no', E'otros', E'variable', 0, E'no', E'no', NULL, E'no', E'no', E'no'),
  (1, 1, E'2014-06-13 15:39:47.384', E'2016-07-11 16:15:16.859', E'activo', NULL, NULL, 33, 1, E'Compra con Credito Fiscal con Exento', 1, E'si', E'si', E'si', E'si', E'si', E'si', E'compra', E'no', E'no', E'lcv', E'variable', 0, E'si', E'si', E'nit|nro_documento|nro_autorizacion|fecha|importe_doc|importe_base|codigo_control|nit_comprador|importe_ice|importe_excento|importe_excento|importe_descuento|', E'no', E'no', E'no'),
  (1, 1, E'2014-06-13 15:39:47.384', E'2016-07-11 16:15:09.869', E'activo', NULL, NULL, 34, 1, E'Compra con Credito Fiscal Gest Ant', 1, E'si', E'si', E'no', E'si', E'si', E'si', E'compra', E'no', E'no', E'lcv', E'variable', 0, E'si', E'si', E'nit|nro_documento|nro_autorizacion|fecha|importe_doc|importe_base|codigo_control|nit_comprador|importe_ice|importe_excento|importe_excento|importe_descuento|', E'no', E'no', E'no'),
  (1, 1, E'2014-06-13 15:39:47.384', E'2016-07-11 16:26:11.593', E'activo', NULL, NULL, 35, 3, E'Recibo con Retenciones de Alquiler - ZF', 2, E'si', E'si', E'no', E'no', E'no', E'no', E'compra', E'no', E'no', E'lcv', E'variable', 0, E'no', E'no', NULL, E'no', E'no', E'no'),
  (1, 18, E'2014-06-13 15:39:47.384', E'2017-02-16 17:47:56.625', E'activo', NULL, NULL, 36, 1, E'Facturas por Comisiones', 1, E'si', E'si', E'si', E'no', E'si', E'si', E'compra', E'no', E'no', E'lcv', E'variable', 0, E'no', E'si', E'nit|nro_documento|nro_autorizacion|fecha|importe_doc|importe_base|codigo_control|nit_comprador|importe_ice|importe_excento|importe_excento|importe_descuento|', E'si', E'si', E'si'),
  (18, 175, E'2017-08-04 15:51:53.769', E'2017-08-08 10:26:22.167', E'activo', NULL, NULL, 37, 1, E'Compra sin Derecho a Credito Fiscal - TASA CERO', 1, E'si', E'si', E'si', E'si', E'si', E'si', E'compra', E'no', E'no', E'lcv', E'porcentual', 1, E'si', E'si', E'nit|nro_documento|nro_autorizacion|fecha|importe_doc|importe_base|codigo_control|nit_comprador|importe_ice|importe_excento|importe_excento|importe_descuento|', E'no', E'no', E'no');

  /* Data for the 'param.tunidad_medida' table */

INSERT INTO param.tunidad_medida ("id_usuario_reg", "id_usuario_mod", "fecha_reg", "fecha_mod", "estado_reg", "id_usuario_ai", "usuario_ai", "id_unidad_medida", "codigo", "descripcion", "tipo")
VALUES
  (1, NULL, E'2013-03-04 17:06:05', E'2014-02-10 14:57:43', E'activo', NULL, NULL, 1, E'Und.', E'Unidad', E'Masa'),
  (1, 18, E'2013-03-04 17:07:45', E'2016-12-20 10:53:25.855', E'activo', NULL, NULL, 2, E'Pqte', E'Paquete', E'Masa'),
  (1, NULL, E'2013-03-08 18:13:38', E'2014-02-10 14:57:43', E'activo', NULL, NULL, 3, E'Roll', E'Rollo', E'Masa'),
  (1, NULL, E'2013-03-08 18:18:38', E'2014-02-10 14:57:43', E'activo', NULL, NULL, 4, E'bloc', E'Block', E'Masa'),
  (1, NULL, E'2013-03-11 15:09:46', E'2014-02-10 14:57:43', E'activo', NULL, NULL, 5, E'Bols', E'Bolsa', E'Masa'),
  (1, 1, E'2013-03-11 15:32:28', E'2016-12-30 10:41:05.100', E'activo', NULL, NULL, 6, E'caj', E'Cajita', E'Masa'),
  (78, NULL, E'2013-04-19 09:00:33', E'2014-02-10 14:57:43', E'activo', NULL, NULL, 7, E'Talonario', E'Talonario', E'Masa'),
  (83, NULL, E'2015-08-27 10:30:04.982', NULL, E'activo', NULL, NULL, 8, E'Kg', E'Kilogramo', E'Masa'),
  (83, NULL, E'2015-08-27 11:08:16.977', NULL, E'activo', NULL, NULL, 9, E'Bot', E'Botella', E'Masa'),
  (1, NULL, E'2016-12-30 10:41:27.459', NULL, E'activo', NULL, NULL, 10, E'Caja', E'Caja', E'Masa'),
  (18, NULL, E'2017-05-17 09:25:37.274', NULL, E'activo', NULL, NULL, 11, E'Conj.', E'Conjunto', E'Cantidad de sustancia');

/* Data for the 'param.tmoneda' table */

INSERT INTO param.tmoneda ("id_usuario_reg", "id_usuario_mod", "fecha_reg", "fecha_mod", "estado_reg", "id_usuario_ai", "usuario_ai", "id_moneda", "moneda", "codigo", "tipo_moneda", "prioridad", "tipo_actualizacion", "origen", "contabilidad", "triangulacion", "codigo_internacional", "show_combo", "actualizacion")
VALUES
  (1, NULL, E'2014-02-01 23:54:29.043', NULL, E'activo', NULL, NULL, 1, E'Bolivianos', E'Bs', E'base', 1, E'sin_actualizacion', E'nacional', E'si', E'no', E'BOB', E'si', E'no'),
  (1, 1, E'2014-02-01 23:54:29.043', E'2016-01-20 22:01:57.351', E'activo', NULL, NULL, 2, E'Dolares Americanos', E'$us', E'ref', 2, E'por_saldo', E'extranjera', E'si', E'si', E'USD', E'si', E'no'),
  (1, 1, E'2014-02-01 23:54:29.043', E'2017-07-25 18:38:49.488', E'activo', NULL, NULL, 3, E'Unidad de Fomento a la Vivienda', E'UFV', E'intercambio', 3, E'por_transaccion', E'nacional', E'si', E'no', E'UFV', E'no', E'si'),
  (1, 18, E'2015-11-11 15:09:36.799', E'2016-09-26 11:55:15.683', E'activo', NULL, NULL, 4, E'Euro', E'€', E'intercambio', 4, E'por_saldo', E'extranjera', E'si', E'no', E'EUR', E'no', E'no'),
  (1, 18, E'2015-11-11 15:39:27.213', E'2016-09-26 11:55:41.447', E'activo', NULL, NULL, 5, E'Peso Argentino', E'$', E'intercambio', 5, E'por_saldo', E'extranjera', E'si', E'no', E'ARS', E'no', E'no'),
  (1, 18, E'2015-11-11 15:57:49.693', E'2016-09-26 11:56:56.823', E'activo', NULL, NULL, 7, E'Libra Esterlina', E'£', E'intercambio', 7, E'por_saldo', E'extranjera', E'si', E'no', E'GBP', E'no', E'no'),
  (1, 18, E'2015-11-11 16:00:33.940', E'2016-09-26 11:59:46.809', E'activo', NULL, NULL, 8, E'Real Brasileño', E'R$', E'intercambio', 6, E'por_saldo', E'extranjera', E'si', E'no', E'BRL', E'no', E'no'),
  (NULL, NULL, E'2016-05-05 11:00:18', E'2016-05-05 11:00:18', E'activo', NULL, NULL, 9, E'Sol Peruano', E'PEN', NULL, NULL, E'por_saldo', E'extranjera', E'si', E'no', E'PEN', E'si', E'no'),
  (NULL, NULL, E'2016-06-05 16:22:49', E'2016-06-05 16:22:49', E'activo', NULL, NULL, 10, E'Corona Noruega', E'NOK', NULL, NULL, E'por_saldo', E'extranjera', E'no', E'no', E'NOK', E'si', E'no'),
  (NULL, NULL, E'2016-06-05 16:35:29', E'2016-06-05 16:35:29', E'activo', NULL, NULL, 11, E'Corona Danesa', E'DKK', NULL, NULL, E'por_saldo', E'extranjera', E'no', E'no', E'DKK', E'si', E'no'),
  (NULL, NULL, E'2016-06-05 16:41:44', E'2016-06-05 16:41:44', E'activo', NULL, NULL, 12, E'Corona Sueca', E'SEK', NULL, NULL, E'por_saldo', E'extranjera', E'no', E'no', E'SEK', E'si', E'no'),
  (NULL, NULL, E'2016-06-14 15:22:50', E'2016-06-14 15:22:50', E'activo', NULL, NULL, 13, E'Franco Suizo', E'CHF', NULL, NULL, E'por_saldo', E'extranjera', E'no', E'no', E'CHF', E'si', E'no'),
  (83, NULL, E'2017-07-07 11:28:41.542', NULL, E'activo', NULL, NULL, 14, E'Corona Checa', E'CZK', E'intercambio', 7, E'por_saldo', E'extranjera', E'si', E'no', E'CZK', E'no', E'no');


/***********************************F-DAT-FEA-PARAM-1-17/01/2019*****************************************/



