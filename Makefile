
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
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/helpers/python/py_env_activate)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/helpers/python/py_env_deactivate)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/helpers/python/py_env_make)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/nicetohave/natofy)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/util/add_hms)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/curl/web_goodreads)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/curl/web_sunmap)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/curl/web_yt_get_id)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/git/git_commit_past)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/wrappers/misc/sxiv_rm)"

mytest:
	bash ./test/add_hms_test.sh
