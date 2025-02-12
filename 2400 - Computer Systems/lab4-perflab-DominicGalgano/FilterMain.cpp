#include <stdio.h>
#include "cs1300bmp.h"
#include <iostream>
#include <fstream>
#include <stdlib.h>
#include "Filter.h"

using namespace std;

#include "rdtsc.h"

//
// Forward declare the functions
//
Filter * readFilter(string filename);
double applyFilter(Filter *filter, cs1300bmp *input, cs1300bmp *output);

int
main(int argc, char **argv)
{

  if ( argc < 2) {
    fprintf(stderr,"Usage: %s filter inputfile1 inputfile2 .... \n", argv[0]);
  }

  //
  // Convert to C++ strings to simplify manipulation
  //
  string filtername = argv[1];

  //
  // remove any ".filter" in the filtername
  //
  string filterOutputName = filtername;
  string::size_type loc = filterOutputName.find(".filter");
  if (loc != string::npos) {
    //
    // Remove the ".filter" name, which should occur on all the provided filters
    //
    filterOutputName = filtername.substr(0, loc);
  }

  Filter *filter = readFilter(filtername);

  double sum = 0.0;
  int samples = 0;

  for (int inNum = 2; inNum < argc; inNum++) {
    string inputFilename = argv[inNum];
    string outputFilename = "filtered-" + filterOutputName + "-" + inputFilename;
    struct cs1300bmp *input = new struct cs1300bmp;
    struct cs1300bmp *output = new struct cs1300bmp;
    int ok = cs1300bmp_readfile( (char *) inputFilename.c_str(), input);

    if ( ok ) {
      double sample = applyFilter(filter, input, output);
      sum += sample;
      samples++;
      cs1300bmp_writefile((char *) outputFilename.c_str(), output);
    }
    delete input;
    delete output;
  }
  fprintf(stdout, "Average cycles per sample is %f\n", sum / samples);

}

class Filter *
readFilter(string filename)
{
  ifstream input(filename.c_str());

  if ( ! input.bad() ) {
    int size = 0;
    input >> size;
    Filter *filter = new Filter(size);
    int div;
    input >> div;
    filter -> setDivisor(div);
    for (int i=0; i < size; i++) {
      for (int j=0; j < size; j++) {
	int value;
	input >> value;
	filter -> set(i,j,value);
      }
    }
    return filter;
  } else {
    cerr << "Bad input in readFilter:" << filename << endl;
    exit(-1);
  }
}

double
applyFilter(struct Filter *filter, cs1300bmp *input, cs1300bmp *output)
{

  long long cycStart, cycStop;

  cycStart = rdtscll();

  output -> width = input -> width;
  output -> height = input -> height;

  //put variables outside of the for loops so we don't need to continually get their values from within
  int height = (input->height)-1;
  int width = (input->width)-1;
  int fdiv = filter->getDivisor();
  int *filter_array; //move the for loop that acceses the plane, outside. Speeds up access matrix process

  //filter->get(i, j)
  short quick_access[3][3];

  for(short i = 0; i < 3; i++){
    quick_access[i][0] = filter->get(i,0);
    quick_access[i][1] = filter->get(i,1);
    quick_access[i][2] = filter->get(i,2);
  }

  //Rearrange the loops in plane, row, col order to improve memory accessing
  for(int plane = 0; plane < 3; plane++) {
    for(int row = 1; row < height; row++) {
      for(int col = 1; col < width; col++) {

        int pixel = 0;

        filter_array = &input->color[plane][row-1][col-1];
        pixel += *(filter_array++)*(quick_access[0][0]);
        pixel += *(filter_array++)*(quick_access[0][1]);
        pixel += *(filter_array++)*(quick_access[0][2]);

        filter_array = &input->color[plane][row][col-1];
        pixel += *(filter_array++)*(quick_access[1][0]);
        pixel += *(filter_array++)*(quick_access[1][1]);
        pixel += *(filter_array++)*(quick_access[1][2]);

        filter_array = &input->color[plane][row+1][col-1];
        pixel += *(filter_array++)*(quick_access[2][0]);
        pixel += *(filter_array++)*(quick_access[2][1]);
        pixel += *(filter_array++)*(quick_access[2][2]);

        pixel = pixel / fdiv;

        //Adjusts pixel color value to be within valid RGB range
      	if(pixel < 0 ){
      	  pixel = 0;
      	}
      	if(pixel  > 255 ){ 
      	  pixel = 255;
      	}

        //Updates filtered value to output image
        output->color[plane][row][col] = pixel;
      }
    }
  }

  cycStop = rdtscll();
  double diff = cycStop - cycStart;
  double diffPerPixel = diff / (output -> width * output -> height);
  fprintf(stderr, "Took %f cycles to process, or %f cycles per pixel\n",
	  diff, diff / (output -> width * output -> height));
  return diffPerPixel;
}
