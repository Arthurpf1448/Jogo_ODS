var dist = point_distance(x, y, sub.x, sub.y);

switch (state) {

    case "indo":


        x += lengthdir_x(speed, direction);
        y += lengthdir_y(speed, direction);


        if (dist >= max_dist) {
            state = "voltando";
        }

    break;



    case "voltando":


        var dir_volta = point_direction(x, y, sub.x, sub.y);

        x += lengthdir_x(speed, dir_volta);
        y += lengthdir_y(speed, dir_volta);


        if (dist < 8) {
            instance_destroy();
        }

    break;
}
