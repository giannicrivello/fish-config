if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias vim="nvim"

function epochTime
	echo "TODO: fix epochTime"
end

function maketodofile_fromYesterday 
  set dt (date '+%m-%d-%y') && touch $dt.md && set yt (date -v -1d  '+%m-%d-%y') && cp $yt.md $dt.md
  vim $dt.md
end

function maketodofile
	set dt (date '+%m-%d-%y') && touch $dt.md
	vim $dt.md
end
