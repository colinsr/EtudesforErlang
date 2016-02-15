%%%-------------------------------------------------------------------
%%% @author Colin
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 12. Feb 2016 5:42 PM
%%%-------------------------------------------------------------------
-module(dijkstra).
-author("Colin").

%% API
-export([gcd/2]).

gcd(M, N) ->
  if
    M == N  -> M;
    M > N -> gcd(M - N, N);
    true -> gcd(M, N - M)
  end.


