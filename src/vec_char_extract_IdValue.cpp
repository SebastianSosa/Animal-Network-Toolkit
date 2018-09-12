// Copyright (C) 2018  Sebastian Sosa, Ivan Puga-Gonzalez, Hu Feng He,Peng Zhang, Xiaohua Xie, Cédric Sueur
//
// This file is part of Animal Network Toolkit (ANT).
//
// ANT is free software: you can redistribute it and/or modify it
// under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 2 of the License, or
// (at your option) any later version.
//
// ANT is distributed in the hope that it will be useful, but
// WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

#include <Rcpp.h>
using namespace Rcpp;
//' @title Extract vector elements
//' @description xtract vector elements according to indices
//' @keywords internal
// [[Rcpp::export]]

Rcpp::CharacterVector vec_char_extract_IdValue(CharacterVector y, NumericVector x){
  CharacterVector elements=x.size();
  for(int a=0;a<x.size();a++){
    int select=x(a);
    select=select-1;
    elements[a]=y(select);
  }
  return elements;
}