
/* [Render Parameters] */
// ----------------------------------------------------------------------

// Render quality (fast preview does not render threads).
render_quality = "fast preview"; // ["fast preview", "preview", "final rendering"]


/* [Parts] */
models = "pieces"; // ["pieces", "case", "lid"]


/* [Piece Layout] */
// ----------------------------------------------------------------------

// How to layout the pieces
piece_layout = "key0"; // ["linear", "square", "key0", "key1", "key2"]

// Render pieces in exploded layout (printable). 
pieces_exploded = true;

/* [Piece Parameters] */
// ----------------------------------------------------------------------

// The total height of the vial and cap when assembled. [mm]
piece_height = 3; 

// how big to scale the pieces by. [mm]
piece_scale = 3;

// piece_label_type = "Name 1"; // ["Name 1", "Name 2", "Dimensions"]

// Render the names on the piece.
piece_labels = false;

// TODO: make this work
// Render the names on the key pieces.
key_piece_labels = false;

// Render the dimensions on the piece.
piece_dimensions = true;

// List fonts on your system:
// fc-list -f "%-60{{%{family[0]}%{:style[0]=}}}%{file}\n" | sort
piece_font = "SF Mono:style=Bold";

/* [Box Parameters] */
// ----------------------------------------------------------------------

// The shape of the box. Square has 1 solution, 3_keys has 3 soutions. 
box_layout = "square"; // ["square", "3_keys"]

// How thick to make the walls for the box. [mm]
box_wall_t = 2;

/* [Hidden] */
// ----------------------------------------------------------------------
// (This is a special section that OpenSCAD will not show in the 
// customizer. Used for private variables. 

// The following arrays contain:
// [size, offset_rotation_packed, offset_rotation_exploded]
// [[width, height], [offset_x, offset_y, rotation], [offset_x, offset_y, rotation]],

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
    // Keys
    [[5, 4], [15, 14, 0], [157, 0, 0]],
    [[10, 2], [0, 30, 0], [163, 0, 0]],
    [[20, 1], [10, 15, 0], [174, 0, 0]]
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
    [[23, 8], [17, 0, 0], [19, 0, 0]],
    // Keys
    [[5, 4], [15, 14, 0], [0, 45, 0]],
    [[10, 2], [0, 30, 0], [6, 45, 0]],
    [[20, 1], [10, 15, 0], [17, 45, 0]]
];

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
    [[8, 23], [30, 0, 0], [33, 1, 0]],
    // Keys
    // [[5, 4], [15, 14, 0], [16, 16, 0]], // solution position
    [[5, 4], [15, 14, 0], [0, 40, 0]],
    [[10, 2], [0, 30, 0], [0, 45, 0]],
    [[20, 1], [10, 15, 0], [0, 48, 0]],
];

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
    [[8, 23], [30, 0, 0], [34, 0, 0]],
    // Keys
    [[5, 4], [15, 14, 0], [0, 40, 0]],
    // [[10, 2], [0, 30, 0], [0, 32, 0]], // solution position
    [[10, 2], [0, 30, 0], [0, 45, 0]],
    [[20, 1], [10, 15, 0], [0, 48, 0]],
];

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
    [[8, 23], [30, 0, 0], [34, 0, 0]],
    // Keys
    [[5, 4], [15, 14, 0], [0, 41, 0]],
    [[10, 2], [0, 30, 0], [0, 46, 0]],
    // [[20, 1], [10, 15, 0], [12, 16, 0]], // solution position
    [[20, 1], [10, 15, 0], [0, 49, 0]]
];

piece_properties = [
    ["Crimson", "7 x 5", "P 0"],
    ["DeepPink", "3 x 10", "P 1"],
    ["Orange", "12 x 10", "P 2"],
    ["Maroon", "15 x 10", "P 3"],
    ["Sienna", "15 x 10", "P 4"],
    ["Chartreuse", "13 x 15", "P 5"],
    ["Honeydew", "15 x 13", "P 6"],
    ["SlateGray", "4 x 20", "P 7"],
    ["Turquoise", "20 x 5", "P 8"],
    ["Plum", "10 x 20", "P 9"],
    ["Indigo", "23 x 7", "P 10"],
    ["Gold", "8 x 23", "P 11"],
    ["Silver", "5 x 4", "K 0"],
    ["Silver", "10 x 2", "K 1"],
    ["Silver", "20 x 1", "K 2"],
];


// Dimensions for key box (rect). Holds up to 3 layers of pieces. 
box_3keys_size = [45, 36, 3];

// Dimensions for square box. Holds up to 3 layers of pieces. 
box_square_size = [40, 40, 3];

// module render_pieces(layout="solution_square") {
module render_pieces(ps, exploded) {

