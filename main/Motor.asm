;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Wed Feb 08 22:45:23 2023                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("__IQxmpy"), DW_AT_symbol_name("___IQxmpy")
	.dwattr DW$1, DW_AT_type(*DW$T$12)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$1

DW$5	.dwtag  DW_TAG_variable, DW_AT_name("R_motor"), DW_AT_symbol_name("_R_motor")
	.dwattr DW$5, DW_AT_type(*DW$T$56)
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_variable, DW_AT_name("L_motor"), DW_AT_symbol_name("_L_motor")
	.dwattr DW$6, DW_AT_type(*DW$T$56)
	.dwattr DW$6, DW_AT_declaration(0x01)
	.dwattr DW$6, DW_AT_external(0x01)
DW$7	.dwtag  DW_TAG_variable, DW_AT_name("LeftQepRegs"), DW_AT_symbol_name("_LeftQepRegs")
	.dwattr DW$7, DW_AT_type(*DW$T$53)
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)
DW$8	.dwtag  DW_TAG_variable, DW_AT_name("RightQepRegs"), DW_AT_symbol_name("_RightQepRegs")
	.dwattr DW$8, DW_AT_type(*DW$T$53)
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)
;	..\Compiler\bin\opt2000.exe C:\Users\JS\AppData\Local\Temp\TI54410 C:\Users\JS\AppData\Local\Temp\TI5444 
;	..\Compiler\bin\ac2000.exe --keep_unneeded_types -D_INLINE -DLARGE_MODEL -I..\include --version=28 --keep_unneeded_types --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\JS\AppData\Local\Temp\TI5442 --template_info_file C:\Users\JS\AppData\Local\Temp\TI5446 --object_file Motor.obj --embed_opts 10 --call_assumptions=0 --mem_model:code=flat --mem_model:data=large --opt_for_speed --opt_level=3 --optimizer_comments --optimizer_interlist --program_level_compile --silicon_version=28 
	.sect	".text"
	.global	_MOTOR_ISR

DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("MOTOR_ISR"), DW_AT_symbol_name("_MOTOR_ISR")
	.dwattr DW$9, DW_AT_low_pc(_MOTOR_ISR)
	.dwattr DW$9, DW_AT_high_pc(0x00)
	.dwattr DW$9, DW_AT_begin_file("Motor.c")
	.dwattr DW$9, DW_AT_begin_line(0x16)
	.dwattr DW$9, DW_AT_begin_column(0x10)
	.dwattr DW$9, DW_AT_TI_interrupt(0x01)
	.dwpsn	"Motor.c",23,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _MOTOR_ISR                    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_MOTOR_ISR:
;*** 27	-----------------------    L_motor.u16_qep_count = RightQepRegs.QPOSCNT;
;*** 28	-----------------------    R_motor.u16_qep_count = LeftQepRegs.QPOSCNT;
;*** 31	-----------------------    *(&RightQepRegs+21L) |= 0x80u;
;*** 32	-----------------------    *(&LeftQepRegs+21L) |= 0x80u;
;*** 42	-----------------------    if ( R_motor.u16_qep_count > 1024u ) goto g3;
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR6
	.dwcfa	0x80, 16, 2
	.dwcfa	0x80, 17, 3
	.dwcfa	0x1d, -4
        MOVL      *SP++,XT
	.dwcfa	0x80, 21, 4
	.dwcfa	0x80, 22, 5
	.dwcfa	0x1d, -6
        SPM       0
        CLRC      PAGE0,OVM
        CLRC      AMODE
;* AL    assigned to S$2
DW$10	.dwtag  DW_TAG_variable, DW_AT_name("S$2"), DW_AT_symbol_name("S$2")
	.dwattr DW$10, DW_AT_type(*DW$T$10)
	.dwattr DW$10, DW_AT_location[DW_OP_reg0]
;* AL    assigned to S$1
DW$11	.dwtag  DW_TAG_variable, DW_AT_name("S$1"), DW_AT_symbol_name("S$1")
	.dwattr DW$11, DW_AT_type(*DW$T$10)
	.dwattr DW$11, DW_AT_location[DW_OP_reg0]
	.dwpsn	"Motor.c",27,2
        MOVW      DP,#_RightQepRegs
        MOVL      ACC,@_RightQepRegs    ; |27| 
        MOVW      DP,#_L_motor
        MOV       @_L_motor,AL          ; |27| 
	.dwpsn	"Motor.c",28,2
        MOVW      DP,#_LeftQepRegs
        MOVL      ACC,@_LeftQepRegs     ; |28| 
        MOVW      DP,#_R_motor
        MOV       @_R_motor,AL          ; |28| 
	.dwpsn	"Motor.c",31,2
        MOVW      DP,#_RightQepRegs+21
        OR        @_RightQepRegs+21,#0x0080 ; |31| 
	.dwpsn	"Motor.c",32,2
        MOVW      DP,#_LeftQepRegs+21
        OR        @_LeftQepRegs+21,#0x0080 ; |32| 
	.dwpsn	"Motor.c",42,2
        MOVW      DP,#_R_motor
        CMP       @_R_motor,#1024       ; |42| 
        BF        L1,HI                 ; |42| 
        ; branchcc occurs ; |42| 
