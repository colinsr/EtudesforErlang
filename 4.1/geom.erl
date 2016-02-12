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

area(Shape,X,Y) when X>=0,Y>=0 ->
	case Shape of
		rectangle	-> X*Y;
		triangle 	-> (X*Y)/2;
		ellipse		-> math:pi()*X*Y;
		_		-> 0
	end.