    translate([2 * box_wall_t, 2 * box_wall_t, piece_height / 2]) {
    // translate([0, 0, piece_height / 2]) {
        // Render in the square solution
        for (i = [0: len(ps) - 1]) {
            echo(" ------- i: ", i);
        // for (i = [len(ps) - 3: len(ps) - 1]) {
        // for (i = [0: 0]) {
            p = ps[i];
            rect = p[0];
            // color = p[2];
            color = piece_properties[i][0];
            color(color) {
                position = exploded == true ? p[2] : p[1];
                rotate(position.z) {
                    translate([
                        piece_scale * (position.x + rect.x / 2), 
                        piece_scale * (position.y + rect.y / 2), 
                        0
                    ]) {      
                        difference() {
                            // The piece itself
                            cube(
                                size=[
                                    piece_scale * rect.x, 
                                    piece_scale * rect.y, 
                                    piece_height
                                ], 
                                center=true
                            );

                            union() {
                                // Positional data to print text on both sides of the piece. 
                                // Data is as follows: [tranlate.z, rotate.x]
                                ps = [
                                    [1, 0],
                                    [-1, 180]
                                ];

                                text_margin = 0.25;
                                text_size = 1.0;

                                echo("text_size: ", text_size);
                                smaller_dimension = min(rect.x, rect.y);
                                echo("smaller_dimension: ", smaller_dimension);
                                text_size_clipped = min(text_size, smaller_dimension - 2 * text_margin);
                                echo("text_size_clipped: ", text_size_clipped);

                                if (piece_labels == true) {
                                    for (j = [0: len(ps) - 1]) {
                                        p = ps[j];
                                        translate([0, 0, p[0] * (piece_height) / 2]) 
                                        scale([piece_scale, piece_scale, piece_height / 2])
                                        rotate([p[1], 0, 0])

                                        #text(
                                            text = piece_properties[i][2], 
                                            font = piece_font,
                                            halign = "center", 
                                            valign = "center", 
                                            size = text_size_clipped
                                        );
                                    }
                                } 

                                if (piece_dimensions == true) {
                                    for (j = [0: len(ps) - 1]) {
                                        // Loop through each of the 4 sides. 
                                        for (k = [0: 3]) {
                                            if ((3 * text_size >= rect.y || 3 * text_size >= rect.x) && k >= 2) {
                                                // This avoids printing two dimension numbers on top of each other when they overlap.
                                                // Instead settle for 2 labels instead of 4
                                            } else {
                                                // Rotate and position the dimension label along the edge of the piece. 
                                                p = ps[j];
                                                rotate([0, 0, k * (360 / 4)])
                                                translate([
                                                    0, 
                                                    piece_scale * ((k % 2 == 0 ? rect.y : rect.x) / 2 - text_size_clipped), 
                                                    p[0] * (piece_height) / 2
                                                ]) 
                                                scale([piece_scale, piece_scale, piece_height / 2])
                                                rotate([p[1], 0, 180])

                                                #text(
                                                    text = str(k % 2 == 0 ? rect.x : rect.y), 
                                                    font = piece_font,
                                                    halign = "center", 
                                                    valign = "center", 
                                                    size = text_size_clipped
                                                );
                                            }
                                        }
                                    }
                                } 
                            }
                        }
                    }
                }
            }
        }
    }
}

module render_box(dimensions) {
    slop = dimensions.x / 100;
    
    // Bottom
    bottom_inner = [
        dimensions.x * piece_scale + slop,
        dimensions.y * piece_scale + slop,
        dimensions.z * piece_height + slop
    ];
    bottom_outer = [
        bottom_inner.x + 2 * box_wall_t + slop,
        bottom_inner.y + 2 * box_wall_t + slop,
        bottom_inner.z + 1 * box_wall_t + slop,
    ];

    if (models == "case") {
        color("#996666", alpha = 0.75) {
            translate([
                box_wall_t + bottom_outer.x / 2,
                box_wall_t + bottom_outer.y / 2,
                bottom_outer.z / 2
            ]) {
                difference() {
                    cube(
                        size = bottom_outer, 
                        center = true
                    );

                    // Interior cutaway
                    translate([0, 0, box_wall_t]){
                        cube(
                            size = bottom_inner,
                            center = true
                        );
                    } 
                }
            }
        }
    }

    if (models == "lid") {
        // Top
        top_inner = [
            bottom_outer.x + slop,
            bottom_outer.y + slop,
            bottom_outer.z + slop
        ];
        top_outer = [
            top_inner.x + 2 * box_wall_t + slop,
            top_inner.y + 2 * box_wall_t + slop,
            top_inner.z + 1 * box_wall_t + slop
        ];
        color("#669966", alpha = 0.75) {
            // translate([top_outer_x, top_outer_y, top_outer_z]) 
            // rotate([0, 180, 0])
            translate([
                top_outer.x / 2, 
                top_outer.y / 2, 
                top_outer.z / 2 - 0.01
            ]) {
                difference() {
                    cube(
                        size = top_outer, 
                        center = true
                    );

                    // Interior cutaway
                    translate([0, 0, -box_wall_t]){
                        cube(
                            size = top_inner,
                            center = true
                        );
                    } 
                }
            }
        }
    }
}

module main() {
    if (models == "pieces") {
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
    } else if (models == "case" || models == "lid") {
        if (box_layout == "square") {
            render_box(dimensions=box_square_size);
        } else if (box_layout == "3_keys") {
            render_box(dimensions=box_3keys_size);
        }
    }
}

main();