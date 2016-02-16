%%%-------------------------------------------------------------------
%%% @author Colin
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 16. Feb 2016 6:08 AM
%%%-------------------------------------------------------------------
-module(powers).
-author("Colin").

%% API
-export([raise/2,nth_root/2]).


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

nth_root(X,N)   ->
  nth_root(X, N, X/2.0).

nth_root(X,N,A) ->
  io:format("Current guess is ~p~n", [A]),
  F = raise(A,N) - X,
  Fprime = N * raise(A,N-1),
  Next = A-F / Fprime,
  Change = abs(Next - A),
  if
    Change < 1.0e-8 -> Next;
    true -> nth_root(X,N,Next)
  end.