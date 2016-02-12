%%  @author Colin Detwiller <email>
%%  @doc Functions for calculating areas of geometric shapes
%%  @copyright -none
%%  @version 0.1

-module(geom).
-export([area/1]).

%%  @doc Calculates the area of a rectangle given
%%  a tuple containing the shape type along with
%%  the length and width.  Returns the product
%%  of its arguments.
%%  Calc the area of triangle by given a tuple containing
%%  the shape type along with the base and height by 
%%  returning the base times height divided by two.
%%  And calculates the area of an ellipse given a tuple
%%  containing the shape type, major and minor radiuses by 
%%  multiplying pi times the major and minor
%%  radiuses.



-spec(area({atom(),number(),number()}) -> number()).

area({Type,X,Y}) -> area(Type,X,Y).

area(rectangle,X,Y) when X>=0,Y>=0 ->
	X*Y;
area(triangle,X,Y) when X>=0,Y>=0 ->
	(X*Y)/2;
area(ellipse,X,Y) when X>=0,Y>=0 ->
	math:pi()*X*Y;
area(_,_,_) ->
	0.
