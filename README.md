# dyn_salt_top
a dynamic jinja top for salt, because insanity is fun.

This formula should allow for the use of a dynamic top setup. allowing for pillars to be used to direct which states a minion gets.
while this is not very useful for static pillars. this coupled with ext_pillars should offer a way to change a system in a fast pace enviroment.
allowing for servers to be setup in such a way that one can change how salt works on the fly. 

also, grains have been added to allow a more dynamic way for other formulas to add maint items to future highstates. allowing for a orch install, highstate maint style setup. configuration.

 new functionality. if the file run_first_run exists on the master state file list. if there are not defined states in pillar and grains the top will first an event so that you can run a first run reactor against the minion. setting any defaults you might want.
