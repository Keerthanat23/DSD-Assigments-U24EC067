module mux2x1 (
    input A, B,    // Data inputs
    input Sel,     // Select line
    output Y       // Output
);

assign Y = Sel ? B : A;