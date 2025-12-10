if (mouse_check_button_pressed(mb_left)) {
    if (!instance_exists(obj_gancho)) {

        var h = instance_create_layer(x, y, "Instances", obj_gancho);

        // Armazena referência do submarino dentro do gancho
        h.sub = id;

        // Direção do gancho (exemplo: segue o mouse)
        h.direction = point_direction(x, y, mouse_x, mouse_y);
    }
}
