
APU_REPO_DIR = AUP-ZU3

clone-aup:
	git clone org-3189299@github.com:Xilinx/AUP-ZU3.git $(APU_REPO_DIR)
	cd $(APU_REPO_DIR) && git submodule update --init --recursive

clean:
	rm -rf vivado*.jou vivado*.log vivado*.str

