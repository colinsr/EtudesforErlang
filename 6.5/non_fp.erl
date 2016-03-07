%%%-------------------------------------------------------------------
%%% @author Colin
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 01. Mar 2016 7:00 AM
%%%-------------------------------------------------------------------
-module(non_fp).
-author("Colin").

%% API
-export([generate_teeth/2]).


generate_teeth(ToothPresent, ProbabilityOfHealthyTooth) ->
  % Remember to refer to individual characters as $T and $F...?
  generate_teeth(ToothPresent,ProbabilityOfHealthyTooth,[]).

generate_teeth([],_,Acc)  -> lists:reverse(Acc);
generate_teeth([$F|T],ProbabilityOfHealthyTooth,Acc)  ->
  generate_teeth(T,ProbabilityOfHealthyTooth,[ [0] | Acc]);
generate_teeth([$T|T],ProbabilityOfHealthyTooth,Acc)  ->
  generate_teeth(T,ProbabilityOfHealthyTooth,[ generate_tooth(ProbabilityOfHealthyTooth) | Acc]).

generate_tooth(ProbabilityOfHealthyTooth) ->
  random:seed(now()),
  case random:uniform() < ProbabilityOfHealthyTooth of
    true  ->  generate_tooth(2, 6, []);
    false ->  generate_tooth(3, 6, [])
  end.

generate_tooth(_,0,Acc) -> Acc;
generate_tooth(BaseDepth, NumberOfToothSpots, Acc) ->
  PosOrNeg = random:uniform(10) > 5,
  NewDepth = case PosOrNeg of
          true -> BaseDepth + random:uniform();
          false -> BaseDepth + (random:uniform() * -1)
  end,
  generate_teeth(NewDepth, NumberOfToothSpots - 1, [NewDepth | Acc]).