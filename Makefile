
SHELL=/bin/bash

hub_update:
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/core/cal)"
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
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/helpers/python/py_env_activate_src)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/helpers/python/py_env_deactivate_eval)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/helpers/python/py_env_make_exec)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/helpers/python/py_python_update)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/helpers/python/py_requirements_create)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/helpers/python/py_requirements_install)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/nicetohave/clk)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/nicetohave/natofy)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/nicetohave/shot)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/nicetohave/tmr)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/add_hms)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/rule-of-three)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/curl/web_goodreads)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/curl/web_pixabay)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/curl/web_pwnedpasswords)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/curl/web_sunmap)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/curl/web_yt_get_id)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/git/git_commit_past)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/misc/sxiv_rm)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/python_requests/web_tatoeba)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/ytdlp/yt_id2duration)"

init:
	rm -f "${HOME}"/.local/bin/expand_globs
	rm -f "${HOME}"/.local/bin/expand_globs_py
	ln "$(realpath ./src/core/expand_globs)"    -s "${HOME}"/.local/bin/expand_globs
	ln "$(realpath ./src/core/expand_globs_py)" -s "${HOME}"/.local/bin/expand_globs_py

mytest:
	bash ./test/add_hms_test.sh

