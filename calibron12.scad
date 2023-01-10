
/* [Render Parameters] */
// ----------------------------------------------------------------------

// Render quality (fast preview does not render threads).
render_quality = "fast preview"; // ["fast preview", "preview", "final rendering"]


/* [Parts] */
models = "pieces"; // ["pieces", "box"]


/* [Piece Layout] */
// ----------------------------------------------------------------------

// How to layout the pieces
piece_layout = "square"; // ["linear", "square", "key0", "key1", "key2"]

// Render pieces in exploded layout (printable). 
pieces_exploded = true;

/* [Piece Parameters] */
// ----------------------------------------------------------------------

// The total height of the vial and cap when assembled. [mm]
piece_height = 5; 

// how big to scale the pieces by. [mm]
piece_scale = 3;

// Render the dimensions on the piece.
piece_labels = false;

/* [Box Parameters] */
// ----------------------------------------------------------------------

// How thick to make the walls for the box. [mm]
box_wall_t = 2;

/* [Hidden] */
// ----------------------------------------------------------------------
// (This is a special section that OpenSCAD will not show in the 
// customizer. Used for private variables. 


ps_linear = [
    [[7, 5], [0, 0, 0], [0, 0, 0]],
    [[3, 10], [7, 0, 0], [8, 0, 0]],
    [[12, 10], [10, 0, 0], [12, 0, 0]],
    [[15, 10], [22, 0, 0], [25, 0, 0]],
    [[15, 10], [37, 0, 0], [41, 0, 0]],
    [[13, 15], [52, 0, 0], [57, 0, 0]],
    [[15, 13], [65, 0, 0], [71, 0, 0]],
    [[4, 20], [80, 0, 0], [87, 0, 0]],
    [[20, 5], [84, 0, 0], [92, 0, 0]],
    [[10, 20], [104, 0, 0], [113, 0, 0]],
    [[23, 7], [114, 0, 0], [124, 0, 0]],
    [[8, 23], [137, 0, 0], [148, 0, 0]],
];

ps_square = [
    [[5, 7], [30, 20, 0], [33, 23, 0]],
    [[10, 3], [10, 27, 0], [11, 30, 0]],
    [[10, 12], [30, 8, 0], [33, 9, 0]],
    [[10, 15], [0, 0, 0], [0, 0, 0]],
    [[10, 15], [0, 15, 0], [0, 16, 0]],
    [[15, 13], [20, 27, 0], [22, 31, 0]],
    [[13, 15], [17, 8, 0], [19, 9, 0]],
    [[20, 4], [10, 23, 0], [11, 25, 0]],
    [[5, 20], [35, 20, 0], [39, 22, 0]],
    [[20, 10], [0, 30, 0], [0, 34, 0]],
    [[7, 23], [10, 0, 0], [11, 0, 0]],
    [[23, 8], [17, 0, 0], [19, 0, 0]]
];

// TODO: Add key peice
ps_key0 = [
    [[5, 7], [10, 24, 0], [11, 27, 0]],
    [[10, 3], [20, 15, 0], [22, 16, 0]],
    [[10, 12], [0, 24, 0], [0, 27, 0]],
    [[10, 15], [20, 0, 0], [21, 0, 0]],
    [[15, 10], [0, 14, 0], [0, 16, 0]],
    [[15, 13], [15, 18, 0], [17, 21, 0]],
    [[15, 13], [30, 23, 0], [33, 25, 0]],
    [[20, 4], [0, 0, 0], [0, 0, 0]],
    [[20, 5], [10, 31, 0], [11, 35, 0]],
    [[20, 10], [0, 4, 0], [0, 5, 0]],
    [[7, 23], [38, 0, 0], [42, 1, 0]],
    [[8, 23], [30, 0, 0], [33, 1, 0]]
];

// TODO: Add key peice
ps_key1 = [
    [[5, 7], [15, 13, 0], [17, 14, 0]],
    [[10, 3], [20, 13, 0], [23, 14, 0]],
    [[10, 12], [10, 20, 0], [11, 22, 0]],
    [[10, 15], [0, 0, 0], [0, 0, 0]],
    [[10, 15], [0, 15, 0], [0, 16, 0]],
    [[15, 13], [15, 0, 0], [17, 0, 0]],
    [[15, 13], [30, 23, 0], [34, 24, 0]],
    [[20, 4], [0, 32, 0], [0, 35, 0]],
    [[5, 20], [10, 0, 0], [11, 0, 0]],
    [[10, 20], [20, 16, 0], [23, 18, 0]],
    [[7, 23], [38, 0, 0], [43, 0, 0]],
    [[8, 23], [30, 0, 0], [34, 0, 0]]
];

// TODO: Add key peice
ps_key2 = [
    [[5, 7], [5, 12, 0], [6, 13, 0]],
    [[10, 3], [10, 16, 0], [12, 18, 0]],
    [[10, 12], [0, 0, 0], [0, 0, 0]],
    [[10, 15], [10, 0, 0], [12, 0, 0]],
    [[10, 15], [20, 0, 0], [23, 0, 0]],
    [[15, 13], [5, 19, 0], [6, 22, 0]],
    [[15, 13], [30, 23, 0], [34, 24, 0]],
    [[20, 4], [0, 32, 0], [0, 36, 0]],
    [[5, 20], [0, 12, 0], [0, 13, 0]],
    [[10, 20], [20, 16, 0], [23, 18, 0]],
    [[7, 23], [38, 0, 0], [43, 0, 0]],
    [[8, 23], [30, 0, 0], [34, 0, 0]]
];

piece_colors = [
    "Crimson",
    "DeepPink",
    "Orange",
    "Maroon",
    "Sienna",
    "Chartreuse",
    "Honeydew",
    "SlateGray",
    "Turquoise",
    "Plum",
    "Indigo",
    "Gold",
    "Black",
];

key_box_size = [45, 36, 2];
square_box_size = [40, 40, 2];


// module render_pieces(layout="solution_square") {
module render_pieces(ps, exploded) {
    translate([0, 0, piece_height / 2]) {
        // Render in the square solution
        for (i = [0: len(ps) - 1]) {
        // for (i = [0: 0]) {
            p = ps[i];
            rect = p[0];
            // color = p[2];
            color = piece_colors[i];
            color(color) {
                position = exploded == true ? p[2] : p[1];
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

    
    render_pieces(
        ps = ps_linear_all,
        exploded = pieces_exploded
    );

    if (piece_layout == "linear") {
        render_pieces(
            ps = ps_linear,
            exploded = pieces_exploded
        );
    } else if (piece_layout == "square") {
        render_pieces(
            ps = ps_square,
            exploded = pieces_exploded
        );
    } else if (piece_layout == "key0") {
        render_pieces(
            ps = ps_key0,
            exploded = pieces_exploded
        );
    } else if (piece_layout == "key1") {
        render_pieces(
            ps = ps_key1,
            exploded = pieces_exploded
        );
    } else if (piece_layout == "key2") {
        render_pieces(
            ps = ps_key2,
            exploded = pieces_exploded
        );
    }



    
    // render_pieces(layout=piece_layout);
    // render_box(dimensions=square_box_size);
}

main();