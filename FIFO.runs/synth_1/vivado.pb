
q
Command: %s
53*	vivadotcl2@
,synth_design -top top -part xc7a100tcsg324-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
_
#Helper process launched with PID %s4824*oasys2
52512default:defaultZ8-7075h px? 
?
%s*synth2?
?Starting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2347.176 ; gain = 0.000 ; free physical = 3523 ; free virtual = 8940
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
top2default:default2
 2default:default2b
L/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/top.v2default:default2
272default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter register bound to: 31 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter width bound to: 7 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter add_width bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2!
FIFO_datapath2default:default2
 2default:default2l
V/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/FIFO_datapath.v2default:default2
282default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter register bound to: 31 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter width bound to: 7 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter add_width bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
FIFO_ram2default:default2
 2default:default2g
Q/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/FIFO_ram.v2default:default2
292default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter width bound to: 7 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter register bound to: 31 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FIFO_ram2default:default2
 2default:default2
12default:default2
12default:default2g
Q/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/FIFO_ram.v2default:default2
292default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
WRITE_BUFFER2default:default2
 2default:default2k
U/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/WRITE_BUFFER.v2default:default2
272default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter width bound to: 7 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
WRITE_BUFFER2default:default2
 2default:default2
22default:default2
12default:default2k
U/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/WRITE_BUFFER.v2default:default2
272default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
READ_BUFFER2default:default2
 2default:default2j
T/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/READ_BUFFER.v2default:default2
272default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter width bound to: 7 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
READ_BUFFER2default:default2
 2default:default2
32default:default2
12default:default2j
T/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/READ_BUFFER.v2default:default2
272default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
POINTER2default:default2
 2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
262default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter add_width bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
sel2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
602default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2!
write_pointer2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
602default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2 
read_pointer2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
602default:default8@Z8-567h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
POINTER2default:default2
 2default:default2
42default:default2
12default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
262default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2#
STATUS_REGISTER2default:default2
 2default:default2n
X/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/STATUS_REGISTER.v2default:default2
242default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
STATUS_REGISTER2default:default2
 2default:default2
52default:default2
12default:default2n
X/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/STATUS_REGISTER.v2default:default2
242default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
FIFO_datapath2default:default2
 2default:default2
62default:default2
12default:default2l
V/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/FIFO_datapath.v2default:default2
282default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2#
FIFO_controller2default:default2
 2default:default2n
X/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/FIFO_controller.v2default:default2
242default:default8@Z8-6157h px? 
N
%s
*synth26
"	Parameter idle bound to: 3'b000 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter setupW bound to: 3'b001 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter write bound to: 3'b010 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter setupR bound to: 3'b011 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter read bound to: 3'b100 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter clear bound to: 3'b101 
2default:defaulth p
x
? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
Write2default:default2n
X/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/FIFO_controller.v2default:default2
802default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
ClearAllReg2default:default2n
X/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/FIFO_controller.v2default:default2
802default:default8@Z8-567h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
FIFO_controller2default:default2
 2default:default2
72default:default2
12default:default2n
X/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/FIFO_controller.v2default:default2
242default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2default:default2
 2default:default2
