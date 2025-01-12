
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
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/cli_text/box)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/cli_text/comment)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/cli_text/putOnText)"
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