;*** 42	-----------------------    S$2 = -(int)R_motor.u16_qep_count;
;*** 42	-----------------------    goto g4;
        MOV       AL,@_R_motor          ; |42| 
        NEG       AL                    ; |42| 
        BF        L2,UNC                ; |42| 
        ; branch occurs ; |42| 
L1:    
;***	-----------------------g3:
;*** 42	-----------------------    S$2 = 2049u-R_motor.u16_qep_count;
        MOV       AL,#2049              ; |42| 
        SUB       AL,@_R_motor          ; |42| 
L2:    
;***	-----------------------g4:
;*** 42	-----------------------    R_motor.int16_qep_value = S$2;
;*** 43	-----------------------    (L_motor.u16_qep_count > 1024u) ? (S$1 = (int)(L_motor.u16_qep_count-2049u)) : (S$1 = (int)L_motor.u16_qep_count);
        MOV       @_R_motor+1,AL        ; |42| 
	.dwpsn	"Motor.c",43,2
        MOVW      DP,#_L_motor
        CMP       @_L_motor,#1024       ; |43| 
        BF        L3,LOS                ; |43| 
        ; branchcc occurs ; |43| 
        MOV       AL,@_L_motor          ; |43| 
        SUB       AL,#2049              ; |43| 
        BF        L4,UNC                ; |43| 
        ; branch occurs ; |43| 
L3:    
        MOV       AL,@_L_motor          ; |43| 
L4:    
;*** 43	-----------------------    L_motor.int16_qep_value = S$1;
;*** 48	-----------------------    R_motor.iq27_distance_from_interrupt = __IQxmpy((long)R_motor.int16_qep_value<<21, 10294371L, 8);
;*** 49	-----------------------    L_motor.iq27_distance_from_interrupt = __IQxmpy((long)L_motor.int16_qep_value<<21, 10294371L, 8);
;*** 52	-----------------------    R_motor.iq15_distance_sum += R_motor.iq27_distance_from_interrupt>>12;
;*** 53	-----------------------    L_motor.iq15_distance_sum += L_motor.iq27_distance_from_interrupt>>12;
;*** 53	-----------------------    return;
        MOV       @_L_motor+1,AL        ; |43| 
	.dwpsn	"Motor.c",48,2
        SETC      SXM
        MOVW      DP,#_R_motor+1
        MOV       T,#21                 ; |48| 
        MOV       ACC,@_R_motor+1       ; |48| 
        LSLL      ACC,T                 ; |48| 
        MOVL      XAR6,ACC              ; |48| 
        MOVL      XT,ACC                ; |48| 
        MOV       AH,#157
        MOV       AL,#5219
        IMPYL     P,XT,ACC              ; |48| 
        MOVL      XT,XAR6               ; |48| 
        QMPYL     ACC,XT,ACC            ; |48| 
        LSL64     ACC:P,#8              ; |48| 
        MOVL      @_R_motor+6,ACC       ; |48| 
	.dwpsn	"Motor.c",49,2
        MOVW      DP,#_L_motor+1
        MOV       T,#21                 ; |49| 
        MOV       ACC,@_L_motor+1       ; |49| 
        LSLL      ACC,T                 ; |49| 
        MOVL      XAR6,ACC              ; |49| 
        MOVL      XT,ACC                ; |49| 
        MOV       AH,#157
        MOV       AL,#5219
        IMPYL     P,XT,ACC              ; |49| 
        MOVL      XT,XAR6               ; |49| 
        QMPYL     ACC,XT,ACC            ; |49| 
        LSL64     ACC:P,#8              ; |49| 
        MOVL      @_L_motor+6,ACC       ; |49| 
	.dwpsn	"Motor.c",52,2
        MOVW      DP,#_R_motor+6
        MOVL      ACC,@_R_motor+6       ; |52| 
        SFR       ACC,12                ; |52| 
        ADDL      @_R_motor+4,ACC       ; |52| 
	.dwpsn	"Motor.c",53,2
        MOVW      DP,#_L_motor+6
        MOVL      ACC,@_L_motor+6       ; |53| 
        SFR       ACC,12                ; |53| 
        ADDL      @_L_motor+4,ACC       ; |53| 
	.dwpsn	"Motor.c",54,1
	.dwcfa	0x1d, -6
        MOVL      XT,*--SP
	.dwcfa	0x1d, -4
	.dwcfa	0xc0, 22
	.dwcfa	0xc0, 21
        MOVL      XAR6,*--SP
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 16
        NASP
        IRET
        ; return occurs
	.dwattr DW$9, DW_AT_end_file("Motor.c")
	.dwattr DW$9, DW_AT_end_line(0x36)
	.dwattr DW$9, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$9

;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_R_motor
	.global	_L_motor
	.global	_LeftQepRegs
	.global	_RightQepRegs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$44	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$44, DW_AT_language(DW_LANG_C)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)
DW$T$12	.dwtag  DW_TAG_base_type, DW_AT_name("long")
	.dwattr DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$12, DW_AT_byte_size(0x02)

