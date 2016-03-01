%%%-------------------------------------------------------------------
%%% @author Colin
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 26. Feb 2016 7:11 AM
%%%-------------------------------------------------------------------
-module(teeth).
-author("Colin").

%% API
-export([alert/1]).

%%@doc takes a list of tooth locations, and returns a list of problem tooth locations
%%      each tooth location is a list of 6 points a dentist checks for pocket depths
%%      if any of the points is over 4mm it requires dental attention

alert(ToothLocations) ->
  alert(ToothLocations, 1, []).

alert([],_,Acc)  -> lists:reverse(Acc);
  alert([H|T],ToothNumber, Acc) ->
    case stats:maximum(H) >= 4 of
      true  ->  alert(T,ToothNumber+1,[ToothNumber|Acc]);
      false -> alert(T,ToothNumber+1,Acc)
  end.