<?php
class controladorClientes{
    //Preparar datos para ser guardados 
    public static function ctrlGuardarClientes(){
        it  (isset($_POST['cedula'])&&
             isset($_POST['nombres'])&&
             isset($_POST['apellidos'])&&
             isset($_POST['f_nacimiento'])&&
             isset($_POST['correo'])&&
             isset($_POST['telefono'])&&
             isset($_POST['direccion'])){
                $tabla = "clientes";
                $data = array ("cedula" -> $_POST['cedula'],
                               "nombres" -> $_POST['nombres'],
                               "apellidos" -> $_POST['apellidos'],
                               "direccion" -> $_POST['direccion'],
                               "sexo" -> $_POST['sexo'],
                               "correo" -> $_POST['correo'],
                               "telefono" -> $_POST['telefono'],
                               "f_nacimiento" -> $_POST['f_nacimiento'],);
                $res = modeloClientes:: mdlGuardarCliente($tabla,$data);  
                if ($res == 'Ok' ) {
                    echo '<script>'
                            Swal.fire({
                                title: "Good job!",
                                text: "You clicked the button!",
                                icon: "success"
                            });
                            '</script>'
                }            
             }
    }
}

