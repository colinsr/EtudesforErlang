%%  @author Colin Detwiller <email>
%%  @doc Functions for calculating areas of geometric shapes
%%  @copyright -none
%%  @version 0.1

-module(geom).
-export([area/2]).

%%  @doc Calculates the area of a rectangle given
%%  the length and width.  Returns the product
%%  of its arguments

-spec(area(number(),number()) -> number()).

area(X,Y) ->
	X*Y.
