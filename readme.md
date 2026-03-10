# AUP ZUP Building

Building the AUP from this [link](https://github.com/Xilinx/AUP-ZU3/blob/main/docs/overlays.md#rebuild-the-base-overlay)

Ran these commands:

```
xhub::refresh_catalog [xhub::get_xstores xilinx_board_store]
xhub::install [xhub::get_xitems "realdigital:xilinx_board_store:aup-zu3:1.1"]
```

Get this message:

```WARNING: [xhubtcl 76-56] No objects matched with given name : realdigital:xilinx_board_store:aup-zu3:1.1 in xhub database,invoke command 'xhub::refresh_catalog <xstores>' to sync xhub database with remote repositories. 
Vivado% 
```
