// CLIJ example macro: thresholding,ijm
//
// This macro shows how to apply a threshold to an image in the GPU.
//
// Author: Robert Haase
// December 2018
// ---------------------------------------------


// Get test data
run("Blobs (25K)");
//open("C:/structure/data/blobs.gif");
getDimensions(width, height, channels, slices, frames);
input = getTitle();
threshold = 128;

// name memory for mask image
mask = "mask";

// Init GPU
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

// cleanup ImageJ
run("Close All");

// create a mask using a fixed threshold
Ext.CLIJ2_threshold(input, mask, threshold);

// show result
Ext.CLIJ2_pullBinary(mask);
