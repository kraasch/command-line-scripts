
SHELL=/bin/bash

hub_update:
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/cal)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/rename)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/rrmdir)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/sel)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/shot)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/vipe)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/xpose)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/xpose_rm)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/expand_globs)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src/expand_globs_py)"
