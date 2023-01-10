
/* [Render Parameters] */
// ----------------------------------------------------------------------

// Render quality (fast preview does not render threads).
render_quality = "fast preview"; // ["fast preview", "preview", "final rendering"]

/* [Pieces] */
// ----------------------------------------------------------------------

// How to layout the pieces
// piece_layout = "square"; // ["linear", "square", "key0", "key1", "key2", "key0_exploded", "key1_exploded", "key2_exploded"]
piece_layout = "square"; // ["linear", "square", "key0", "key1", "key2"]

exploded = true;

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
    [[5, 7], [30, 20, 0], "Crimson"],
    [[10, 3], [10, 27, 0], "DeepPink"],
    [[10, 12], [30, 8, 0], "Orange"],
    [[10, 15], [0, 0, 0], "Maroon"],
    [[10, 15], [0, 15, 0], "Sienna"],
    [[15, 13], [20, 27, 0], "Chartreuse"],
    [[13, 15], [17, 8, 0], "Honeydew"],
    [[20, 4], [10, 23, 0], "SlateGray"],
    [[5, 20], [35, 20, 0], "Turquoise"],
    [[20, 10], [0, 30, 0], "Plum"],
    [[7, 23], [10, 0, 0], "Indigo"],
    [[23, 8], [17, 0, 0], "Gold"]
];

ps_square_exploded = [
    [[5, 7], [33, 23, 0], "Crimson"],
    [[10, 3], [11, 30, 0], "DeepPink"],
    [[10, 12], [33, 9, 0], "Orange"],
    [[10, 15], [0, 0, 0], "Maroon"],
    [[10, 15], [0, 16, 0], "Sienna"],
    [[15, 13], [22, 31, 0], "Chartreuse"],
    [[13, 15], [19, 9, 0], "Honeydew"],
    [[20, 4], [11, 25, 0], "SlateGray"],
    [[5, 20], [39, 22, 0], "Turquoise"],
    [[20, 10], [0, 34, 0], "Plum"],
    [[7, 23], [11, 0, 0], "Indigo"],
    [[23, 8], [19, 0, 0], "Gold"]
];

ps_key0 = [
    [[5, 7], [10, 24, 0], "Crimson"],
    [[10, 3], [20, 15, 0], "DeepPink"],
    [[10, 12], [0, 24, 0], "Orange"],
    [[10, 15], [20, 0, 0], "Maroon"],
    [[15, 10], [0, 14, 0], "Sienna"],
    [[15, 13], [15, 18, 0], "Chartreuse"],
    [[15, 13], [30, 23, 0], "Honeydew"],
    [[20, 4], [0, 0, 0], "SlateGray"],
    [[20, 5], [10, 31, 0], "Turquoise"],
    [[20, 10], [0, 4, 0], "Plum"],
    [[7, 23], [38, 0, 0], "Indigo"],
    [[8, 23], [30, 0, 0], "Gold"]
];

ps_key0_exploded = [
    [[5, 7], [11, 27, 0], "Crimson"],
    [[10, 3], [22, 16, 0], "DeepPink"],
    [[10, 12], [0, 27, 0], "Orange"],
    [[10, 15], [21, 0, 0], "Maroon"],
    [[15, 10], [0, 16, 0], "Sienna"],
    [[15, 13], [17, 21, 0], "Chartreuse"],
    [[15, 13], [33, 25, 0], "Honeydew"],
    [[20, 4], [0, 0, 0], "SlateGray"],
    [[20, 5], [11, 35, 0], "Turquoise"],
    [[20, 10], [0, 5, 0], "Plum"],
    [[7, 23], [42, 1, 0], "Indigo"],
    [[8, 23], [33, 1, 0], "Gold"]
];

ps_key1 = [
    [[5, 7], [15, 13, 0], "Crimson"],
    [[10, 3], [20, 13, 0], "DeepPink"],
    [[10, 12], [10, 20, 0], "Orange"],
    [[10, 15], [0, 0, 0], "Maroon"],
    [[10, 15], [0, 15, 0], "Sienna"],
    [[15, 13], [15, 0, 0], "Chartreuse"],
    [[15, 13], [30, 23, 0], "Honeydew"],
    [[20, 4], [0, 32, 0], "SlateGray"],
    [[5, 20], [10, 0, 0], "Turquoise"],
    [[10, 20], [20, 16, 0], "Plum"],
    [[7, 23], [38, 0, 0], "Indigo"],
    [[8, 23], [30, 0, 0], "Gold"]
];

ps_key1_exploded = [
    [[5, 7], [17, 14, 0], "Crimson"],
    [[10, 3], [23, 14, 0], "DeepPink"],
    [[10, 12], [11, 22, 0], "Orange"],
    [[10, 15], [0, 0, 0], "Maroon"],
    [[10, 15], [0, 16, 0], "Sienna"],
    [[15, 13], [17, 0, 0], "Chartreuse"],
    [[15, 13], [34, 24, 0], "Honeydew"],
    [[20, 4], [0, 35, 0], "SlateGray"],
    [[5, 20], [11, 0, 0], "Turquoise"],
    [[10, 20], [23, 18, 0], "Plum"],
    [[7, 23], [43, 0, 0], "Indigo"],
    [[8, 23], [34, 0, 0], "Gold"]
];

ps_key2 = [
    [[5, 7], [5, 12, 0], "Crimson"],
    [[10, 3], [10, 16, 0], "DeepPink"],
    [[10, 12], [0, 0, 0], "Orange"],
    [[10, 15], [10, 0, 0], "Maroon"],
    [[10, 15], [20, 0, 0], "Sienna"],
    [[15, 13], [5, 19, 0], "Chartreuse"],
    [[15, 13], [30, 23, 0], "Honeydew"],
    [[20, 4], [0, 32, 0], "SlateGray"],
    [[5, 20], [0, 12, 0], "Turquoise"],
    [[10, 20], [20, 16, 0], "Plum"],
    [[7, 23], [38, 0, 0], "Indigo"],
    [[8, 23], [30, 0, 0], "Gold"]
];

ps_key2_exploded = [
    [[5, 7], [6, 13, 0], "Crimson"],
    [[10, 3], [12, 18, 0], "DeepPink"],
    [[10, 12], [0, 0, 0], "Orange"],
    [[10, 15], [12, 0, 0], "Maroon"],
    [[10, 15], [23, 0, 0], "Sienna"],
    [[15, 13], [6, 22, 0], "Chartreuse"],
    [[15, 13], [34, 24, 0], "Honeydew"],
    [[20, 4], [0, 36, 0], "SlateGray"],
    [[5, 20], [0, 13, 0], "Turquoise"],
    [[10, 20], [23, 18, 0], "Plum"],
    [[7, 23], [43, 0, 0], "Indigo"],
    [[8, 23], [34, 0, 0], "Gold"]
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
                        piece_scale * (position.x + rect.x / 2), 
                        piece_scale * (position.y + rect.y / 2), 
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
        render_pieces(
            ps = exploded == true ? ps_square_exploded : ps_square
        );
    } else if (piece_layout == "key0") {
        render_pieces(
            ps = exploded == true ? ps_key0_exploded : ps_key0
        );
    } else if (piece_layout == "key1") {
        render_pieces(
            ps = exploded == true ? ps_key1_exploded : ps_key1
        );
    } else if (piece_layout == "key2") {
        render_pieces(
            ps = exploded == true ? ps_key2_exploded : ps_key2
        );
    }



    
    // render_pieces(layout=piece_layout);
    // render_box(dimensions=square_box_size);
}

main();