DW$T$48	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$48, DW_AT_language(DW_LANG_C)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$48

DW$15	.dwtag  DW_TAG_far_type
	.dwattr DW$15, DW_AT_type(*DW$T$38)
DW$T$53	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$53, DW_AT_type(*DW$15)
DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("motor_t"), DW_AT_type(*DW$T$55)
	.dwattr DW$T$56, DW_AT_language(DW_LANG_C)

DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_name("EQEP_REGS")
	.dwattr DW$T$38, DW_AT_byte_size(0x40)
DW$16	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$16, DW_AT_name("QPOSCNT"), DW_AT_symbol_name("_QPOSCNT")
	.dwattr DW$16, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$16, DW_AT_accessibility(DW_ACCESS_public)
DW$17	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$17, DW_AT_name("QPOSINIT"), DW_AT_symbol_name("_QPOSINIT")
	.dwattr DW$17, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$17, DW_AT_accessibility(DW_ACCESS_public)
DW$18	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$18, DW_AT_name("QPOSMAX"), DW_AT_symbol_name("_QPOSMAX")
	.dwattr DW$18, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$18, DW_AT_accessibility(DW_ACCESS_public)
DW$19	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$19, DW_AT_name("QPOSCMP"), DW_AT_symbol_name("_QPOSCMP")
	.dwattr DW$19, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$19, DW_AT_accessibility(DW_ACCESS_public)
DW$20	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$20, DW_AT_name("QPOSILAT"), DW_AT_symbol_name("_QPOSILAT")
	.dwattr DW$20, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$20, DW_AT_accessibility(DW_ACCESS_public)
DW$21	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$21, DW_AT_name("QPOSSLAT"), DW_AT_symbol_name("_QPOSSLAT")
	.dwattr DW$21, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$21, DW_AT_accessibility(DW_ACCESS_public)
DW$22	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$22, DW_AT_name("QPOSLAT"), DW_AT_symbol_name("_QPOSLAT")
	.dwattr DW$22, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$22, DW_AT_accessibility(DW_ACCESS_public)
DW$23	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$23, DW_AT_name("QUTMR"), DW_AT_symbol_name("_QUTMR")
	.dwattr DW$23, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$23, DW_AT_accessibility(DW_ACCESS_public)
DW$24	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$24, DW_AT_name("QUPRD"), DW_AT_symbol_name("_QUPRD")
	.dwattr DW$24, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$24, DW_AT_accessibility(DW_ACCESS_public)
DW$25	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$25, DW_AT_name("QWDTMR"), DW_AT_symbol_name("_QWDTMR")
	.dwattr DW$25, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$25, DW_AT_accessibility(DW_ACCESS_public)
DW$26	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$26, DW_AT_name("QWDPRD"), DW_AT_symbol_name("_QWDPRD")
	.dwattr DW$26, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$26, DW_AT_accessibility(DW_ACCESS_public)
DW$27	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$27, DW_AT_name("QDECCTL"), DW_AT_symbol_name("_QDECCTL")
	.dwattr DW$27, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$27, DW_AT_accessibility(DW_ACCESS_public)
DW$28	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$28, DW_AT_name("QEPCTL"), DW_AT_symbol_name("_QEPCTL")
	.dwattr DW$28, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$28, DW_AT_accessibility(DW_ACCESS_public)
DW$29	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$29, DW_AT_name("QCAPCTL"), DW_AT_symbol_name("_QCAPCTL")
	.dwattr DW$29, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$29, DW_AT_accessibility(DW_ACCESS_public)
DW$30	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$30, DW_AT_name("QPOSCTL"), DW_AT_symbol_name("_QPOSCTL")
	.dwattr DW$30, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$30, DW_AT_accessibility(DW_ACCESS_public)
DW$31	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$31, DW_AT_name("QEINT"), DW_AT_symbol_name("_QEINT")
	.dwattr DW$31, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$31, DW_AT_accessibility(DW_ACCESS_public)
DW$32	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$32, DW_AT_name("QFLG"), DW_AT_symbol_name("_QFLG")
	.dwattr DW$32, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$32, DW_AT_accessibility(DW_ACCESS_public)
DW$33	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$33, DW_AT_name("QCLR"), DW_AT_symbol_name("_QCLR")
	.dwattr DW$33, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$33, DW_AT_accessibility(DW_ACCESS_public)
DW$34	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$34, DW_AT_name("QFRC"), DW_AT_symbol_name("_QFRC")
	.dwattr DW$34, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$34, DW_AT_accessibility(DW_ACCESS_public)
DW$35	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$35, DW_AT_name("QEPSTS"), DW_AT_symbol_name("_QEPSTS")
	.dwattr DW$35, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$35, DW_AT_accessibility(DW_ACCESS_public)
DW$36	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$36, DW_AT_name("QCTMR"), DW_AT_symbol_name("_QCTMR")
	.dwattr DW$36, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$36, DW_AT_accessibility(DW_ACCESS_public)
