%%  @author Colin Detwiller <email>
%%  @doc Functions for calculating areas of geometric shapes
%%  @copyright -none
%%  @version 0.1

-module(geom).
-export([area/3]).

%%  @doc Calculates the area of a rectangle given
%%  the length and width.  Returns the product
%%  of its arguments.
%%  Calc the area of triangle by returning the base
%%  times height divided by two.
%%  And calculates the area of an ellipse by 
%%  multiplying pi times the major and minor
%%  radiuses.



-spec(area(atom(),number(),number()) -> number()).

area(rectangle,X,Y) when X>=0,Y>=0 ->
	X*Y;
area(triangle,X,Y) when X>=0,Y>=0 ->
	(X*Y)/2;
area(ellipse,X,Y) when X>=0,Y>=0 ->
	math:pi()*X*Y;
area(_,_,_) ->
	0.