82default:default2
12default:default2b
L/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/top.v2default:default2
272default:default8@Z8-6155h px? 
?
%s*synth2?
?Finished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2347.176 ; gain = 0.000 ; free physical = 4273 ; free virtual = 9690
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 2347.176 ; gain = 0.000 ; free physical = 4330 ; free virtual = 9747
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 2347.176 ; gain = 0.000 ; free physical = 4330 ; free virtual = 9747
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2347.1762default:default2
0.0002default:default2
43232default:default2
97402default:defaultZ17-722h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2e
O/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/constrs_1/new/FIFO.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2e
O/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/constrs_1/new/FIFO.xdc2default:default8Z20-178h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2379.0622default:default2
0.0002default:default2
42452default:default2
96632default:defaultZ17-722h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2
00:00:00.012default:default2
2379.0622default:default2
0.0002default:default2
42452default:default2
96632default:defaultZ17-722h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Constraint Validation : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 2379.062 ; gain = 31.887 ; free physical = 4307 ; free virtual = 9724
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 2379.062 ; gain = 31.887 ; free physical = 4306 ; free virtual = 9724
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 2379.062 ; gain = 31.887 ; free physical = 4309 ; free virtual = 9727
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2 
pr_state_reg2default:default2#
FIFO_controller2default:defaultZ8-802h px? 
?
!inferring latch for variable '%s'327*oasys2$
read_pointer_reg2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
772default:default8@Z8-327h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                   clear |                           000001 |                              101
2default:defaulth p
x
? 
?
%s
*synth2s
_                    idle |                           000010 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_                  setupR |                           000100 |                              011
2default:defaulth p
x
? 
?
%s
*synth2s
_                    read |                           001000 |                              100
2default:defaulth p
x
? 
?
%s
*synth2s
_                  setupW |                           010000 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_                   write |                           100000 |                              010
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2 
pr_state_reg2default:default2
one-hot2default:default2#
FIFO_controller2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 2379.062 ; gain = 31.887 ; free physical = 4297 ; free virtual = 9718
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 34    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 96    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    6 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 98    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    1 Bit        Muxes := 6     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default25
!FIFO1/P4/read_pointer_reg[4]__1/Q2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
542default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
542default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
542default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default25
!FIFO1/P4/read_pointer_reg[3]__1/Q2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
542default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
542default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
542default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default25
!FIFO1/P4/read_pointer_reg[2]__1/Q2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
542default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
542default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
542default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default25
!FIFO1/P4/read_pointer_reg[1]__1/Q2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
542default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
542default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
542default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default25
!FIFO1/P4/read_pointer_reg[0]__1/Q2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
542default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
542default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
542default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default26
"FIFO1/P4/write_pointer_reg[4]__0/Q2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
522default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
522default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
522default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default26
"FIFO1/P4/write_pointer_reg[3]__0/Q2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
522default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
522default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
522default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default26
"FIFO1/P4/write_pointer_reg[2]__0/Q2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
522default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
522default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
522default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default26
"FIFO1/P4/write_pointer_reg[1]__0/Q2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
522default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
522default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
522default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default26
"FIFO1/P4/write_pointer_reg[0]__0/Q2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
522default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
VCC2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
522default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2f
P/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.srcs/sources_1/new/POINTER.v2default:default2
522default:default8@Z8-6858h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 2379.062 ; gain = 31.887 ; free physical = 4279 ; free virtual = 9709
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:13 ; elapsed = 00:00:15 . Memory (MB): peak = 2379.062 ; gain = 31.887 ; free physical = 4152 ; free virtual = 9589
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Timing Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:15 . Memory (MB): peak = 2379.062 ; gain = 31.887 ; free physical = 4152 ; free virtual = 9589
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Technology Mapping : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 2379.062 ; gain = 31.887 ; free physical = 4150 ; free virtual = 9587
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished IO Insertion : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 2379.062 ; gain = 31.887 ; free physical = 4150 ; free virtual = 9587
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 2379.062 ; gain = 31.887 ; free physical = 4150 ; free virtual = 9587
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 2379.062 ; gain = 31.887 ; free physical = 4150 ; free virtual = 9587
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 2379.062 ; gain = 31.887 ; free physical = 4150 ; free virtual = 9587
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 2379.062 ; gain = 31.887 ; free physical = 4150 ; free virtual = 9587
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 2379.062 ; gain = 31.887 ; free physical = 4150 ; free virtual = 9587
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
B
%s*synth2*
+------+-----+------+
2default:defaulth px? 
B
%s*synth2*
|      |Cell |Count |
2default:defaulth px? 
B
%s*synth2*
+------+-----+------+
2default:defaulth px? 
B
%s*synth2*
|1     |BUFG |     1|
2default:defaulth px? 
B
%s*synth2*
|2     |LUT1 |     1|
2default:defaulth px? 
B
%s*synth2*
|3     |LUT2 |     2|
2default:defaulth px? 
B
%s*synth2*
|4     |LUT5 |     1|
2default:defaulth px? 
B
%s*synth2*
|5     |LUT6 |     5|
2default:defaulth px? 
B
%s*synth2*
|6     |FDCE |     5|
2default:defaulth px? 
B
%s*synth2*
|7     |FDPE |     1|
2default:defaulth px? 
B
%s*synth2*
|8     |FDRE |    25|
2default:defaulth px? 
B
%s*synth2*
|9     |IBUF |    12|
2default:defaulth px? 
B
%s*synth2*
|10    |OBUF |    11|
2default:defaulth px? 
B
%s*synth2*
+------+-----+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 2379.062 ; gain = 31.887 ; free physical = 4150 ; free virtual = 9587
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
s
%s
*synth2[
GSynthesis finished with 0 errors, 30 critical warnings and 1 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Runtime : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 2379.062 ; gain = 0.000 ; free physical = 4203 ; free virtual = 9640
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 2379.070 ; gain = 31.887 ; free physical = 4203 ; free virtual = 9641
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2379.0702default:default2
0.0002default:default2
41952default:default2
96352default:defaultZ17-722h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2379.0702default:default2
0.0002default:default2
42312default:default2
96712default:defaultZ17-722h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
302default:default2
62default:default2
302default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:232default:default2
00:00:212default:default2
2379.0702default:default2
32.0232default:default2
43752default:default2
98162default:defaultZ17-722h px? 
u
%s6*runtcl2Y
ESynthesis results are not added to the cache due to CRITICAL_WARNING
2default:defaulth px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2\
H/home/spdy18695/workbench/Vivado_projects/FIFO/FIFO.runs/synth_1/top.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2p
\Executing : report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Feb  5 11:02:53 20212default:defaultZ17-206h px? 


End Record