DW$37	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$37, DW_AT_name("QCPRD"), DW_AT_symbol_name("_QCPRD")
	.dwattr DW$37, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$37, DW_AT_accessibility(DW_ACCESS_public)
DW$38	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$38, DW_AT_name("QCTMRLAT"), DW_AT_symbol_name("_QCTMRLAT")
	.dwattr DW$38, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$38, DW_AT_accessibility(DW_ACCESS_public)
DW$39	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$39, DW_AT_name("QCPRDLAT"), DW_AT_symbol_name("_QCPRDLAT")
	.dwattr DW$39, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$39, DW_AT_accessibility(DW_ACCESS_public)
DW$40	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$40, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$40, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$40, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38

DW$41	.dwtag  DW_TAG_far_type
	.dwattr DW$41, DW_AT_type(*DW$T$43)
DW$T$55	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$55, DW_AT_type(*DW$41)
DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)

DW$T$37	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$37, DW_AT_byte_size(0x1e)
DW$42	.dwtag  DW_TAG_subrange_type
	.dwattr DW$42, DW_AT_upper_bound(0x1d)
	.dwendtag DW$T$37

DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)

DW$T$21	.dwtag  DW_TAG_union_type
	.dwattr DW$T$21, DW_AT_name("QDECCTL_REG")
	.dwattr DW$T$21, DW_AT_byte_size(0x01)
DW$43	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$43, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$43, DW_AT_accessibility(DW_ACCESS_public)
DW$44	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$44, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$44, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr DW$T$23, DW_AT_name("QEPCTL_REG")
	.dwattr DW$T$23, DW_AT_byte_size(0x01)
DW$45	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$45, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$45, DW_AT_accessibility(DW_ACCESS_public)
DW$46	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$46, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$46, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr DW$T$25, DW_AT_name("QCAPCTL_REG")
	.dwattr DW$T$25, DW_AT_byte_size(0x01)
DW$47	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$47, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$47, DW_AT_accessibility(DW_ACCESS_public)
DW$48	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$48, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$48, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr DW$T$27, DW_AT_name("QPOSCTL_REG")
	.dwattr DW$T$27, DW_AT_byte_size(0x01)
DW$49	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$49, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$49, DW_AT_accessibility(DW_ACCESS_public)
DW$50	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$50, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$50, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$29	.dwtag  DW_TAG_union_type
	.dwattr DW$T$29, DW_AT_name("QEINT_REG")
	.dwattr DW$T$29, DW_AT_byte_size(0x01)
DW$51	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$51, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$51, DW_AT_accessibility(DW_ACCESS_public)
DW$52	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$52, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$52, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$31	.dwtag  DW_TAG_union_type
	.dwattr DW$T$31, DW_AT_name("QFLG_REG")
	.dwattr DW$T$31, DW_AT_byte_size(0x01)
DW$53	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$53, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$53, DW_AT_accessibility(DW_ACCESS_public)
DW$54	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$54, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$54, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr DW$T$33, DW_AT_name("QFRC_REG")
	.dwattr DW$T$33, DW_AT_byte_size(0x01)
DW$55	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$55, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$55, DW_AT_accessibility(DW_ACCESS_public)
DW$56	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$56, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$56, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr DW$T$35, DW_AT_name("QEPSTS_REG")
	.dwattr DW$T$35, DW_AT_byte_size(0x01)
DW$57	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$57, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$57, DW_AT_accessibility(DW_ACCESS_public)
DW$58	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$58, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$58, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$43, DW_AT_name("motor")
	.dwattr DW$T$43, DW_AT_byte_size(0x0c)
DW$59	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$59, DW_AT_name("u16_qep_count"), DW_AT_symbol_name("_u16_qep_count")
	.dwattr DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$59, DW_AT_accessibility(DW_ACCESS_public)
DW$60	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$60, DW_AT_name("int16_qep_value"), DW_AT_symbol_name("_int16_qep_value")
	.dwattr DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$60, DW_AT_accessibility(DW_ACCESS_public)
DW$61	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$61, DW_AT_name("iq15_current_velocity_average"), DW_AT_symbol_name("_iq15_current_velocity_average")
	.dwattr DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$61, DW_AT_accessibility(DW_ACCESS_public)
DW$62	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$62, DW_AT_name("iq15_distance_sum"), DW_AT_symbol_name("_iq15_distance_sum")
	.dwattr DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$62, DW_AT_accessibility(DW_ACCESS_public)
DW$63	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$63, DW_AT_name("iq27_distance_from_interrupt"), DW_AT_symbol_name("_iq27_distance_from_interrupt")
	.dwattr DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$63, DW_AT_accessibility(DW_ACCESS_public)
DW$64	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$64, DW_AT_name("iq28_kp"), DW_AT_symbol_name("_iq28_kp")
	.dwattr DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$64, DW_AT_accessibility(DW_ACCESS_public)
DW$65	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$65, DW_AT_name("iq28_kd"), DW_AT_symbol_name("_iq28_kd")
	.dwattr DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$65, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$43

DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("int16"), DW_AT_type(*DW$T$10)
	.dwattr DW$T$39, DW_AT_language(DW_LANG_C)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("_iq15"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$40, DW_AT_language(DW_LANG_C)
DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("_iq27"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$41, DW_AT_language(DW_LANG_C)
DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("_iq28"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$42, DW_AT_language(DW_LANG_C)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("QDECCTL_BITS")
	.dwattr DW$T$20, DW_AT_byte_size(0x01)
DW$66	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$66, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$66, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x05)
	.dwattr DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$66, DW_AT_accessibility(DW_ACCESS_public)
DW$67	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$67, DW_AT_name("QSP"), DW_AT_symbol_name("_QSP")
	.dwattr DW$67, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$67, DW_AT_accessibility(DW_ACCESS_public)
DW$68	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$68, DW_AT_name("QIP"), DW_AT_symbol_name("_QIP")
	.dwattr DW$68, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$68, DW_AT_accessibility(DW_ACCESS_public)
DW$69	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$69, DW_AT_name("QBP"), DW_AT_symbol_name("_QBP")
	.dwattr DW$69, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$69, DW_AT_accessibility(DW_ACCESS_public)
DW$70	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$70, DW_AT_name("QAP"), DW_AT_symbol_name("_QAP")
	.dwattr DW$70, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$70, DW_AT_accessibility(DW_ACCESS_public)
DW$71	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$71, DW_AT_name("IGATE"), DW_AT_symbol_name("_IGATE")
	.dwattr DW$71, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$71, DW_AT_accessibility(DW_ACCESS_public)
DW$72	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$72, DW_AT_name("SWAP"), DW_AT_symbol_name("_SWAP")
	.dwattr DW$72, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$72, DW_AT_accessibility(DW_ACCESS_public)
DW$73	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$73, DW_AT_name("XCR"), DW_AT_symbol_name("_XCR")
	.dwattr DW$73, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$73, DW_AT_accessibility(DW_ACCESS_public)
DW$74	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$74, DW_AT_name("SPSEL"), DW_AT_symbol_name("_SPSEL")
	.dwattr DW$74, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$74, DW_AT_accessibility(DW_ACCESS_public)
DW$75	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$75, DW_AT_name("SOEN"), DW_AT_symbol_name("_SOEN")
	.dwattr DW$75, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$75, DW_AT_accessibility(DW_ACCESS_public)
DW$76	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$76, DW_AT_name("QSRC"), DW_AT_symbol_name("_QSRC")
	.dwattr DW$76, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$76, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("QEPCTL_BITS")
	.dwattr DW$T$22, DW_AT_byte_size(0x01)
DW$77	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$77, DW_AT_name("WDE"), DW_AT_symbol_name("_WDE")
	.dwattr DW$77, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$77, DW_AT_accessibility(DW_ACCESS_public)
DW$78	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$78, DW_AT_name("UTE"), DW_AT_symbol_name("_UTE")
	.dwattr DW$78, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$78, DW_AT_accessibility(DW_ACCESS_public)
DW$79	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$79, DW_AT_name("QCLM"), DW_AT_symbol_name("_QCLM")
	.dwattr DW$79, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$79, DW_AT_accessibility(DW_ACCESS_public)
DW$80	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$80, DW_AT_name("QPEN"), DW_AT_symbol_name("_QPEN")
	.dwattr DW$80, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$80, DW_AT_accessibility(DW_ACCESS_public)
DW$81	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$81, DW_AT_name("IEL"), DW_AT_symbol_name("_IEL")
	.dwattr DW$81, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x02)
	.dwattr DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$81, DW_AT_accessibility(DW_ACCESS_public)
DW$82	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$82, DW_AT_name("SEL"), DW_AT_symbol_name("_SEL")
	.dwattr DW$82, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$82, DW_AT_accessibility(DW_ACCESS_public)
DW$83	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$83, DW_AT_name("SWI"), DW_AT_symbol_name("_SWI")
	.dwattr DW$83, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$83, DW_AT_accessibility(DW_ACCESS_public)
DW$84	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$84, DW_AT_name("IEI"), DW_AT_symbol_name("_IEI")
	.dwattr DW$84, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x02)
	.dwattr DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$84, DW_AT_accessibility(DW_ACCESS_public)
DW$85	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$85, DW_AT_name("SEI"), DW_AT_symbol_name("_SEI")
	.dwattr DW$85, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x02)
	.dwattr DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$85, DW_AT_accessibility(DW_ACCESS_public)
DW$86	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$86, DW_AT_name("PCRM"), DW_AT_symbol_name("_PCRM")
	.dwattr DW$86, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$86, DW_AT_accessibility(DW_ACCESS_public)
DW$87	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$87, DW_AT_name("FREE_SOFT"), DW_AT_symbol_name("_FREE_SOFT")
	.dwattr DW$87, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$87, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_name("QCAPCTL_BITS")
	.dwattr DW$T$24, DW_AT_byte_size(0x01)
DW$88	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$88, DW_AT_name("UPPS"), DW_AT_symbol_name("_UPPS")
	.dwattr DW$88, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$88, DW_AT_accessibility(DW_ACCESS_public)
