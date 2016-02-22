%%%-------------------------------------------------------------------
%%% @author Colin
%%% @copyright (C) 2016, <Self>
%%% @doc
%%% This module will ask for a shape, the user responds either
%%% with the upper or lowercase first letter of the shape, then
%%% prompt for the appropriate dimensions.
%%% @end
%%% Created : 17. Feb 2016 6:26 AM
%%%-------------------------------------------------------------------
-module(ask_area).
-author("Colin").

%% API
-export([area/0]).

area()  ->
  ShapeLetter = string:to_upper(io:get_chars("R)ectangle, T)riangle, or E)llipse ",1)),
  Shape = char_to_shape(ShapeLetter),

  {Dim1,Dim2} = get_dimensions(Shape),

  Area = geom:area(Shape, Dim1, Dim2),
  Area.


char_to_shape(ShapeLetter) ->
  %% ValidShapes = ["R","T","E"],
  %% IsValid = lists:member("R",ValidShapes),

  case ShapeLetter of
            "R" -> rectangle;
            "T" -> triangle;
            "E" -> ellipse;
            _   -> invalid
  end.

get_dimensions(Shape) when Shape == rectangle ->
  get_dimensions("Height","Width");
get_dimensions(Shape) when Shape == triangle ->
  get_dimensions("Base","Height");
get_dimensions(Shape) when Shape == ellipse ->
  get_dimensions("major rad","minor rad");
get_dimensions(_) ->
  ok.

get_dimensions(Prompt1, Prompt2) ->
  A = get_number(Prompt1),
  B = get_number(Prompt2),
  {A,B}.

  %%  erlang:error(not_implemented).

get_number(Dimension) ->
  Input = io:get_line("Enter " ++ Dimension ++ " > "),
  { TempResult, _ } = string:to_float(Input),
  if
    TempResult == error -> { Result, _ } = string:to_integer(Input);
    true -> Result = TempResult
  end,
  TempResult.


