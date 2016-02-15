%%%-------------------------------------------------------------------
%%% @author Colin
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. Feb 2016 7:08 AM
%%%-------------------------------------------------------------------
-module(powers).
-author("Colin").

%% API
-export([raise/2]).


raise(X, N) ->
  if
    N == 0  -> 1;
    N == 1  -> X;
    N > 0   -> raise(X, N, 1);
    true -> 1.0 / raise(X, -N)
  end.

raise(X, N, Accumulator)  ->
  if
    N == 0 -> Accumulator;
    true -> raise(X, N - 1, X * Accumulator)
  end.