DW$89	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$89, DW_AT_name("CCPS"), DW_AT_symbol_name("_CCPS")
	.dwattr DW$89, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x03)
	.dwattr DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$89, DW_AT_accessibility(DW_ACCESS_public)
DW$90	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$90, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$90, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x08)
	.dwattr DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$90, DW_AT_accessibility(DW_ACCESS_public)
DW$91	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$91, DW_AT_name("CEN"), DW_AT_symbol_name("_CEN")
	.dwattr DW$91, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$91, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_name("QPOSCTL_BITS")
	.dwattr DW$T$26, DW_AT_byte_size(0x01)
DW$92	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$92, DW_AT_name("PCSPW"), DW_AT_symbol_name("_PCSPW")
	.dwattr DW$92, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x0c)
	.dwattr DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$92, DW_AT_accessibility(DW_ACCESS_public)
DW$93	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$93, DW_AT_name("PCE"), DW_AT_symbol_name("_PCE")
	.dwattr DW$93, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$93, DW_AT_accessibility(DW_ACCESS_public)
DW$94	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$94, DW_AT_name("PCPOL"), DW_AT_symbol_name("_PCPOL")
	.dwattr DW$94, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$94, DW_AT_accessibility(DW_ACCESS_public)
DW$95	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$95, DW_AT_name("PCLOAD"), DW_AT_symbol_name("_PCLOAD")
	.dwattr DW$95, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$95, DW_AT_accessibility(DW_ACCESS_public)
DW$96	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$96, DW_AT_name("PCSHDW"), DW_AT_symbol_name("_PCSHDW")
	.dwattr DW$96, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$96, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_name("QEINT_BITS")
	.dwattr DW$T$28, DW_AT_byte_size(0x01)
DW$97	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$97, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$97, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$97, DW_AT_accessibility(DW_ACCESS_public)
DW$98	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$98, DW_AT_name("PCE"), DW_AT_symbol_name("_PCE")
	.dwattr DW$98, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$98, DW_AT_accessibility(DW_ACCESS_public)
DW$99	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$99, DW_AT_name("QPE"), DW_AT_symbol_name("_QPE")
	.dwattr DW$99, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$99, DW_AT_accessibility(DW_ACCESS_public)
DW$100	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$100, DW_AT_name("QDC"), DW_AT_symbol_name("_QDC")
	.dwattr DW$100, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$100, DW_AT_accessibility(DW_ACCESS_public)
DW$101	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$101, DW_AT_name("WTO"), DW_AT_symbol_name("_WTO")
	.dwattr DW$101, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$101, DW_AT_accessibility(DW_ACCESS_public)
DW$102	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$102, DW_AT_name("PCU"), DW_AT_symbol_name("_PCU")
	.dwattr DW$102, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$102, DW_AT_accessibility(DW_ACCESS_public)
DW$103	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$103, DW_AT_name("PCO"), DW_AT_symbol_name("_PCO")
	.dwattr DW$103, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$103, DW_AT_accessibility(DW_ACCESS_public)
DW$104	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$104, DW_AT_name("PCR"), DW_AT_symbol_name("_PCR")
	.dwattr DW$104, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$104, DW_AT_accessibility(DW_ACCESS_public)
DW$105	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$105, DW_AT_name("PCM"), DW_AT_symbol_name("_PCM")
	.dwattr DW$105, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$105, DW_AT_accessibility(DW_ACCESS_public)
DW$106	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$106, DW_AT_name("SEL"), DW_AT_symbol_name("_SEL")
	.dwattr DW$106, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$106, DW_AT_accessibility(DW_ACCESS_public)
DW$107	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$107, DW_AT_name("IEL"), DW_AT_symbol_name("_IEL")
	.dwattr DW$107, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$107, DW_AT_accessibility(DW_ACCESS_public)
DW$108	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$108, DW_AT_name("UTO"), DW_AT_symbol_name("_UTO")
	.dwattr DW$108, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$108, DW_AT_accessibility(DW_ACCESS_public)
DW$109	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$109, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$109, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$109, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_name("QFLG_BITS")
	.dwattr DW$T$30, DW_AT_byte_size(0x01)
DW$110	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$110, DW_AT_name("INT"), DW_AT_symbol_name("_INT")
	.dwattr DW$110, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$110, DW_AT_accessibility(DW_ACCESS_public)
DW$111	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$111, DW_AT_name("PCE"), DW_AT_symbol_name("_PCE")
	.dwattr DW$111, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$111, DW_AT_accessibility(DW_ACCESS_public)
DW$112	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$112, DW_AT_name("PHE"), DW_AT_symbol_name("_PHE")
	.dwattr DW$112, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$112, DW_AT_accessibility(DW_ACCESS_public)
DW$113	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$113, DW_AT_name("QDC"), DW_AT_symbol_name("_QDC")
	.dwattr DW$113, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$113, DW_AT_accessibility(DW_ACCESS_public)
DW$114	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$114, DW_AT_name("WTO"), DW_AT_symbol_name("_WTO")
	.dwattr DW$114, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$114, DW_AT_accessibility(DW_ACCESS_public)
