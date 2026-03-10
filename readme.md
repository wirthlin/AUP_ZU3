# AUP ZUP

This page summarizes my experience building the AUP for the ZU3.

## Resources

* [AUP-ZU3 repository](https://github.com/Xilinx/AUP-ZU3/tree/main)

I added the following submodules to the repository:

```
git submodule add git@github.com:RealDigitalOrg/aup-zu3-bsp.git
git submodule add git@github.com:Xilinx/AUP-ZU3.git
```


## Build Process

The build process is based from this [link](https://github.com/Xilinx/AUP-ZU3/blob/main/docs/overlays.md#rebuild-the-base-overlay)

### Board Files

The board files need to be added to the Xilinx distributions.
I ran these commands as instructed:

```
xhub::refresh_catalog [xhub::get_xstores xilinx_board_store]
xhub::install [xhub::get_xitems "realdigital:xilinx_board_store:aup-zu3:1.1"]
```

But get this message:

```WARNING: [xhubtcl 76-56] No objects matched with given name : realdigital:xilinx_board_store:aup-zu3:1.1 in xhub database,invoke command 'xhub::refresh_catalog <xstores>' to sync xhub database with remote repositories. 
Vivado% 
```

The board files for the board are located at:
https://github.com/RealDigitalOrg/aup-zu3-bsp/tree/master/board-files

The installation board files are located at:
`~/Xilinx/Vivado/<version>/data/boards/board_files/`

Instructions for 625: https://byu-cpe.github.io/ecen625/vivado-tutorial/

This is what I did:
1. Downloaded the board files from the repository.
2. Navigate to <Xilinx installation directory>/Vivado/<version>/data/xhub/boards/XilinxBoardStore/boards
3. sudo cp -R ./aup-zu3-bsp/board-files/* /m
nt/toolsdisk/Xilinx/Vivado/2024.1/data/xhub/boards/XilinxBoardStore/boards/
Xilinx/


### Build IP

```
cd AUP-ZU3/base
vivado -mode tcl
```