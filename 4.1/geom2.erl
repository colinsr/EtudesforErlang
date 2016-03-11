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

area(Shape,Length,Width) when Length > 0, Width > 0 ->
  case Shape of
    rectangle  -> Length * Width;
    triangle   -> (Length * Width)/2;
    ellipse    -> math:pi() * Length * Width;
    _          -> "enter a valid shape"
end;
area(_,_,_) -> "enter a valid (positive integer) length and width".