DW$115	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$115, DW_AT_name("PCU"), DW_AT_symbol_name("_PCU")
	.dwattr DW$115, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$115, DW_AT_accessibility(DW_ACCESS_public)
DW$116	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$116, DW_AT_name("PCO"), DW_AT_symbol_name("_PCO")
	.dwattr DW$116, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$116, DW_AT_accessibility(DW_ACCESS_public)
DW$117	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$117, DW_AT_name("PCR"), DW_AT_symbol_name("_PCR")
	.dwattr DW$117, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$117, DW_AT_accessibility(DW_ACCESS_public)
DW$118	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$118, DW_AT_name("PCM"), DW_AT_symbol_name("_PCM")
	.dwattr DW$118, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$118, DW_AT_accessibility(DW_ACCESS_public)
DW$119	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$119, DW_AT_name("SEL"), DW_AT_symbol_name("_SEL")
	.dwattr DW$119, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$119, DW_AT_accessibility(DW_ACCESS_public)
DW$120	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$120, DW_AT_name("IEL"), DW_AT_symbol_name("_IEL")
	.dwattr DW$120, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$120, DW_AT_accessibility(DW_ACCESS_public)
DW$121	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$121, DW_AT_name("UTO"), DW_AT_symbol_name("_UTO")
	.dwattr DW$121, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$121, DW_AT_accessibility(DW_ACCESS_public)
DW$122	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$122, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$122, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$122, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_name("QFRC_BITS")
	.dwattr DW$T$32, DW_AT_byte_size(0x01)
DW$123	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$123, DW_AT_name("reserved"), DW_AT_symbol_name("_reserved")
	.dwattr DW$123, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$123, DW_AT_accessibility(DW_ACCESS_public)
DW$124	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$124, DW_AT_name("PCE"), DW_AT_symbol_name("_PCE")
	.dwattr DW$124, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$124, DW_AT_accessibility(DW_ACCESS_public)
DW$125	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$125, DW_AT_name("PHE"), DW_AT_symbol_name("_PHE")
	.dwattr DW$125, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$125, DW_AT_accessibility(DW_ACCESS_public)
DW$126	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$126, DW_AT_name("QDC"), DW_AT_symbol_name("_QDC")
	.dwattr DW$126, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$126, DW_AT_accessibility(DW_ACCESS_public)
DW$127	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$127, DW_AT_name("WTO"), DW_AT_symbol_name("_WTO")
	.dwattr DW$127, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$127, DW_AT_accessibility(DW_ACCESS_public)
DW$128	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$128, DW_AT_name("PCU"), DW_AT_symbol_name("_PCU")
	.dwattr DW$128, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$128, DW_AT_accessibility(DW_ACCESS_public)
DW$129	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$129, DW_AT_name("PCO"), DW_AT_symbol_name("_PCO")
	.dwattr DW$129, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$129, DW_AT_accessibility(DW_ACCESS_public)
DW$130	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$130, DW_AT_name("PCR"), DW_AT_symbol_name("_PCR")
	.dwattr DW$130, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$130, DW_AT_accessibility(DW_ACCESS_public)
DW$131	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$131, DW_AT_name("PCM"), DW_AT_symbol_name("_PCM")
	.dwattr DW$131, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$131, DW_AT_accessibility(DW_ACCESS_public)
DW$132	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$132, DW_AT_name("SEL"), DW_AT_symbol_name("_SEL")
	.dwattr DW$132, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$132, DW_AT_accessibility(DW_ACCESS_public)
DW$133	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$133, DW_AT_name("IEL"), DW_AT_symbol_name("_IEL")
	.dwattr DW$133, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$133, DW_AT_accessibility(DW_ACCESS_public)
DW$134	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$134, DW_AT_name("UTO"), DW_AT_symbol_name("_UTO")
	.dwattr DW$134, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$134, DW_AT_accessibility(DW_ACCESS_public)
DW$135	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$135, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$135, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$135, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$34, DW_AT_name("QEPSTS_BITS")
	.dwattr DW$T$34, DW_AT_byte_size(0x01)
DW$136	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$136, DW_AT_name("PCEF"), DW_AT_symbol_name("_PCEF")
	.dwattr DW$136, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$136, DW_AT_accessibility(DW_ACCESS_public)
DW$137	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$137, DW_AT_name("FIMF"), DW_AT_symbol_name("_FIMF")
	.dwattr DW$137, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$137, DW_AT_accessibility(DW_ACCESS_public)
DW$138	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$138, DW_AT_name("CDEF"), DW_AT_symbol_name("_CDEF")
	.dwattr DW$138, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$138, DW_AT_accessibility(DW_ACCESS_public)
DW$139	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$139, DW_AT_name("COEF"), DW_AT_symbol_name("_COEF")
	.dwattr DW$139, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$139, DW_AT_accessibility(DW_ACCESS_public)
DW$140	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$140, DW_AT_name("QDLF"), DW_AT_symbol_name("_QDLF")
	.dwattr DW$140, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$140, DW_AT_accessibility(DW_ACCESS_public)
DW$141	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$141, DW_AT_name("QDF"), DW_AT_symbol_name("_QDF")
	.dwattr DW$141, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$141, DW_AT_accessibility(DW_ACCESS_public)
