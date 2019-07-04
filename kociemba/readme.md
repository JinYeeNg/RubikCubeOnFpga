The user guide will show how to use the code and components given in my github space in order to generate and use the Rubik's Cube solver hardware block. In order to enable users with different board able to implement the block on their board, the user guide will be provided in 3 stages:

This user guide is for user who would like to modify the design or use different board from pynq board. Other user can directlt uses the bitstream in __system/pynq__ directory.
## HLS 
1. Vivado HLS tool to open up the project which is the folder with name __kociembaHls__, all the source code in c++ language will be reside in this folder. Any chance in the source code like add functionality  can be done at this stage.
2. You can configure the Vivado HLS tool to point to your board by using __Solution__ -> __Solution Settings__ -> __Synthesis__ -> __Part__
3. Use the __Project__ -> __Run C simulation__  to simulate the source code in order to ensure that the source code is still functioning correctly.
4. Use the __Solution__ -> __Run C synthesis__ to start synthesis the design
5. Use __Solution__ -> __Export RTL__ to export the IP Block, in the prompt out menu, choose the __IP Catalog__ option in __Format Selection__, the other choice can be set as user wishes to be.
6. Once the export RTL stage done, you are now done with HLS stage with RTL of the block generated. Close the Vivado HLS tool


## Hlx
1. Start the Vivado hlx tool and open up the Hlx project named __kociembaHlx__. After that, to configure the board, use __Project Manager__ -> __Settings__ -> __Edit__->  __Project Device__
2. Open up __IP Catalog__ in __Flow Navigation__
3. Then, right click on the __Vivado Respository__ and __Refresh All Respositories__ . Next, use __Open Block Design__ in __IP Integrator__ to open up the __design1__ . Inside the design1, delete the hardward_block __solution_0__
4. Right click __Add IP__ , type __hls__ in search box to add in the __Solution__ hardware block into the diagram. 
5. Use __Run Connection automation__, in the prompt up table choose only __S AXI CTRL BUS__ and __OK__ .
6. Run __connection automation__, connect up __S AXI HP0__ and __M AXI CTRL_BUS__
7. Run __connection automation__, connect up __S AXI HP2__ and __M AXI CTRL_BUS1__
8. Run __connection automation__, connect up __S AXI ACP__ and __M AXI CTRL_BUS2__
9. In __Address Editor__, in __solution 0__, unmap the __ACP_HIGH_OCM__, map the __ACP_AXI_GP0__
10. Right click, and run __validate design__ , make sure no error befor proveed.
11. Click on the __Generate Bitstream__ in __PROGRAM AND DEBUG__ of __Flow Navigation__

## Into PYNQ board
1. Rename the __design_1_wrapper.bit__ and __design_1_wrapper.tcl__ file in folder __kociembaHlx/kociembaHlx.runs/impl_1__ to __kociemba.bit__ and __kociemba.tcl__. Then, follow the step in __system__ directory and replace the __kociemba.bit__ and __kociemba.tcl__ in __system/pynq__ directory
