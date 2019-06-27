CREATE OR REPLACE FUNCTION param.ft_proveedor_cta_bancaria_ime (
  p_administrador integer,
  p_id_usuario integer,
  p_tabla varchar,
  p_transaccion varchar
)
RETURNS varchar AS
$body$
/**************************************************************************
 SISTEMA:		Parametros Generales
 FUNCION: 		param.ft_proveedor_cta_bancaria_ime
 DESCRIPCION:   Funcion que gestiona las operaciones basicas (inserciones, modificaciones, eliminaciones de la tabla 'param.tproveedor_cta_bancaria'
 AUTOR: 		 (gsarmiento)
 FECHA:	        30-10-2015 20:07:41
 COMENTARIOS:
***************************************************************************
 HISTORIAL DE MODIFICACIONES:

 DESCRIPCION:
 AUTOR:
 FECHA:
***************************************************************************/

DECLARE

	v_nro_requerimiento    	integer;
	v_parametros           	record;
	v_id_requerimiento     	integer;
	v_resp		            varchar;
	v_nombre_funcion        text;
	v_mensaje_error         text;
	v_id_proveedor_cta_bancaria	integer;

    v_banco_beneficiario	varchar;
    v_proveedor				varchar;
    v_nro_cuenta			varchar;

BEGIN

    v_nombre_funcion = 'param.ft_proveedor_cta_bancaria_ime';
    v_parametros = pxp.f_get_record(p_tabla);

	/*********************************
 	#TRANSACCION:  'PM_PCTABAN_INS'
 	#DESCRIPCION:	Insercion de registros
 	#AUTOR:		gsarmiento
 	#FECHA:		30-10-2015 20:07:41
	***********************************/

	if(p_transaccion='PM_PCTABAN_INS')then

        begin

        	--controles para que no se repita el numero de cuenta bancaria
        	 select vp.desc_proveedor, p.nro_cuenta
             into v_proveedor, v_nro_cuenta
             from param.tproveedor_cta_bancaria p
             inner join param.vproveedor vp on vp.id_proveedor = p.id_proveedor
             where p.id_proveedor= v_parametros.id_proveedor;

             IF   exists(select 1
                          from param.tproveedor_cta_bancaria p
                          where p.estado_reg = 'activo'
                          and  p.nro_cuenta =  v_parametros.nro_cuenta ) THEN

                 raise exception 'Número de Cuenta ya registrado con el Proveedor %',UPPER(v_proveedor);
             END IF;
            --
            --controles para que no se repita la prioridad
              IF   exists(select 1
                          from param.tproveedor_cta_bancaria p
                          where p.estado_reg = 'activo'
                          and  p.prioridad =  v_parametros.prioridad ) THEN

                 raise exception 'Prioridad ya registrado con el Número de Cuenta % y Proveedor %',v_nro_cuenta,UPPER(v_proveedor);
             END IF;
            --

        	--Sentencia de la insercion
        	insert into param.tproveedor_cta_bancaria(
			id_banco_beneficiario,
            fw_aba_cta,
			swift_big,
			estado_reg,
			banco_intermediario,
			nro_cuenta,
			id_proveedor,
            estado_cta,
			id_usuario_ai,
			usuario_ai,
			fecha_reg,
			id_usuario_reg,
			id_usuario_mod,
			fecha_mod,
            prioridad
          	) values(
			v_parametros.id_banco_beneficiario,
            v_parametros.fw_aba_cta,
			v_parametros.swift_big,
			'activo',
			v_parametros.banco_intermediario,
			v_parametros.nro_cuenta,
			v_parametros.id_proveedor,
            v_parametros.estado_cta,
			v_parametros._id_usuario_ai,
			v_parametros._nombre_usuario_ai,
			now(),
			p_id_usuario,
			null,
			null,
			v_parametros.prioridad


			)RETURNING id_proveedor_cta_bancaria into v_id_proveedor_cta_bancaria;

			--Definicion de la respuesta
			v_resp = pxp.f_agrega_clave(v_resp,'mensaje','Proveedor Cuenta Bancaria almacenado(a) con exito (id_proveedor_cta_bancaria'||v_id_proveedor_cta_bancaria||')');
            v_resp = pxp.f_agrega_clave(v_resp,'id_proveedor_cta_bancaria',v_id_proveedor_cta_bancaria::varchar);

            --Devuelve la respuesta
            return v_resp;

		end;

	/*********************************
 	#TRANSACCION:  'PM_PCTABAN_MOD'
 	#DESCRIPCION:	Modificacion de registros
 	#AUTOR:		gsarmiento
 	#FECHA:		30-10-2015 20:07:41
	***********************************/

	elsif(p_transaccion='PM_PCTABAN_MOD')then

		begin

              --controles para que no se repita la prioridad

              	 select vp.desc_proveedor, p.nro_cuenta
                 into v_proveedor, v_nro_cuenta
                 from param.tproveedor_cta_bancaria p
                 inner join param.vproveedor vp on vp.id_proveedor = p.id_proveedor
                 where p.id_proveedor= v_parametros.id_proveedor;

                IF   exists(select 1
                            from param.tproveedor_cta_bancaria p
                            where p.estado_reg = 'activo'
                            and  p.prioridad =  v_parametros.prioridad ) THEN

                   raise exception 'Prioridad ya registrado con el Número de Cuenta % y Proveedor %',v_nro_cuenta,UPPER(v_proveedor);
               END IF;
              --

			--Sentencia de la modificacion
			update param.tproveedor_cta_bancaria set
			id_banco_beneficiario = v_parametros.id_banco_beneficiario,
            fw_aba_cta = v_parametros.fw_aba_cta,
			swift_big = v_parametros.swift_big,
			banco_intermediario = v_parametros.banco_intermediario,
			nro_cuenta = v_parametros.nro_cuenta,
			id_proveedor = v_parametros.id_proveedor,
			id_usuario_mod = p_id_usuario,
			fecha_mod = now(),
			id_usuario_ai = v_parametros._id_usuario_ai,
			usuario_ai = v_parametros._nombre_usuario_ai,
            estado_cta = v_parametros.estado_cta,
            prioridad = v_parametros.prioridad
			where id_proveedor_cta_bancaria=v_parametros.id_proveedor_cta_bancaria;

			--Definicion de la respuesta
            v_resp = pxp.f_agrega_clave(v_resp,'mensaje','Proveedor Cuenta Bancaria modificado(a)');
            v_resp = pxp.f_agrega_clave(v_resp,'id_proveedor_cta_bancaria',v_parametros.id_proveedor_cta_bancaria::varchar);

            --Devuelve la respuesta
            return v_resp;

		end;

	/*********************************
 	#TRANSACCION:  'PM_PCTABAN_ELI'
 	#DESCRIPCION:	Eliminacion de registros
 	#AUTOR:		gsarmiento
 	#FECHA:		30-10-2015 20:07:41
	***********************************/

	elsif(p_transaccion='PM_PCTABAN_ELI')then

		begin

            --25-06-2019 modificacion para cambiar de estado
            --Sentencia de la eliminacion
			/*delete from param.tproveedor_cta_bancaria
            where id_proveedor_cta_bancaria=v_parametros.id_proveedor_cta_bancaria;
            */

         	UPDATE param.tproveedor_cta_bancaria SET
            estado_cta = 'Inactivo'
            where id_proveedor_cta_bancaria=v_parametros.id_proveedor_cta_bancaria;

            --Definicion de la respuesta
            v_resp = pxp.f_agrega_clave(v_resp,'mensaje','Proveedor Cuenta Bancaria eliminado(a)');
            v_resp = pxp.f_agrega_clave(v_resp,'id_proveedor_cta_bancaria',v_parametros.id_proveedor_cta_bancaria::varchar);

            --Devuelve la respuesta
            return v_resp;

		end;

	else

    	raise exception 'Transaccion inexistente: %',p_transaccion;

	end if;

EXCEPTION

	WHEN OTHERS THEN
		v_resp='';
		v_resp = pxp.f_agrega_clave(v_resp,'mensaje',SQLERRM);
		v_resp = pxp.f_agrega_clave(v_resp,'codigo_error',SQLSTATE);
		v_resp = pxp.f_agrega_clave(v_resp,'procedimientos',v_nombre_funcion);
		raise exception '%',v_resp;

END;
$body$
LANGUAGE 'plpgsql'
VOLATILE
CALLED ON NULL INPUT
SECURITY INVOKER
PARALLEL UNSAFE
COST 100;

ALTER FUNCTION param.ft_proveedor_cta_bancaria_ime (p_administrador integer, p_id_usuario integer, p_tabla varchar, p_transaccion varchar)
  OWNER TO postgres;