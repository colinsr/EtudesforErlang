%%%-------------------------------------------------------------------
%%% @author Colin
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 23. Feb 2016 7:05 AM
%%%-------------------------------------------------------------------
-module(stats).
-author("Colin").

%% API
-export([minimum/1,maximum/1,range/1]).


%%  @doc Returns smallest number
%%  from list of numbers that is
%%  passed in as argument

-spec(minimum(list(number())) -> number()).

minimum(Numbers) ->
  %%return smallest value
  [H|T] = Numbers,
  minimum(T,H).

minimum([], CurrentMin) ->
  CurrentMin;
minimum([H|T], CurrentMin)  ->
  Minimum = if
              CurrentMin < H -> CurrentMin;
              true -> H
            end,
  minimum(T, Minimum).


%%  @doc Returns biggest number
%%  from list of numbers that is
%%  passed in as argument

-spec(maximum(list(number())) -> number()).

maximum(Numbers) ->
  [H|T] = Numbers,
  maximum(T,H).

maximum([],CurrentMax)  ->
  CurrentMax;
maximum([H|T], CurrentMax)  ->
  case H > CurrentMax of
    true  -> maximum(T,H);
    false -> maximum(T,CurrentMax)
  end.

-spec(range(list(number())) -> [number()]).

range(Numbers) ->
  [minimum(Numbers),maximum(Numbers)].