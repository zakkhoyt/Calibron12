

// TODO: Extend/retract text
// TODO: Differentiate the key pieces in a way that is printable. 
// TODO: Add another layout that is printable and doesn't give away any solutions
// TODO: Also all pieces oriented horizontally for easy text.

/* [Render Parameters] */
// ----------------------------------------------------------------------

// Render quality (fast preview does not render threads).
render_quality = "fast preview"; // ["fast preview", "preview", "final rendering"]

/* [Parts] */
models = "Pieces"; // ["Pieces", "Key Pieces", "Box (Bottom)", "Box (Top)"]

// how big to scale the pieces by. 2.84 is the size of  of the puzzle. [mm]
scale = 2.84;

/* [Piece Parameters] */
// ----------------------------------------------------------------------

// How to layout the pieces
piece_layout = "Printable"; // ["Printable", "Linear", "Square", "Key 0", "Key 1", "Key 2"]

// Render pieces in exploded layout (printable). 
pieces_exploded = "yes"; // ["yes", "no"]

// The total height of the vial and cap when assembled. [mm]
piece_height = 6; 

// Label type for the pieces. 
piece_label_type = "None"; // ["None", "Piece/Key Names", "Width X Height", "Edge Dimensions"]

// The font to use.
piece_font = "ArcadeClassic:style=Regular";
// piece_font = "SF Mono:style=Bold";
// To list font names: fc-list -f "%-60{{%{family[0]}%{:style[0]=}}}%{file}\n" | sort

// // Mark the key pieces with an indent on the top
// mark_key_pieces = "yes"; // ["yes", "no"]

/* [Box Parameters] */
// ----------------------------------------------------------------------

// The shape of the box. Square has 1 solution, 3_keys has 3 soutions. 
box_layout = "3_keys"; // ["Square", "3_keys"]

// How thick to make the walls for the box. [mm]
box_wall_t = 3;

// Add text to the lid or not.
box_label = "yes"; // ["yes", "no"]

/* [Text Parameters] */
// ----------------------------------------------------------------------

// The text to display on the lid
box_label_text = "Calibron 12";

// The scale of text on pieces.
box_text_scale = 1.1;

/* [Hidden] */
// ----------------------------------------------------------------------
// (This is a special section that OpenSCAD will not show in the 
// customizer. Used for private variables. 

$fn = 30;

// The scale of text on pieces.
text_scale = 1.0;

// The margin of text on pieces as a percentage of the the height of the text. 
text_margin = 0.25;


// The following arrays contain:
// [size, offset_rotation_packed, offset_rotation_exploded]
// [[width, height], [offset_x, offset_y, rotation], [offset_x, offset_y, rotation]],


ps_printable = [
    [[7,5], [0, 0, 0], [0, 0, 0]],
    [[10,3], [8, 0, 0], [8, 0, 0]],
    [[12,10], [19, 0, 0], [19, 0, 0]],
    [[15,10], [32, 0, 0], [32, 0, 0]],
    [[15,10], [0, 11, 0], [0, 11, 0]],
    [[15,13], [16, 11, 0], [16, 11, 0]],
    [[15,13], [32, 11, 0], [32, 11, 0]],
    [[20,4], [0, 25, 0], [0, 25, 0]],
    [[20,5], [21, 25, 0], [21, 25, 0]],
    [[20,10], [0, 31, 0], [0, 31, 0]],
    [[23,7], [21, 31, 0], [21, 31, 0]],
    [[23,8], [21, 39, 0], [0, 42, 0]],

    // // Keys
    // [[5, 4], [0, 44, 0], [0, 45, 0]],
    // [[10, 2], [6, 44, 0], [6, 45, 0]],
    // [[20, 1], [0, 42, 0], [0, 48, 0]],
];

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
    // // Keys
    // [[5, 4], [15, 14, 0], [157, 0, 0]],
    // [[10, 2], [0, 30, 0], [163, 0, 0]],
    // [[20, 1], [10, 15, 0], [174, 0, 0]]
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
    // // Keys
    // [[5, 4], [0, 45, 0], [0, 45, 0]],
    // [[10, 2], [6, 45, 0], [6, 45, 0]],
    // [[20, 1], [17, 45, 0], [17, 45, 0]]
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
    // // Keys
    // [[5, 4], [15, 14, 0], [0, 40, 0]],
    // [[10, 2], [0, 45, 0], [0, 45, 0]],
    // [[20, 1], [0, 48, 0], [0, 48, 0]],
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
    // // Keys
    // [[5, 4], [0, 40, 0], [0, 40, 0]],
    // [[10, 2], [0, 30, 0], [0, 45, 0]],
    // [[20, 1], [0, 48, 0], [0, 48, 0]],
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
    // // Keys
    // [[5, 4], [0, 41, 0], [0, 41, 0]],
    // [[10, 2], [0, 46, 0], [0, 46, 0]],
    // [[20, 1], [10, 15, 0], [0, 49, 0]]
];

