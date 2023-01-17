
/* [Render Parameters] */
// ----------------------------------------------------------------------

// Render quality (fast preview does not render threads).
render_quality = "fast preview"; // ["fast preview", "preview", "final rendering"]

/* [Parts] */
models = "Pieces"; // ["Pieces", "Key Pieces", "Box (Bottom)", "Box (Top)"]

// How big to scale the pieces by. 2.84 is the size of the original puzzle. [mm]
scale = 2.84; // 0.01

/* [Piece Parameters] */
// ----------------------------------------------------------------------

// The height of a piece. [mm]
piece_height = 6; // 0.1

// Label type for the pieces. 
piece_label_type = "None"; // ["None", "Piece/Key Names", "Width X Height", "Edge Dimensions"]

// The scale of text on pieces.
piece_text_scale = 2.0; // 0.1

// The inset/outset of text on pieces. [mm]
piece_text_inset = 1; // 0.1

/* [Box Parameters] */
// ----------------------------------------------------------------------

// How thick to make the walls for the box. [mm]
box_wall_t = 3; // 0.1

// Add text to the lid or not.
box_label = "no"; // ["yes", "no"]

// The text to display on the lid
box_label_text = "Calibron 12";

// The scale of text on pieces.
box_text_scale = 2.0; // 0.1

/* [Text Parameters] */
// ----------------------------------------------------------------------

// The font to use.
font = "ArcadeClassic:style=Regular"; 
// To list font names: fc-list -f "%-60{{%{family[0]}%{:style[0]=}}}%{file}\n" | sort

/* [Hidden] */

// Fragments rendered in a circle
$fn = 30;

// The margin of text on pieces as a percentage of the the height of the text. 
text_margin = 0.25;

// How to layout the pieces
piece_layout = "Printable"; // ["Printable", "Linear", "Square", "Key 0", "Key 1", "Key 2"]

// Render pieces in exploded layout (printable). 
pieces_exploded = "yes"; // ["yes", "no"]

// The shape of the box. 'Square' has 1 solution, 'Rectangle' has 3 soutions. 
box_layout = "Rectangle"; // ["Square", "Rectangle"]


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
    [[23,8], [21, 39, 0], [21, 39, 0]],
];

piece_properties = [
    ["Crimson", "P 0", "7 x 5"],
    ["DeepPink", "P 1", "10 x 3"],
    ["Orange", "P 2", "12 x 10"],
    ["Maroon", "P 3", "15 x 10"],
    ["Sienna", "P 4", "15 x 10"],
    ["Chartreuse", "P 5", "15 x 13"],
    ["Honeydew", "P 6", "15 x 13"],
    ["SlateGray", "P 7", "20 x 4"],
    ["Turquoise", "P 8", "20 x 5"],
    ["Plum", "P 9", "20 x 10"],
    ["Indigo", "P 10", "23 x 7"],
    ["Gold", "P 11", "23 x 8"],
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

// Returns the text portion of a piece
module render_piece_text(
    i,
    rect
) {
    // Text on the pieces
    union() {
        // Positional data to print text on both sides of the piece. 
        // Data is as follows: [tranlate.z, rotate.x]
        // (top only variant)
        text_transforms = [
            [1, 0]
        ];

        echo("piece_text_scale: ", piece_text_scale);
        smaller_dimension = min(rect.x, rect.y);
        echo("smaller_dimension: ", smaller_dimension);

        text_scale_clipped = min(piece_text_scale, (smaller_dimension - 1 * text_margin) / 2);
        echo("text_scale_clipped: ", text_scale_clipped);

        text_height = piece_text_inset * 2;
        echo("text_height: ", text_height);

        for (j = [0: len(text_transforms) - 1]) {
            t = text_transforms[j];
            if (piece_label_type == "Piece/Key Names" || piece_label_type == "Width X Height") {
                translate([0, 0, t[0] * piece_height / 2]) 
                rotate([t[1], 0, 0])
                linear_extrude(height = text_height, center = true) 
                text(
                    text = piece_label_type == "Piece/Key Names" ? piece_properties[i][1] : piece_properties[i][2], 
                    font = font,
                    halign = "center", 
                    valign = "center", 
                    size = scale * text_scale_clipped
                );
            } else if (piece_label_type == "Edge Dimensions") {
                // Loop through each of the 4 sides of each piece. 
                for (k = [0: 3]) {
                    if ((3 * piece_text_scale >= rect.y || 3 * piece_text_scale >= rect.x) && k < 2) {
                        // This avoids printing two dimension numbers on top of each other when they overlap.
                        // Instead settle for 2 labels instead of 4
                    } else {
                        // Rotate and position the dimension label along the edge of the piece. 
                        rotate([0, 0, k * (360 / 4)])
                        translate([
                            0, 
                            scale * ((k % 2 == 0 ? rect.y : rect.x) / 2 - text_scale_clipped), 
                            t[0] * piece_height / 2
                        ]) 
                        rotate([t[1], 0, 180])
                        linear_extrude(height = text_height, center = true) 
                        text(
                            text = str(k % 2 == 0 ? rect.x : rect.y), 
                            font = font,
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
// module render_pieces(layout="solution_square") {
module render_pieces(ps, exploded) {
    translate([2 * box_wall_t, 2 * box_wall_t, piece_height / 2]) {
        // Render in the square solution
        for (i = [0: len(ps) - 1]) {
            p = ps[i];
            rect = p[0];
            color(piece_properties[i][0]) {
                position = exploded == true ? p[2] : p[1];
                rotate(position.z) {
                    translate([
                        scale * (position.x + rect.x / 2), 
                        scale * (position.y + rect.y / 2), 
                        0
                    ]) {
                        // union() {
                        difference() {
                            // The piece itself
                            cube(
                                size = [
                                    scale * rect.x, 
                                    scale * rect.y, 
                                    piece_height
                                ], 
                                center = true
                            );

                            render_piece_text(
                                i = i,
                                rect = rect
                            );
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
                        cylinder(h = 4 * box_wall_t, r = top_outer.z / 2, center = true);

                    translate([top_outer.x / 2, top_outer.y, top_outer.z]) 
                    rotate([90, 0, 0])
                        cylinder(h = 4 * box_wall_t, r = top_outer.z / 2, center = true);
                }

                if (box_label == "yes") {
                    // TODO: This text scale code is repeated. Abstract to a module?
                    echo("box_text_scale: ", box_text_scale);
                    smaller_dimension = min(top_outer.x, top_outer.y);
                    echo("smaller_dimension: ", smaller_dimension);

                    text_scale_clipped = min(box_text_scale * scale, (smaller_dimension - 1 * text_margin) / 2);
                    echo("text_scale_clipped: ", text_scale_clipped);

                    text_height = min(piece_text_inset * 2, box_wall_t / 2);
                    echo("text_height: ", text_height);

                    union() {
                        translate([top_outer.x / 2, top_outer.y / 2, 0]) 
                        rotate([0, 180, 180])
                        linear_extrude(height = box_wall_t / 2, center = true) 
                        text(
                            text = box_label_text, 
                            font = font,
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
            render_box(dimensions = box_square_size);
        } else if (box_layout == "Rectangle") {
            render_box(dimensions = box_3keys_size);
        }
    }
}

main();