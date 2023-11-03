
SHELL=/bin/bash

hub_update:
	# utilities.
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src_util/cal)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src_util/rename)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src_util/rrmdir)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src_util/sel)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src_util/shot)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src_util/vipe)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src_util/xpose)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src_util/xpose_rm)"
	# statistics.
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src_stats/moon)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src_stats/sun)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src_stats/weather)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src_stats/upgrade_status)"
	# git utils.
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src_git-util/git_ls)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src_git-util/git_check)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src_git-util/git_start)"
	# cd utils.
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src_bdirbs-cd-utils/bdirbs_permanent)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src_bdirbs-cd-utils/cdadd)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src_bdirbs-cd-utils/cded)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src_bdirbs-cd-utils/cdls)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src_bdirbs-cd-utils/cdpop)"
	@hub_ctrl ${HUB_MODE} ln "$(realpath ./src_bdirbs-cd-utils/cdshow)"
