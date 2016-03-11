%%%-------------------------------------------------------------------
%%% @author Colin
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%% Dijkstra's method for finding GCD.
%%% @end
%%% Created : 11. Mar 2016 6:35 AM
%%%-------------------------------------------------------------------
-module(gcd).
-author("Colin").

%% API
-export([gcd/2]).

-spec(gcd(integer(), integer()) -> integer()).

gcd(M, N) when M =:= N ->
  M;
gcd(M, N) when M > N ->
  gcd(M-N, N);
gcd(M, N) ->
  gcd(M, N-M).