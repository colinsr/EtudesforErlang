%%%-------------------------------------------------------------------
%%% @author Colin
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%  Module with functions for calculating area of geometric shapes
%%% @end
%%% Created : 08. Mar 2016 6:31 AM
%%%-------------------------------------------------------------------
-module(geom2).
-author("Colin").

%% API
-export([area/3]).

%%  This function calculates the area of a rectangle,
%%  triangle or ellipse when given 2 positive integer
%%  values, if non positive integers are input an error
%%  message is displayed.

-spec(area(tuple(), number(), number()) -> number()).

area(rectangle, Length, Width) when Length > 0, Width > 0->
  Length * Width;
area(triangle, Length, Width) when Length > 0, Width > 0->
  (Length * Width)/2;
area(ellipse, Length, Width) when Length > 0, Width > 0->
  math:pi() * Length * Width;
area(_, Length, Width) when Length > 0, Width > 0->
  "Enter a valid type - Rectangle, Triangle, or Ellipse".
area(_,_,_) ->
  "Enter a valid length and width".