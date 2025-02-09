
SHELL=/bin/bash

hub_update:
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/core/expand_globs)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/core/expand_globs_py)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/core/line)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/core/line_dashed)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/core/rename)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/core/rrmdir)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/core/sel)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/core/shot)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/core/vipe)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/core/xpose)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/core/xpose_rm)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/hack/toAscii)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/hack/toBinary)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/language+culture/chin_s2t)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/language+culture/persian_gregorian2jalali)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/language+culture/persian_jalali2gregorian)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/math/add_hms)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/math/rule-of-three)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/nicetohave/clk)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/nicetohave/natofy)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/nicetohave/shot)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/nicetohave/tmr)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/text_format/box)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/text_format/comment)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/text_format/putOnText)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/curl/web_goodreads)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/curl/web_pixabay)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/curl/web_pwnedpasswords)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/curl/web_sunmap)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/curl/web_yt_get_id)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/git/git_commit_past)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/misc/sxiv_rm)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/python/py_env_activate_src)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/python/py_env_deactivate_eval)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/python/py_env_make_exec)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/python/py_python_update)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/python/py_requirements_create)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/python/py_requirements_install)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/python_requests/web_tatoeba)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/ytdlp/yt_id2duration)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/dirhelpers/dir_complexity)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/dirhelpers/dir_complexity_size)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/dirhelpers/dir_flatten)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/dirhelpers/dir_quicksort)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/dirhelpers/dir_sel_mv)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/dirhelpers/dir_buckets)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/dirhelpers/dir_clean_dead-links)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/finders/find_aud)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/finders/find_img)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/finders/find_vid)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/initers/godot4_init)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/renamers/name_formatter)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/renamers/names_creationDate+format)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/renamers/names_creationDate+format)"     "${HOME}/.local/bin/names" # additional shorter alias.
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/renamers/names_creationDate)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/renamers/names_creationPrecise+format)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/renamers/names_current+format)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/renamers/names_format)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/renamers/rename_num.py)"                 "${HOME}/.local/bin/rename_numbering"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/renamers/rename_scans.sh)"               "${HOME}/.local/bin/rename_scans"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/stats/weather)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/stats/upgrade_status)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/plotters/plot_bars.py)"                  "${HOME}/.local/bin/plot_bars"
	@#######################################
	@#              ARCHIVED               #
	@#######################################
	@#hub_ctrl ${HUB_MODE} ln "$(realpath ./src/core/cal)"

hub_init:
	rm -f "${HOME}"/.local/bin/expand_globs
	rm -f "${HOME}"/.local/bin/expand_globs_py
	ln "$(realpath ./src/core/expand_globs)"    -s "${HOME}"/.local/bin/expand_globs
	ln "$(realpath ./src/core/expand_globs_py)" -s "${HOME}"/.local/bin/expand_globs_py

mytest:
	bash ./test/add_hms_test.sh
