get_deps:
	rebar get-deps

upd_deps:
	rebar upd-deps

compile:
	rebar compile

clean:
	rebar clean

test:
	rebar eunit

dialyzer: compile
	dialyzer --plt .plt --no_native ebin

build_plt:
	dialyzer --build_plt --output_plt .plt --apps erts stdlib kernel 