piece_properties = [
    ["Crimson", "P 0", "7 x 5"],
    ["DeepPink", "P 1", "3 x 10"],
    ["Orange", "P 2", "12 x 10"],
    ["Maroon", "P 3", "15 x 10"],
    ["Sienna", "P 4", "15 x 10"],
    ["Chartreuse", "P 5", "13 x 15"],
    ["Honeydew", "P 6", "15 x 13"],
    ["SlateGray", "P 7", "4 x 20"],
    ["Turquoise", "P 8", "20 x 5"],
    ["Plum", "P 9", "10 x 20"],
    ["Indigo", "P 10", "23 x 7"],
    ["Gold", "P 11", "8 x 23"],
    ["Silver", "K 0", "5 x 4"],
    ["Silver", "K 1", "10 x 2"],
    ["Silver", "K 2", "20 x 1"],
];

keys = [
    [[5, 4], [0, 0, 0], [0, 0, 0]],
    [[10, 2], [6, 0, 0], [6, 0, 0]],
    [[20, 1], [17, 0, 0], [17, 0, 0]]
];

// Dimensions for key box (rect). Holds up to 3 layers of pieces. 
box_3keys_size = [45, 36, 2.33];

// Dimensions for square box. Holds up to 3 layers of pieces. 
box_square_size = [40, 40, 2.33];

