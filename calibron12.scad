
/* [Render Parameters] */
// ----------------------------------------------------------------------

// Render quality (fast preview does not render threads).
render_quality = "fast preview"; // ["fast preview", "preview", "final rendering"]

/* [Pieces] */
// ----------------------------------------------------------------------

// How to layout the pieces
piece_layout = "square"; // ["linear", "square", "key0", "key1", "key2"]

/* [Piece Parameters] */
// ----------------------------------------------------------------------

// The total height of the vial and cap when assembled. [mm]
piece_height = 5; 

// how big to scale the pieces by. [mm]
piece_scale = 3;

// How thick to make the walls for the box. [mm]
box_wall_t = 2;

/* [Hidden] */
// ----------------------------------------------------------------------
// (This is a special section that OpenSCAD will not show in the 
// customizer. Used for private variables. 

ps_square = [
    [[7,5], [30, 20, 90], "Crimson"],
    [[3,10], [10, 27, 90], "DeepPink"],
    [[12,10], [30, 8, 90], "Orange"],
    [[15,10], [0, 0, 90], "Maroon"],
    [[15,10], [0, 15, 90], "Sienna"],
    [[13,15], [20, 27, 90], "Chartreuse"],
    [[15,13], [17, 8, 90], "Honeydew"],
    [[4,20], [10, 23, 90], "SlateGray"],
    [[20,5], [35, 20, 90], "Turquoise"],
    [[10,20], [0, 30, 90], "Plum"],
    [[23,7], [10, 0, 90], "Indigo"],
    [[8,23], [17, 0, 90], "Gold"]
];

ps_key0 = [
    [[5,7], [10,24,90], "Crimson"],
    [[10,3], [20,15,90], "DeepPink"],
    [[10,12], [0,24,90], "Orange"],
    [[10,15], [20,15,90], "Maroon"],
    [[15,10], [0,14,90], "Sienna"],
    [[15,13], [15,18,90], "Chartreuse"],
    [[15,13], [30,23,90], "Honeydew"],
    [[20,4], [0,0,90], "SlateGray"],
    [[20,5], [10,31,90], "Turquoise"],
    [[20,10], [0,4,90], "Plum"],
    [[7,23], [38,0,90], "Indigo"],
    [[8,23], [30,0,90], "Gold"],
];


key_box_size = [45, 36, 2];
square_box_size = [40, 40, 2];


// module render_pieces(layout="solution_square") {
module render_pieces(ps) {
    translate([0, 0, piece_height / 2]) {
        // Render in the square solution
        for (i = [0: len(ps) - 1]) {
        // for (i = [0: 0]) {
            p = ps[i];
            rect = p[0];
            color = p[2];
            color(color) {
                position = p[1];
                rotate(position.z) {
                    translate([
                        piece_scale * (position.y + rect.x / 2), 
                        piece_scale * (-position.x + -rect.y / 2), 
                        0
                    ]) {               
                        cube(
                            size=[
                                piece_scale * rect.x, 
                                piece_scale * rect.y, 
                                piece_height
                            ], 
                            center=true
                        );
                    }
                }
            }
        }
    }
}

module render_box(dimensions) {
    module render_bottom(dimensions) {
        // Exterior
        slop = dimensions.x / 100;
        translate([box_wall_t, box_wall_t, box_wall_t])
        difference() {
            cube([
                dimensions.x * piece_scale + (2 * box_wall_t) + slop,
                dimensions.y * piece_scale + (2 * box_wall_t) + slop,
                dimensions.z * piece_scale + (1 * box_wall_t) + slop,
            ]);

            // Interior cutaway
            translate([box_wall_t, box_wall_t, box_wall_t]){
                cube([
                    dimensions.x * piece_scale + slop,
                    dimensions.y * piece_scale + slop,
                    2 * dimensions.z * piece_scale + slop,
                ]);
            } 
        }
    }

    module render_top(dimensions) {
        // Exterior
        slop = dimensions.x / 100;
        // translate([box_wall_t, box_wall_t, box_wall_t])
        difference() {
            cube([
                dimensions.x * piece_scale + (4 * box_wall_t) + slop,
                dimensions.y * piece_scale + (4 * box_wall_t) + slop,
                dimensions.z * piece_scale + (1 * box_wall_t) + slop,
            ]);

            // // Interior cutaway
            translate([
                box_wall_t,
                box_wall_t, 
                dimensions.z * piece_scale + (0 * box_wall_t) + slop
            ]){
                cube([
                    dimensions.x * piece_scale + (2 * box_wall_t) + slop,
                    dimensions.y * piece_scale + (2 * box_wall_t) + slop,
                    dimensions.z * piece_scale + (1 * box_wall_t) + slop
                ]);
            } 
        }
    }
    render_bottom(dimensions = dimensions);
    // render_top(dimensions = dimensions);
}

module main() {
    if (piece_layout == "square") {
        render_pieces(ps=ps_square);
    } else if (piece_layout == "key0") {
        render_pieces(ps=ps_key0);
    }
    // render_pieces(layout=piece_layout);
    // render_box(dimensions=square_box_size);
}

main();