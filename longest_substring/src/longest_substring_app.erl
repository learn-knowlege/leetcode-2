%%%-------------------------------------------------------------------
%% @doc longest_substring public API
%% @end
%%%-------------------------------------------------------------------

-module(longest_substring_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    longest_substring_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