// module render_pieces(layout="solution_square") {
module render_pieces(ps, exploded) {
    indexes = [2, 4, 12, 13];
    // translate([2 * box_wall_t, 2 * box_wall_t, piece_height / 2]) {
    translate([0, 0, piece_height / 2]) {
        // Render in the square solution
        for (i = [0: len(ps) - 1]) {
        // for (a = [0: len(indexes) - 1]) {
            // i = indexes[a];
            // echo(" ------- i: ", i);
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
                        scale * (position.x + rect.x / 2), 
                        scale * (position.y + rect.y / 2), 
                        0
                    ]) {      
                        difference() {
                        // union() {
                            // The piece itself
                            cube(
                                size=[
                                    scale * rect.x, 
                                    scale * rect.y, 
                                    piece_height
                                ], 
                                center=true
                            );

                            #union() {
                                // Positional data to print text on both sides of the piece. 
                                // Data is as follows: [tranlate.z, rotate.x]
                                text_transforms = [
                                    [1, 0],
                                    [-1, 180]
                                ];

                                echo("text_scale: ", text_scale);
                                smaller_dimension = min(rect.x, rect.y);
                                echo("smaller_dimension: ", smaller_dimension);

                                text_margin_d = text_margin;
                                text_scale_clipped = min(text_scale, (smaller_dimension - 1 * text_margin_d) / 2);
                                echo("text_scale_clipped: ", text_scale_clipped);

                                if (piece_label_type == "Piece/Key Names" || piece_label_type == "Width X Height") {
                                    for (j = [0: len(text_transforms) - 1]) {
                                        p = text_transforms[j];
                                        translate([0, 0, p[0] * (piece_height) / 4]) 
                                        rotate([p[1], 0, 0])
                                        linear_extrude(height = piece_height / 2) 
                                        text(
                                            text = piece_label_type == "Piece/Key Names" ? piece_properties[i][1] : piece_properties[i][2], 
                                            font = piece_font,
                                            halign = "center", 
                                            valign = "center", 
                                            size = scale * text_scale_clipped
                                        );
                                    }
                                } else if (piece_label_type == "Edge Dimensions") {
                                    for (j = [0: len(text_transforms) - 1]) {
                                        // Loop through each of the 4 sides. 
                                        for (k = [0: 3]) {
                                            if ((3 * text_scale >= rect.y || 3 * text_scale >= rect.x) && k < 2) {
                                                // This avoids printing two dimension numbers on top of each other when they overlap.
                                                // Instead settle for 2 labels instead of 4
                                            } else {
                                                // Rotate and position the dimension label along the edge of the piece. 
                                                p = text_transforms[j];
                                                rotate([0, 0, k * (360 / 4)])
                                                translate([
                                                    0, 
                                                    scale * ((k % 2 == 0 ? rect.y : rect.x) / 2 - text_scale_clipped), 
                                                    p[0] * piece_height / 4
                                                ]) 
                                                rotate([p[1], 0, 180])
                                                linear_extrude(height = piece_height / 2) 
                                                text(
                                                    text = str(k % 2 == 0 ? rect.x : rect.y), 
                                                    font = piece_font,
                                                    halign = "center", 
                                                    valign = "center", 
                                                    size = scale * text_scale_clipped
                                                );

                                                
                                            }
                                        }
                                    }
                                } 

                                // TODO: Use this to indend before outdenting text
                                // if (mark_key_pieces == "yes") {
                                //     if (i > len(ps) - 4) {
                                //         key_indent_depth = 1;
                                //         translate([0, 0, (piece_height) / 2]) 
                                //         cube(
                                //             [
                                //                 scale * rect.x - 2 * key_indent_depth, 
                                //                 scale * rect.y - 2 * key_indent_depth, 
                                //                 4 * key_indent_depth
                                //             ], 
                                //             center = true
                                //         );
                                //     }
                                // }
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
        dimensions.x * scale + 2 * slop,
        dimensions.y * scale + 2 * slop,
        dimensions.z * piece_height + slop
    ];
    bottom_outer = [
        bottom_inner.x + 2 * box_wall_t,
        bottom_inner.y + 2 * box_wall_t,
        bottom_inner.z + 1 * box_wall_t,
    ];

    if (models == "Box (Bottom)") {
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

    if (models == "Box (Top)") {
        // Top
        top_inner = [
            bottom_outer.x + 2 * slop,
            bottom_outer.y + 2 * slop,
            bottom_outer.z + slop
        ];
        top_outer = [
            top_inner.x + 2 * box_wall_t,
            top_inner.y + 2 * box_wall_t,
            top_inner.z + 1 * box_wall_t
        ];
        color("#669966", alpha = 0.75) {
            difference() {
                translate([top_outer.x, 0, top_outer.z]) 
                rotate([0, 180, 0])
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

                // Cut notches on the box lid. Allows a way to grab the box case easily (to open the box)
                union() {
                    translate([top_outer.x / 2, 0, top_outer.z]) 
                    rotate([90, 0, 0])
                        cylinder(h = 4 * box_wall_t, r = top_outer.z / 2, center=true);

                    translate([top_outer.x / 2, top_outer.y, top_outer.z]) 
                    rotate([90, 0, 0])
                        cylinder(h = 4 * box_wall_t, r = top_outer.z / 2, center=true);
                }

                #if (box_label == "yes") {
                    // TODO: This text scale code is repeated. Abstract to a module?
                    echo("box_text_scale: ", box_text_scale);
                    smaller_dimension = min(top_outer.x, top_outer.y);
                    echo("smaller_dimension: ", smaller_dimension);

                    text_margin_d = text_margin;
                    text_scale_clipped = min(box_text_scale * scale, (smaller_dimension - 1 * text_margin_d) / 2);
                    echo("text_scale_clipped: ", text_scale_clipped);

                    union() {
                        translate([top_outer.x / 2, top_outer.y / 2, box_wall_t / 4]) 
                        rotate([0, 180, 180])
                        linear_extrude(height = box_wall_t / 2) 
                        text(
                            text = box_label_text, 
                            font = piece_font,
                            halign = "center", 
                            valign = "center", 
                            size = scale * text_scale_clipped
                        );
                    }
                }
            }
        }
    }
}

module main() {
    if (models == "Key Pieces") {
        render_pieces(
            ps = keys,
            exploded = pieces_exploded == "yes"
        );
    } else if (models == "Pieces") {
        if (piece_layout == "Printable") {
            render_pieces(
                ps = ps_printable,
                exploded = pieces_exploded == "yes"
            );
        } else if (piece_layout == "Linear") {
            render_pieces(
                ps = ps_linear,
                exploded = pieces_exploded == "yes"
            );
        } else if (piece_layout == "Square") {
            render_pieces(
                ps = ps_square,
                exploded = pieces_exploded == "yes"
            );
        } else if (piece_layout == "Key 0") {
            render_pieces(
                ps = ps_key0,
                exploded = pieces_exploded == "yes"
            );
        } else if (piece_layout == "Key 1") {
            render_pieces(
                ps = ps_key1,
                exploded = pieces_exploded == "yes"
            );
        } else if (piece_layout == "Key 2") {
            render_pieces(
                ps = ps_key2,
                exploded = pieces_exploded == "yes"
            );
        }
    } else if (models == "Box (Bottom)" || models == "Box (Top)") {
        if (box_layout == "Square") {
            render_box(dimensions=box_square_size);
        } else if (box_layout == "3_keys") {
            render_box(dimensions=box_3keys_size);
        }
    }
}

main();