<?php
    $nombre = $_POST['nombre'];
    $email = $_POST['email'];
    $asunto = $_POST['asunto'];
    $mensaje = $_POST['mensaje'];

    echo("El nombre del usuario es: <b> $nombre </b>.<br> El email es: <b>$email</b> <br>");
    echo("El asunto del mensaje es: <b>$asunto</b> .<br> El cuerpo del mensaje es: <b>$mensaje</b>");