DW$142	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$142, DW_AT_name("FIDF"), DW_AT_symbol_name("_FIDF")
	.dwattr DW$142, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$142, DW_AT_accessibility(DW_ACCESS_public)
DW$143	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$143, DW_AT_name("UPEVNT"), DW_AT_symbol_name("_UPEVNT")
	.dwattr DW$143, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$143, DW_AT_accessibility(DW_ACCESS_public)
DW$144	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$144, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$144, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$144, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


	.dwattr DW$9, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

DW$CIE	.dwcie 1, 40
	.dwcfa	0x0c, 20, 0
	.dwcfa	0x07, 0
	.dwcfa	0x07, 1
	.dwcfa	0x07, 2
	.dwcfa	0x07, 3
	.dwcfa	0x07, 4
	.dwcfa	0x07, 5
	.dwcfa	0x08, 6
	.dwcfa	0x08, 7
	.dwcfa	0x08, 8
	.dwcfa	0x08, 9
	.dwcfa	0x08, 10
	.dwcfa	0x08, 11
	.dwcfa	0x07, 12
	.dwcfa	0x07, 13
	.dwcfa	0x07, 14
	.dwcfa	0x07, 15
	.dwcfa	0x07, 16
	.dwcfa	0x07, 17
	.dwcfa	0x07, 18
	.dwcfa	0x07, 19
	.dwcfa	0x07, 20
	.dwcfa	0x07, 21
	.dwcfa	0x07, 22
	.dwcfa	0x07, 23
	.dwcfa	0x07, 24
	.dwcfa	0x07, 25
	.dwcfa	0x07, 26
	.dwcfa	0x08, 27
	.dwcfa	0x07, 28
	.dwcfa	0x07, 29
	.dwcfa	0x07, 30
	.dwcfa	0x07, 31
	.dwcfa	0x07, 32
	.dwcfa	0x07, 33
	.dwcfa	0x07, 34
	.dwcfa	0x07, 35
	.dwcfa	0x07, 36
	.dwcfa	0x07, 37
	.dwcfa	0x07, 38
	.dwcfa	0x07, 39
	.dwcfa	0x07, 40

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$145	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$145, DW_AT_location[DW_OP_reg0]
DW$146	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$146, DW_AT_location[DW_OP_reg1]
DW$147	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$147, DW_AT_location[DW_OP_reg2]
DW$148	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$148, DW_AT_location[DW_OP_reg3]
DW$149	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$149, DW_AT_location[DW_OP_reg4]
DW$150	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$150, DW_AT_location[DW_OP_reg5]
DW$151	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$151, DW_AT_location[DW_OP_reg6]
DW$152	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$152, DW_AT_location[DW_OP_reg7]
DW$153	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$153, DW_AT_location[DW_OP_reg8]
DW$154	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$154, DW_AT_location[DW_OP_reg9]
DW$155	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$155, DW_AT_location[DW_OP_reg10]
DW$156	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$156, DW_AT_location[DW_OP_reg11]
DW$157	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$157, DW_AT_location[DW_OP_reg12]
DW$158	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$158, DW_AT_location[DW_OP_reg13]
DW$159	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$159, DW_AT_location[DW_OP_reg14]
DW$160	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$160, DW_AT_location[DW_OP_reg15]
DW$161	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$161, DW_AT_location[DW_OP_reg16]
DW$162	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$162, DW_AT_location[DW_OP_reg17]
DW$163	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$163, DW_AT_location[DW_OP_reg18]
DW$164	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$164, DW_AT_location[DW_OP_reg19]
DW$165	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$165, DW_AT_location[DW_OP_reg20]
DW$166	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$166, DW_AT_location[DW_OP_reg21]
DW$167	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$167, DW_AT_location[DW_OP_reg22]
DW$168	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$168, DW_AT_location[DW_OP_reg23]
DW$169	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$169, DW_AT_location[DW_OP_reg24]
DW$170	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$170, DW_AT_location[DW_OP_reg25]
DW$171	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$171, DW_AT_location[DW_OP_reg26]
DW$172	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$172, DW_AT_location[DW_OP_reg27]
DW$173	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$173, DW_AT_location[DW_OP_reg28]
DW$174	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$174, DW_AT_location[DW_OP_reg29]
DW$175	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$175, DW_AT_location[DW_OP_reg30]
DW$176	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$176, DW_AT_location[DW_OP_reg31]
DW$177	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$177, DW_AT_location[DW_OP_regx 0x20]
DW$178	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$178, DW_AT_location[DW_OP_regx 0x21]
DW$179	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$179, DW_AT_location[DW_OP_regx 0x22]
DW$180	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$180, DW_AT_location[DW_OP_regx 0x23]
DW$181	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$181, DW_AT_location[DW_OP_regx 0x24]
DW$182	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$182, DW_AT_location[DW_OP_regx 0x25]
DW$183	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$183, DW_AT_location[DW_OP_regx 0x26]
DW$184	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$184, DW_AT_location[DW_OP_regx 0x27]
DW$185	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$185, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

