
.\My_LED_Pro.axf:     file format elf32-littlearm


Disassembly of section ER_IROM1:

08000000 <__Vectors>:
 8000000:	08 25 00 20 29 02 00 08 ab 16 00 08 03 15 00 08     .%. )...........
 8000010:	a9 16 00 08 ef 06 00 08 f5 1b 00 08 00 00 00 00     ................
	...
 800002c:	91 01 00 08 f1 06 00 08 00 00 00 00 d5 01 00 08     ................
 800003c:	d9 16 00 08 43 02 00 08 43 02 00 08 43 02 00 08     ....C...C...C...
 800004c:	43 02 00 08 43 02 00 08 43 02 00 08 43 02 00 08     C...C...C...C...
 800005c:	43 02 00 08 43 02 00 08 43 02 00 08 43 02 00 08     C...C...C...C...
 800006c:	43 02 00 08 43 02 00 08 43 02 00 08 43 02 00 08     C...C...C...C...
 800007c:	43 02 00 08 43 02 00 08 43 02 00 08 43 02 00 08     C...C...C...C...
 800008c:	43 02 00 08 43 02 00 08 43 02 00 08 43 02 00 08     C...C...C...C...
 800009c:	43 02 00 08 43 02 00 08 43 02 00 08 43 02 00 08     C...C...C...C...
 80000ac:	43 02 00 08 51 17 00 08 5d 17 00 08 43 02 00 08     C...Q...]...C...
 80000bc:	43 02 00 08 43 02 00 08 43 02 00 08 43 02 00 08     C...C...C...C...
 80000cc:	43 02 00 08 43 02 00 08 43 02 00 08 43 02 00 08     C...C...C...C...
 80000dc:	43 02 00 08 43 02 00 08 43 02 00 08 43 02 00 08     C...C...C...C...

080000ec <__main>:
 80000ec:	f000 f802 	bl	80000f4 <__scatterload_rt2>
 80000f0:	f000 f83f 	bl	8000172 <__rt_entry>

080000f4 <__scatterload_rt2>:
 80000f4:	a00a      	add	r0, pc, #40	; (adr r0, 8000120 <__scatterload_null+0x1e>)
 80000f6:	e890 0c00 	ldmia.w	r0, {sl, fp}
 80000fa:	4482      	add	sl, r0
 80000fc:	4483      	add	fp, r0
 80000fe:	f1aa 0701 	sub.w	r7, sl, #1

08000102 <__scatterload_null>:
 8000102:	45da      	cmp	sl, fp
 8000104:	d101      	bne.n	800010a <__scatterload_null+0x8>
 8000106:	f000 f834 	bl	8000172 <__rt_entry>
 800010a:	f2af 0e09 	subw	lr, pc, #9
 800010e:	e8ba 000f 	ldmia.w	sl!, {r0, r1, r2, r3}
 8000112:	f013 0f01 	tst.w	r3, #1
 8000116:	bf18      	it	ne
 8000118:	1afb      	subne	r3, r7, r3
 800011a:	f043 0301 	orr.w	r3, r3, #1
 800011e:	4718      	bx	r3
 8000120:	000039cc 	.word	0x000039cc
 8000124:	000039ec 	.word	0x000039ec

08000128 <__scatterload_copy>:
 8000128:	3a10      	subs	r2, #16
 800012a:	bf24      	itt	cs
 800012c:	c878      	ldmiacs	r0!, {r3, r4, r5, r6}
 800012e:	c178      	stmiacs	r1!, {r3, r4, r5, r6}
 8000130:	d8fa      	bhi.n	8000128 <__scatterload_copy>
 8000132:	0752      	lsls	r2, r2, #29
 8000134:	bf24      	itt	cs
 8000136:	c830      	ldmiacs	r0!, {r4, r5}
 8000138:	c130      	stmiacs	r1!, {r4, r5}
 800013a:	bf44      	itt	mi
 800013c:	6804      	ldrmi	r4, [r0, #0]
 800013e:	600c      	strmi	r4, [r1, #0]
 8000140:	4770      	bx	lr
	...

08000144 <__scatterload_zeroinit>:
 8000144:	2300      	movs	r3, #0
 8000146:	2400      	movs	r4, #0
 8000148:	2500      	movs	r5, #0
 800014a:	2600      	movs	r6, #0
 800014c:	3a10      	subs	r2, #16
 800014e:	bf28      	it	cs
 8000150:	c178      	stmiacs	r1!, {r3, r4, r5, r6}
 8000152:	d8fb      	bhi.n	800014c <__scatterload_zeroinit+0x8>
 8000154:	0752      	lsls	r2, r2, #29
 8000156:	bf28      	it	cs
 8000158:	c130      	stmiacs	r1!, {r4, r5}
 800015a:	bf48      	it	mi
 800015c:	600b      	strmi	r3, [r1, #0]
 800015e:	4770      	bx	lr

08000160 <_printf_percent>:
 8000160:	2975      	cmp	r1, #117	; 0x75
 8000162:	f000 80c9 	beq.w	80002f8 <_printf_int_dec>

08000166 <_printf_percent_end>:
 8000166:	2000      	movs	r0, #0
 8000168:	4770      	bx	lr

0800016a <__rt_lib_init>:
 800016a:	b51f      	push	{r0, r1, r2, r3, r4, lr}

0800016c <__rt_lib_init_alloca_1>:
 800016c:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

0800016e <__rt_lib_shutdown>:
 800016e:	b510      	push	{r4, lr}

08000170 <__rt_lib_shutdown_cpp_1>:
 8000170:	bd10      	pop	{r4, pc}

08000172 <__rt_entry>:
 8000172:	f000 fa82 	bl	800067a <__user_setup_stackheap>
 8000176:	4611      	mov	r1, r2

08000178 <__rt_entry_li>:
 8000178:	f7ff fff7 	bl	800016a <__rt_lib_init>

0800017c <__rt_entry_main>:
 800017c:	f001 fe06 	bl	8001d8c <main>
 8000180:	f000 faa0 	bl	80006c4 <exit>

08000184 <__rt_exit>:
 8000184:	b403      	push	{r0, r1}

08000186 <__rt_exit_ls>:
 8000186:	f7ff fff2 	bl	800016e <__rt_lib_shutdown>

0800018a <__rt_exit_exit>:
 800018a:	bc03      	pop	{r0, r1}
 800018c:	f000 faa8 	bl	80006e0 <_sys_exit>

08000190 <SVC_Handler>:

__asm void vPortSVCHandler( void )
{
	PRESERVE8

	ldr	r3, =pxCurrentTCB	/* Restore the context. */
 8000190:	4b22      	ldr	r3, [pc, #136]	; (800021c <PendSV_Handler+0x48>)
	ldr r1, [r3]			/* Use pxCurrentTCBConst to get the pxCurrentTCB address. */
 8000192:	6819      	ldr	r1, [r3, #0]
	ldr r0, [r1]			/* The first item in pxCurrentTCB is the task top of stack. */
 8000194:	6808      	ldr	r0, [r1, #0]
	ldmia r0!, {r4-r11}		/* Pop the registers that are not automatically saved on exception entry and the critical nesting count. */
 8000196:	e8b0 0ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp}
	msr psp, r0				/* Restore the task stack pointer. */
 800019a:	f380 8809 	msr	PSP, r0
	isb
 800019e:	f3bf 8f6f 	isb	sy
	mov r0, #0
 80001a2:	f04f 0000 	mov.w	r0, #0
	msr	basepri, r0
 80001a6:	f380 8811 	msr	BASEPRI, r0
	orr r14, #0xd
 80001aa:	f04e 0e0d 	orr.w	lr, lr, #13
	bx r14
 80001ae:	4770      	bx	lr
 80001b0:	00000000 	.word	0x00000000

080001b4 <__asm___6_port_c_39a90d8d__prvStartFirstTask>:
__asm void prvStartFirstTask( void )
{
	PRESERVE8

	/* Use the NVIC offset register to locate the stack. */
	ldr r0, =0xE000ED08
 80001b4:	4806      	ldr	r0, [pc, #24]	; (80001d0 <__asm___6_port_c_39a90d8d__prvStartFirstTask+0x1c>)
	ldr r0, [r0]
 80001b6:	6800      	ldr	r0, [r0, #0]
	ldr r0, [r0]
 80001b8:	6800      	ldr	r0, [r0, #0]

	/* Set the msp back to the start of the stack. */
	msr msp, r0
 80001ba:	f380 8808 	msr	MSP, r0
	/* Globally enable interrupts. */
	cpsie i
 80001be:	b662      	cpsie	i
	cpsie f
 80001c0:	b661      	cpsie	f
	dsb
 80001c2:	f3bf 8f4f 	dsb	sy
	isb
 80001c6:	f3bf 8f6f 	isb	sy
	/* Call SVC to start the first task. */
	svc 0
 80001ca:	df00      	svc	0
	nop
 80001cc:	bf00      	nop
	nop
 80001ce:	bf00      	nop
 80001d0:	e000ed08 	.word	0xe000ed08

080001d4 <PendSV_Handler>:
	extern pxCurrentTCB;
	extern vTaskSwitchContext;

	PRESERVE8

	mrs r0, psp
 80001d4:	f3ef 8009 	mrs	r0, PSP
	isb
 80001d8:	f3bf 8f6f 	isb	sy

	ldr	r3, =pxCurrentTCB		/* Get the location of the current TCB. */
 80001dc:	4b0f      	ldr	r3, [pc, #60]	; (800021c <PendSV_Handler+0x48>)
	ldr	r2, [r3]
 80001de:	681a      	ldr	r2, [r3, #0]

	stmdb r0!, {r4-r11}			/* Save the remaining registers. */
 80001e0:	e920 0ff0 	stmdb	r0!, {r4, r5, r6, r7, r8, r9, sl, fp}
	str r0, [r2]				/* Save the new top of stack into the first member of the TCB. */
 80001e4:	6010      	str	r0, [r2, #0]

	stmdb sp!, {r3, r14}
 80001e6:	b508      	push	{r3, lr}
	mov r0, #configMAX_SYSCALL_INTERRUPT_PRIORITY
 80001e8:	f04f 0050 	mov.w	r0, #80	; 0x50
	msr basepri, r0
 80001ec:	f380 8811 	msr	BASEPRI, r0
	dsb
 80001f0:	f3bf 8f4f 	dsb	sy
	isb
 80001f4:	f3bf 8f6f 	isb	sy
	bl vTaskSwitchContext
 80001f8:	f002 feb0 	bl	8002f5c <vTaskSwitchContext>
	mov r0, #0
 80001fc:	f04f 0000 	mov.w	r0, #0
	msr basepri, r0
 8000200:	f380 8811 	msr	BASEPRI, r0
	ldmia sp!, {r3, r14}
 8000204:	e8bd 4008 	ldmia.w	sp!, {r3, lr}

	ldr r1, [r3]
 8000208:	6819      	ldr	r1, [r3, #0]
	ldr r0, [r1]				/* The first item in pxCurrentTCB is the task top of stack. */
 800020a:	6808      	ldr	r0, [r1, #0]
	ldmia r0!, {r4-r11}			/* Pop the registers and the critical nesting count. */
 800020c:	e8b0 0ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp}
	msr psp, r0
 8000210:	f380 8809 	msr	PSP, r0
	isb
 8000214:	f3bf 8f6f 	isb	sy
	bx r14
 8000218:	4770      	bx	lr
	nop
 800021a:	bf00      	nop
 800021c:	20000028 	.word	0x20000028

08000220 <vPortGetIPSR>:

__asm uint32_t vPortGetIPSR( void )
{
	PRESERVE8

	mrs r0, ipsr
 8000220:	f3ef 8005 	mrs	r0, IPSR
	bx r14
 8000224:	4770      	bx	lr
	...

08000228 <Reset_Handler>:
; Reset handler
Reset_Handler    PROC
                 EXPORT  Reset_Handler             [WEAK]
     IMPORT  __main
     IMPORT  SystemInit
                 LDR     R0, =SystemInit
 8000228:	4809      	ldr	r0, [pc, #36]	; (8000250 <__user_initial_stackheap+0xc>)
                 BLX     R0
 800022a:	4780      	blx	r0
                 LDR     R0, =__main
 800022c:	4809      	ldr	r0, [pc, #36]	; (8000254 <__user_initial_stackheap+0x10>)
                 BX      R0
 800022e:	4700      	bx	r0

; Dummy Exception Handlers (infinite loops which can be modified)

NMI_Handler     PROC
                EXPORT  NMI_Handler                [WEAK]
                B       .
 8000230:	e7fe      	b.n	8000230 <Reset_Handler+0x8>
                ENDP
HardFault_Handler\
                PROC
                EXPORT  HardFault_Handler          [WEAK]
                B       .
 8000232:	e7fe      	b.n	8000232 <Reset_Handler+0xa>
                ENDP
MemManage_Handler\
                PROC
                EXPORT  MemManage_Handler          [WEAK]
                B       .
 8000234:	e7fe      	b.n	8000234 <Reset_Handler+0xc>
                ENDP
BusFault_Handler\
                PROC
                EXPORT  BusFault_Handler           [WEAK]
                B       .
 8000236:	e7fe      	b.n	8000236 <Reset_Handler+0xe>
                ENDP
UsageFault_Handler\
                PROC
                EXPORT  UsageFault_Handler         [WEAK]
                B       .
 8000238:	e7fe      	b.n	8000238 <Reset_Handler+0x10>
                ENDP
SVC_Handler     PROC
                EXPORT  SVC_Handler                [WEAK]
                B       .
 800023a:	e7fe      	b.n	800023a <Reset_Handler+0x12>
                ENDP
DebugMon_Handler\
                PROC
                EXPORT  DebugMon_Handler           [WEAK]
                B       .
 800023c:	e7fe      	b.n	800023c <Reset_Handler+0x14>
                ENDP
PendSV_Handler  PROC
                EXPORT  PendSV_Handler             [WEAK]
                B       .
 800023e:	e7fe      	b.n	800023e <Reset_Handler+0x16>
                ENDP
SysTick_Handler PROC
                EXPORT  SysTick_Handler            [WEAK]
                B       .
 8000240:	e7fe      	b.n	8000240 <Reset_Handler+0x18>

08000242 <ADC1_2_IRQHandler>:
USART3_IRQHandler
EXTI15_10_IRQHandler
RTC_Alarm_IRQHandler
USBWakeUp_IRQHandler

                B       .
 8000242:	e7fe      	b.n	8000242 <ADC1_2_IRQHandler>

08000244 <__user_initial_stackheap>:
                 IMPORT  __use_two_region_memory
                 EXPORT  __user_initial_stackheap
                 
__user_initial_stackheap

                 LDR     R0, =  Heap_Mem
 8000244:	4804      	ldr	r0, [pc, #16]	; (8000258 <__user_initial_stackheap+0x14>)
                 LDR     R1, =(Stack_Mem + Stack_Size)
 8000246:	4905      	ldr	r1, [pc, #20]	; (800025c <__user_initial_stackheap+0x18>)
                 LDR     R2, = (Heap_Mem +  Heap_Size)
 8000248:	4a05      	ldr	r2, [pc, #20]	; (8000260 <__user_initial_stackheap+0x1c>)
                 LDR     R3, = Stack_Mem
 800024a:	4b06      	ldr	r3, [pc, #24]	; (8000264 <__user_initial_stackheap+0x20>)
                 BX      LR
 800024c:	4770      	bx	lr
 800024e:	0000      	.short	0x0000
 8000250:	0800174f 	.word	0x0800174f
 8000254:	080000ed 	.word	0x080000ed
 8000258:	20001f08 	.word	0x20001f08
 800025c:	20002508 	.word	0x20002508
 8000260:	20002108 	.word	0x20002108
 8000264:	20002108 	.word	0x20002108

08000268 <__2sprintf>:
 8000268:	b40f      	push	{r0, r1, r2, r3}
 800026a:	b51c      	push	{r2, r3, r4, lr}
 800026c:	4b07      	ldr	r3, [pc, #28]	; (800028c <__2sprintf+0x24>)
 800026e:	aa06      	add	r2, sp, #24
 8000270:	447b      	add	r3, pc
 8000272:	4669      	mov	r1, sp
 8000274:	9000      	str	r0, [sp, #0]
 8000276:	9805      	ldr	r0, [sp, #20]
 8000278:	f000 f993 	bl	80005a2 <_printf_char_common>
 800027c:	2000      	movs	r0, #0
 800027e:	4669      	mov	r1, sp
 8000280:	f000 f9a2 	bl	80005c8 <_sputc>
 8000284:	bc1c      	pop	{r2, r3, r4}
 8000286:	f85d fb14 	ldr.w	pc, [sp], #20
 800028a:	0000      	.short	0x0000
 800028c:	00000355 	.word	0x00000355

08000290 <__printf>:
 8000290:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000294:	460e      	mov	r6, r1
 8000296:	4604      	mov	r4, r0
 8000298:	2000      	movs	r0, #0
 800029a:	6220      	str	r0, [r4, #32]
 800029c:	4620      	mov	r0, r4
 800029e:	68e1      	ldr	r1, [r4, #12]
 80002a0:	4788      	blx	r1
 80002a2:	b330      	cbz	r0, 80002f2 <__printf+0x62>
 80002a4:	2825      	cmp	r0, #37	; 0x25
 80002a6:	d005      	beq.n	80002b4 <__printf+0x24>
 80002a8:	e9d4 2101 	ldrd	r2, r1, [r4, #4]
 80002ac:	4790      	blx	r2
 80002ae:	6a20      	ldr	r0, [r4, #32]
 80002b0:	1c40      	adds	r0, r0, #1
 80002b2:	e7f2      	b.n	800029a <__printf+0xa>
 80002b4:	68e1      	ldr	r1, [r4, #12]
 80002b6:	4620      	mov	r0, r4
 80002b8:	2700      	movs	r7, #0
 80002ba:	4788      	blx	r1
 80002bc:	0005      	movs	r5, r0
 80002be:	d018      	beq.n	80002f2 <__printf+0x62>
 80002c0:	f1a5 0041 	sub.w	r0, r5, #65	; 0x41
 80002c4:	2819      	cmp	r0, #25
 80002c6:	d802      	bhi.n	80002ce <__printf+0x3e>
 80002c8:	3520      	adds	r5, #32
 80002ca:	f44f 6700 	mov.w	r7, #2048	; 0x800
 80002ce:	4632      	mov	r2, r6
 80002d0:	4629      	mov	r1, r5
 80002d2:	4620      	mov	r0, r4
 80002d4:	6027      	str	r7, [r4, #0]
 80002d6:	f7ff ff43 	bl	8000160 <_printf_percent>
 80002da:	b140      	cbz	r0, 80002ee <__printf+0x5e>
 80002dc:	2801      	cmp	r0, #1
 80002de:	d004      	beq.n	80002ea <__printf+0x5a>
 80002e0:	1df6      	adds	r6, r6, #7
 80002e2:	f026 0607 	bic.w	r6, r6, #7
 80002e6:	3608      	adds	r6, #8
 80002e8:	e7d8      	b.n	800029c <__printf+0xc>
 80002ea:	1d36      	adds	r6, r6, #4
 80002ec:	e7d6      	b.n	800029c <__printf+0xc>
 80002ee:	4628      	mov	r0, r5
 80002f0:	e7da      	b.n	80002a8 <__printf+0x18>
 80002f2:	6a20      	ldr	r0, [r4, #32]
 80002f4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080002f8 <_printf_int_dec>:
 80002f8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80002fc:	4606      	mov	r6, r0
 80002fe:	2400      	movs	r4, #0
 8000300:	6810      	ldr	r0, [r2, #0]
 8000302:	2975      	cmp	r1, #117	; 0x75
 8000304:	4631      	mov	r1, r6
 8000306:	a516      	add	r5, pc, #88	; (adr r5, 8000360 <_printf_int_dec+0x68>)
 8000308:	d010      	beq.n	800032c <_printf_int_dec+0x34>
 800030a:	f3af 8000 	nop.w
 800030e:	2800      	cmp	r0, #0
 8000310:	da02      	bge.n	8000318 <_printf_int_dec+0x20>
 8000312:	4240      	negs	r0, r0
 8000314:	a513      	add	r5, pc, #76	; (adr r5, 8000364 <_printf_int_dec+0x6c>)
 8000316:	e007      	b.n	8000328 <_printf_int_dec+0x30>
 8000318:	6831      	ldr	r1, [r6, #0]
 800031a:	078a      	lsls	r2, r1, #30
 800031c:	d501      	bpl.n	8000322 <_printf_int_dec+0x2a>
 800031e:	a512      	add	r5, pc, #72	; (adr r5, 8000368 <_printf_int_dec+0x70>)
 8000320:	e002      	b.n	8000328 <_printf_int_dec+0x30>
 8000322:	0749      	lsls	r1, r1, #29
 8000324:	d504      	bpl.n	8000330 <_printf_int_dec+0x38>
 8000326:	a511      	add	r5, pc, #68	; (adr r5, 800036c <_printf_int_dec+0x74>)
 8000328:	2401      	movs	r4, #1
 800032a:	e001      	b.n	8000330 <_printf_int_dec+0x38>
 800032c:	f3af 8000 	nop.w
 8000330:	2100      	movs	r1, #0
 8000332:	220a      	movs	r2, #10
 8000334:	f106 0724 	add.w	r7, r6, #36	; 0x24
 8000338:	e009      	b.n	800034e <_printf_int_dec+0x56>
 800033a:	fbb0 fcf2 	udiv	ip, r0, r2
 800033e:	fbb0 f3f2 	udiv	r3, r0, r2
 8000342:	fb02 001c 	mls	r0, r2, ip, r0
 8000346:	3030      	adds	r0, #48	; 0x30
 8000348:	5478      	strb	r0, [r7, r1]
 800034a:	4618      	mov	r0, r3
 800034c:	1c49      	adds	r1, r1, #1
 800034e:	2800      	cmp	r0, #0
 8000350:	d1f3      	bne.n	800033a <_printf_int_dec+0x42>
 8000352:	4623      	mov	r3, r4
 8000354:	462a      	mov	r2, r5
 8000356:	4630      	mov	r0, r6
 8000358:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 800035c:	f000 b8c2 	b.w	80004e4 <_printf_int_common>
 8000360:	00000000 	.word	0x00000000
 8000364:	0000002d 	.word	0x0000002d
 8000368:	0000002b 	.word	0x0000002b
 800036c:	00000020 	.word	0x00000020

08000370 <strcpy>:
 8000370:	ea40 0301 	orr.w	r3, r0, r1
 8000374:	4602      	mov	r2, r0
 8000376:	b530      	push	{r4, r5, lr}
 8000378:	079b      	lsls	r3, r3, #30
 800037a:	d110      	bne.n	800039e <strcpy+0x2e>
 800037c:	f04f 3401 	mov.w	r4, #16843009	; 0x1010101
 8000380:	e000      	b.n	8000384 <strcpy+0x14>
 8000382:	c208      	stmia	r2!, {r3}
 8000384:	c908      	ldmia	r1!, {r3}
 8000386:	1b1d      	subs	r5, r3, r4
 8000388:	439d      	bics	r5, r3
 800038a:	ea15 1fc4 	tst.w	r5, r4, lsl #7
 800038e:	d0f8      	beq.n	8000382 <strcpy+0x12>
 8000390:	f013 01ff 	ands.w	r1, r3, #255	; 0xff
 8000394:	f802 1b01 	strb.w	r1, [r2], #1
 8000398:	d00d      	beq.n	80003b6 <strcpy+0x46>
 800039a:	0a1b      	lsrs	r3, r3, #8
 800039c:	e7f8      	b.n	8000390 <strcpy+0x20>
 800039e:	f811 3b01 	ldrb.w	r3, [r1], #1
 80003a2:	2b00      	cmp	r3, #0
 80003a4:	f802 3b01 	strb.w	r3, [r2], #1
 80003a8:	d005      	beq.n	80003b6 <strcpy+0x46>
 80003aa:	f811 3b01 	ldrb.w	r3, [r1], #1
 80003ae:	2b00      	cmp	r3, #0
 80003b0:	f802 3b01 	strb.w	r3, [r2], #1
 80003b4:	d1f3      	bne.n	800039e <strcpy+0x2e>
 80003b6:	bd30      	pop	{r4, r5, pc}

080003b8 <strlen>:
 80003b8:	b510      	push	{r4, lr}
 80003ba:	1c43      	adds	r3, r0, #1
 80003bc:	e002      	b.n	80003c4 <strlen+0xc>
 80003be:	f810 1b01 	ldrb.w	r1, [r0], #1
 80003c2:	b171      	cbz	r1, 80003e2 <strlen+0x2a>
 80003c4:	0781      	lsls	r1, r0, #30
 80003c6:	d1fa      	bne.n	80003be <strlen+0x6>
 80003c8:	f04f 3201 	mov.w	r2, #16843009	; 0x1010101
 80003cc:	c802      	ldmia	r0!, {r1}
 80003ce:	1a8c      	subs	r4, r1, r2
 80003d0:	438c      	bics	r4, r1
 80003d2:	ea14 11c2 	ands.w	r1, r4, r2, lsl #7
 80003d6:	d0f9      	beq.n	80003cc <strlen+0x14>
 80003d8:	1ac0      	subs	r0, r0, r3
 80003da:	060a      	lsls	r2, r1, #24
 80003dc:	d003      	beq.n	80003e6 <strlen+0x2e>
 80003de:	1ec0      	subs	r0, r0, #3
 80003e0:	bd10      	pop	{r4, pc}
 80003e2:	1ac0      	subs	r0, r0, r3
 80003e4:	bd10      	pop	{r4, pc}
 80003e6:	040a      	lsls	r2, r1, #16
 80003e8:	d001      	beq.n	80003ee <strlen+0x36>
 80003ea:	1e80      	subs	r0, r0, #2
 80003ec:	bd10      	pop	{r4, pc}
 80003ee:	0209      	lsls	r1, r1, #8
 80003f0:	d0fc      	beq.n	80003ec <strlen+0x34>
 80003f2:	1e40      	subs	r0, r0, #1
 80003f4:	bd10      	pop	{r4, pc}

080003f6 <__rt_memcpy>:
 80003f6:	2a03      	cmp	r2, #3
 80003f8:	f240 8030 	bls.w	800045c <_memcpy_lastbytes>
 80003fc:	f010 0c03 	ands.w	ip, r0, #3
 8000400:	f000 8015 	beq.w	800042e <__rt_memcpy+0x38>
 8000404:	f811 3b01 	ldrb.w	r3, [r1], #1
 8000408:	f1bc 0f02 	cmp.w	ip, #2
 800040c:	4462      	add	r2, ip
 800040e:	bf98      	it	ls
 8000410:	f811 cb01 	ldrbls.w	ip, [r1], #1
 8000414:	f800 3b01 	strb.w	r3, [r0], #1
 8000418:	bf38      	it	cc
 800041a:	f811 3b01 	ldrbcc.w	r3, [r1], #1
 800041e:	f1a2 0204 	sub.w	r2, r2, #4
 8000422:	bf98      	it	ls
 8000424:	f800 cb01 	strbls.w	ip, [r0], #1
 8000428:	bf38      	it	cc
 800042a:	f800 3b01 	strbcc.w	r3, [r0], #1
 800042e:	f011 0303 	ands.w	r3, r1, #3
 8000432:	f000 80ce 	beq.w	80005d2 <__rt_memcpy_w>
 8000436:	3a08      	subs	r2, #8
 8000438:	f0c0 8008 	bcc.w	800044c <__rt_memcpy+0x56>
 800043c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000440:	3a08      	subs	r2, #8
 8000442:	f851 cb04 	ldr.w	ip, [r1], #4
 8000446:	e8a0 1008 	stmia.w	r0!, {r3, ip}
 800044a:	e7f5      	b.n	8000438 <__rt_memcpy+0x42>
 800044c:	1d12      	adds	r2, r2, #4
 800044e:	bf5c      	itt	pl
 8000450:	f851 3b04 	ldrpl.w	r3, [r1], #4
 8000454:	f840 3b04 	strpl.w	r3, [r0], #4
 8000458:	f3af 8000 	nop.w

0800045c <_memcpy_lastbytes>:
 800045c:	07d2      	lsls	r2, r2, #31
 800045e:	bf24      	itt	cs
 8000460:	f811 3b01 	ldrbcs.w	r3, [r1], #1
 8000464:	f811 cb01 	ldrbcs.w	ip, [r1], #1
 8000468:	bf48      	it	mi
 800046a:	f811 2b01 	ldrbmi.w	r2, [r1], #1
 800046e:	bf24      	itt	cs
 8000470:	f800 3b01 	strbcs.w	r3, [r0], #1
 8000474:	f800 cb01 	strbcs.w	ip, [r0], #1
 8000478:	bf48      	it	mi
 800047a:	f800 2b01 	strbmi.w	r2, [r0], #1
 800047e:	4770      	bx	lr

08000480 <__aeabi_memset>:
 8000480:	f002 03ff 	and.w	r3, r2, #255	; 0xff
 8000484:	ea43 2203 	orr.w	r2, r3, r3, lsl #8
 8000488:	ea42 4202 	orr.w	r2, r2, r2, lsl #16
 800048c:	f000 b8d5 	b.w	800063a <_memset>

08000490 <__rt_memclr_w>:
 8000490:	f04f 0200 	mov.w	r2, #0

08000494 <_memset_w>:
 8000494:	b500      	push	{lr}
 8000496:	4613      	mov	r3, r2
 8000498:	4694      	mov	ip, r2
 800049a:	4696      	mov	lr, r2
 800049c:	3920      	subs	r1, #32
 800049e:	bf22      	ittt	cs
 80004a0:	e8a0 500c 	stmiacs.w	r0!, {r2, r3, ip, lr}
 80004a4:	e8a0 500c 	stmiacs.w	r0!, {r2, r3, ip, lr}
 80004a8:	f1b1 0120 	subscs.w	r1, r1, #32
 80004ac:	f4bf aff7 	bcs.w	800049e <_memset_w+0xa>
 80004b0:	0709      	lsls	r1, r1, #28
 80004b2:	bf28      	it	cs
 80004b4:	e8a0 500c 	stmiacs.w	r0!, {r2, r3, ip, lr}
 80004b8:	bf48      	it	mi
 80004ba:	c00c      	stmiami	r0!, {r2, r3}
 80004bc:	f85d eb04 	ldr.w	lr, [sp], #4
 80004c0:	0089      	lsls	r1, r1, #2
 80004c2:	bf28      	it	cs
 80004c4:	f840 2b04 	strcs.w	r2, [r0], #4
 80004c8:	bf08      	it	eq
 80004ca:	4770      	bxeq	lr
 80004cc:	bf48      	it	mi
 80004ce:	f820 2b02 	strhmi.w	r2, [r0], #2
 80004d2:	f011 4f80 	tst.w	r1, #1073741824	; 0x40000000
 80004d6:	bf18      	it	ne
 80004d8:	f800 2b01 	strbne.w	r2, [r0], #1
 80004dc:	4770      	bx	lr

080004de <__use_two_region_memory>:
 80004de:	4770      	bx	lr

080004e0 <__rt_heap_escrow$2region>:
 80004e0:	4770      	bx	lr

080004e2 <__rt_heap_expand$2region>:
 80004e2:	4770      	bx	lr

080004e4 <_printf_int_common>:
 80004e4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80004e8:	460d      	mov	r5, r1
 80004ea:	4699      	mov	r9, r3
 80004ec:	4692      	mov	sl, r2
 80004ee:	4604      	mov	r4, r0
 80004f0:	f100 0824 	add.w	r8, r0, #36	; 0x24
 80004f4:	6801      	ldr	r1, [r0, #0]
 80004f6:	0688      	lsls	r0, r1, #26
 80004f8:	d504      	bpl.n	8000504 <_printf_int_common+0x20>
 80004fa:	69e0      	ldr	r0, [r4, #28]
 80004fc:	f021 0110 	bic.w	r1, r1, #16
 8000500:	6021      	str	r1, [r4, #0]
 8000502:	e000      	b.n	8000506 <_printf_int_common+0x22>
 8000504:	2001      	movs	r0, #1
 8000506:	42a8      	cmp	r0, r5
 8000508:	dd01      	ble.n	800050e <_printf_int_common+0x2a>
 800050a:	1b47      	subs	r7, r0, r5
 800050c:	e000      	b.n	8000510 <_printf_int_common+0x2c>
 800050e:	2700      	movs	r7, #0
 8000510:	69a1      	ldr	r1, [r4, #24]
 8000512:	197a      	adds	r2, r7, r5
 8000514:	eb02 0009 	add.w	r0, r2, r9
 8000518:	1a08      	subs	r0, r1, r0
 800051a:	61a0      	str	r0, [r4, #24]
 800051c:	7820      	ldrb	r0, [r4, #0]
 800051e:	06c0      	lsls	r0, r0, #27
 8000520:	d402      	bmi.n	8000528 <_printf_int_common+0x44>
 8000522:	4620      	mov	r0, r4
 8000524:	f3af 8000 	nop.w
 8000528:	2600      	movs	r6, #0
 800052a:	e008      	b.n	800053e <_printf_int_common+0x5a>
 800052c:	e9d4 2101 	ldrd	r2, r1, [r4, #4]
 8000530:	f81a 0006 	ldrb.w	r0, [sl, r6]
 8000534:	4790      	blx	r2
 8000536:	6a20      	ldr	r0, [r4, #32]
 8000538:	1c40      	adds	r0, r0, #1
 800053a:	1c76      	adds	r6, r6, #1
 800053c:	6220      	str	r0, [r4, #32]
 800053e:	454e      	cmp	r6, r9
 8000540:	dbf4      	blt.n	800052c <_printf_int_common+0x48>
 8000542:	7820      	ldrb	r0, [r4, #0]
 8000544:	06c0      	lsls	r0, r0, #27
 8000546:	d50a      	bpl.n	800055e <_printf_int_common+0x7a>
 8000548:	4620      	mov	r0, r4
 800054a:	f3af 8000 	nop.w
 800054e:	e006      	b.n	800055e <_printf_int_common+0x7a>
 8000550:	e9d4 2101 	ldrd	r2, r1, [r4, #4]
 8000554:	2030      	movs	r0, #48	; 0x30
 8000556:	4790      	blx	r2
 8000558:	6a20      	ldr	r0, [r4, #32]
 800055a:	1c40      	adds	r0, r0, #1
 800055c:	6220      	str	r0, [r4, #32]
 800055e:	1e38      	subs	r0, r7, #0
 8000560:	f1a7 0701 	sub.w	r7, r7, #1
 8000564:	dcf4      	bgt.n	8000550 <_printf_int_common+0x6c>
 8000566:	e007      	b.n	8000578 <_printf_int_common+0x94>
 8000568:	e9d4 2101 	ldrd	r2, r1, [r4, #4]
 800056c:	f818 0005 	ldrb.w	r0, [r8, r5]
 8000570:	4790      	blx	r2
 8000572:	6a20      	ldr	r0, [r4, #32]
 8000574:	1c40      	adds	r0, r0, #1
 8000576:	6220      	str	r0, [r4, #32]
 8000578:	1e28      	subs	r0, r5, #0
 800057a:	f1a5 0501 	sub.w	r5, r5, #1
 800057e:	dcf3      	bgt.n	8000568 <_printf_int_common+0x84>
 8000580:	4620      	mov	r0, r4
 8000582:	f3af 8000 	nop.w
 8000586:	7820      	ldrb	r0, [r4, #0]
 8000588:	0600      	lsls	r0, r0, #24
 800058a:	d502      	bpl.n	8000592 <_printf_int_common+0xae>
 800058c:	2002      	movs	r0, #2
 800058e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000592:	2001      	movs	r0, #1
 8000594:	e7fb      	b.n	800058e <_printf_int_common+0xaa>
	...

08000598 <_printf_input_char>:
 8000598:	6901      	ldr	r1, [r0, #16]
 800059a:	1c4a      	adds	r2, r1, #1
 800059c:	6102      	str	r2, [r0, #16]
 800059e:	7808      	ldrb	r0, [r1, #0]
 80005a0:	4770      	bx	lr

080005a2 <_printf_char_common>:
 80005a2:	b500      	push	{lr}
 80005a4:	b08f      	sub	sp, #60	; 0x3c
 80005a6:	e9cd 3101 	strd	r3, r1, [sp, #4]
 80005aa:	2100      	movs	r1, #0
 80005ac:	9105      	str	r1, [sp, #20]
 80005ae:	4905      	ldr	r1, [pc, #20]	; (80005c4 <_printf_char_common+0x22>)
 80005b0:	4479      	add	r1, pc
 80005b2:	e9cd 1003 	strd	r1, r0, [sp, #12]
 80005b6:	4611      	mov	r1, r2
 80005b8:	4668      	mov	r0, sp
 80005ba:	f7ff fe69 	bl	8000290 <__printf>
 80005be:	b00f      	add	sp, #60	; 0x3c
 80005c0:	bd00      	pop	{pc}
 80005c2:	0000      	.short	0x0000
 80005c4:	ffffffe5 	.word	0xffffffe5

080005c8 <_sputc>:
 80005c8:	680a      	ldr	r2, [r1, #0]
 80005ca:	f802 0b01 	strb.w	r0, [r2], #1
 80005ce:	600a      	str	r2, [r1, #0]
 80005d0:	4770      	bx	lr

080005d2 <__rt_memcpy_w>:
 80005d2:	b510      	push	{r4, lr}
 80005d4:	3a20      	subs	r2, #32
 80005d6:	f0c0 800b 	bcc.w	80005f0 <__rt_memcpy_w+0x1e>
 80005da:	e8b1 5018 	ldmia.w	r1!, {r3, r4, ip, lr}
 80005de:	3a20      	subs	r2, #32
 80005e0:	e8a0 5018 	stmia.w	r0!, {r3, r4, ip, lr}
 80005e4:	e8b1 5018 	ldmia.w	r1!, {r3, r4, ip, lr}
 80005e8:	e8a0 5018 	stmia.w	r0!, {r3, r4, ip, lr}
 80005ec:	f4bf aff5 	bcs.w	80005da <__rt_memcpy_w+0x8>
 80005f0:	ea5f 7c02 	movs.w	ip, r2, lsl #28
 80005f4:	bf24      	itt	cs
 80005f6:	e8b1 5018 	ldmiacs.w	r1!, {r3, r4, ip, lr}
 80005fa:	e8a0 5018 	stmiacs.w	r0!, {r3, r4, ip, lr}
 80005fe:	bf44      	itt	mi
 8000600:	c918      	ldmiami	r1!, {r3, r4}
 8000602:	c018      	stmiami	r0!, {r3, r4}
 8000604:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000608:	ea5f 7c82 	movs.w	ip, r2, lsl #30
 800060c:	bf24      	itt	cs
 800060e:	f851 3b04 	ldrcs.w	r3, [r1], #4
 8000612:	f840 3b04 	strcs.w	r3, [r0], #4
 8000616:	bf08      	it	eq
 8000618:	4770      	bxeq	lr

0800061a <_memcpy_lastbytes_aligned>:
 800061a:	07d2      	lsls	r2, r2, #31
 800061c:	bf28      	it	cs
 800061e:	f831 3b02 	ldrhcs.w	r3, [r1], #2
 8000622:	bf48      	it	mi
 8000624:	f811 2b01 	ldrbmi.w	r2, [r1], #1
 8000628:	bf28      	it	cs
 800062a:	f820 3b02 	strhcs.w	r3, [r0], #2
 800062e:	bf48      	it	mi
 8000630:	f800 2b01 	strbmi.w	r2, [r0], #1
 8000634:	4770      	bx	lr

08000636 <__rt_memclr>:
 8000636:	f04f 0200 	mov.w	r2, #0

0800063a <_memset>:
 800063a:	2904      	cmp	r1, #4
 800063c:	f0c0 8012 	bcc.w	8000664 <_memset+0x2a>
 8000640:	f010 0c03 	ands.w	ip, r0, #3
 8000644:	f43f af26 	beq.w	8000494 <_memset_w>
 8000648:	f1cc 0c04 	rsb	ip, ip, #4
 800064c:	f1bc 0f02 	cmp.w	ip, #2
 8000650:	bf18      	it	ne
 8000652:	f800 2b01 	strbne.w	r2, [r0], #1
 8000656:	bfa8      	it	ge
 8000658:	f820 2b02 	strhge.w	r2, [r0], #2
 800065c:	eba1 010c 	sub.w	r1, r1, ip
 8000660:	f7ff bf18 	b.w	8000494 <_memset_w>
 8000664:	ea5f 7cc1 	movs.w	ip, r1, lsl #31
 8000668:	bf24      	itt	cs
 800066a:	f800 2b01 	strbcs.w	r2, [r0], #1
 800066e:	f800 2b01 	strbcs.w	r2, [r0], #1
 8000672:	bf48      	it	mi
 8000674:	f800 2b01 	strbmi.w	r2, [r0], #1
 8000678:	4770      	bx	lr

0800067a <__user_setup_stackheap>:
 800067a:	4675      	mov	r5, lr
 800067c:	f000 f82c 	bl	80006d8 <__user_libspace>
 8000680:	46ae      	mov	lr, r5
 8000682:	0005      	movs	r5, r0
 8000684:	4669      	mov	r1, sp
 8000686:	4653      	mov	r3, sl
 8000688:	f020 0007 	bic.w	r0, r0, #7
 800068c:	4685      	mov	sp, r0
 800068e:	b018      	add	sp, #96	; 0x60
 8000690:	b520      	push	{r5, lr}
 8000692:	f7ff fdd7 	bl	8000244 <__user_initial_stackheap>
 8000696:	e8bd 4020 	ldmia.w	sp!, {r5, lr}
 800069a:	f04f 0600 	mov.w	r6, #0
 800069e:	f04f 0700 	mov.w	r7, #0
 80006a2:	f04f 0800 	mov.w	r8, #0
 80006a6:	f04f 0b00 	mov.w	fp, #0
 80006aa:	f021 0107 	bic.w	r1, r1, #7
 80006ae:	46ac      	mov	ip, r5
 80006b0:	e8ac 09c0 	stmia.w	ip!, {r6, r7, r8, fp}
 80006b4:	e8ac 09c0 	stmia.w	ip!, {r6, r7, r8, fp}
 80006b8:	e8ac 09c0 	stmia.w	ip!, {r6, r7, r8, fp}
 80006bc:	e8ac 09c0 	stmia.w	ip!, {r6, r7, r8, fp}
 80006c0:	468d      	mov	sp, r1
 80006c2:	4770      	bx	lr

080006c4 <exit>:
 80006c4:	b510      	push	{r4, lr}
 80006c6:	4604      	mov	r4, r0
 80006c8:	f3af 8000 	nop.w
 80006cc:	4620      	mov	r0, r4
 80006ce:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80006d2:	f7ff bd57 	b.w	8000184 <__rt_exit>
	...

080006d8 <__user_libspace>:
 80006d8:	4800      	ldr	r0, [pc, #0]	; (80006dc <__user_libspace+0x4>)
 80006da:	4770      	bx	lr
 80006dc:	20001ea8 	.word	0x20001ea8

080006e0 <_sys_exit>:
 80006e0:	4901      	ldr	r1, [pc, #4]	; (80006e8 <_sys_exit+0x8>)
 80006e2:	2018      	movs	r0, #24
 80006e4:	beab      	bkpt	0x00ab
 80006e6:	e7fe      	b.n	80006e6 <_sys_exit+0x6>
 80006e8:	00020026 	.word	0x00020026

080006ec <__use_no_semihosting_swi>:
 80006ec:	4770      	bx	lr

080006ee <BusFault_Handler>:
void BusFault_Handler(void)
{
  /* USER CODE BEGIN BusFault_IRQn 0 */

  /* USER CODE END BusFault_IRQn 0 */
  while (1)
 80006ee:	e7fe      	b.n	80006ee <BusFault_Handler>

080006f0 <DebugMon_Handler>:

  /* USER CODE END DebugMonitor_IRQn 0 */
  /* USER CODE BEGIN DebugMonitor_IRQn 1 */

  /* USER CODE END DebugMonitor_IRQn 1 */
}
 80006f0:	4770      	bx	lr
	...

080006f4 <HAL_GPIO_Init>:
  * @param  GPIO_Init: pointer to a GPIO_InitTypeDef structure that contains
  *         the configuration information for the specified GPIO peripheral.
  * @retval None
  */
void HAL_GPIO_Init(GPIO_TypeDef  *GPIOx, GPIO_InitTypeDef *GPIO_Init)
{
 80006f4:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}


        /* Enable or disable the rising trigger */
        if ((GPIO_Init->Mode & RISING_EDGE) == RISING_EDGE)
        {
          SET_BIT(EXTI->RTSR, iocurrent);
 80006f8:	f8df 91b8 	ldr.w	r9, [pc, #440]	; 80008b4 <HAL_GPIO_Init+0x1c0>
  uint32_t position = 0x00u;
 80006fc:	2400      	movs	r4, #0
        }

        /* Configure the event mask */
        if ((GPIO_Init->Mode & GPIO_MODE_EVT) == GPIO_MODE_EVT)
        {
          SET_BIT(EXTI->EMR, iocurrent);
 80006fe:	f1a9 0b04 	sub.w	fp, r9, #4
  uint32_t config = 0x00u;
 8000702:	4623      	mov	r3, r4
      MODIFY_REG((*configregister), ((GPIO_CRL_MODE0 | GPIO_CRL_CNF0) << registeroffset), (config << registeroffset));
 8000704:	270f      	movs	r7, #15
          SET_BIT(EXTI->FTSR, iocurrent);
 8000706:	f109 0a04 	add.w	sl, r9, #4
        }

        /* Configure the interrupt mask */
        if ((GPIO_Init->Mode & GPIO_MODE_IT) == GPIO_MODE_IT)
        {
          SET_BIT(EXTI->IMR, iocurrent);
 800070a:	f1ab 0e04 	sub.w	lr, fp, #4
{
 800070e:	e0c9      	b.n	80008a4 <HAL_GPIO_Init+0x1b0>
    ioposition = (0x01uL << position);
 8000710:	2501      	movs	r5, #1
 8000712:	40a5      	lsls	r5, r4
    iocurrent = (uint32_t)(GPIO_Init->Pin) & ioposition;
 8000714:	402a      	ands	r2, r5
    if (iocurrent == ioposition)
 8000716:	42aa      	cmp	r2, r5
 8000718:	d17d      	bne.n	8000816 <HAL_GPIO_Init+0x122>
      switch (GPIO_Init->Mode)
 800071a:	4e67      	ldr	r6, [pc, #412]	; (80008b8 <HAL_GPIO_Init+0x1c4>)
 800071c:	f8d1 c004 	ldr.w	ip, [r1, #4]
 8000720:	ebac 0806 	sub.w	r8, ip, r6
 8000724:	45b4      	cmp	ip, r6
 8000726:	d032      	beq.n	800078e <HAL_GPIO_Init+0x9a>
 8000728:	dc14      	bgt.n	8000754 <HAL_GPIO_Init+0x60>
 800072a:	f1bc 0f03 	cmp.w	ip, #3
 800072e:	d03a      	beq.n	80007a6 <HAL_GPIO_Init+0xb2>
 8000730:	dc09      	bgt.n	8000746 <HAL_GPIO_Init+0x52>
 8000732:	f1bc 0f00 	cmp.w	ip, #0
 8000736:	d02a      	beq.n	800078e <HAL_GPIO_Init+0x9a>
 8000738:	f1bc 0f01 	cmp.w	ip, #1
 800073c:	d01c      	beq.n	8000778 <HAL_GPIO_Init+0x84>
 800073e:	f1bc 0f02 	cmp.w	ip, #2
 8000742:	d131      	bne.n	80007a8 <HAL_GPIO_Init+0xb4>
 8000744:	e01d      	b.n	8000782 <HAL_GPIO_Init+0x8e>
 8000746:	f1bc 0f11 	cmp.w	ip, #17
 800074a:	d017      	beq.n	800077c <HAL_GPIO_Init+0x88>
 800074c:	f1bc 0f12 	cmp.w	ip, #18
 8000750:	d12a      	bne.n	80007a8 <HAL_GPIO_Init+0xb4>
 8000752:	e019      	b.n	8000788 <HAL_GPIO_Init+0x94>
 8000754:	f5b8 1f88 	cmp.w	r8, #1114112	; 0x110000
 8000758:	d019      	beq.n	800078e <HAL_GPIO_Init+0x9a>
 800075a:	dc06      	bgt.n	800076a <HAL_GPIO_Init+0x76>
 800075c:	f5b8 3f80 	cmp.w	r8, #65536	; 0x10000
 8000760:	d015      	beq.n	800078e <HAL_GPIO_Init+0x9a>
 8000762:	f5b8 1f80 	cmp.w	r8, #1048576	; 0x100000
 8000766:	d11f      	bne.n	80007a8 <HAL_GPIO_Init+0xb4>
 8000768:	e011      	b.n	800078e <HAL_GPIO_Init+0x9a>
 800076a:	f5b8 1f00 	cmp.w	r8, #2097152	; 0x200000
 800076e:	d00e      	beq.n	800078e <HAL_GPIO_Init+0x9a>
 8000770:	f5b8 1f04 	cmp.w	r8, #2162688	; 0x210000
 8000774:	d118      	bne.n	80007a8 <HAL_GPIO_Init+0xb4>
 8000776:	e00a      	b.n	800078e <HAL_GPIO_Init+0x9a>
          break;
 8000778:	68cb      	ldr	r3, [r1, #12]
 800077a:	e015      	b.n	80007a8 <HAL_GPIO_Init+0xb4>
          config = GPIO_Init->Speed + GPIO_CR_CNF_GP_OUTPUT_OD;
 800077c:	68cb      	ldr	r3, [r1, #12]
 800077e:	1d1b      	adds	r3, r3, #4
          break;
 8000780:	e012      	b.n	80007a8 <HAL_GPIO_Init+0xb4>
          config = GPIO_Init->Speed + GPIO_CR_CNF_AF_OUTPUT_PP;
 8000782:	68cb      	ldr	r3, [r1, #12]
 8000784:	3308      	adds	r3, #8
          break;
 8000786:	e00f      	b.n	80007a8 <HAL_GPIO_Init+0xb4>
          config = GPIO_Init->Speed + GPIO_CR_CNF_AF_OUTPUT_OD;
 8000788:	68cb      	ldr	r3, [r1, #12]
 800078a:	330c      	adds	r3, #12
          break;
 800078c:	e00c      	b.n	80007a8 <HAL_GPIO_Init+0xb4>
          if (GPIO_Init->Pull == GPIO_NOPULL)
 800078e:	688b      	ldr	r3, [r1, #8]
 8000790:	b12b      	cbz	r3, 800079e <HAL_GPIO_Init+0xaa>
          else if (GPIO_Init->Pull == GPIO_PULLUP)
 8000792:	2b01      	cmp	r3, #1
            config = GPIO_CR_MODE_INPUT + GPIO_CR_CNF_INPUT_PU_PD;
 8000794:	f04f 0308 	mov.w	r3, #8
          else if (GPIO_Init->Pull == GPIO_PULLUP)
 8000798:	d003      	beq.n	80007a2 <HAL_GPIO_Init+0xae>
            GPIOx->BRR = ioposition;
 800079a:	6145      	str	r5, [r0, #20]
 800079c:	e004      	b.n	80007a8 <HAL_GPIO_Init+0xb4>
            config = GPIO_CR_MODE_INPUT + GPIO_CR_CNF_INPUT_FLOATING;
 800079e:	2304      	movs	r3, #4
 80007a0:	e002      	b.n	80007a8 <HAL_GPIO_Init+0xb4>
            GPIOx->BSRR = ioposition;
 80007a2:	6105      	str	r5, [r0, #16]
 80007a4:	e000      	b.n	80007a8 <HAL_GPIO_Init+0xb4>
          config = GPIO_CR_MODE_INPUT + GPIO_CR_CNF_ANALOG;
 80007a6:	2300      	movs	r3, #0
      configregister = (iocurrent < GPIO_PIN_8) ? &GPIOx->CRL     : &GPIOx->CRH;
 80007a8:	2aff      	cmp	r2, #255	; 0xff
 80007aa:	d801      	bhi.n	80007b0 <HAL_GPIO_Init+0xbc>
 80007ac:	4606      	mov	r6, r0
 80007ae:	e001      	b.n	80007b4 <HAL_GPIO_Init+0xc0>
 80007b0:	f100 0604 	add.w	r6, r0, #4
 80007b4:	ea4f 0584 	mov.w	r5, r4, lsl #2
      registeroffset = (iocurrent < GPIO_PIN_8) ? (position << 2u) : ((position - 8u) << 2u);
 80007b8:	d901      	bls.n	80007be <HAL_GPIO_Init+0xca>
 80007ba:	f1a5 0520 	sub.w	r5, r5, #32
      MODIFY_REG((*configregister), ((GPIO_CRL_MODE0 | GPIO_CRL_CNF0) << registeroffset), (config << registeroffset));
 80007be:	f8d6 8000 	ldr.w	r8, [r6]
 80007c2:	fa07 fc05 	lsl.w	ip, r7, r5
 80007c6:	ea28 080c 	bic.w	r8, r8, ip
 80007ca:	fa03 f505 	lsl.w	r5, r3, r5
 80007ce:	ea48 0805 	orr.w	r8, r8, r5
 80007d2:	f8c6 8000 	str.w	r8, [r6]
      if ((GPIO_Init->Mode & EXTI_MODE) == EXTI_MODE)
 80007d6:	684d      	ldr	r5, [r1, #4]
 80007d8:	00ed      	lsls	r5, r5, #3
 80007da:	d562      	bpl.n	80008a2 <HAL_GPIO_Init+0x1ae>
        __HAL_RCC_AFIO_CLK_ENABLE();
 80007dc:	4d37      	ldr	r5, [pc, #220]	; (80008bc <HAL_GPIO_Init+0x1c8>)
 80007de:	69ae      	ldr	r6, [r5, #24]
 80007e0:	f046 0601 	orr.w	r6, r6, #1
 80007e4:	61ae      	str	r6, [r5, #24]
 80007e6:	69ad      	ldr	r5, [r5, #24]
        temp = AFIO->EXTICR[position >> 2u];
 80007e8:	f024 0603 	bic.w	r6, r4, #3
        __HAL_RCC_AFIO_CLK_ENABLE();
 80007ec:	f005 0501 	and.w	r5, r5, #1
        temp = AFIO->EXTICR[position >> 2u];
 80007f0:	9500      	str	r5, [sp, #0]
 80007f2:	4d33      	ldr	r5, [pc, #204]	; (80008c0 <HAL_GPIO_Init+0x1cc>)
 80007f4:	eb06 0c05 	add.w	ip, r6, r5
 80007f8:	f8dc 5008 	ldr.w	r5, [ip, #8]
        CLEAR_BIT(temp, (0x0Fu) << (4u * (position & 0x03u)));
 80007fc:	07a6      	lsls	r6, r4, #30
 80007fe:	0f36      	lsrs	r6, r6, #28
 8000800:	fa07 f806 	lsl.w	r8, r7, r6
 8000804:	ea25 0508 	bic.w	r5, r5, r8
        SET_BIT(temp, (GPIO_GET_INDEX(GPIOx)) << (4u * (position & 0x03u)));
 8000808:	f8df 80b8 	ldr.w	r8, [pc, #184]	; 80008c4 <HAL_GPIO_Init+0x1d0>
 800080c:	4540      	cmp	r0, r8
 800080e:	d103      	bne.n	8000818 <HAL_GPIO_Init+0x124>
 8000810:	f04f 0800 	mov.w	r8, #0
 8000814:	e017      	b.n	8000846 <HAL_GPIO_Init+0x152>
 8000816:	e044      	b.n	80008a2 <HAL_GPIO_Init+0x1ae>
 8000818:	f8df 80ac 	ldr.w	r8, [pc, #172]	; 80008c8 <HAL_GPIO_Init+0x1d4>
 800081c:	4540      	cmp	r0, r8
 800081e:	d102      	bne.n	8000826 <HAL_GPIO_Init+0x132>
 8000820:	f04f 0801 	mov.w	r8, #1
 8000824:	e00f      	b.n	8000846 <HAL_GPIO_Init+0x152>
 8000826:	f8df 80a4 	ldr.w	r8, [pc, #164]	; 80008cc <HAL_GPIO_Init+0x1d8>
 800082a:	4540      	cmp	r0, r8
 800082c:	d102      	bne.n	8000834 <HAL_GPIO_Init+0x140>
 800082e:	f04f 0802 	mov.w	r8, #2
 8000832:	e008      	b.n	8000846 <HAL_GPIO_Init+0x152>
 8000834:	f8df 8098 	ldr.w	r8, [pc, #152]	; 80008d0 <HAL_GPIO_Init+0x1dc>
 8000838:	4540      	cmp	r0, r8
 800083a:	d102      	bne.n	8000842 <HAL_GPIO_Init+0x14e>
 800083c:	f04f 0803 	mov.w	r8, #3
 8000840:	e001      	b.n	8000846 <HAL_GPIO_Init+0x152>
 8000842:	f04f 0804 	mov.w	r8, #4
 8000846:	fa08 f806 	lsl.w	r8, r8, r6
 800084a:	ea48 0805 	orr.w	r8, r8, r5
        AFIO->EXTICR[position >> 2u] = temp;
 800084e:	f8cc 8008 	str.w	r8, [ip, #8]
        if ((GPIO_Init->Mode & RISING_EDGE) == RISING_EDGE)
 8000852:	684d      	ldr	r5, [r1, #4]
          CLEAR_BIT(EXTI->RTSR, iocurrent);
 8000854:	f8d9 6000 	ldr.w	r6, [r9]
        if ((GPIO_Init->Mode & RISING_EDGE) == RISING_EDGE)
 8000858:	02ed      	lsls	r5, r5, #11
          CLEAR_BIT(EXTI->RTSR, iocurrent);
 800085a:	464d      	mov	r5, r9
        if ((GPIO_Init->Mode & RISING_EDGE) == RISING_EDGE)
 800085c:	d501      	bpl.n	8000862 <HAL_GPIO_Init+0x16e>
          SET_BIT(EXTI->RTSR, iocurrent);
 800085e:	4316      	orrs	r6, r2
 8000860:	e000      	b.n	8000864 <HAL_GPIO_Init+0x170>
          CLEAR_BIT(EXTI->RTSR, iocurrent);
 8000862:	4396      	bics	r6, r2
 8000864:	602e      	str	r6, [r5, #0]
        if ((GPIO_Init->Mode & FALLING_EDGE) == FALLING_EDGE)
 8000866:	684d      	ldr	r5, [r1, #4]
          CLEAR_BIT(EXTI->FTSR, iocurrent);
 8000868:	f8da 6000 	ldr.w	r6, [sl]
        if ((GPIO_Init->Mode & FALLING_EDGE) == FALLING_EDGE)
 800086c:	02ad      	lsls	r5, r5, #10
          CLEAR_BIT(EXTI->FTSR, iocurrent);
 800086e:	4655      	mov	r5, sl
 8000870:	d501      	bpl.n	8000876 <HAL_GPIO_Init+0x182>
          SET_BIT(EXTI->FTSR, iocurrent);
 8000872:	4316      	orrs	r6, r2
 8000874:	e000      	b.n	8000878 <HAL_GPIO_Init+0x184>
          CLEAR_BIT(EXTI->FTSR, iocurrent);
 8000876:	4396      	bics	r6, r2
 8000878:	602e      	str	r6, [r5, #0]
        if ((GPIO_Init->Mode & GPIO_MODE_EVT) == GPIO_MODE_EVT)
 800087a:	684d      	ldr	r5, [r1, #4]
          CLEAR_BIT(EXTI->EMR, iocurrent);
 800087c:	f8db 6000 	ldr.w	r6, [fp]
        if ((GPIO_Init->Mode & GPIO_MODE_EVT) == GPIO_MODE_EVT)
 8000880:	03ad      	lsls	r5, r5, #14
          CLEAR_BIT(EXTI->EMR, iocurrent);
 8000882:	465d      	mov	r5, fp
 8000884:	d501      	bpl.n	800088a <HAL_GPIO_Init+0x196>
          SET_BIT(EXTI->EMR, iocurrent);
 8000886:	4316      	orrs	r6, r2
 8000888:	e000      	b.n	800088c <HAL_GPIO_Init+0x198>
          CLEAR_BIT(EXTI->EMR, iocurrent);
 800088a:	4396      	bics	r6, r2
 800088c:	602e      	str	r6, [r5, #0]
        if ((GPIO_Init->Mode & GPIO_MODE_IT) == GPIO_MODE_IT)
 800088e:	684d      	ldr	r5, [r1, #4]
        }
        else
        {
          CLEAR_BIT(EXTI->IMR, iocurrent);
 8000890:	f8de 6000 	ldr.w	r6, [lr]
        if ((GPIO_Init->Mode & GPIO_MODE_IT) == GPIO_MODE_IT)
 8000894:	03ed      	lsls	r5, r5, #15
          CLEAR_BIT(EXTI->IMR, iocurrent);
 8000896:	4675      	mov	r5, lr
 8000898:	d501      	bpl.n	800089e <HAL_GPIO_Init+0x1aa>
          SET_BIT(EXTI->IMR, iocurrent);
 800089a:	4316      	orrs	r6, r2
 800089c:	e000      	b.n	80008a0 <HAL_GPIO_Init+0x1ac>
          CLEAR_BIT(EXTI->IMR, iocurrent);
 800089e:	4396      	bics	r6, r2
          SET_BIT(EXTI->IMR, iocurrent);
 80008a0:	602e      	str	r6, [r5, #0]
 80008a2:	1c64      	adds	r4, r4, #1
  while (((GPIO_Init->Pin) >> position) != 0x00u)
 80008a4:	680d      	ldr	r5, [r1, #0]
 80008a6:	462a      	mov	r2, r5
 80008a8:	40e5      	lsrs	r5, r4
 80008aa:	f47f af31 	bne.w	8000710 <HAL_GPIO_Init+0x1c>
      }
    }

	position++;
  }
}
 80008ae:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80008b2:	0000      	.short	0x0000
 80008b4:	40010408 	.word	0x40010408
 80008b8:	10110000 	.word	0x10110000
 80008bc:	40021000 	.word	0x40021000
 80008c0:	40010000 	.word	0x40010000
 80008c4:	40010800 	.word	0x40010800
 80008c8:	40010c00 	.word	0x40010c00
 80008cc:	40011000 	.word	0x40011000
 80008d0:	40011400 	.word	0x40011400

080008d4 <HAL_GPIO_WritePin>:
  *            @arg GPIO_PIN_RESET: to clear the port pin
  *            @arg GPIO_PIN_SET: to set the port pin
  * @retval None
  */
void HAL_GPIO_WritePin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin, GPIO_PinState PinState)
{
 80008d4:	b10a      	cbz	r2, 80008da <HAL_GPIO_WritePin+0x6>
  assert_param(IS_GPIO_PIN(GPIO_Pin));
  assert_param(IS_GPIO_PIN_ACTION(PinState));

  if (PinState != GPIO_PIN_RESET)
  {
    GPIOx->BSRR = GPIO_Pin;
 80008d6:	6101      	str	r1, [r0, #16]
  }
  else
  {
    GPIOx->BSRR = (uint32_t)GPIO_Pin << 16u;
  }
}
 80008d8:	4770      	bx	lr
    GPIOx->BSRR = (uint32_t)GPIO_Pin << 16u;
 80008da:	0409      	lsls	r1, r1, #16
 80008dc:	e7fb      	b.n	80008d6 <HAL_GPIO_WritePin+0x2>
	...

080008e0 <HAL_GetTick>:
  *       implementations in user file.
  * @retval tick value
  */
__weak uint32_t HAL_GetTick(void)
{
  return uwTick;
 80008e0:	4801      	ldr	r0, [pc, #4]	; (80008e8 <HAL_GetTick+0x8>)
 80008e2:	6880      	ldr	r0, [r0, #8]
}
 80008e4:	4770      	bx	lr
 80008e6:	0000      	.short	0x0000
 80008e8:	20000018 	.word	0x20000018

080008ec <HAL_IncTick>:
  uwTick += uwTickFreq;
 80008ec:	4802      	ldr	r0, [pc, #8]	; (80008f8 <HAL_IncTick+0xc>)
 80008ee:	6881      	ldr	r1, [r0, #8]
 80008f0:	7802      	ldrb	r2, [r0, #0]
 80008f2:	4411      	add	r1, r2
 80008f4:	6081      	str	r1, [r0, #8]
}
 80008f6:	4770      	bx	lr
 80008f8:	20000018 	.word	0x20000018

080008fc <HAL_Init>:
  __HAL_FLASH_PREFETCH_BUFFER_ENABLE();
 80008fc:	4807      	ldr	r0, [pc, #28]	; (800091c <HAL_Init+0x20>)
{
 80008fe:	b510      	push	{r4, lr}
  __HAL_FLASH_PREFETCH_BUFFER_ENABLE();
 8000900:	6801      	ldr	r1, [r0, #0]
 8000902:	f041 0110 	orr.w	r1, r1, #16
 8000906:	6001      	str	r1, [r0, #0]
  HAL_NVIC_SetPriorityGrouping(NVIC_PRIORITYGROUP_4);
 8000908:	2003      	movs	r0, #3
 800090a:	f000 f87b 	bl	8000a04 <HAL_NVIC_SetPriorityGrouping>
  HAL_InitTick(TICK_INT_PRIORITY);
 800090e:	200f      	movs	r0, #15
 8000910:	f000 f806 	bl	8000920 <HAL_InitTick>
  HAL_MspInit();
 8000914:	f000 f824 	bl	8000960 <HAL_MspInit>
  return HAL_OK;
 8000918:	2000      	movs	r0, #0
}
 800091a:	bd10      	pop	{r4, pc}
 800091c:	40022000 	.word	0x40022000

08000920 <HAL_InitTick>:
{
 8000920:	b570      	push	{r4, r5, r6, lr}
  if (HAL_SYSTICK_Config(SystemCoreClock / (1000U / uwTickFreq)) > 0U)
 8000922:	4d0d      	ldr	r5, [pc, #52]	; (8000958 <HAL_InitTick+0x38>)
{
 8000924:	4604      	mov	r4, r0
  if (HAL_SYSTICK_Config(SystemCoreClock / (1000U / uwTickFreq)) > 0U)
 8000926:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
 800092a:	7828      	ldrb	r0, [r5, #0]
 800092c:	fbb1 f0f0 	udiv	r0, r1, r0
 8000930:	490a      	ldr	r1, [pc, #40]	; (800095c <HAL_InitTick+0x3c>)
 8000932:	6809      	ldr	r1, [r1, #0]
 8000934:	fbb1 f0f0 	udiv	r0, r1, r0
 8000938:	f000 fae2 	bl	8000f00 <HAL_SYSTICK_Config>
 800093c:	b948      	cbnz	r0, 8000952 <HAL_InitTick+0x32>
  if (TickPriority < (1UL << __NVIC_PRIO_BITS))
 800093e:	2c10      	cmp	r4, #16
 8000940:	d207      	bcs.n	8000952 <HAL_InitTick+0x32>
    HAL_NVIC_SetPriority(SysTick_IRQn, TickPriority, 0U);
 8000942:	2200      	movs	r2, #0
 8000944:	4621      	mov	r1, r4
 8000946:	1e50      	subs	r0, r2, #1
 8000948:	f000 f83c 	bl	80009c4 <HAL_NVIC_SetPriority>
  return HAL_OK;
 800094c:	2000      	movs	r0, #0
    uwTickPrio = TickPriority;
 800094e:	606c      	str	r4, [r5, #4]
}
 8000950:	bd70      	pop	{r4, r5, r6, pc}
    return HAL_ERROR;
 8000952:	2001      	movs	r0, #1
}
 8000954:	bd70      	pop	{r4, r5, r6, pc}
 8000956:	0000      	.short	0x0000
 8000958:	20000018 	.word	0x20000018
 800095c:	20000024 	.word	0x20000024

08000960 <HAL_MspInit>:
{
  /* USER CODE BEGIN MspInit 0 */

  /* USER CODE END MspInit 0 */

  __HAL_RCC_AFIO_CLK_ENABLE();
 8000960:	480f      	ldr	r0, [pc, #60]	; (80009a0 <HAL_MspInit+0x40>)
{
 8000962:	b508      	push	{r3, lr}
  __HAL_RCC_AFIO_CLK_ENABLE();
 8000964:	6981      	ldr	r1, [r0, #24]
 8000966:	f041 0101 	orr.w	r1, r1, #1
 800096a:	6181      	str	r1, [r0, #24]
 800096c:	6981      	ldr	r1, [r0, #24]
 800096e:	f001 0101 	and.w	r1, r1, #1
  __HAL_RCC_PWR_CLK_ENABLE();
 8000972:	9100      	str	r1, [sp, #0]
 8000974:	69c1      	ldr	r1, [r0, #28]
 8000976:	f041 5180 	orr.w	r1, r1, #268435456	; 0x10000000
 800097a:	61c1      	str	r1, [r0, #28]
 800097c:	69c0      	ldr	r0, [r0, #28]

  /* System interrupt init*/
  /* PendSV_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(PendSV_IRQn, 15, 0);
 800097e:	2200      	movs	r2, #0
  __HAL_RCC_PWR_CLK_ENABLE();
 8000980:	f000 5080 	and.w	r0, r0, #268435456	; 0x10000000
  HAL_NVIC_SetPriority(PendSV_IRQn, 15, 0);
 8000984:	9000      	str	r0, [sp, #0]
 8000986:	210f      	movs	r1, #15
 8000988:	1e90      	subs	r0, r2, #2
 800098a:	f000 f81b 	bl	80009c4 <HAL_NVIC_SetPriority>

  /** NOJTAG: JTAG-DP Disabled and SW-DP Enabled
  */
  __HAL_AFIO_REMAP_SWJ_NOJTAG();
 800098e:	4805      	ldr	r0, [pc, #20]	; (80009a4 <HAL_MspInit+0x44>)
 8000990:	6841      	ldr	r1, [r0, #4]
 8000992:	f021 61e0 	bic.w	r1, r1, #117440512	; 0x7000000
 8000996:	f041 7100 	orr.w	r1, r1, #33554432	; 0x2000000
 800099a:	6041      	str	r1, [r0, #4]

  /* USER CODE BEGIN MspInit 1 */

  /* USER CODE END MspInit 1 */
}
 800099c:	bd08      	pop	{r3, pc}
 800099e:	0000      	.short	0x0000
 80009a0:	40021000 	.word	0x40021000
 80009a4:	40010000 	.word	0x40010000

080009a8 <HAL_NVIC_EnableIRQ>:
  \param [in]      IRQn  Device specific interrupt number.
  \note    IRQn must not be negative.
 */
__STATIC_INLINE void __NVIC_EnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
 80009a8:	2800      	cmp	r0, #0
  *         This parameter can be an enumerator of IRQn_Type enumeration
  *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSIS device file (stm32f10xxx.h))
  * @retval None
  */
void HAL_NVIC_EnableIRQ(IRQn_Type IRQn)
{
 80009aa:	db09      	blt.n	80009c0 <HAL_NVIC_EnableIRQ+0x18>
  {
    NVIC->ISER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
 80009ac:	f000 021f 	and.w	r2, r0, #31
 80009b0:	2101      	movs	r1, #1
 80009b2:	4091      	lsls	r1, r2
 80009b4:	0940      	lsrs	r0, r0, #5
 80009b6:	0080      	lsls	r0, r0, #2
 80009b8:	f100 20e0 	add.w	r0, r0, #3758153728	; 0xe000e000
 80009bc:	f8c0 1100 	str.w	r1, [r0, #256]	; 0x100
  /* Check the parameters */
  assert_param(IS_NVIC_DEVICE_IRQ(IRQn));

  /* Enable interrupt */
  NVIC_EnableIRQ(IRQn);
}
 80009c0:	4770      	bx	lr
	...

080009c4 <HAL_NVIC_SetPriority>:
{ 
 80009c4:	b4f0      	push	{r4, r5, r6, r7}
  return ((uint32_t)((SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) >> SCB_AIRCR_PRIGROUP_Pos));
 80009c6:	4b0e      	ldr	r3, [pc, #56]	; (8000a00 <HAL_NVIC_SetPriority+0x3c>)
 80009c8:	681b      	ldr	r3, [r3, #0]
  NVIC_SetPriority(IRQn, NVIC_EncodePriority(prioritygroup, PreemptPriority, SubPriority));
 80009ca:	460c      	mov	r4, r1
 80009cc:	f3c3 2302 	ubfx	r3, r3, #8, #3
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);   /* only values 0..7 are used          */
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(__NVIC_PRIO_BITS)) ? (uint32_t)(__NVIC_PRIO_BITS) : (uint32_t)(7UL - PriorityGroupTmp);
 80009d0:	f1c3 0507 	rsb	r5, r3, #7
 80009d4:	2d04      	cmp	r5, #4
{ 
 80009d6:	d900      	bls.n	80009da <HAL_NVIC_SetPriority+0x16>
 80009d8:	2504      	movs	r5, #4
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(__NVIC_PRIO_BITS)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(__NVIC_PRIO_BITS));
 80009da:	1d19      	adds	r1, r3, #4
 80009dc:	2907      	cmp	r1, #7
 80009de:	d201      	bcs.n	80009e4 <HAL_NVIC_SetPriority+0x20>
 80009e0:	2300      	movs	r3, #0
 80009e2:	e000      	b.n	80009e6 <HAL_NVIC_SetPriority+0x22>
 80009e4:	1edb      	subs	r3, r3, #3

  return (
 80009e6:	2601      	movs	r6, #1
 80009e8:	fa06 f105 	lsl.w	r1, r6, r5
 80009ec:	1e49      	subs	r1, r1, #1
 80009ee:	4021      	ands	r1, r4
 80009f0:	4099      	lsls	r1, r3
 80009f2:	409e      	lsls	r6, r3
 80009f4:	1e76      	subs	r6, r6, #1
 80009f6:	4016      	ands	r6, r2
 80009f8:	4331      	orrs	r1, r6
  NVIC_SetPriority(IRQn, NVIC_EncodePriority(prioritygroup, PreemptPriority, SubPriority));
 80009fa:	bcf0      	pop	{r4, r5, r6, r7}
 80009fc:	f001 b8fb 	b.w	8001bf6 <__NVIC_SetPriority>
 8000a00:	e000ed0c 	.word	0xe000ed0c

08000a04 <HAL_NVIC_SetPriorityGrouping>:
  reg_value  =  SCB->AIRCR;                                                   /* read old register configuration    */
 8000a04:	4906      	ldr	r1, [pc, #24]	; (8000a20 <HAL_NVIC_SetPriorityGrouping+0x1c>)
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);             /* only values 0..7 are used          */
 8000a06:	f000 0207 	and.w	r2, r0, #7
  reg_value  =  SCB->AIRCR;                                                   /* read old register configuration    */
 8000a0a:	6808      	ldr	r0, [r1, #0]
  reg_value &= ~((uint32_t)(SCB_AIRCR_VECTKEY_Msk | SCB_AIRCR_PRIGROUP_Msk)); /* clear bits to change               */
 8000a0c:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 8000a10:	4018      	ands	r0, r3
  reg_value  =  (reg_value                                   |
 8000a12:	ea40 2002 	orr.w	r0, r0, r2, lsl #8
 8000a16:	4a03      	ldr	r2, [pc, #12]	; (8000a24 <HAL_NVIC_SetPriorityGrouping+0x20>)
 8000a18:	4310      	orrs	r0, r2
  SCB->AIRCR =  reg_value;
 8000a1a:	6008      	str	r0, [r1, #0]
}
 8000a1c:	4770      	bx	lr
 8000a1e:	0000      	.short	0x0000
 8000a20:	e000ed0c 	.word	0xe000ed0c
 8000a24:	05fa0000 	.word	0x05fa0000

08000a28 <HAL_RCC_ClockConfig>:
  *         You can use @ref HAL_RCC_GetClockConfig() function to know which clock is
  *         currently used as system clock source.
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_RCC_ClockConfig(RCC_ClkInitTypeDef  *RCC_ClkInitStruct, uint32_t FLatency)
{
 8000a28:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000a2c:	460f      	mov	r7, r1
 8000a2e:	0005      	movs	r5, r0
 8000a30:	d061      	beq.n	8000af6 <HAL_RCC_ClockConfig+0xce>
  must be correctly programmed according to the frequency of the CPU clock
    (HCLK) of the device. */

#if defined(FLASH_ACR_LATENCY)
  /* Increasing the number of wait states because of higher CPU frequency */
  if (FLatency > __HAL_FLASH_GET_LATENCY())
 8000a32:	4e43      	ldr	r6, [pc, #268]	; (8000b40 <HAL_RCC_ClockConfig+0x118>)
 8000a34:	6830      	ldr	r0, [r6, #0]
 8000a36:	f000 0007 	and.w	r0, r0, #7
 8000a3a:	42b8      	cmp	r0, r7
 8000a3c:	d209      	bcs.n	8000a52 <HAL_RCC_ClockConfig+0x2a>
  {
    /* Program the new number of wait states to the LATENCY bits in the FLASH_ACR register */
    __HAL_FLASH_SET_LATENCY(FLatency);
 8000a3e:	6830      	ldr	r0, [r6, #0]
 8000a40:	f020 0007 	bic.w	r0, r0, #7
 8000a44:	4338      	orrs	r0, r7
 8000a46:	6030      	str	r0, [r6, #0]

    /* Check that the new number of wait states is taken into account to access the Flash
    memory by reading the FLASH_ACR register */
    if (__HAL_FLASH_GET_LATENCY() != FLatency)
 8000a48:	6830      	ldr	r0, [r6, #0]
 8000a4a:	f000 0007 	and.w	r0, r0, #7
 8000a4e:	42b8      	cmp	r0, r7
 8000a50:	d151      	bne.n	8000af6 <HAL_RCC_ClockConfig+0xce>
  }
}

#endif /* FLASH_ACR_LATENCY */
/*-------------------------- HCLK Configuration --------------------------*/
if (((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_HCLK) == RCC_CLOCKTYPE_HCLK)
 8000a52:	6828      	ldr	r0, [r5, #0]
  {
    /* Set the highest APBx dividers in order to ensure that we do not go through
    a non-spec phase whatever we decrease or increase HCLK. */
    if (((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK1) == RCC_CLOCKTYPE_PCLK1)
    {
      MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, RCC_HCLK_DIV16);
 8000a54:	4c3b      	ldr	r4, [pc, #236]	; (8000b44 <HAL_RCC_ClockConfig+0x11c>)
if (((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_HCLK) == RCC_CLOCKTYPE_HCLK)
 8000a56:	0781      	lsls	r1, r0, #30
 8000a58:	d512      	bpl.n	8000a80 <HAL_RCC_ClockConfig+0x58>
    if (((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK1) == RCC_CLOCKTYPE_PCLK1)
 8000a5a:	0740      	lsls	r0, r0, #29
 8000a5c:	d503      	bpl.n	8000a66 <HAL_RCC_ClockConfig+0x3e>
      MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, RCC_HCLK_DIV16);
 8000a5e:	6860      	ldr	r0, [r4, #4]
 8000a60:	f440 60e0 	orr.w	r0, r0, #1792	; 0x700
 8000a64:	6060      	str	r0, [r4, #4]
    }

    if (((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK2) == RCC_CLOCKTYPE_PCLK2)
 8000a66:	7828      	ldrb	r0, [r5, #0]
 8000a68:	0700      	lsls	r0, r0, #28
 8000a6a:	d503      	bpl.n	8000a74 <HAL_RCC_ClockConfig+0x4c>
    {
      MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE2, (RCC_HCLK_DIV16 << 3));
 8000a6c:	6860      	ldr	r0, [r4, #4]
 8000a6e:	f440 5060 	orr.w	r0, r0, #14336	; 0x3800
 8000a72:	6060      	str	r0, [r4, #4]
    }

    /* Set the new HCLK clock divider */
    assert_param(IS_RCC_HCLK(RCC_ClkInitStruct->AHBCLKDivider));
    MODIFY_REG(RCC->CFGR, RCC_CFGR_HPRE, RCC_ClkInitStruct->AHBCLKDivider);
 8000a74:	6860      	ldr	r0, [r4, #4]
 8000a76:	68a9      	ldr	r1, [r5, #8]
 8000a78:	f020 00f0 	bic.w	r0, r0, #240	; 0xf0
 8000a7c:	4308      	orrs	r0, r1
 8000a7e:	6060      	str	r0, [r4, #4]
  }

  /*------------------------- SYSCLK Configuration ---------------------------*/
  if (((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_SYSCLK) == RCC_CLOCKTYPE_SYSCLK)
 8000a80:	7828      	ldrb	r0, [r5, #0]
 8000a82:	07c0      	lsls	r0, r0, #31
 8000a84:	d028      	beq.n	8000ad8 <HAL_RCC_ClockConfig+0xb0>
  {
    assert_param(IS_RCC_SYSCLKSOURCE(RCC_ClkInitStruct->SYSCLKSource));

    /* HSE is selected as System Clock Source */
    if (RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_HSE)
 8000a86:	6868      	ldr	r0, [r5, #4]
 8000a88:	2801      	cmp	r0, #1
 8000a8a:	d010      	beq.n	8000aae <HAL_RCC_ClockConfig+0x86>
    }
    /* HSI is selected as System Clock Source */
    else
    {
      /* Check the HSI ready flag */
      if (__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
 8000a8c:	6821      	ldr	r1, [r4, #0]
    else if (RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_PLLCLK)
 8000a8e:	2802      	cmp	r0, #2
 8000a90:	d010      	beq.n	8000ab4 <HAL_RCC_ClockConfig+0x8c>
      if (__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
 8000a92:	0789      	lsls	r1, r1, #30
 8000a94:	2900      	cmp	r1, #0
 8000a96:	da2e      	bge.n	8000af6 <HAL_RCC_ClockConfig+0xce>
      {
        return HAL_ERROR;
      }
    }
    __HAL_RCC_SYSCLK_CONFIG(RCC_ClkInitStruct->SYSCLKSource);
 8000a98:	6861      	ldr	r1, [r4, #4]
 8000a9a:	f021 0103 	bic.w	r1, r1, #3
 8000a9e:	4301      	orrs	r1, r0
 8000aa0:	6061      	str	r1, [r4, #4]

    /* Get Start Tick */
    tickstart = HAL_GetTick();
 8000aa2:	f7ff ff1d 	bl	80008e0 <HAL_GetTick>
 8000aa6:	4680      	mov	r8, r0

    while (__HAL_RCC_GET_SYSCLK_SOURCE() != (RCC_ClkInitStruct->SYSCLKSource << RCC_CFGR_SWS_Pos))
    {
      if ((HAL_GetTick() - tickstart) > CLOCKSWITCH_TIMEOUT_VALUE)
 8000aa8:	f241 3988 	movw	r9, #5000	; 0x1388
    while (__HAL_RCC_GET_SYSCLK_SOURCE() != (RCC_ClkInitStruct->SYSCLKSource << RCC_CFGR_SWS_Pos))
 8000aac:	e00d      	b.n	8000aca <HAL_RCC_ClockConfig+0xa2>
      if (__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
 8000aae:	6821      	ldr	r1, [r4, #0]
 8000ab0:	0389      	lsls	r1, r1, #14
 8000ab2:	e7ef      	b.n	8000a94 <HAL_RCC_ClockConfig+0x6c>
      if (__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) == RESET)
 8000ab4:	0189      	lsls	r1, r1, #6
 8000ab6:	e7ed      	b.n	8000a94 <HAL_RCC_ClockConfig+0x6c>
      if ((HAL_GetTick() - tickstart) > CLOCKSWITCH_TIMEOUT_VALUE)
 8000ab8:	f7ff ff12 	bl	80008e0 <HAL_GetTick>
 8000abc:	eba0 0108 	sub.w	r1, r0, r8
 8000ac0:	4549      	cmp	r1, r9
 8000ac2:	d902      	bls.n	8000aca <HAL_RCC_ClockConfig+0xa2>
      {
        return HAL_TIMEOUT;
 8000ac4:	2003      	movs	r0, #3

  /* Configure the source of time base considering new system clocks settings*/
  HAL_InitTick(uwTickPrio);

  return HAL_OK;
}
 8000ac6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    while (__HAL_RCC_GET_SYSCLK_SOURCE() != (RCC_ClkInitStruct->SYSCLKSource << RCC_CFGR_SWS_Pos))
 8000aca:	6860      	ldr	r0, [r4, #4]
 8000acc:	6869      	ldr	r1, [r5, #4]
 8000ace:	f000 000c 	and.w	r0, r0, #12
 8000ad2:	ebb0 0f81 	cmp.w	r0, r1, lsl #2
 8000ad6:	d1ef      	bne.n	8000ab8 <HAL_RCC_ClockConfig+0x90>
  if (FLatency < __HAL_FLASH_GET_LATENCY())
 8000ad8:	6830      	ldr	r0, [r6, #0]
 8000ada:	f000 0007 	and.w	r0, r0, #7
 8000ade:	42b8      	cmp	r0, r7
 8000ae0:	d90b      	bls.n	8000afa <HAL_RCC_ClockConfig+0xd2>
    __HAL_FLASH_SET_LATENCY(FLatency);
 8000ae2:	6830      	ldr	r0, [r6, #0]
 8000ae4:	f020 0007 	bic.w	r0, r0, #7
 8000ae8:	4338      	orrs	r0, r7
 8000aea:	6030      	str	r0, [r6, #0]
    if (__HAL_FLASH_GET_LATENCY() != FLatency)
 8000aec:	6830      	ldr	r0, [r6, #0]
 8000aee:	f000 0007 	and.w	r0, r0, #7
 8000af2:	42b8      	cmp	r0, r7
 8000af4:	d001      	beq.n	8000afa <HAL_RCC_ClockConfig+0xd2>
    return HAL_ERROR;
 8000af6:	2001      	movs	r0, #1
}
 8000af8:	e7e5      	b.n	8000ac6 <HAL_RCC_ClockConfig+0x9e>
if (((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK1) == RCC_CLOCKTYPE_PCLK1)
 8000afa:	7828      	ldrb	r0, [r5, #0]
 8000afc:	0740      	lsls	r0, r0, #29
 8000afe:	d505      	bpl.n	8000b0c <HAL_RCC_ClockConfig+0xe4>
    MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, RCC_ClkInitStruct->APB1CLKDivider);
 8000b00:	6860      	ldr	r0, [r4, #4]
 8000b02:	68e9      	ldr	r1, [r5, #12]
 8000b04:	f420 60e0 	bic.w	r0, r0, #1792	; 0x700
 8000b08:	4308      	orrs	r0, r1
 8000b0a:	6060      	str	r0, [r4, #4]
  if (((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK2) == RCC_CLOCKTYPE_PCLK2)
 8000b0c:	7828      	ldrb	r0, [r5, #0]
 8000b0e:	0700      	lsls	r0, r0, #28
 8000b10:	d506      	bpl.n	8000b20 <HAL_RCC_ClockConfig+0xf8>
    MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE2, ((RCC_ClkInitStruct->APB2CLKDivider) << 3));
 8000b12:	6860      	ldr	r0, [r4, #4]
 8000b14:	6929      	ldr	r1, [r5, #16]
 8000b16:	f420 5060 	bic.w	r0, r0, #14336	; 0x3800
 8000b1a:	ea40 00c1 	orr.w	r0, r0, r1, lsl #3
 8000b1e:	6060      	str	r0, [r4, #4]
  SystemCoreClock = HAL_RCC_GetSysClockFreq() >> AHBPrescTable[(RCC->CFGR & RCC_CFGR_HPRE) >> RCC_CFGR_HPRE_Pos];
 8000b20:	f000 f838 	bl	8000b94 <HAL_RCC_GetSysClockFreq>
 8000b24:	6861      	ldr	r1, [r4, #4]
 8000b26:	4a08      	ldr	r2, [pc, #32]	; (8000b48 <HAL_RCC_ClockConfig+0x120>)
 8000b28:	f3c1 1103 	ubfx	r1, r1, #4, #4
 8000b2c:	5c51      	ldrb	r1, [r2, r1]
 8000b2e:	40c8      	lsrs	r0, r1
 8000b30:	4906      	ldr	r1, [pc, #24]	; (8000b4c <HAL_RCC_ClockConfig+0x124>)
  HAL_InitTick(uwTickPrio);
 8000b32:	6008      	str	r0, [r1, #0]
 8000b34:	4806      	ldr	r0, [pc, #24]	; (8000b50 <HAL_RCC_ClockConfig+0x128>)
 8000b36:	6800      	ldr	r0, [r0, #0]
 8000b38:	f7ff fef2 	bl	8000920 <HAL_InitTick>
  return HAL_OK;
 8000b3c:	2000      	movs	r0, #0
}
 8000b3e:	e7c2      	b.n	8000ac6 <HAL_RCC_ClockConfig+0x9e>
 8000b40:	40022000 	.word	0x40022000
 8000b44:	40021000 	.word	0x40021000
 8000b48:	08003a9a 	.word	0x08003a9a
 8000b4c:	20000024 	.word	0x20000024
 8000b50:	2000001c 	.word	0x2000001c

08000b54 <HAL_RCC_GetPCLK1Freq>:
  *         and updated within this function
  * @retval HCLK frequency
  */
uint32_t HAL_RCC_GetHCLKFreq(void)
{
  return SystemCoreClock;
 8000b54:	4804      	ldr	r0, [pc, #16]	; (8000b68 <HAL_RCC_GetPCLK1Freq+0x14>)
  * @retval PCLK1 frequency
  */
uint32_t HAL_RCC_GetPCLK1Freq(void)
{
  /* Get HCLK source and Compute PCLK1 frequency ---------------------------*/
  return (HAL_RCC_GetHCLKFreq() >> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE1) >> RCC_CFGR_PPRE1_Pos]);
 8000b56:	4905      	ldr	r1, [pc, #20]	; (8000b6c <HAL_RCC_GetPCLK1Freq+0x18>)
  return SystemCoreClock;
 8000b58:	6800      	ldr	r0, [r0, #0]
  return (HAL_RCC_GetHCLKFreq() >> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE1) >> RCC_CFGR_PPRE1_Pos]);
 8000b5a:	6849      	ldr	r1, [r1, #4]
 8000b5c:	4a04      	ldr	r2, [pc, #16]	; (8000b70 <HAL_RCC_GetPCLK1Freq+0x1c>)
 8000b5e:	f3c1 2102 	ubfx	r1, r1, #8, #3
 8000b62:	5c51      	ldrb	r1, [r2, r1]
 8000b64:	40c8      	lsrs	r0, r1
}
 8000b66:	4770      	bx	lr
 8000b68:	20000024 	.word	0x20000024
 8000b6c:	40021000 	.word	0x40021000
 8000b70:	08003aaa 	.word	0x08003aaa

08000b74 <HAL_RCC_GetPCLK2Freq>:
  return SystemCoreClock;
 8000b74:	4804      	ldr	r0, [pc, #16]	; (8000b88 <HAL_RCC_GetPCLK2Freq+0x14>)
  * @retval PCLK2 frequency
  */
uint32_t HAL_RCC_GetPCLK2Freq(void)
{
  /* Get HCLK source and Compute PCLK2 frequency ---------------------------*/
  return (HAL_RCC_GetHCLKFreq() >> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE2) >> RCC_CFGR_PPRE2_Pos]);
 8000b76:	4905      	ldr	r1, [pc, #20]	; (8000b8c <HAL_RCC_GetPCLK2Freq+0x18>)
  return SystemCoreClock;
 8000b78:	6800      	ldr	r0, [r0, #0]
  return (HAL_RCC_GetHCLKFreq() >> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE2) >> RCC_CFGR_PPRE2_Pos]);
 8000b7a:	6849      	ldr	r1, [r1, #4]
 8000b7c:	4a04      	ldr	r2, [pc, #16]	; (8000b90 <HAL_RCC_GetPCLK2Freq+0x1c>)
 8000b7e:	f3c1 21c2 	ubfx	r1, r1, #11, #3
 8000b82:	5c51      	ldrb	r1, [r2, r1]
 8000b84:	40c8      	lsrs	r0, r1
}
 8000b86:	4770      	bx	lr
 8000b88:	20000024 	.word	0x20000024
 8000b8c:	40021000 	.word	0x40021000
 8000b90:	08003aaa 	.word	0x08003aaa

08000b94 <HAL_RCC_GetSysClockFreq>:
  tmpreg = RCC->CFGR;
 8000b94:	4a0e      	ldr	r2, [pc, #56]	; (8000bd0 <HAL_RCC_GetSysClockFreq+0x3c>)
 8000b96:	6851      	ldr	r1, [r2, #4]
      sysclockfreq = HSE_VALUE;
 8000b98:	480e      	ldr	r0, [pc, #56]	; (8000bd4 <HAL_RCC_GetSysClockFreq+0x40>)
  switch (tmpreg & RCC_CFGR_SWS)
 8000b9a:	f001 030c 	and.w	r3, r1, #12
 8000b9e:	2b04      	cmp	r3, #4
{
 8000ba0:	d011      	beq.n	8000bc6 <HAL_RCC_GetSysClockFreq+0x32>
  switch (tmpreg & RCC_CFGR_SWS)
 8000ba2:	2b08      	cmp	r3, #8
 8000ba4:	d10f      	bne.n	8000bc6 <HAL_RCC_GetSysClockFreq+0x32>
      pllmul = aPLLMULFactorTable[(uint32_t)(tmpreg & RCC_CFGR_PLLMULL) >> RCC_CFGR_PLLMULL_Pos];
 8000ba6:	480c      	ldr	r0, [pc, #48]	; (8000bd8 <HAL_RCC_GetSysClockFreq+0x44>)
 8000ba8:	f3c1 4383 	ubfx	r3, r1, #18, #4
      if ((tmpreg & RCC_CFGR_PLLSRC) != RCC_PLLSOURCE_HSI_DIV2)
 8000bac:	03c9      	lsls	r1, r1, #15
      pllmul = aPLLMULFactorTable[(uint32_t)(tmpreg & RCC_CFGR_PLLMULL) >> RCC_CFGR_PLLMULL_Pos];
 8000bae:	5cc0      	ldrb	r0, [r0, r3]
      if ((tmpreg & RCC_CFGR_PLLSRC) != RCC_PLLSOURCE_HSI_DIV2)
 8000bb0:	d50a      	bpl.n	8000bc8 <HAL_RCC_GetSysClockFreq+0x34>
        prediv = aPredivFactorTable[(uint32_t)(RCC->CFGR & RCC_CFGR_PLLXTPRE) >> RCC_CFGR_PLLXTPRE_Pos];
 8000bb2:	6851      	ldr	r1, [r2, #4]
 8000bb4:	4a08      	ldr	r2, [pc, #32]	; (8000bd8 <HAL_RCC_GetSysClockFreq+0x44>)
 8000bb6:	f3c1 4140 	ubfx	r1, r1, #17, #1
 8000bba:	1e92      	subs	r2, r2, #2
 8000bbc:	5c51      	ldrb	r1, [r2, r1]
        pllclk = (uint32_t)((HSE_VALUE  * pllmul) / prediv);
 8000bbe:	4a05      	ldr	r2, [pc, #20]	; (8000bd4 <HAL_RCC_GetSysClockFreq+0x40>)
 8000bc0:	4350      	muls	r0, r2
 8000bc2:	fbb0 f0f1 	udiv	r0, r0, r1
}
 8000bc6:	4770      	bx	lr
        pllclk = (uint32_t)((HSI_VALUE >> 1) * pllmul);
 8000bc8:	4904      	ldr	r1, [pc, #16]	; (8000bdc <HAL_RCC_GetSysClockFreq+0x48>)
 8000bca:	4348      	muls	r0, r1
}
 8000bcc:	4770      	bx	lr
 8000bce:	0000      	.short	0x0000
 8000bd0:	40021000 	.word	0x40021000
 8000bd4:	007a1200 	.word	0x007a1200
 8000bd8:	08003a8a 	.word	0x08003a8a
 8000bdc:	003d0900 	.word	0x003d0900

08000be0 <HAL_RCC_OscConfig>:
{
 8000be0:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000be4:	0004      	movs	r4, r0
 8000be6:	d070      	beq.n	8000cca <HAL_RCC_OscConfig+0xea>
  if (((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSE) == RCC_OSCILLATORTYPE_HSE)
 8000be8:	7820      	ldrb	r0, [r4, #0]
    if ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_SYSCLKSOURCE_STATUS_HSE)
 8000bea:	4dc0      	ldr	r5, [pc, #768]	; (8000eec <HAL_RCC_OscConfig+0x30c>)
  if (((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSE) == RCC_OSCILLATORTYPE_HSE)
 8000bec:	07c0      	lsls	r0, r0, #31
 8000bee:	d049      	beq.n	8000c84 <HAL_RCC_OscConfig+0xa4>
    if ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_SYSCLKSOURCE_STATUS_HSE)
 8000bf0:	6868      	ldr	r0, [r5, #4]
 8000bf2:	f3c0 0081 	ubfx	r0, r0, #2, #2
 8000bf6:	2801      	cmp	r0, #1
 8000bf8:	d007      	beq.n	8000c0a <HAL_RCC_OscConfig+0x2a>
        || ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_SYSCLKSOURCE_STATUS_PLLCLK) && (__HAL_RCC_GET_PLL_OSCSOURCE() == RCC_PLLSOURCE_HSE)))
 8000bfa:	6868      	ldr	r0, [r5, #4]
 8000bfc:	f3c0 0081 	ubfx	r0, r0, #2, #2
 8000c00:	2802      	cmp	r0, #2
 8000c02:	d109      	bne.n	8000c18 <HAL_RCC_OscConfig+0x38>
 8000c04:	6868      	ldr	r0, [r5, #4]
 8000c06:	03c0      	lsls	r0, r0, #15
 8000c08:	d506      	bpl.n	8000c18 <HAL_RCC_OscConfig+0x38>
      if ((__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET) && (RCC_OscInitStruct->HSEState == RCC_HSE_OFF))
 8000c0a:	6828      	ldr	r0, [r5, #0]
 8000c0c:	0380      	lsls	r0, r0, #14
 8000c0e:	d539      	bpl.n	8000c84 <HAL_RCC_OscConfig+0xa4>
 8000c10:	6860      	ldr	r0, [r4, #4]
 8000c12:	2800      	cmp	r0, #0
 8000c14:	d0e7      	beq.n	8000be6 <HAL_RCC_OscConfig+0x6>
 8000c16:	e035      	b.n	8000c84 <HAL_RCC_OscConfig+0xa4>
      __HAL_RCC_HSE_CONFIG(RCC_OscInitStruct->HSEState);
 8000c18:	6860      	ldr	r0, [r4, #4]
 8000c1a:	f5b0 3f80 	cmp.w	r0, #65536	; 0x10000
 8000c1e:	d00b      	beq.n	8000c38 <HAL_RCC_OscConfig+0x58>
 8000c20:	b110      	cbz	r0, 8000c28 <HAL_RCC_OscConfig+0x48>
 8000c22:	f5b0 2fa0 	cmp.w	r0, #327680	; 0x50000
 8000c26:	d011      	beq.n	8000c4c <HAL_RCC_OscConfig+0x6c>
 8000c28:	6828      	ldr	r0, [r5, #0]
 8000c2a:	f420 3080 	bic.w	r0, r0, #65536	; 0x10000
 8000c2e:	6028      	str	r0, [r5, #0]
 8000c30:	6828      	ldr	r0, [r5, #0]
 8000c32:	f420 2080 	bic.w	r0, r0, #262144	; 0x40000
 8000c36:	e002      	b.n	8000c3e <HAL_RCC_OscConfig+0x5e>
 8000c38:	6828      	ldr	r0, [r5, #0]
 8000c3a:	f440 3080 	orr.w	r0, r0, #65536	; 0x10000
 8000c3e:	6028      	str	r0, [r5, #0]
      if (RCC_OscInitStruct->HSEState != RCC_HSE_OFF)
 8000c40:	6860      	ldr	r0, [r4, #4]
 8000c42:	b190      	cbz	r0, 8000c6a <HAL_RCC_OscConfig+0x8a>
        tickstart = HAL_GetTick();
 8000c44:	f7ff fe4c 	bl	80008e0 <HAL_GetTick>
 8000c48:	4606      	mov	r6, r0
        while (__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
 8000c4a:	e00a      	b.n	8000c62 <HAL_RCC_OscConfig+0x82>
      __HAL_RCC_HSE_CONFIG(RCC_OscInitStruct->HSEState);
 8000c4c:	6828      	ldr	r0, [r5, #0]
 8000c4e:	f440 2080 	orr.w	r0, r0, #262144	; 0x40000
 8000c52:	6028      	str	r0, [r5, #0]
 8000c54:	e7f0      	b.n	8000c38 <HAL_RCC_OscConfig+0x58>
          if ((HAL_GetTick() - tickstart) > HSE_TIMEOUT_VALUE)
 8000c56:	bf00      	nop
 8000c58:	f7ff fe42 	bl	80008e0 <HAL_GetTick>
 8000c5c:	1b80      	subs	r0, r0, r6
 8000c5e:	2864      	cmp	r0, #100	; 0x64
 8000c60:	d873      	bhi.n	8000d4a <HAL_RCC_OscConfig+0x16a>
        while (__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
 8000c62:	6828      	ldr	r0, [r5, #0]
 8000c64:	0380      	lsls	r0, r0, #14
 8000c66:	d5f7      	bpl.n	8000c58 <HAL_RCC_OscConfig+0x78>
 8000c68:	e00c      	b.n	8000c84 <HAL_RCC_OscConfig+0xa4>
        tickstart = HAL_GetTick();
 8000c6a:	f7ff fe39 	bl	80008e0 <HAL_GetTick>
 8000c6e:	4606      	mov	r6, r0
        while (__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET)
 8000c70:	e005      	b.n	8000c7e <HAL_RCC_OscConfig+0x9e>
          if ((HAL_GetTick() - tickstart) > HSE_TIMEOUT_VALUE)
 8000c72:	bf00      	nop
 8000c74:	f7ff fe34 	bl	80008e0 <HAL_GetTick>
 8000c78:	1b80      	subs	r0, r0, r6
 8000c7a:	2864      	cmp	r0, #100	; 0x64
 8000c7c:	d8f0      	bhi.n	8000c60 <HAL_RCC_OscConfig+0x80>
        while (__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET)
 8000c7e:	6828      	ldr	r0, [r5, #0]
 8000c80:	0380      	lsls	r0, r0, #14
 8000c82:	d4f7      	bmi.n	8000c74 <HAL_RCC_OscConfig+0x94>
  if (((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSI) == RCC_OSCILLATORTYPE_HSI)
 8000c84:	7820      	ldrb	r0, [r4, #0]
        __HAL_RCC_HSI_ENABLE();
 8000c86:	4e9a      	ldr	r6, [pc, #616]	; (8000ef0 <HAL_RCC_OscConfig+0x310>)
  if (((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSI) == RCC_OSCILLATORTYPE_HSI)
 8000c88:	0780      	lsls	r0, r0, #30
    return HAL_ERROR;
 8000c8a:	f04f 0901 	mov.w	r9, #1
 8000c8e:	f04f 0800 	mov.w	r8, #0
  if (((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSI) == RCC_OSCILLATORTYPE_HSI)
 8000c92:	d539      	bpl.n	8000d08 <HAL_RCC_OscConfig+0x128>
    if ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_SYSCLKSOURCE_STATUS_HSI)
 8000c94:	6868      	ldr	r0, [r5, #4]
 8000c96:	f010 0f0c 	tst.w	r0, #12
 8000c9a:	d007      	beq.n	8000cac <HAL_RCC_OscConfig+0xcc>
        || ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_SYSCLKSOURCE_STATUS_PLLCLK) && (__HAL_RCC_GET_PLL_OSCSOURCE() == RCC_PLLSOURCE_HSI_DIV2)))
 8000c9c:	6868      	ldr	r0, [r5, #4]
 8000c9e:	f3c0 0081 	ubfx	r0, r0, #2, #2
 8000ca2:	2802      	cmp	r0, #2
 8000ca4:	d109      	bne.n	8000cba <HAL_RCC_OscConfig+0xda>
 8000ca6:	6868      	ldr	r0, [r5, #4]
 8000ca8:	03c0      	lsls	r0, r0, #15
 8000caa:	d406      	bmi.n	8000cba <HAL_RCC_OscConfig+0xda>
      if ((__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET) && (RCC_OscInitStruct->HSIState != RCC_HSI_ON))
 8000cac:	6828      	ldr	r0, [r5, #0]
 8000cae:	0780      	lsls	r0, r0, #30
 8000cb0:	d514      	bpl.n	8000cdc <HAL_RCC_OscConfig+0xfc>
 8000cb2:	6920      	ldr	r0, [r4, #16]
 8000cb4:	2801      	cmp	r0, #1
 8000cb6:	d108      	bne.n	8000cca <HAL_RCC_OscConfig+0xea>
 8000cb8:	e010      	b.n	8000cdc <HAL_RCC_OscConfig+0xfc>
      if (RCC_OscInitStruct->HSIState != RCC_HSI_OFF)
 8000cba:	6920      	ldr	r0, [r4, #16]
 8000cbc:	b1b0      	cbz	r0, 8000cec <HAL_RCC_OscConfig+0x10c>
        __HAL_RCC_HSI_ENABLE();
 8000cbe:	f8c6 9000 	str.w	r9, [r6]
        tickstart = HAL_GetTick();
 8000cc2:	f7ff fe0d 	bl	80008e0 <HAL_GetTick>
 8000cc6:	4607      	mov	r7, r0
        while (__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
 8000cc8:	e005      	b.n	8000cd6 <HAL_RCC_OscConfig+0xf6>
 8000cca:	e10a      	b.n	8000ee2 <HAL_RCC_OscConfig+0x302>
          if ((HAL_GetTick() - tickstart) > HSI_TIMEOUT_VALUE)
 8000ccc:	f7ff fe08 	bl	80008e0 <HAL_GetTick>
 8000cd0:	1bc0      	subs	r0, r0, r7
 8000cd2:	2802      	cmp	r0, #2
 8000cd4:	d8c4      	bhi.n	8000c60 <HAL_RCC_OscConfig+0x80>
        while (__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
 8000cd6:	6828      	ldr	r0, [r5, #0]
 8000cd8:	0780      	lsls	r0, r0, #30
 8000cda:	d5f7      	bpl.n	8000ccc <HAL_RCC_OscConfig+0xec>
        __HAL_RCC_HSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->HSICalibrationValue);
 8000cdc:	6828      	ldr	r0, [r5, #0]
 8000cde:	6961      	ldr	r1, [r4, #20]
 8000ce0:	f020 00f8 	bic.w	r0, r0, #248	; 0xf8
 8000ce4:	ea40 00c1 	orr.w	r0, r0, r1, lsl #3
 8000ce8:	6028      	str	r0, [r5, #0]
 8000cea:	e00d      	b.n	8000d08 <HAL_RCC_OscConfig+0x128>
        __HAL_RCC_HSI_DISABLE();
 8000cec:	f8c6 8000 	str.w	r8, [r6]
        tickstart = HAL_GetTick();
 8000cf0:	f7ff fdf6 	bl	80008e0 <HAL_GetTick>
 8000cf4:	4607      	mov	r7, r0
        while (__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET)
 8000cf6:	e004      	b.n	8000d02 <HAL_RCC_OscConfig+0x122>
          if ((HAL_GetTick() - tickstart) > HSI_TIMEOUT_VALUE)
 8000cf8:	f7ff fdf2 	bl	80008e0 <HAL_GetTick>
 8000cfc:	1bc0      	subs	r0, r0, r7
 8000cfe:	2802      	cmp	r0, #2
 8000d00:	d823      	bhi.n	8000d4a <HAL_RCC_OscConfig+0x16a>
        while (__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET)
 8000d02:	6828      	ldr	r0, [r5, #0]
 8000d04:	0780      	lsls	r0, r0, #30
 8000d06:	d4f7      	bmi.n	8000cf8 <HAL_RCC_OscConfig+0x118>
  if (((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSI) == RCC_OSCILLATORTYPE_LSI)
 8000d08:	7820      	ldrb	r0, [r4, #0]
 8000d0a:	0700      	lsls	r0, r0, #28
 8000d0c:	d52c      	bpl.n	8000d68 <HAL_RCC_OscConfig+0x188>
      __HAL_RCC_LSI_ENABLE();
 8000d0e:	4879      	ldr	r0, [pc, #484]	; (8000ef4 <HAL_RCC_OscConfig+0x314>)
    if (RCC_OscInitStruct->LSIState != RCC_LSI_OFF)
 8000d10:	69a1      	ldr	r1, [r4, #24]
 8000d12:	b1d9      	cbz	r1, 8000d4c <HAL_RCC_OscConfig+0x16c>
      __HAL_RCC_LSI_ENABLE();
 8000d14:	f8c0 9000 	str.w	r9, [r0]
      tickstart = HAL_GetTick();
 8000d18:	f7ff fde2 	bl	80008e0 <HAL_GetTick>
 8000d1c:	4607      	mov	r7, r0
      while (__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) == RESET)
 8000d1e:	e004      	b.n	8000d2a <HAL_RCC_OscConfig+0x14a>
        if ((HAL_GetTick() - tickstart) > LSI_TIMEOUT_VALUE)
 8000d20:	f7ff fdde 	bl	80008e0 <HAL_GetTick>
 8000d24:	1bc0      	subs	r0, r0, r7
 8000d26:	2802      	cmp	r0, #2
 8000d28:	d80f      	bhi.n	8000d4a <HAL_RCC_OscConfig+0x16a>
      while (__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) == RESET)
 8000d2a:	6a68      	ldr	r0, [r5, #36]	; 0x24
 8000d2c:	0780      	lsls	r0, r0, #30
 8000d2e:	d5f7      	bpl.n	8000d20 <HAL_RCC_OscConfig+0x140>
  * @param  mdelay: specifies the delay time length, in milliseconds.
  * @retval None
  */
static void RCC_Delay(uint32_t mdelay)
{
  __IO uint32_t Delay = mdelay * (SystemCoreClock / 8U / 1000U);
 8000d30:	4871      	ldr	r0, [pc, #452]	; (8000ef8 <HAL_RCC_OscConfig+0x318>)
 8000d32:	f44f 51fa 	mov.w	r1, #8000	; 0x1f40
 8000d36:	6800      	ldr	r0, [r0, #0]
 8000d38:	fbb0 f0f1 	udiv	r0, r0, r1
 8000d3c:	9000      	str	r0, [sp, #0]
  do
  {
    __NOP();
 8000d3e:	bf00      	nop
  }
  while (Delay --);
 8000d40:	9800      	ldr	r0, [sp, #0]
 8000d42:	1e41      	subs	r1, r0, #1
 8000d44:	9100      	str	r1, [sp, #0]
 8000d46:	d2fa      	bcs.n	8000d3e <HAL_RCC_OscConfig+0x15e>
 8000d48:	e00e      	b.n	8000d68 <HAL_RCC_OscConfig+0x188>
 8000d4a:	e080      	b.n	8000e4e <HAL_RCC_OscConfig+0x26e>
      __HAL_RCC_LSI_DISABLE();
 8000d4c:	f8c0 8000 	str.w	r8, [r0]
      tickstart = HAL_GetTick();
 8000d50:	f7ff fdc6 	bl	80008e0 <HAL_GetTick>
 8000d54:	4607      	mov	r7, r0
      while (__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) != RESET)
 8000d56:	e004      	b.n	8000d62 <HAL_RCC_OscConfig+0x182>
        if ((HAL_GetTick() - tickstart) > LSI_TIMEOUT_VALUE)
 8000d58:	f7ff fdc2 	bl	80008e0 <HAL_GetTick>
 8000d5c:	1bc0      	subs	r0, r0, r7
 8000d5e:	2802      	cmp	r0, #2
 8000d60:	d875      	bhi.n	8000e4e <HAL_RCC_OscConfig+0x26e>
      while (__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) != RESET)
 8000d62:	6a68      	ldr	r0, [r5, #36]	; 0x24
 8000d64:	0780      	lsls	r0, r0, #30
 8000d66:	d4f7      	bmi.n	8000d58 <HAL_RCC_OscConfig+0x178>
  if (((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSE) == RCC_OSCILLATORTYPE_LSE)
 8000d68:	7820      	ldrb	r0, [r4, #0]
 8000d6a:	0740      	lsls	r0, r0, #29
 8000d6c:	d560      	bpl.n	8000e30 <HAL_RCC_OscConfig+0x250>
    if (__HAL_RCC_PWR_IS_CLK_DISABLED())
 8000d6e:	69e8      	ldr	r0, [r5, #28]
    FlagStatus       pwrclkchanged = RESET;
 8000d70:	2700      	movs	r7, #0
    if (__HAL_RCC_PWR_IS_CLK_DISABLED())
 8000d72:	00c0      	lsls	r0, r0, #3
 8000d74:	d408      	bmi.n	8000d88 <HAL_RCC_OscConfig+0x1a8>
      __HAL_RCC_PWR_CLK_ENABLE();
 8000d76:	69e8      	ldr	r0, [r5, #28]
 8000d78:	f040 5080 	orr.w	r0, r0, #268435456	; 0x10000000
 8000d7c:	61e8      	str	r0, [r5, #28]
 8000d7e:	69e8      	ldr	r0, [r5, #28]
      pwrclkchanged = SET;
 8000d80:	2701      	movs	r7, #1
      __HAL_RCC_PWR_CLK_ENABLE();
 8000d82:	f000 5080 	and.w	r0, r0, #268435456	; 0x10000000
      pwrclkchanged = SET;
 8000d86:	9000      	str	r0, [sp, #0]
    if (HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
 8000d88:	485c      	ldr	r0, [pc, #368]	; (8000efc <HAL_RCC_OscConfig+0x31c>)
 8000d8a:	6801      	ldr	r1, [r0, #0]
 8000d8c:	05c9      	lsls	r1, r1, #23
 8000d8e:	d413      	bmi.n	8000db8 <HAL_RCC_OscConfig+0x1d8>
      SET_BIT(PWR->CR, PWR_CR_DBP);
 8000d90:	6801      	ldr	r1, [r0, #0]
 8000d92:	4683      	mov	fp, r0
 8000d94:	f441 7180 	orr.w	r1, r1, #256	; 0x100
 8000d98:	6001      	str	r1, [r0, #0]
      tickstart = HAL_GetTick();
 8000d9a:	f7ff fda1 	bl	80008e0 <HAL_GetTick>
 8000d9e:	4682      	mov	sl, r0
      while (HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
 8000da0:	e006      	b.n	8000db0 <HAL_RCC_OscConfig+0x1d0>
        if ((HAL_GetTick() - tickstart) > RCC_DBP_TIMEOUT_VALUE)
 8000da2:	bf00      	nop
 8000da4:	f7ff fd9c 	bl	80008e0 <HAL_GetTick>
 8000da8:	eba0 000a 	sub.w	r0, r0, sl
 8000dac:	2864      	cmp	r0, #100	; 0x64
 8000dae:	d84e      	bhi.n	8000e4e <HAL_RCC_OscConfig+0x26e>
      while (HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
 8000db0:	f8db 0000 	ldr.w	r0, [fp]
 8000db4:	05c0      	lsls	r0, r0, #23
 8000db6:	d5f5      	bpl.n	8000da4 <HAL_RCC_OscConfig+0x1c4>
    __HAL_RCC_LSE_CONFIG(RCC_OscInitStruct->LSEState);
 8000db8:	68e0      	ldr	r0, [r4, #12]
 8000dba:	2801      	cmp	r0, #1
 8000dbc:	d00a      	beq.n	8000dd4 <HAL_RCC_OscConfig+0x1f4>
 8000dbe:	b108      	cbz	r0, 8000dc4 <HAL_RCC_OscConfig+0x1e4>
 8000dc0:	2805      	cmp	r0, #5
 8000dc2:	d013      	beq.n	8000dec <HAL_RCC_OscConfig+0x20c>
 8000dc4:	6a28      	ldr	r0, [r5, #32]
 8000dc6:	f020 0001 	bic.w	r0, r0, #1
 8000dca:	6228      	str	r0, [r5, #32]
 8000dcc:	6a28      	ldr	r0, [r5, #32]
 8000dce:	f020 0004 	bic.w	r0, r0, #4
 8000dd2:	e002      	b.n	8000dda <HAL_RCC_OscConfig+0x1fa>
 8000dd4:	6a28      	ldr	r0, [r5, #32]
 8000dd6:	f040 0001 	orr.w	r0, r0, #1
 8000dda:	6228      	str	r0, [r5, #32]
        if ((HAL_GetTick() - tickstart) > RCC_LSE_TIMEOUT_VALUE)
 8000ddc:	68e0      	ldr	r0, [r4, #12]
 8000dde:	f241 3b88 	movw	fp, #5000	; 0x1388
 8000de2:	b198      	cbz	r0, 8000e0c <HAL_RCC_OscConfig+0x22c>
      tickstart = HAL_GetTick();
 8000de4:	f7ff fd7c 	bl	80008e0 <HAL_GetTick>
 8000de8:	4682      	mov	sl, r0
      while (__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) == RESET)
 8000dea:	e00b      	b.n	8000e04 <HAL_RCC_OscConfig+0x224>
    __HAL_RCC_LSE_CONFIG(RCC_OscInitStruct->LSEState);
 8000dec:	6a28      	ldr	r0, [r5, #32]
 8000dee:	f040 0004 	orr.w	r0, r0, #4
 8000df2:	6228      	str	r0, [r5, #32]
 8000df4:	e7ee      	b.n	8000dd4 <HAL_RCC_OscConfig+0x1f4>
        if ((HAL_GetTick() - tickstart) > RCC_LSE_TIMEOUT_VALUE)
 8000df6:	bf00      	nop
 8000df8:	f7ff fd72 	bl	80008e0 <HAL_GetTick>
 8000dfc:	eba0 010a 	sub.w	r1, r0, sl
 8000e00:	4559      	cmp	r1, fp
 8000e02:	d85a      	bhi.n	8000eba <HAL_RCC_OscConfig+0x2da>
      while (__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) == RESET)
 8000e04:	6a28      	ldr	r0, [r5, #32]
 8000e06:	0780      	lsls	r0, r0, #30
 8000e08:	d5f6      	bpl.n	8000df8 <HAL_RCC_OscConfig+0x218>
 8000e0a:	e00c      	b.n	8000e26 <HAL_RCC_OscConfig+0x246>
      tickstart = HAL_GetTick();
 8000e0c:	f7ff fd68 	bl	80008e0 <HAL_GetTick>
 8000e10:	4682      	mov	sl, r0
      while (__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) != RESET)
 8000e12:	e005      	b.n	8000e20 <HAL_RCC_OscConfig+0x240>
        if ((HAL_GetTick() - tickstart) > RCC_LSE_TIMEOUT_VALUE)
 8000e14:	f7ff fd64 	bl	80008e0 <HAL_GetTick>
 8000e18:	eba0 010a 	sub.w	r1, r0, sl
 8000e1c:	4559      	cmp	r1, fp
 8000e1e:	d84c      	bhi.n	8000eba <HAL_RCC_OscConfig+0x2da>
      while (__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) != RESET)
 8000e20:	6a28      	ldr	r0, [r5, #32]
 8000e22:	0780      	lsls	r0, r0, #30
 8000e24:	d4f6      	bmi.n	8000e14 <HAL_RCC_OscConfig+0x234>
    if (pwrclkchanged == SET)
 8000e26:	b11f      	cbz	r7, 8000e30 <HAL_RCC_OscConfig+0x250>
      __HAL_RCC_PWR_CLK_DISABLE();
 8000e28:	69e8      	ldr	r0, [r5, #28]
 8000e2a:	f020 5080 	bic.w	r0, r0, #268435456	; 0x10000000
 8000e2e:	61e8      	str	r0, [r5, #28]
  if ((RCC_OscInitStruct->PLL.PLLState) != RCC_PLL_NONE)
 8000e30:	69e0      	ldr	r0, [r4, #28]
 8000e32:	b388      	cbz	r0, 8000e98 <HAL_RCC_OscConfig+0x2b8>
    if (__HAL_RCC_GET_SYSCLK_SOURCE() != RCC_SYSCLKSOURCE_STATUS_PLLCLK)
 8000e34:	6869      	ldr	r1, [r5, #4]
 8000e36:	f3c1 0181 	ubfx	r1, r1, #2, #2
 8000e3a:	2902      	cmp	r1, #2
 8000e3c:	d044      	beq.n	8000ec8 <HAL_RCC_OscConfig+0x2e8>
      if ((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_ON)
 8000e3e:	2802      	cmp	r0, #2
        __HAL_RCC_PLL_DISABLE();
 8000e40:	f8c6 8060 	str.w	r8, [r6, #96]	; 0x60
      if ((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_ON)
 8000e44:	d004      	beq.n	8000e50 <HAL_RCC_OscConfig+0x270>
        tickstart = HAL_GetTick();
 8000e46:	f7ff fd4b 	bl	80008e0 <HAL_GetTick>
 8000e4a:	4604      	mov	r4, r0
        while (__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY)  != RESET)
 8000e4c:	e038      	b.n	8000ec0 <HAL_RCC_OscConfig+0x2e0>
 8000e4e:	e034      	b.n	8000eba <HAL_RCC_OscConfig+0x2da>
        tickstart = HAL_GetTick();
 8000e50:	f7ff fd46 	bl	80008e0 <HAL_GetTick>
 8000e54:	4607      	mov	r7, r0
        while (__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY)  != RESET)
 8000e56:	e004      	b.n	8000e62 <HAL_RCC_OscConfig+0x282>
          if ((HAL_GetTick() - tickstart) > PLL_TIMEOUT_VALUE)
 8000e58:	f7ff fd42 	bl	80008e0 <HAL_GetTick>
 8000e5c:	1bc0      	subs	r0, r0, r7
 8000e5e:	2802      	cmp	r0, #2
 8000e60:	d82b      	bhi.n	8000eba <HAL_RCC_OscConfig+0x2da>
        while (__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY)  != RESET)
 8000e62:	6828      	ldr	r0, [r5, #0]
 8000e64:	0180      	lsls	r0, r0, #6
 8000e66:	d4f7      	bmi.n	8000e58 <HAL_RCC_OscConfig+0x278>
        if (RCC_OscInitStruct->PLL.PLLSource == RCC_PLLSOURCE_HSE)
 8000e68:	6a20      	ldr	r0, [r4, #32]
 8000e6a:	f5b0 3f80 	cmp.w	r0, #65536	; 0x10000
 8000e6e:	d105      	bne.n	8000e7c <HAL_RCC_OscConfig+0x29c>
          __HAL_RCC_HSE_PREDIV_CONFIG(RCC_OscInitStruct->HSEPredivValue);
 8000e70:	6868      	ldr	r0, [r5, #4]
 8000e72:	68a1      	ldr	r1, [r4, #8]
 8000e74:	f420 3000 	bic.w	r0, r0, #131072	; 0x20000
 8000e78:	4308      	orrs	r0, r1
 8000e7a:	6068      	str	r0, [r5, #4]
 8000e7c:	e9d4 0108 	ldrd	r0, r1, [r4, #32]
        __HAL_RCC_PLL_CONFIG(RCC_OscInitStruct->PLL.PLLSource,
 8000e80:	4308      	orrs	r0, r1
 8000e82:	6869      	ldr	r1, [r5, #4]
 8000e84:	f421 1174 	bic.w	r1, r1, #3997696	; 0x3d0000
 8000e88:	4308      	orrs	r0, r1
 8000e8a:	6068      	str	r0, [r5, #4]
        __HAL_RCC_PLL_ENABLE();
 8000e8c:	f8c6 9060 	str.w	r9, [r6, #96]	; 0x60
        tickstart = HAL_GetTick();
 8000e90:	f7ff fd26 	bl	80008e0 <HAL_GetTick>
 8000e94:	4604      	mov	r4, r0
        while (__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY)  == RESET)
 8000e96:	e006      	b.n	8000ea6 <HAL_RCC_OscConfig+0x2c6>
 8000e98:	e025      	b.n	8000ee6 <HAL_RCC_OscConfig+0x306>
          if ((HAL_GetTick() - tickstart) > PLL_TIMEOUT_VALUE)
 8000e9a:	bf00      	nop
 8000e9c:	f7ff fd20 	bl	80008e0 <HAL_GetTick>
 8000ea0:	1b00      	subs	r0, r0, r4
 8000ea2:	2802      	cmp	r0, #2
 8000ea4:	d809      	bhi.n	8000eba <HAL_RCC_OscConfig+0x2da>
        while (__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY)  == RESET)
 8000ea6:	6828      	ldr	r0, [r5, #0]
 8000ea8:	0180      	lsls	r0, r0, #6
 8000eaa:	d5f7      	bpl.n	8000e9c <HAL_RCC_OscConfig+0x2bc>
 8000eac:	e01b      	b.n	8000ee6 <HAL_RCC_OscConfig+0x306>
          if ((HAL_GetTick() - tickstart) > PLL_TIMEOUT_VALUE)
 8000eae:	bf00      	nop
 8000eb0:	f7ff fd16 	bl	80008e0 <HAL_GetTick>
 8000eb4:	1b00      	subs	r0, r0, r4
 8000eb6:	2802      	cmp	r0, #2
 8000eb8:	d902      	bls.n	8000ec0 <HAL_RCC_OscConfig+0x2e0>
            return HAL_TIMEOUT;
 8000eba:	2003      	movs	r0, #3
}
 8000ebc:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
        while (__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY)  != RESET)
 8000ec0:	6828      	ldr	r0, [r5, #0]
 8000ec2:	0180      	lsls	r0, r0, #6
 8000ec4:	d4f4      	bmi.n	8000eb0 <HAL_RCC_OscConfig+0x2d0>
 8000ec6:	e00e      	b.n	8000ee6 <HAL_RCC_OscConfig+0x306>
      if ((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_OFF)
 8000ec8:	2801      	cmp	r0, #1
 8000eca:	d0f7      	beq.n	8000ebc <HAL_RCC_OscConfig+0x2dc>
        pll_config = RCC->CFGR;
 8000ecc:	6868      	ldr	r0, [r5, #4]
        if ((READ_BIT(pll_config, RCC_CFGR_PLLSRC) != RCC_OscInitStruct->PLL.PLLSource) ||
 8000ece:	6a22      	ldr	r2, [r4, #32]
 8000ed0:	f400 3180 	and.w	r1, r0, #65536	; 0x10000
 8000ed4:	4291      	cmp	r1, r2
 8000ed6:	d104      	bne.n	8000ee2 <HAL_RCC_OscConfig+0x302>
            (READ_BIT(pll_config, RCC_CFGR_PLLMULL) != RCC_OscInitStruct->PLL.PLLMUL))
 8000ed8:	6a61      	ldr	r1, [r4, #36]	; 0x24
 8000eda:	f400 1070 	and.w	r0, r0, #3932160	; 0x3c0000
 8000ede:	4288      	cmp	r0, r1
 8000ee0:	d001      	beq.n	8000ee6 <HAL_RCC_OscConfig+0x306>
          return HAL_ERROR;
 8000ee2:	2001      	movs	r0, #1
}
 8000ee4:	e7ea      	b.n	8000ebc <HAL_RCC_OscConfig+0x2dc>
  return HAL_OK;
 8000ee6:	2000      	movs	r0, #0
}
 8000ee8:	e7e8      	b.n	8000ebc <HAL_RCC_OscConfig+0x2dc>
 8000eea:	0000      	.short	0x0000
 8000eec:	40021000 	.word	0x40021000
 8000ef0:	42420000 	.word	0x42420000
 8000ef4:	42420480 	.word	0x42420480
 8000ef8:	20000024 	.word	0x20000024
 8000efc:	40007000 	.word	0x40007000

08000f00 <HAL_SYSTICK_Config>:
  * @param  TicksNumb: Specifies the ticks Number of ticks between two interrupts.
  * @retval status:  - 0  Function succeeded.
  *                  - 1  Function failed.
  */
uint32_t HAL_SYSTICK_Config(uint32_t TicksNumb)
{
 8000f00:	b510      	push	{r4, lr}
 8000f02:	1e40      	subs	r0, r0, #1
           function <b>SysTick_Config</b> is not included. In this case, the file <b><i>device</i>.h</b>
           must contain a vendor-specific implementation of this function.
 */
__STATIC_INLINE uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1UL) > SysTick_LOAD_RELOAD_Msk)
 8000f04:	f1b0 7f80 	cmp.w	r0, #16777216	; 0x1000000
 8000f08:	d301      	bcc.n	8000f0e <HAL_SYSTICK_Config+0xe>
  {
    return (1UL);                                                   /* Reload value impossible */
 8000f0a:	2001      	movs	r0, #1
   return SysTick_Config(TicksNumb);
}
 8000f0c:	bd10      	pop	{r4, pc}
  }

  SysTick->LOAD  = (uint32_t)(ticks - 1UL);                         /* set reload register */
 8000f0e:	f04f 24e0 	mov.w	r4, #3758153728	; 0xe000e000
 8000f12:	6160      	str	r0, [r4, #20]
  NVIC_SetPriority (SysTick_IRQn, (1UL << __NVIC_PRIO_BITS) - 1UL); /* set Priority for Systick Interrupt */
 8000f14:	210f      	movs	r1, #15
 8000f16:	1760      	asrs	r0, r4, #29
 8000f18:	f000 fe6d 	bl	8001bf6 <__NVIC_SetPriority>
  SysTick->VAL   = 0UL;                                             /* Load the SysTick Counter Value */
 8000f1c:	2000      	movs	r0, #0
 8000f1e:	61a0      	str	r0, [r4, #24]
  SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk |
 8000f20:	2007      	movs	r0, #7
 8000f22:	6120      	str	r0, [r4, #16]
                   SysTick_CTRL_TICKINT_Msk   |
                   SysTick_CTRL_ENABLE_Msk;                         /* Enable SysTick IRQ and SysTick Timer */
  return (0UL);                                                     /* Function successful */
 8000f24:	2000      	movs	r0, #0
 8000f26:	bd10      	pop	{r4, pc}

08000f28 <HAL_TIMEx_BreakCallback>:
  UNUSED(htim);

  /* NOTE : This function should not be modified, when the callback is needed,
            the HAL_TIMEx_BreakCallback could be implemented in the user file
   */
}
 8000f28:	4770      	bx	lr

08000f2a <HAL_TIMEx_CommutCallback>:
}
 8000f2a:	4770      	bx	lr

08000f2c <HAL_TIMEx_MasterConfigSynchronization>:
{
 8000f2c:	b570      	push	{r4, r5, r6, lr}
  __HAL_LOCK(htim);
 8000f2e:	f890 203c 	ldrb.w	r2, [r0, #60]	; 0x3c
 8000f32:	2a01      	cmp	r2, #1
{
 8000f34:	d026      	beq.n	8000f84 <HAL_TIMEx_MasterConfigSynchronization+0x58>
  __HAL_LOCK(htim);
 8000f36:	2401      	movs	r4, #1
 8000f38:	f880 403c 	strb.w	r4, [r0, #60]	; 0x3c
  htim->State = HAL_TIM_STATE_BUSY;
 8000f3c:	2202      	movs	r2, #2
 8000f3e:	f880 203d 	strb.w	r2, [r0, #61]	; 0x3d
  tmpcr2 = htim->Instance->CR2;
 8000f42:	6803      	ldr	r3, [r0, #0]
 8000f44:	685a      	ldr	r2, [r3, #4]
  tmpsmcr = htim->Instance->SMCR;
 8000f46:	689d      	ldr	r5, [r3, #8]
  tmpcr2 &= ~TIM_CR2_MMS;
 8000f48:	f022 0670 	bic.w	r6, r2, #112	; 0x70
  tmpcr2 |=  sMasterConfig->MasterOutputTrigger;
 8000f4c:	680a      	ldr	r2, [r1, #0]
 8000f4e:	4332      	orrs	r2, r6
  htim->Instance->CR2 = tmpcr2;
 8000f50:	605a      	str	r2, [r3, #4]
  if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
 8000f52:	4b0d      	ldr	r3, [pc, #52]	; (8000f88 <HAL_TIMEx_MasterConfigSynchronization+0x5c>)
 8000f54:	6802      	ldr	r2, [r0, #0]
 8000f56:	429a      	cmp	r2, r3
  __HAL_LOCK(htim);
 8000f58:	d008      	beq.n	8000f6c <HAL_TIMEx_MasterConfigSynchronization+0x40>
  if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
 8000f5a:	f1b2 4f80 	cmp.w	r2, #1073741824	; 0x40000000
 8000f5e:	d005      	beq.n	8000f6c <HAL_TIMEx_MasterConfigSynchronization+0x40>
 8000f60:	4b0a      	ldr	r3, [pc, #40]	; (8000f8c <HAL_TIMEx_MasterConfigSynchronization+0x60>)
 8000f62:	429a      	cmp	r2, r3
 8000f64:	d002      	beq.n	8000f6c <HAL_TIMEx_MasterConfigSynchronization+0x40>
 8000f66:	4b0a      	ldr	r3, [pc, #40]	; (8000f90 <HAL_TIMEx_MasterConfigSynchronization+0x64>)
 8000f68:	429a      	cmp	r2, r3
 8000f6a:	d104      	bne.n	8000f76 <HAL_TIMEx_MasterConfigSynchronization+0x4a>
    tmpsmcr |= sMasterConfig->MasterSlaveMode;
 8000f6c:	6849      	ldr	r1, [r1, #4]
    tmpsmcr &= ~TIM_SMCR_MSM;
 8000f6e:	f025 0380 	bic.w	r3, r5, #128	; 0x80
    tmpsmcr |= sMasterConfig->MasterSlaveMode;
 8000f72:	4319      	orrs	r1, r3
    htim->Instance->SMCR = tmpsmcr;
 8000f74:	6091      	str	r1, [r2, #8]
  htim->State = HAL_TIM_STATE_READY;
 8000f76:	f880 403d 	strb.w	r4, [r0, #61]	; 0x3d
  __HAL_UNLOCK(htim);
 8000f7a:	2100      	movs	r1, #0
 8000f7c:	f880 103c 	strb.w	r1, [r0, #60]	; 0x3c
  return HAL_OK;
 8000f80:	4608      	mov	r0, r1
}
 8000f82:	bd70      	pop	{r4, r5, r6, pc}
  __HAL_LOCK(htim);
 8000f84:	2002      	movs	r0, #2
}
 8000f86:	bd70      	pop	{r4, r5, r6, pc}
 8000f88:	40012c00 	.word	0x40012c00
 8000f8c:	40000400 	.word	0x40000400
 8000f90:	40000800 	.word	0x40000800

08000f94 <HAL_TIM_Base_Init>:
  *         Ex: call @ref HAL_TIM_Base_DeInit() before HAL_TIM_Base_Init()
  * @param  htim TIM Base handle
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_TIM_Base_Init(TIM_HandleTypeDef *htim)
{
 8000f94:	b510      	push	{r4, lr}
 8000f96:	0004      	movs	r4, r0
 8000f98:	d003      	beq.n	8000fa2 <HAL_TIM_Base_Init+0xe>
  assert_param(IS_TIM_COUNTER_MODE(htim->Init.CounterMode));
  assert_param(IS_TIM_CLOCKDIVISION_DIV(htim->Init.ClockDivision));
  assert_param(IS_TIM_PERIOD(htim->Init.Period));
  assert_param(IS_TIM_AUTORELOAD_PRELOAD(htim->Init.AutoReloadPreload));

  if (htim->State == HAL_TIM_STATE_RESET)
 8000f9a:	f894 003d 	ldrb.w	r0, [r4, #61]	; 0x3d
 8000f9e:	b110      	cbz	r0, 8000fa6 <HAL_TIM_Base_Init+0x12>
 8000fa0:	e007      	b.n	8000fb2 <HAL_TIM_Base_Init+0x1e>
    return HAL_ERROR;
 8000fa2:	2001      	movs	r0, #1

  /* Initialize the TIM state*/
  htim->State = HAL_TIM_STATE_READY;

  return HAL_OK;
}
 8000fa4:	bd10      	pop	{r4, pc}
    htim->Lock = HAL_UNLOCKED;
 8000fa6:	2000      	movs	r0, #0
 8000fa8:	f884 003c 	strb.w	r0, [r4, #60]	; 0x3c
    HAL_TIM_Base_MspInit(htim);
 8000fac:	4620      	mov	r0, r4
 8000fae:	f000 f81f 	bl	8000ff0 <HAL_TIM_Base_MspInit>
  htim->State = HAL_TIM_STATE_BUSY;
 8000fb2:	2002      	movs	r0, #2
 8000fb4:	f884 003d 	strb.w	r0, [r4, #61]	; 0x3d
  TIM_Base_SetConfig(htim->Instance, &htim->Init);
 8000fb8:	1d21      	adds	r1, r4, #4
 8000fba:	6820      	ldr	r0, [r4, #0]
 8000fbc:	f000 fbd4 	bl	8001768 <TIM_Base_SetConfig>
  htim->DMABurstState = HAL_DMA_BURST_STATE_READY;
 8000fc0:	2001      	movs	r0, #1
 8000fc2:	f884 0046 	strb.w	r0, [r4, #70]	; 0x46
  TIM_CHANNEL_STATE_SET_ALL(htim, HAL_TIM_CHANNEL_STATE_READY);
 8000fc6:	f884 003e 	strb.w	r0, [r4, #62]	; 0x3e
 8000fca:	f884 003f 	strb.w	r0, [r4, #63]	; 0x3f
 8000fce:	f884 0040 	strb.w	r0, [r4, #64]	; 0x40
 8000fd2:	f884 0041 	strb.w	r0, [r4, #65]	; 0x41
  TIM_CHANNEL_N_STATE_SET_ALL(htim, HAL_TIM_CHANNEL_STATE_READY);
 8000fd6:	f884 0042 	strb.w	r0, [r4, #66]	; 0x42
 8000fda:	f884 0043 	strb.w	r0, [r4, #67]	; 0x43
 8000fde:	f884 0044 	strb.w	r0, [r4, #68]	; 0x44
 8000fe2:	f884 0045 	strb.w	r0, [r4, #69]	; 0x45
  htim->State = HAL_TIM_STATE_READY;
 8000fe6:	f884 003d 	strb.w	r0, [r4, #61]	; 0x3d
  return HAL_OK;
 8000fea:	2000      	movs	r0, #0
}
 8000fec:	bd10      	pop	{r4, pc}
	...

08000ff0 <HAL_TIM_Base_MspInit>:
* This function configures the hardware resources used in this example
* @param htim_base: TIM_Base handle pointer
* @retval None
*/
void HAL_TIM_Base_MspInit(TIM_HandleTypeDef* htim_base)
{
 8000ff0:	b508      	push	{r3, lr}
  if(htim_base->Instance==TIM1)
 8000ff2:	4a1a      	ldr	r2, [pc, #104]	; (800105c <HAL_TIM_Base_MspInit+0x6c>)
  {
  /* USER CODE BEGIN TIM1_MspInit 0 */

  /* USER CODE END TIM1_MspInit 0 */
    /* Peripheral clock enable */
    __HAL_RCC_TIM1_CLK_ENABLE();
 8000ff4:	6801      	ldr	r1, [r0, #0]
 8000ff6:	481a      	ldr	r0, [pc, #104]	; (8001060 <HAL_TIM_Base_MspInit+0x70>)
  if(htim_base->Instance==TIM1)
 8000ff8:	4291      	cmp	r1, r2
{
 8000ffa:	d108      	bne.n	800100e <HAL_TIM_Base_MspInit+0x1e>
    __HAL_RCC_TIM1_CLK_ENABLE();
 8000ffc:	6981      	ldr	r1, [r0, #24]
 8000ffe:	f441 6100 	orr.w	r1, r1, #2048	; 0x800
 8001002:	6181      	str	r1, [r0, #24]
 8001004:	6980      	ldr	r0, [r0, #24]
 8001006:	f400 6000 	and.w	r0, r0, #2048	; 0x800
 800100a:	9000      	str	r0, [sp, #0]
  /* USER CODE BEGIN TIM3_MspInit 1 */

  /* USER CODE END TIM3_MspInit 1 */
  }

}
 800100c:	bd08      	pop	{r3, pc}
  else if(htim_base->Instance==TIM2)
 800100e:	f1b1 4f80 	cmp.w	r1, #1073741824	; 0x40000000
 8001012:	d014      	beq.n	800103e <HAL_TIM_Base_MspInit+0x4e>
  else if(htim_base->Instance==TIM3)
 8001014:	4a13      	ldr	r2, [pc, #76]	; (8001064 <HAL_TIM_Base_MspInit+0x74>)
 8001016:	4291      	cmp	r1, r2
 8001018:	d1f8      	bne.n	800100c <HAL_TIM_Base_MspInit+0x1c>
    __HAL_RCC_TIM3_CLK_ENABLE();
 800101a:	69c1      	ldr	r1, [r0, #28]
 800101c:	f041 0102 	orr.w	r1, r1, #2
 8001020:	61c1      	str	r1, [r0, #28]
 8001022:	69c0      	ldr	r0, [r0, #28]
    HAL_NVIC_SetPriority(TIM3_IRQn, 5, 0);
 8001024:	2200      	movs	r2, #0
    __HAL_RCC_TIM3_CLK_ENABLE();
 8001026:	f000 0002 	and.w	r0, r0, #2
    HAL_NVIC_SetPriority(TIM3_IRQn, 5, 0);
 800102a:	9000      	str	r0, [sp, #0]
 800102c:	2105      	movs	r1, #5
 800102e:	201d      	movs	r0, #29
 8001030:	f7ff fcc8 	bl	80009c4 <HAL_NVIC_SetPriority>
    HAL_NVIC_EnableIRQ(TIM3_IRQn);
 8001034:	201d      	movs	r0, #29
 8001036:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800103a:	f7ff bcb5 	b.w	80009a8 <HAL_NVIC_EnableIRQ>
    __HAL_RCC_TIM2_CLK_ENABLE();
 800103e:	69c1      	ldr	r1, [r0, #28]
 8001040:	f041 0101 	orr.w	r1, r1, #1
 8001044:	61c1      	str	r1, [r0, #28]
 8001046:	69c0      	ldr	r0, [r0, #28]
    HAL_NVIC_SetPriority(TIM2_IRQn, 5, 0);
 8001048:	2200      	movs	r2, #0
    __HAL_RCC_TIM2_CLK_ENABLE();
 800104a:	f000 0001 	and.w	r0, r0, #1
    HAL_NVIC_SetPriority(TIM2_IRQn, 5, 0);
 800104e:	9000      	str	r0, [sp, #0]
 8001050:	2105      	movs	r1, #5
 8001052:	201c      	movs	r0, #28
 8001054:	f7ff fcb6 	bl	80009c4 <HAL_NVIC_SetPriority>
    HAL_NVIC_EnableIRQ(TIM2_IRQn);
 8001058:	201c      	movs	r0, #28
 800105a:	e7ec      	b.n	8001036 <HAL_TIM_Base_MspInit+0x46>
 800105c:	40012c00 	.word	0x40012c00
 8001060:	40021000 	.word	0x40021000
 8001064:	40000400 	.word	0x40000400

08001068 <HAL_TIM_Base_Start_IT>:

  /* Check the parameters */
  assert_param(IS_TIM_INSTANCE(htim->Instance));

  /* Check the TIM state */
  if (htim->State != HAL_TIM_STATE_READY)
 8001068:	f890 103d 	ldrb.w	r1, [r0, #61]	; 0x3d
 800106c:	2901      	cmp	r1, #1
{
 800106e:	d001      	beq.n	8001074 <HAL_TIM_Base_Start_IT+0xc>
  {
    return HAL_ERROR;
 8001070:	2001      	movs	r0, #1
    __HAL_TIM_ENABLE(htim);
  }

  /* Return function status */
  return HAL_OK;
}
 8001072:	4770      	bx	lr
  htim->State = HAL_TIM_STATE_BUSY;
 8001074:	2102      	movs	r1, #2
 8001076:	f880 103d 	strb.w	r1, [r0, #61]	; 0x3d
  __HAL_TIM_ENABLE_IT(htim, TIM_IT_UPDATE);
 800107a:	6801      	ldr	r1, [r0, #0]
 800107c:	68ca      	ldr	r2, [r1, #12]
 800107e:	f042 0201 	orr.w	r2, r2, #1
 8001082:	60ca      	str	r2, [r1, #12]
  if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
 8001084:	6800      	ldr	r0, [r0, #0]
 8001086:	490b      	ldr	r1, [pc, #44]	; (80010b4 <HAL_TIM_Base_Start_IT+0x4c>)
 8001088:	4288      	cmp	r0, r1
 800108a:	d008      	beq.n	800109e <HAL_TIM_Base_Start_IT+0x36>
 800108c:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001090:	d005      	beq.n	800109e <HAL_TIM_Base_Start_IT+0x36>
 8001092:	4909      	ldr	r1, [pc, #36]	; (80010b8 <HAL_TIM_Base_Start_IT+0x50>)
 8001094:	4288      	cmp	r0, r1
 8001096:	d002      	beq.n	800109e <HAL_TIM_Base_Start_IT+0x36>
 8001098:	4908      	ldr	r1, [pc, #32]	; (80010bc <HAL_TIM_Base_Start_IT+0x54>)
 800109a:	4288      	cmp	r0, r1
 800109c:	d104      	bne.n	80010a8 <HAL_TIM_Base_Start_IT+0x40>
    tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
 800109e:	6881      	ldr	r1, [r0, #8]
 80010a0:	f001 0107 	and.w	r1, r1, #7
    if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 80010a4:	2906      	cmp	r1, #6
 80010a6:	d003      	beq.n	80010b0 <HAL_TIM_Base_Start_IT+0x48>
      __HAL_TIM_ENABLE(htim);
 80010a8:	6801      	ldr	r1, [r0, #0]
 80010aa:	f041 0101 	orr.w	r1, r1, #1
 80010ae:	6001      	str	r1, [r0, #0]
  return HAL_OK;
 80010b0:	2000      	movs	r0, #0
}
 80010b2:	4770      	bx	lr
 80010b4:	40012c00 	.word	0x40012c00
 80010b8:	40000400 	.word	0x40000400
 80010bc:	40000800 	.word	0x40000800

080010c0 <HAL_TIM_ConfigClockSource>:
  * @param  sClockSourceConfig pointer to a TIM_ClockConfigTypeDef structure that
  *         contains the clock source information for the TIM peripheral.
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_TIM_ConfigClockSource(TIM_HandleTypeDef *htim, const TIM_ClockConfigTypeDef *sClockSourceConfig)
{
 80010c0:	b570      	push	{r4, r5, r6, lr}
 80010c2:	4604      	mov	r4, r0
  HAL_StatusTypeDef status = HAL_OK;
  uint32_t tmpsmcr;

  /* Process Locked */
  __HAL_LOCK(htim);
 80010c4:	f890 003c 	ldrb.w	r0, [r0, #60]	; 0x3c
  HAL_StatusTypeDef status = HAL_OK;
 80010c8:	2500      	movs	r5, #0
  __HAL_LOCK(htim);
 80010ca:	2801      	cmp	r0, #1
{
 80010cc:	d017      	beq.n	80010fe <HAL_TIM_ConfigClockSource+0x3e>
  __HAL_LOCK(htim);
 80010ce:	2601      	movs	r6, #1
 80010d0:	f884 603c 	strb.w	r6, [r4, #60]	; 0x3c

  htim->State = HAL_TIM_STATE_BUSY;
 80010d4:	2002      	movs	r0, #2
 80010d6:	f884 003d 	strb.w	r0, [r4, #61]	; 0x3d

  /* Check the parameters */
  assert_param(IS_TIM_CLOCKSOURCE(sClockSourceConfig->ClockSource));

  /* Reset the SMS, TS, ECE, ETPS and ETRF bits */
  tmpsmcr = htim->Instance->SMCR;
 80010da:	6820      	ldr	r0, [r4, #0]
 80010dc:	6882      	ldr	r2, [r0, #8]
  tmpsmcr &= ~(TIM_SMCR_SMS | TIM_SMCR_TS);
 80010de:	f022 0277 	bic.w	r2, r2, #119	; 0x77
  tmpsmcr &= ~(TIM_SMCR_ETF | TIM_SMCR_ETPS | TIM_SMCR_ECE | TIM_SMCR_ETP);
 80010e2:	f422 427f 	bic.w	r2, r2, #65280	; 0xff00
  htim->Instance->SMCR = tmpsmcr;
 80010e6:	6082      	str	r2, [r0, #8]

  switch (sClockSourceConfig->ClockSource)
 80010e8:	6808      	ldr	r0, [r1, #0]
 80010ea:	2850      	cmp	r0, #80	; 0x50
 80010ec:	d038      	beq.n	8001160 <HAL_TIM_ConfigClockSource+0xa0>
 80010ee:	dc0d      	bgt.n	800110c <HAL_TIM_ConfigClockSource+0x4c>
 80010f0:	2820      	cmp	r0, #32
 80010f2:	d04f      	beq.n	8001194 <HAL_TIM_ConfigClockSource+0xd4>
 80010f4:	dc05      	bgt.n	8001102 <HAL_TIM_ConfigClockSource+0x42>
 80010f6:	b390      	cbz	r0, 800115e <HAL_TIM_ConfigClockSource+0x9e>
 80010f8:	2810      	cmp	r0, #16
 80010fa:	d111      	bne.n	8001120 <HAL_TIM_ConfigClockSource+0x60>
 80010fc:	e04a      	b.n	8001194 <HAL_TIM_ConfigClockSource+0xd4>
  __HAL_LOCK(htim);
 80010fe:	2002      	movs	r0, #2
  htim->State = HAL_TIM_STATE_READY;

  __HAL_UNLOCK(htim);

  return status;
}
 8001100:	bd70      	pop	{r4, r5, r6, pc}
  switch (sClockSourceConfig->ClockSource)
 8001102:	2830      	cmp	r0, #48	; 0x30
 8001104:	d046      	beq.n	8001194 <HAL_TIM_ConfigClockSource+0xd4>
 8001106:	2840      	cmp	r0, #64	; 0x40
 8001108:	d10a      	bne.n	8001120 <HAL_TIM_ConfigClockSource+0x60>
 800110a:	e03b      	b.n	8001184 <HAL_TIM_ConfigClockSource+0xc4>
 800110c:	2860      	cmp	r0, #96	; 0x60
 800110e:	d02f      	beq.n	8001170 <HAL_TIM_ConfigClockSource+0xb0>
 8001110:	2870      	cmp	r0, #112	; 0x70
 8001112:	d00d      	beq.n	8001130 <HAL_TIM_ConfigClockSource+0x70>
 8001114:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8001118:	d003      	beq.n	8001122 <HAL_TIM_ConfigClockSource+0x62>
 800111a:	f5b0 5f00 	cmp.w	r0, #8192	; 0x2000
 800111e:	d012      	beq.n	8001146 <HAL_TIM_ConfigClockSource+0x86>
      status = HAL_ERROR;
 8001120:	2501      	movs	r5, #1
  htim->State = HAL_TIM_STATE_READY;
 8001122:	f884 603d 	strb.w	r6, [r4, #61]	; 0x3d
  __HAL_UNLOCK(htim);
 8001126:	2000      	movs	r0, #0
 8001128:	f884 003c 	strb.w	r0, [r4, #60]	; 0x3c
  return status;
 800112c:	4628      	mov	r0, r5
}
 800112e:	bd70      	pop	{r4, r5, r6, pc}
      TIM_ETR_SetConfig(htim->Instance,
 8001130:	68cb      	ldr	r3, [r1, #12]
 8001132:	e9d1 2101 	ldrd	r2, r1, [r1, #4]
 8001136:	6820      	ldr	r0, [r4, #0]
 8001138:	f000 fb4c 	bl	80017d4 <TIM_ETR_SetConfig>
      tmpsmcr = htim->Instance->SMCR;
 800113c:	6820      	ldr	r0, [r4, #0]
 800113e:	6881      	ldr	r1, [r0, #8]
      tmpsmcr |= (TIM_SLAVEMODE_EXTERNAL1 | TIM_CLOCKSOURCE_ETRMODE1);
 8001140:	f041 0177 	orr.w	r1, r1, #119	; 0x77
      break;
 8001144:	e009      	b.n	800115a <HAL_TIM_ConfigClockSource+0x9a>
      TIM_ETR_SetConfig(htim->Instance,
 8001146:	68cb      	ldr	r3, [r1, #12]
 8001148:	e9d1 2101 	ldrd	r2, r1, [r1, #4]
 800114c:	6820      	ldr	r0, [r4, #0]
 800114e:	f000 fb41 	bl	80017d4 <TIM_ETR_SetConfig>
      htim->Instance->SMCR |= TIM_SMCR_ECE;
 8001152:	6820      	ldr	r0, [r4, #0]
 8001154:	6881      	ldr	r1, [r0, #8]
 8001156:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
      htim->Instance->SMCR = tmpsmcr;
 800115a:	6081      	str	r1, [r0, #8]
 800115c:	e7e1      	b.n	8001122 <HAL_TIM_ConfigClockSource+0x62>
 800115e:	e019      	b.n	8001194 <HAL_TIM_ConfigClockSource+0xd4>
      TIM_TI1_ConfigInputStage(htim->Instance,
 8001160:	68ca      	ldr	r2, [r1, #12]
 8001162:	6849      	ldr	r1, [r1, #4]
 8001164:	6820      	ldr	r0, [r4, #0]
 8001166:	f000 fb8d 	bl	8001884 <TIM_TI1_ConfigInputStage>
      TIM_ITRx_SetConfig(htim->Instance, TIM_CLOCKSOURCE_TI1);
 800116a:	2150      	movs	r1, #80	; 0x50
      break;
 800116c:	6820      	ldr	r0, [r4, #0]
 800116e:	e006      	b.n	800117e <HAL_TIM_ConfigClockSource+0xbe>
      TIM_TI2_ConfigInputStage(htim->Instance,
 8001170:	68ca      	ldr	r2, [r1, #12]
 8001172:	6849      	ldr	r1, [r1, #4]
 8001174:	6820      	ldr	r0, [r4, #0]
 8001176:	f000 fb96 	bl	80018a6 <TIM_TI2_ConfigInputStage>
      TIM_ITRx_SetConfig(htim->Instance, TIM_CLOCKSOURCE_TI2);
 800117a:	2160      	movs	r1, #96	; 0x60
 800117c:	6820      	ldr	r0, [r4, #0]
      TIM_ITRx_SetConfig(htim->Instance, TIM_CLOCKSOURCE_TI1);
 800117e:	f000 fb33 	bl	80017e8 <TIM_ITRx_SetConfig>
 8001182:	e7ce      	b.n	8001122 <HAL_TIM_ConfigClockSource+0x62>
      TIM_TI1_ConfigInputStage(htim->Instance,
 8001184:	68ca      	ldr	r2, [r1, #12]
 8001186:	6849      	ldr	r1, [r1, #4]
 8001188:	6820      	ldr	r0, [r4, #0]
 800118a:	f000 fb7b 	bl	8001884 <TIM_TI1_ConfigInputStage>
      TIM_ITRx_SetConfig(htim->Instance, TIM_CLOCKSOURCE_TI1ED);
 800118e:	2140      	movs	r1, #64	; 0x40
      break;
 8001190:	6820      	ldr	r0, [r4, #0]
 8001192:	e7f4      	b.n	800117e <HAL_TIM_ConfigClockSource+0xbe>
      TIM_ITRx_SetConfig(htim->Instance, sClockSourceConfig->ClockSource);
 8001194:	6822      	ldr	r2, [r4, #0]
 8001196:	4601      	mov	r1, r0
 8001198:	4610      	mov	r0, r2
      break;
 800119a:	e7f0      	b.n	800117e <HAL_TIM_ConfigClockSource+0xbe>

0800119c <HAL_TIM_IC_CaptureCallback>:
  UNUSED(htim);

  /* NOTE : This function should not be modified, when the callback is needed,
            the HAL_TIM_IC_CaptureCallback could be implemented in the user file
   */
}
 800119c:	4770      	bx	lr

0800119e <HAL_TIM_IRQHandler>:
{
 800119e:	b570      	push	{r4, r5, r6, lr}
 80011a0:	4604      	mov	r4, r0
  if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_CC1) != RESET)
 80011a2:	6800      	ldr	r0, [r0, #0]
 80011a4:	6901      	ldr	r1, [r0, #16]
 80011a6:	f04f 0500 	mov.w	r5, #0
 80011aa:	43c9      	mvns	r1, r1
 80011ac:	0789      	lsls	r1, r1, #30
{
 80011ae:	d415      	bmi.n	80011dc <HAL_TIM_IRQHandler+0x3e>
    if (__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_CC1) != RESET)
 80011b0:	68c1      	ldr	r1, [r0, #12]
 80011b2:	43c9      	mvns	r1, r1
 80011b4:	0789      	lsls	r1, r1, #30
 80011b6:	d411      	bmi.n	80011dc <HAL_TIM_IRQHandler+0x3e>
        __HAL_TIM_CLEAR_IT(htim, TIM_IT_CC1);
 80011b8:	1ee9      	subs	r1, r5, #3
 80011ba:	6101      	str	r1, [r0, #16]
        htim->Channel = HAL_TIM_ACTIVE_CHANNEL_1;
 80011bc:	2001      	movs	r0, #1
 80011be:	7720      	strb	r0, [r4, #28]
        if ((htim->Instance->CCMR1 & TIM_CCMR1_CC1S) != 0x00U)
 80011c0:	6820      	ldr	r0, [r4, #0]
 80011c2:	6980      	ldr	r0, [r0, #24]
 80011c4:	0780      	lsls	r0, r0, #30
          HAL_TIM_OC_DelayElapsedCallback(htim);
 80011c6:	4620      	mov	r0, r4
        if ((htim->Instance->CCMR1 & TIM_CCMR1_CC1S) != 0x00U)
 80011c8:	d002      	beq.n	80011d0 <HAL_TIM_IRQHandler+0x32>
          HAL_TIM_IC_CaptureCallback(htim);
 80011ca:	f7ff ffe7 	bl	800119c <HAL_TIM_IC_CaptureCallback>
 80011ce:	e004      	b.n	80011da <HAL_TIM_IRQHandler+0x3c>
          HAL_TIM_OC_DelayElapsedCallback(htim);
 80011d0:	f000 f898 	bl	8001304 <HAL_TIM_OC_DelayElapsedCallback>
          HAL_TIM_PWM_PulseFinishedCallback(htim);
 80011d4:	4620      	mov	r0, r4
 80011d6:	f000 f896 	bl	8001306 <HAL_TIM_PWM_PulseFinishedCallback>
        htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
 80011da:	7725      	strb	r5, [r4, #28]
  if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_CC2) != RESET)
 80011dc:	6820      	ldr	r0, [r4, #0]
 80011de:	6901      	ldr	r1, [r0, #16]
 80011e0:	43c9      	mvns	r1, r1
 80011e2:	0749      	lsls	r1, r1, #29
 80011e4:	d417      	bmi.n	8001216 <HAL_TIM_IRQHandler+0x78>
    if (__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_CC2) != RESET)
 80011e6:	68c1      	ldr	r1, [r0, #12]
 80011e8:	43c9      	mvns	r1, r1
 80011ea:	0749      	lsls	r1, r1, #29
 80011ec:	d413      	bmi.n	8001216 <HAL_TIM_IRQHandler+0x78>
      __HAL_TIM_CLEAR_IT(htim, TIM_IT_CC2);
 80011ee:	f06f 0104 	mvn.w	r1, #4
 80011f2:	6101      	str	r1, [r0, #16]
      htim->Channel = HAL_TIM_ACTIVE_CHANNEL_2;
 80011f4:	2002      	movs	r0, #2
 80011f6:	7720      	strb	r0, [r4, #28]
      if ((htim->Instance->CCMR1 & TIM_CCMR1_CC2S) != 0x00U)
 80011f8:	6820      	ldr	r0, [r4, #0]
 80011fa:	6980      	ldr	r0, [r0, #24]
 80011fc:	f410 7f40 	tst.w	r0, #768	; 0x300
        HAL_TIM_OC_DelayElapsedCallback(htim);
 8001200:	4620      	mov	r0, r4
      if ((htim->Instance->CCMR1 & TIM_CCMR1_CC2S) != 0x00U)
 8001202:	d002      	beq.n	800120a <HAL_TIM_IRQHandler+0x6c>
        HAL_TIM_IC_CaptureCallback(htim);
 8001204:	f7ff ffca 	bl	800119c <HAL_TIM_IC_CaptureCallback>
 8001208:	e004      	b.n	8001214 <HAL_TIM_IRQHandler+0x76>
        HAL_TIM_OC_DelayElapsedCallback(htim);
 800120a:	f000 f87b 	bl	8001304 <HAL_TIM_OC_DelayElapsedCallback>
        HAL_TIM_PWM_PulseFinishedCallback(htim);
 800120e:	4620      	mov	r0, r4
 8001210:	f000 f879 	bl	8001306 <HAL_TIM_PWM_PulseFinishedCallback>
      htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
 8001214:	7725      	strb	r5, [r4, #28]
  if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_CC3) != RESET)
 8001216:	6820      	ldr	r0, [r4, #0]
 8001218:	6901      	ldr	r1, [r0, #16]
 800121a:	43c9      	mvns	r1, r1
 800121c:	0709      	lsls	r1, r1, #28
 800121e:	d416      	bmi.n	800124e <HAL_TIM_IRQHandler+0xb0>
    if (__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_CC3) != RESET)
 8001220:	68c1      	ldr	r1, [r0, #12]
 8001222:	43c9      	mvns	r1, r1
 8001224:	0709      	lsls	r1, r1, #28
 8001226:	d412      	bmi.n	800124e <HAL_TIM_IRQHandler+0xb0>
      __HAL_TIM_CLEAR_IT(htim, TIM_IT_CC3);
 8001228:	f06f 0108 	mvn.w	r1, #8
 800122c:	6101      	str	r1, [r0, #16]
      htim->Channel = HAL_TIM_ACTIVE_CHANNEL_3;
 800122e:	2004      	movs	r0, #4
 8001230:	7720      	strb	r0, [r4, #28]
      if ((htim->Instance->CCMR2 & TIM_CCMR2_CC3S) != 0x00U)
 8001232:	6820      	ldr	r0, [r4, #0]
 8001234:	69c0      	ldr	r0, [r0, #28]
 8001236:	0780      	lsls	r0, r0, #30
        HAL_TIM_OC_DelayElapsedCallback(htim);
 8001238:	4620      	mov	r0, r4
      if ((htim->Instance->CCMR2 & TIM_CCMR2_CC3S) != 0x00U)
 800123a:	d002      	beq.n	8001242 <HAL_TIM_IRQHandler+0xa4>
        HAL_TIM_IC_CaptureCallback(htim);
 800123c:	f7ff ffae 	bl	800119c <HAL_TIM_IC_CaptureCallback>
 8001240:	e004      	b.n	800124c <HAL_TIM_IRQHandler+0xae>
        HAL_TIM_OC_DelayElapsedCallback(htim);
 8001242:	f000 f85f 	bl	8001304 <HAL_TIM_OC_DelayElapsedCallback>
        HAL_TIM_PWM_PulseFinishedCallback(htim);
 8001246:	4620      	mov	r0, r4
 8001248:	f000 f85d 	bl	8001306 <HAL_TIM_PWM_PulseFinishedCallback>
      htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
 800124c:	7725      	strb	r5, [r4, #28]
  if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_CC4) != RESET)
 800124e:	6820      	ldr	r0, [r4, #0]
 8001250:	6901      	ldr	r1, [r0, #16]
 8001252:	43c9      	mvns	r1, r1
 8001254:	06c9      	lsls	r1, r1, #27
 8001256:	d417      	bmi.n	8001288 <HAL_TIM_IRQHandler+0xea>
    if (__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_CC4) != RESET)
 8001258:	68c1      	ldr	r1, [r0, #12]
 800125a:	43c9      	mvns	r1, r1
 800125c:	06c9      	lsls	r1, r1, #27
 800125e:	d413      	bmi.n	8001288 <HAL_TIM_IRQHandler+0xea>
      __HAL_TIM_CLEAR_IT(htim, TIM_IT_CC4);
 8001260:	f06f 0110 	mvn.w	r1, #16
 8001264:	6101      	str	r1, [r0, #16]
      htim->Channel = HAL_TIM_ACTIVE_CHANNEL_4;
 8001266:	2008      	movs	r0, #8
 8001268:	7720      	strb	r0, [r4, #28]
      if ((htim->Instance->CCMR2 & TIM_CCMR2_CC4S) != 0x00U)
 800126a:	6820      	ldr	r0, [r4, #0]
 800126c:	69c0      	ldr	r0, [r0, #28]
 800126e:	f410 7f40 	tst.w	r0, #768	; 0x300
        HAL_TIM_OC_DelayElapsedCallback(htim);
 8001272:	4620      	mov	r0, r4
      if ((htim->Instance->CCMR2 & TIM_CCMR2_CC4S) != 0x00U)
 8001274:	d002      	beq.n	800127c <HAL_TIM_IRQHandler+0xde>
        HAL_TIM_IC_CaptureCallback(htim);
 8001276:	f7ff ff91 	bl	800119c <HAL_TIM_IC_CaptureCallback>
 800127a:	e004      	b.n	8001286 <HAL_TIM_IRQHandler+0xe8>
        HAL_TIM_OC_DelayElapsedCallback(htim);
 800127c:	f000 f842 	bl	8001304 <HAL_TIM_OC_DelayElapsedCallback>
        HAL_TIM_PWM_PulseFinishedCallback(htim);
 8001280:	4620      	mov	r0, r4
 8001282:	f000 f840 	bl	8001306 <HAL_TIM_PWM_PulseFinishedCallback>
      htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
 8001286:	7725      	strb	r5, [r4, #28]
  if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_UPDATE) != RESET)
 8001288:	6820      	ldr	r0, [r4, #0]
 800128a:	6901      	ldr	r1, [r0, #16]
 800128c:	43c9      	mvns	r1, r1
 800128e:	07c9      	lsls	r1, r1, #31
 8001290:	d108      	bne.n	80012a4 <HAL_TIM_IRQHandler+0x106>
    if (__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_UPDATE) != RESET)
 8001292:	68c1      	ldr	r1, [r0, #12]
 8001294:	43c9      	mvns	r1, r1
 8001296:	07c9      	lsls	r1, r1, #31
 8001298:	d104      	bne.n	80012a4 <HAL_TIM_IRQHandler+0x106>
      __HAL_TIM_CLEAR_IT(htim, TIM_IT_UPDATE);
 800129a:	1e89      	subs	r1, r1, #2
 800129c:	6101      	str	r1, [r0, #16]
      HAL_TIM_PeriodElapsedCallback(htim);
 800129e:	4620      	mov	r0, r4
 80012a0:	f000 f832 	bl	8001308 <HAL_TIM_PeriodElapsedCallback>
  if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_BREAK) != RESET)
 80012a4:	6820      	ldr	r0, [r4, #0]
 80012a6:	6901      	ldr	r1, [r0, #16]
 80012a8:	43c9      	mvns	r1, r1
 80012aa:	0609      	lsls	r1, r1, #24
 80012ac:	d409      	bmi.n	80012c2 <HAL_TIM_IRQHandler+0x124>
    if (__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_BREAK) != RESET)
 80012ae:	68c1      	ldr	r1, [r0, #12]
 80012b0:	43c9      	mvns	r1, r1
 80012b2:	0609      	lsls	r1, r1, #24
 80012b4:	d405      	bmi.n	80012c2 <HAL_TIM_IRQHandler+0x124>
      __HAL_TIM_CLEAR_IT(htim, TIM_IT_BREAK);
 80012b6:	f06f 0180 	mvn.w	r1, #128	; 0x80
 80012ba:	6101      	str	r1, [r0, #16]
      HAL_TIMEx_BreakCallback(htim);
 80012bc:	4620      	mov	r0, r4
 80012be:	f7ff fe33 	bl	8000f28 <HAL_TIMEx_BreakCallback>
  if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_TRIGGER) != RESET)
 80012c2:	6820      	ldr	r0, [r4, #0]
 80012c4:	6901      	ldr	r1, [r0, #16]
 80012c6:	43c9      	mvns	r1, r1
 80012c8:	0649      	lsls	r1, r1, #25
 80012ca:	d409      	bmi.n	80012e0 <HAL_TIM_IRQHandler+0x142>
    if (__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_TRIGGER) != RESET)
 80012cc:	68c1      	ldr	r1, [r0, #12]
 80012ce:	43c9      	mvns	r1, r1
 80012d0:	0649      	lsls	r1, r1, #25
 80012d2:	d405      	bmi.n	80012e0 <HAL_TIM_IRQHandler+0x142>
      __HAL_TIM_CLEAR_IT(htim, TIM_IT_TRIGGER);
 80012d4:	f06f 0140 	mvn.w	r1, #64	; 0x40
 80012d8:	6101      	str	r1, [r0, #16]
      HAL_TIM_TriggerCallback(htim);
 80012da:	4620      	mov	r0, r4
 80012dc:	f000 f859 	bl	8001392 <HAL_TIM_TriggerCallback>
  if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_COM) != RESET)
 80012e0:	6820      	ldr	r0, [r4, #0]
 80012e2:	6901      	ldr	r1, [r0, #16]
 80012e4:	43c9      	mvns	r1, r1
 80012e6:	0689      	lsls	r1, r1, #26
 80012e8:	d40b      	bmi.n	8001302 <HAL_TIM_IRQHandler+0x164>
    if (__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_COM) != RESET)
 80012ea:	68c1      	ldr	r1, [r0, #12]
 80012ec:	43c9      	mvns	r1, r1
 80012ee:	0689      	lsls	r1, r1, #26
 80012f0:	d407      	bmi.n	8001302 <HAL_TIM_IRQHandler+0x164>
      __HAL_TIM_CLEAR_IT(htim, TIM_FLAG_COM);
 80012f2:	f06f 0120 	mvn.w	r1, #32
 80012f6:	6101      	str	r1, [r0, #16]
      HAL_TIMEx_CommutCallback(htim);
 80012f8:	4620      	mov	r0, r4
 80012fa:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80012fe:	f7ff be14 	b.w	8000f2a <HAL_TIMEx_CommutCallback>
}
 8001302:	bd70      	pop	{r4, r5, r6, pc}

08001304 <HAL_TIM_OC_DelayElapsedCallback>:
}
 8001304:	4770      	bx	lr

08001306 <HAL_TIM_PWM_PulseFinishedCallback>:
  UNUSED(htim);

  /* NOTE : This function should not be modified, when the callback is needed,
            the HAL_TIM_PWM_PulseFinishedCallback could be implemented in the user file
   */
}
 8001306:	4770      	bx	lr

08001308 <HAL_TIM_PeriodElapsedCallback>:
    return timer_50us;
}

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  if(htim->Instance == TIM1)
 8001308:	6801      	ldr	r1, [r0, #0]
 800130a:	4809      	ldr	r0, [pc, #36]	; (8001330 <HAL_TIM_PeriodElapsedCallback+0x28>)
 800130c:	4281      	cmp	r1, r0
{
 800130e:	d006      	beq.n	800131e <HAL_TIM_PeriodElapsedCallback+0x16>
  {
   // timer1_loop++;
  }
  else if(htim->Instance == TIM3)
 8001310:	4a08      	ldr	r2, [pc, #32]	; (8001334 <HAL_TIM_PeriodElapsedCallback+0x2c>)
  {
    timer1_loop++;
 8001312:	4809      	ldr	r0, [pc, #36]	; (8001338 <HAL_TIM_PeriodElapsedCallback+0x30>)
  else if(htim->Instance == TIM3)
 8001314:	4291      	cmp	r1, r2
 8001316:	d103      	bne.n	8001320 <HAL_TIM_PeriodElapsedCallback+0x18>
    timer1_loop++;
 8001318:	6801      	ldr	r1, [r0, #0]
 800131a:	1c49      	adds	r1, r1, #1
 800131c:	6001      	str	r1, [r0, #0]
  }
  else if(htim->Instance == TIM2)
  {
    timer_50us++;
  }
}
 800131e:	4770      	bx	lr
  else if(htim->Instance == TIM2)
 8001320:	f1b1 4f80 	cmp.w	r1, #1073741824	; 0x40000000
 8001324:	d1fb      	bne.n	800131e <HAL_TIM_PeriodElapsedCallback+0x16>
    timer_50us++;
 8001326:	6841      	ldr	r1, [r0, #4]
 8001328:	1c49      	adds	r1, r1, #1
 800132a:	6041      	str	r1, [r0, #4]
}
 800132c:	4770      	bx	lr
 800132e:	0000      	.short	0x0000
 8001330:	40012c00 	.word	0x40012c00
 8001334:	40000400 	.word	0x40000400
 8001338:	20000004 	.word	0x20000004

0800133c <HAL_TIM_SlaveConfigSynchro>:
{
 800133c:	b570      	push	{r4, r5, r6, lr}
 800133e:	4604      	mov	r4, r0
  __HAL_LOCK(htim);
 8001340:	f890 003c 	ldrb.w	r0, [r0, #60]	; 0x3c
 8001344:	2801      	cmp	r0, #1
{
 8001346:	d012      	beq.n	800136e <HAL_TIM_SlaveConfigSynchro+0x32>
  __HAL_LOCK(htim);
 8001348:	2501      	movs	r5, #1
 800134a:	f884 503c 	strb.w	r5, [r4, #60]	; 0x3c
  htim->State = HAL_TIM_STATE_BUSY;
 800134e:	2002      	movs	r0, #2
 8001350:	f884 003d 	strb.w	r0, [r4, #61]	; 0x3d
  if (TIM_SlaveTimer_SetConfig(htim, sSlaveConfig) != HAL_OK)
 8001354:	4620      	mov	r0, r4
 8001356:	f000 fa4f 	bl	80017f8 <TIM_SlaveTimer_SetConfig>
 800135a:	0001      	movs	r1, r0
 800135c:	f04f 0000 	mov.w	r0, #0
  __HAL_LOCK(htim);
 8001360:	d007      	beq.n	8001372 <HAL_TIM_SlaveConfigSynchro+0x36>
    htim->State = HAL_TIM_STATE_READY;
 8001362:	f884 503d 	strb.w	r5, [r4, #61]	; 0x3d
    __HAL_UNLOCK(htim);
 8001366:	f884 003c 	strb.w	r0, [r4, #60]	; 0x3c
    return HAL_ERROR;
 800136a:	2001      	movs	r0, #1
}
 800136c:	bd70      	pop	{r4, r5, r6, pc}
  __HAL_LOCK(htim);
 800136e:	2002      	movs	r0, #2
}
 8001370:	bd70      	pop	{r4, r5, r6, pc}
  __HAL_TIM_DISABLE_IT(htim, TIM_IT_TRIGGER);
 8001372:	6821      	ldr	r1, [r4, #0]
 8001374:	68ca      	ldr	r2, [r1, #12]
 8001376:	f022 0240 	bic.w	r2, r2, #64	; 0x40
 800137a:	60ca      	str	r2, [r1, #12]
  __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_TRIGGER);
 800137c:	6821      	ldr	r1, [r4, #0]
 800137e:	68ca      	ldr	r2, [r1, #12]
 8001380:	f422 4280 	bic.w	r2, r2, #16384	; 0x4000
 8001384:	60ca      	str	r2, [r1, #12]
  htim->State = HAL_TIM_STATE_READY;
 8001386:	f884 503d 	strb.w	r5, [r4, #61]	; 0x3d
  __HAL_UNLOCK(htim);
 800138a:	f884 003c 	strb.w	r0, [r4, #60]	; 0x3c
  return HAL_OK;
 800138e:	2000      	movs	r0, #0
}
 8001390:	bd70      	pop	{r4, r5, r6, pc}

08001392 <HAL_TIM_TriggerCallback>:
  UNUSED(htim);

  /* NOTE : This function should not be modified, when the callback is needed,
            the HAL_TIM_TriggerCallback could be implemented in the user file
   */
}
 8001392:	4770      	bx	lr

08001394 <HAL_UART_Init>:
  * @param  huart  Pointer to a UART_HandleTypeDef structure that contains
  *                the configuration information for the specified UART module.
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_UART_Init(UART_HandleTypeDef *huart)
{
 8001394:	b570      	push	{r4, r5, r6, lr}
 8001396:	0004      	movs	r4, r0
 8001398:	d004      	beq.n	80013a4 <HAL_UART_Init+0x10>
  assert_param(IS_UART_WORD_LENGTH(huart->Init.WordLength));
#if defined(USART_CR1_OVER8)
  assert_param(IS_UART_OVERSAMPLING(huart->Init.OverSampling));
#endif /* USART_CR1_OVER8 */

  if (huart->gState == HAL_UART_STATE_RESET)
 800139a:	f894 0041 	ldrb.w	r0, [r4, #65]	; 0x41
 800139e:	2500      	movs	r5, #0
  if (huart->Init.HwFlowCtl != UART_HWCONTROL_NONE)
 80013a0:	b110      	cbz	r0, 80013a8 <HAL_UART_Init+0x14>
 80013a2:	e006      	b.n	80013b2 <HAL_UART_Init+0x1e>
    return HAL_ERROR;
 80013a4:	2001      	movs	r0, #1
  huart->gState = HAL_UART_STATE_READY;
  huart->RxState = HAL_UART_STATE_READY;
  huart->RxEventType = HAL_UART_RXEVENT_TC;

  return HAL_OK;
}
 80013a6:	bd70      	pop	{r4, r5, r6, pc}
    huart->Lock = HAL_UNLOCKED;
 80013a8:	f884 5040 	strb.w	r5, [r4, #64]	; 0x40
    HAL_UART_MspInit(huart);
 80013ac:	4620      	mov	r0, r4
 80013ae:	f000 f823 	bl	80013f8 <HAL_UART_MspInit>
  huart->gState = HAL_UART_STATE_BUSY;
 80013b2:	2024      	movs	r0, #36	; 0x24
 80013b4:	f884 0041 	strb.w	r0, [r4, #65]	; 0x41
  __HAL_UART_DISABLE(huart);
 80013b8:	6820      	ldr	r0, [r4, #0]
 80013ba:	68c1      	ldr	r1, [r0, #12]
 80013bc:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80013c0:	60c1      	str	r1, [r0, #12]
  UART_SetConfig(huart);
 80013c2:	4620      	mov	r0, r4
 80013c4:	f000 fa82 	bl	80018cc <UART_SetConfig>
  CLEAR_BIT(huart->Instance->CR2, (USART_CR2_LINEN | USART_CR2_CLKEN));
 80013c8:	6820      	ldr	r0, [r4, #0]
 80013ca:	6901      	ldr	r1, [r0, #16]
 80013cc:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 80013d0:	6101      	str	r1, [r0, #16]
  CLEAR_BIT(huart->Instance->CR3, (USART_CR3_SCEN | USART_CR3_HDSEL | USART_CR3_IREN));
 80013d2:	6820      	ldr	r0, [r4, #0]
 80013d4:	6941      	ldr	r1, [r0, #20]
 80013d6:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 80013da:	6141      	str	r1, [r0, #20]
  __HAL_UART_ENABLE(huart);
 80013dc:	6820      	ldr	r0, [r4, #0]
 80013de:	68c1      	ldr	r1, [r0, #12]
 80013e0:	f441 5100 	orr.w	r1, r1, #8192	; 0x2000
 80013e4:	60c1      	str	r1, [r0, #12]
  huart->ErrorCode = HAL_UART_ERROR_NONE;
 80013e6:	6465      	str	r5, [r4, #68]	; 0x44
  huart->gState = HAL_UART_STATE_READY;
 80013e8:	2020      	movs	r0, #32
 80013ea:	f884 0041 	strb.w	r0, [r4, #65]	; 0x41
  huart->RxState = HAL_UART_STATE_READY;
 80013ee:	f884 0042 	strb.w	r0, [r4, #66]	; 0x42
  huart->RxEventType = HAL_UART_RXEVENT_TC;
 80013f2:	6365      	str	r5, [r4, #52]	; 0x34
  return HAL_OK;
 80013f4:	2000      	movs	r0, #0
}
 80013f6:	bd70      	pop	{r4, r5, r6, pc}

080013f8 <HAL_UART_MspInit>:
* This function configures the hardware resources used in this example
* @param huart: UART handle pointer
* @retval None
*/
void HAL_UART_MspInit(UART_HandleTypeDef* huart)
{
 80013f8:	b530      	push	{r4, r5, lr}
 80013fa:	b085      	sub	sp, #20
  GPIO_InitTypeDef GPIO_InitStruct = {0};
 80013fc:	2400      	movs	r4, #0
 80013fe:	9400      	str	r4, [sp, #0]
 8001400:	9401      	str	r4, [sp, #4]
 8001402:	9402      	str	r4, [sp, #8]
  if(huart->Instance==USART1)
 8001404:	9403      	str	r4, [sp, #12]
 8001406:	6800      	ldr	r0, [r0, #0]
 8001408:	4914      	ldr	r1, [pc, #80]	; (800145c <HAL_UART_MspInit+0x64>)
 800140a:	4288      	cmp	r0, r1
{
 800140c:	d124      	bne.n	8001458 <HAL_UART_MspInit+0x60>
  {
  /* USER CODE BEGIN USART1_MspInit 0 */

  /* USER CODE END USART1_MspInit 0 */
    /* Peripheral clock enable */
    __HAL_RCC_USART1_CLK_ENABLE();
 800140e:	4814      	ldr	r0, [pc, #80]	; (8001460 <HAL_UART_MspInit+0x68>)
 8001410:	6981      	ldr	r1, [r0, #24]
 8001412:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8001416:	6181      	str	r1, [r0, #24]
 8001418:	6981      	ldr	r1, [r0, #24]
 800141a:	f401 4180 	and.w	r1, r1, #16384	; 0x4000

    __HAL_RCC_GPIOA_CLK_ENABLE();
 800141e:	9104      	str	r1, [sp, #16]
 8001420:	6981      	ldr	r1, [r0, #24]
 8001422:	f041 0104 	orr.w	r1, r1, #4
 8001426:	6181      	str	r1, [r0, #24]
 8001428:	6980      	ldr	r0, [r0, #24]
    PA10     ------> USART1_RX
    */
    GPIO_InitStruct.Pin = GPIO_PIN_9;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
 800142a:	4d0e      	ldr	r5, [pc, #56]	; (8001464 <HAL_UART_MspInit+0x6c>)
    __HAL_RCC_GPIOA_CLK_ENABLE();
 800142c:	f000 0004 	and.w	r0, r0, #4
    GPIO_InitStruct.Pin = GPIO_PIN_9;
 8001430:	9004      	str	r0, [sp, #16]
 8001432:	f44f 7000 	mov.w	r0, #512	; 0x200
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
 8001436:	9000      	str	r0, [sp, #0]
 8001438:	2002      	movs	r0, #2
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
 800143a:	9001      	str	r0, [sp, #4]
 800143c:	2003      	movs	r0, #3
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
 800143e:	9003      	str	r0, [sp, #12]
 8001440:	4669      	mov	r1, sp
 8001442:	4628      	mov	r0, r5
 8001444:	f7ff f956 	bl	80006f4 <HAL_GPIO_Init>

    GPIO_InitStruct.Pin = GPIO_PIN_10;
 8001448:	1528      	asrs	r0, r5, #20
 800144a:	e9cd 0400 	strd	r0, r4, [sp]
    GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
 800144e:	4669      	mov	r1, sp
 8001450:	4628      	mov	r0, r5
 8001452:	9402      	str	r4, [sp, #8]
 8001454:	f7ff f94e 	bl	80006f4 <HAL_GPIO_Init>
  /* USER CODE BEGIN USART1_MspInit 1 */

  /* USER CODE END USART1_MspInit 1 */
  }

}
 8001458:	b005      	add	sp, #20
 800145a:	bd30      	pop	{r4, r5, pc}
 800145c:	40013800 	.word	0x40013800
 8001460:	40021000 	.word	0x40021000
 8001464:	40010800 	.word	0x40010800

08001468 <HAL_UART_Transmit>:
  * @param  Size  Amount of data elements (u8 or u16) to be sent
  * @param  Timeout Timeout duration
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_UART_Transmit(UART_HandleTypeDef *huart, const uint8_t *pData, uint16_t Size, uint32_t Timeout)
{
 8001468:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 800146c:	4604      	mov	r4, r0
  const uint8_t  *pdata8bits;
  const uint16_t *pdata16bits;
  uint32_t tickstart = 0U;

  /* Check that a Tx process is not already ongoing */
  if (huart->gState == HAL_UART_STATE_READY)
 800146e:	f890 0041 	ldrb.w	r0, [r0, #65]	; 0x41
{
 8001472:	461f      	mov	r7, r3
 8001474:	4616      	mov	r6, r2
 8001476:	460d      	mov	r5, r1
  if (huart->gState == HAL_UART_STATE_READY)
 8001478:	2820      	cmp	r0, #32
{
 800147a:	d002      	beq.n	8001482 <HAL_UART_Transmit+0x1a>

    return HAL_OK;
  }
  else
  {
    return HAL_BUSY;
 800147c:	2002      	movs	r0, #2
  }
}
 800147e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    if ((pData == NULL) || (Size == 0U))
 8001482:	b17d      	cbz	r5, 80014a4 <HAL_UART_Transmit+0x3c>
 8001484:	b176      	cbz	r6, 80014a4 <HAL_UART_Transmit+0x3c>
    huart->ErrorCode = HAL_UART_ERROR_NONE;
 8001486:	2000      	movs	r0, #0
 8001488:	6460      	str	r0, [r4, #68]	; 0x44
    huart->gState = HAL_UART_STATE_BUSY_TX;
 800148a:	2021      	movs	r0, #33	; 0x21
 800148c:	f884 0041 	strb.w	r0, [r4, #65]	; 0x41
    tickstart = HAL_GetTick();
 8001490:	f7ff fa26 	bl	80008e0 <HAL_GetTick>
    huart->TxXferSize = Size;
 8001494:	84a6      	strh	r6, [r4, #36]	; 0x24
    tickstart = HAL_GetTick();
 8001496:	4680      	mov	r8, r0
    huart->TxXferCount = Size;
 8001498:	84e6      	strh	r6, [r4, #38]	; 0x26
    if ((huart->Init.WordLength == UART_WORDLENGTH_9B) && (huart->Init.Parity == UART_PARITY_NONE))
 800149a:	68a0      	ldr	r0, [r4, #8]
 800149c:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 80014a0:	d002      	beq.n	80014a8 <HAL_UART_Transmit+0x40>
 80014a2:	e003      	b.n	80014ac <HAL_UART_Transmit+0x44>
      return  HAL_ERROR;
 80014a4:	2001      	movs	r0, #1
}
 80014a6:	e7ea      	b.n	800147e <HAL_UART_Transmit+0x16>
    if ((huart->Init.WordLength == UART_WORDLENGTH_9B) && (huart->Init.Parity == UART_PARITY_NONE))
 80014a8:	6920      	ldr	r0, [r4, #16]
 80014aa:	b110      	cbz	r0, 80014b2 <HAL_UART_Transmit+0x4a>
      pdata8bits  = pData;
 80014ac:	462e      	mov	r6, r5
      pdata16bits = NULL;
 80014ae:	2500      	movs	r5, #0
 80014b0:	e00e      	b.n	80014d0 <HAL_UART_Transmit+0x68>
      pdata8bits  = NULL;
 80014b2:	2600      	movs	r6, #0
      pdata16bits = (const uint16_t *) pData;
 80014b4:	e00c      	b.n	80014d0 <HAL_UART_Transmit+0x68>
      if (UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_TXE, RESET, tickstart, Timeout) != HAL_OK)
 80014b6:	2180      	movs	r1, #128	; 0x80
 80014b8:	4620      	mov	r0, r4
 80014ba:	f000 fa63 	bl	8001984 <UART_WaitOnFlagUntilTimeout>
 80014be:	b9a0      	cbnz	r0, 80014ea <HAL_UART_Transmit+0x82>
      if (pdata8bits == NULL)
 80014c0:	b1ae      	cbz	r6, 80014ee <HAL_UART_Transmit+0x86>
        huart->Instance->DR = (uint8_t)(*pdata8bits & 0xFFU);
 80014c2:	f816 0b01 	ldrb.w	r0, [r6], #1
 80014c6:	6821      	ldr	r1, [r4, #0]
 80014c8:	6048      	str	r0, [r1, #4]
      huart->TxXferCount--;
 80014ca:	8ce0      	ldrh	r0, [r4, #38]	; 0x26
 80014cc:	1e40      	subs	r0, r0, #1
 80014ce:	84e0      	strh	r0, [r4, #38]	; 0x26
    while (huart->TxXferCount > 0U)
 80014d0:	8ce0      	ldrh	r0, [r4, #38]	; 0x26
    if (UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_TC, RESET, tickstart, Timeout) != HAL_OK)
 80014d2:	4643      	mov	r3, r8
 80014d4:	f04f 0200 	mov.w	r2, #0
    while (huart->TxXferCount > 0U)
 80014d8:	9700      	str	r7, [sp, #0]
 80014da:	2800      	cmp	r0, #0
 80014dc:	d1eb      	bne.n	80014b6 <HAL_UART_Transmit+0x4e>
    if (UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_TC, RESET, tickstart, Timeout) != HAL_OK)
 80014de:	f04f 0140 	mov.w	r1, #64	; 0x40
 80014e2:	4620      	mov	r0, r4
 80014e4:	f000 fa4e 	bl	8001984 <UART_WaitOnFlagUntilTimeout>
 80014e8:	b130      	cbz	r0, 80014f8 <HAL_UART_Transmit+0x90>
      return HAL_TIMEOUT;
 80014ea:	2003      	movs	r0, #3
}
 80014ec:	e7c7      	b.n	800147e <HAL_UART_Transmit+0x16>
        huart->Instance->DR = (uint16_t)(*pdata16bits & 0x01FFU);
 80014ee:	f835 0b02 	ldrh.w	r0, [r5], #2
 80014f2:	f3c0 0008 	ubfx	r0, r0, #0, #9
        pdata16bits++;
 80014f6:	e7e6      	b.n	80014c6 <HAL_UART_Transmit+0x5e>
    huart->gState = HAL_UART_STATE_READY;
 80014f8:	2020      	movs	r0, #32
 80014fa:	f884 0041 	strb.w	r0, [r4, #65]	; 0x41
    return HAL_OK;
 80014fe:	2000      	movs	r0, #0
}
 8001500:	e7bd      	b.n	800147e <HAL_UART_Transmit+0x16>

08001502 <HardFault_Handler>:
  while (1)
 8001502:	e7fe      	b.n	8001502 <HardFault_Handler>

08001504 <MX_GPIO_Init>:
{
 8001504:	b570      	push	{r4, r5, r6, lr}
 8001506:	b086      	sub	sp, #24
  GPIO_InitTypeDef GPIO_InitStruct = {0};
 8001508:	2400      	movs	r4, #0
  __HAL_RCC_GPIOC_CLK_ENABLE();
 800150a:	4818      	ldr	r0, [pc, #96]	; (800156c <MX_GPIO_Init+0x68>)
  GPIO_InitTypeDef GPIO_InitStruct = {0};
 800150c:	9400      	str	r4, [sp, #0]
 800150e:	9401      	str	r4, [sp, #4]
 8001510:	9402      	str	r4, [sp, #8]
  __HAL_RCC_GPIOC_CLK_ENABLE();
 8001512:	9403      	str	r4, [sp, #12]
 8001514:	6981      	ldr	r1, [r0, #24]
 8001516:	f041 0110 	orr.w	r1, r1, #16
 800151a:	6181      	str	r1, [r0, #24]
 800151c:	6981      	ldr	r1, [r0, #24]
 800151e:	f001 0110 	and.w	r1, r1, #16
  __HAL_RCC_GPIOD_CLK_ENABLE();
 8001522:	9104      	str	r1, [sp, #16]
 8001524:	6981      	ldr	r1, [r0, #24]
 8001526:	f041 0120 	orr.w	r1, r1, #32
 800152a:	6181      	str	r1, [r0, #24]
 800152c:	6981      	ldr	r1, [r0, #24]
 800152e:	f001 0120 	and.w	r1, r1, #32
  __HAL_RCC_GPIOA_CLK_ENABLE();
 8001532:	9104      	str	r1, [sp, #16]
 8001534:	6981      	ldr	r1, [r0, #24]
 8001536:	f041 0104 	orr.w	r1, r1, #4
 800153a:	6181      	str	r1, [r0, #24]
 800153c:	6980      	ldr	r0, [r0, #24]
  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_RESET);
 800153e:	4e0c      	ldr	r6, [pc, #48]	; (8001570 <MX_GPIO_Init+0x6c>)
  __HAL_RCC_GPIOA_CLK_ENABLE();
 8001540:	f000 0004 	and.w	r0, r0, #4
  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_RESET);
 8001544:	f44f 5500 	mov.w	r5, #8192	; 0x2000
 8001548:	9004      	str	r0, [sp, #16]
 800154a:	2200      	movs	r2, #0
 800154c:	4629      	mov	r1, r5
 800154e:	4630      	mov	r0, r6
 8001550:	f7ff f9c0 	bl	80008d4 <HAL_GPIO_WritePin>
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
 8001554:	2001      	movs	r0, #1
 8001556:	9500      	str	r5, [sp, #0]
 8001558:	e9cd 0401 	strd	r0, r4, [sp, #4]
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
 800155c:	2002      	movs	r0, #2
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);
 800155e:	9003      	str	r0, [sp, #12]
 8001560:	4669      	mov	r1, sp
 8001562:	4630      	mov	r0, r6
 8001564:	f7ff f8c6 	bl	80006f4 <HAL_GPIO_Init>
}
 8001568:	b006      	add	sp, #24
 800156a:	bd70      	pop	{r4, r5, r6, pc}
 800156c:	40021000 	.word	0x40021000
 8001570:	40011000 	.word	0x40011000

08001574 <MX_TIM1_Init>:
{
 8001574:	b510      	push	{r4, lr}
 8001576:	b088      	sub	sp, #32
  TIM_SlaveConfigTypeDef sSlaveConfig = {0};
 8001578:	2114      	movs	r1, #20
 800157a:	4668      	mov	r0, sp
 800157c:	f7fe ff88 	bl	8000490 <__rt_memclr_w>
  TIM_MasterConfigTypeDef sMasterConfig = {0};
 8001580:	2400      	movs	r4, #0
  htim1.Instance = TIM1;
 8001582:	4815      	ldr	r0, [pc, #84]	; (80015d8 <MX_TIM1_Init+0x64>)
  TIM_MasterConfigTypeDef sMasterConfig = {0};
 8001584:	9405      	str	r4, [sp, #20]
  htim1.Instance = TIM1;
 8001586:	4913      	ldr	r1, [pc, #76]	; (80015d4 <MX_TIM1_Init+0x60>)
 8001588:	9406      	str	r4, [sp, #24]
 800158a:	e9c0 1400 	strd	r1, r4, [r0]
  htim1.Init.Period = 65535;
 800158e:	f64f 71ff 	movw	r1, #65535	; 0xffff
 8001592:	e9c0 4102 	strd	r4, r1, [r0, #8]
  htim1.Init.RepetitionCounter = 0;
 8001596:	6104      	str	r4, [r0, #16]
  htim1.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
 8001598:	6144      	str	r4, [r0, #20]
  if (HAL_TIM_Base_Init(&htim1) != HAL_OK)
 800159a:	6184      	str	r4, [r0, #24]
 800159c:	f7ff fcfa 	bl	8000f94 <HAL_TIM_Base_Init>
 80015a0:	b108      	cbz	r0, 80015a6 <MX_TIM1_Init+0x32>
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
 80015a2:	b672      	cpsid	i
  while (1)
 80015a4:	e7fe      	b.n	80015a4 <MX_TIM1_Init+0x30>
  sSlaveConfig.SlaveMode = TIM_SLAVEMODE_TRIGGER;
 80015a6:	2006      	movs	r0, #6
  if (HAL_TIM_SlaveConfigSynchro(&htim1, &sSlaveConfig) != HAL_OK)
 80015a8:	e9cd 0400 	strd	r0, r4, [sp]
 80015ac:	4669      	mov	r1, sp
 80015ae:	480a      	ldr	r0, [pc, #40]	; (80015d8 <MX_TIM1_Init+0x64>)
 80015b0:	f7ff fec4 	bl	800133c <HAL_TIM_SlaveConfigSynchro>
 80015b4:	b108      	cbz	r0, 80015ba <MX_TIM1_Init+0x46>
  __disable_irq();
 80015b6:	b672      	cpsid	i
  while (1)
 80015b8:	e7fe      	b.n	80015b8 <MX_TIM1_Init+0x44>
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
 80015ba:	9405      	str	r4, [sp, #20]
  if (HAL_TIMEx_MasterConfigSynchronization(&htim1, &sMasterConfig) != HAL_OK)
 80015bc:	a905      	add	r1, sp, #20
 80015be:	4806      	ldr	r0, [pc, #24]	; (80015d8 <MX_TIM1_Init+0x64>)
 80015c0:	9406      	str	r4, [sp, #24]
 80015c2:	f7ff fcb3 	bl	8000f2c <HAL_TIMEx_MasterConfigSynchronization>
 80015c6:	2800      	cmp	r0, #0
 80015c8:	d001      	beq.n	80015ce <MX_TIM1_Init+0x5a>
  __disable_irq();
 80015ca:	b672      	cpsid	i
  while (1)
 80015cc:	e7fe      	b.n	80015cc <MX_TIM1_Init+0x58>
}
 80015ce:	b008      	add	sp, #32
 80015d0:	bd10      	pop	{r4, pc}
 80015d2:	0000      	.short	0x0000
 80015d4:	40012c00 	.word	0x40012c00
 80015d8:	200004ac 	.word	0x200004ac

080015dc <MX_TIM2_Init>:
{
 80015dc:	b510      	push	{r4, lr}
 80015de:	b086      	sub	sp, #24
  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
 80015e0:	2400      	movs	r4, #0
  htim2.Instance = TIM2;
 80015e2:	4816      	ldr	r0, [pc, #88]	; (800163c <MX_TIM2_Init+0x60>)
  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
 80015e4:	9400      	str	r4, [sp, #0]
 80015e6:	9401      	str	r4, [sp, #4]
 80015e8:	9402      	str	r4, [sp, #8]
  TIM_MasterConfigTypeDef sMasterConfig = {0};
 80015ea:	9403      	str	r4, [sp, #12]
 80015ec:	9404      	str	r4, [sp, #16]
  htim2.Instance = TIM2;
 80015ee:	f04f 4180 	mov.w	r1, #1073741824	; 0x40000000
 80015f2:	9405      	str	r4, [sp, #20]
  htim2.Init.Prescaler = 72-1;
 80015f4:	6001      	str	r1, [r0, #0]
 80015f6:	2147      	movs	r1, #71	; 0x47
 80015f8:	e9c0 1401 	strd	r1, r4, [r0, #4]
  htim2.Init.Period = 50-1;
 80015fc:	2131      	movs	r1, #49	; 0x31
 80015fe:	e9c0 1403 	strd	r1, r4, [r0, #12]
  htim2.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_ENABLE;
 8001602:	2180      	movs	r1, #128	; 0x80
  if (HAL_TIM_Base_Init(&htim2) != HAL_OK)
 8001604:	6181      	str	r1, [r0, #24]
 8001606:	f7ff fcc5 	bl	8000f94 <HAL_TIM_Base_Init>
 800160a:	b108      	cbz	r0, 8001610 <MX_TIM2_Init+0x34>
  __disable_irq();
 800160c:	b672      	cpsid	i
  while (1)
 800160e:	e7fe      	b.n	800160e <MX_TIM2_Init+0x32>
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
 8001610:	f44f 5080 	mov.w	r0, #4096	; 0x1000
  if (HAL_TIM_ConfigClockSource(&htim2, &sClockSourceConfig) != HAL_OK)
 8001614:	9000      	str	r0, [sp, #0]
 8001616:	4669      	mov	r1, sp
 8001618:	4808      	ldr	r0, [pc, #32]	; (800163c <MX_TIM2_Init+0x60>)
 800161a:	f7ff fd51 	bl	80010c0 <HAL_TIM_ConfigClockSource>
 800161e:	b108      	cbz	r0, 8001624 <MX_TIM2_Init+0x48>
  __disable_irq();
 8001620:	b672      	cpsid	i
  while (1)
 8001622:	e7fe      	b.n	8001622 <MX_TIM2_Init+0x46>
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
 8001624:	9404      	str	r4, [sp, #16]
  if (HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig) != HAL_OK)
 8001626:	a904      	add	r1, sp, #16
 8001628:	4804      	ldr	r0, [pc, #16]	; (800163c <MX_TIM2_Init+0x60>)
 800162a:	9405      	str	r4, [sp, #20]
 800162c:	f7ff fc7e 	bl	8000f2c <HAL_TIMEx_MasterConfigSynchronization>
 8001630:	2800      	cmp	r0, #0
 8001632:	d001      	beq.n	8001638 <MX_TIM2_Init+0x5c>
  __disable_irq();
 8001634:	b672      	cpsid	i
  while (1)
 8001636:	e7fe      	b.n	8001636 <MX_TIM2_Init+0x5a>
}
 8001638:	b006      	add	sp, #24
 800163a:	bd10      	pop	{r4, pc}
 800163c:	200004f4 	.word	0x200004f4

08001640 <MX_TIM3_Init>:
{
 8001640:	b510      	push	{r4, lr}
 8001642:	b086      	sub	sp, #24
  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
 8001644:	2400      	movs	r4, #0
  htim3.Instance = TIM3;
 8001646:	4817      	ldr	r0, [pc, #92]	; (80016a4 <MX_TIM3_Init+0x64>)
  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
 8001648:	9400      	str	r4, [sp, #0]
 800164a:	9401      	str	r4, [sp, #4]
 800164c:	9402      	str	r4, [sp, #8]
  TIM_MasterConfigTypeDef sMasterConfig = {0};
 800164e:	9403      	str	r4, [sp, #12]
 8001650:	9404      	str	r4, [sp, #16]
  htim3.Instance = TIM3;
 8001652:	4913      	ldr	r1, [pc, #76]	; (80016a0 <MX_TIM3_Init+0x60>)
 8001654:	9405      	str	r4, [sp, #20]
  htim3.Init.Prescaler = 72-1;
 8001656:	6001      	str	r1, [r0, #0]
 8001658:	2147      	movs	r1, #71	; 0x47
 800165a:	e9c0 1401 	strd	r1, r4, [r0, #4]
  htim3.Init.Period = 1000-1;
 800165e:	f240 31e7 	movw	r1, #999	; 0x3e7
 8001662:	e9c0 1403 	strd	r1, r4, [r0, #12]
  htim3.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_ENABLE;
 8001666:	2180      	movs	r1, #128	; 0x80
  if (HAL_TIM_Base_Init(&htim3) != HAL_OK)
 8001668:	6181      	str	r1, [r0, #24]
 800166a:	f7ff fc93 	bl	8000f94 <HAL_TIM_Base_Init>
 800166e:	b108      	cbz	r0, 8001674 <MX_TIM3_Init+0x34>
  __disable_irq();
 8001670:	b672      	cpsid	i
  while (1)
 8001672:	e7fe      	b.n	8001672 <MX_TIM3_Init+0x32>
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
 8001674:	f44f 5080 	mov.w	r0, #4096	; 0x1000
  if (HAL_TIM_ConfigClockSource(&htim3, &sClockSourceConfig) != HAL_OK)
 8001678:	9000      	str	r0, [sp, #0]
 800167a:	4669      	mov	r1, sp
 800167c:	4809      	ldr	r0, [pc, #36]	; (80016a4 <MX_TIM3_Init+0x64>)
 800167e:	f7ff fd1f 	bl	80010c0 <HAL_TIM_ConfigClockSource>
 8001682:	b108      	cbz	r0, 8001688 <MX_TIM3_Init+0x48>
  __disable_irq();
 8001684:	b672      	cpsid	i
  while (1)
 8001686:	e7fe      	b.n	8001686 <MX_TIM3_Init+0x46>
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
 8001688:	9404      	str	r4, [sp, #16]
  if (HAL_TIMEx_MasterConfigSynchronization(&htim3, &sMasterConfig) != HAL_OK)
 800168a:	a904      	add	r1, sp, #16
 800168c:	4805      	ldr	r0, [pc, #20]	; (80016a4 <MX_TIM3_Init+0x64>)
 800168e:	9405      	str	r4, [sp, #20]
 8001690:	f7ff fc4c 	bl	8000f2c <HAL_TIMEx_MasterConfigSynchronization>
 8001694:	2800      	cmp	r0, #0
 8001696:	d001      	beq.n	800169c <MX_TIM3_Init+0x5c>
  __disable_irq();
 8001698:	b672      	cpsid	i
  while (1)
 800169a:	e7fe      	b.n	800169a <MX_TIM3_Init+0x5a>
}
 800169c:	b006      	add	sp, #24
 800169e:	bd10      	pop	{r4, pc}
 80016a0:	40000400 	.word	0x40000400
 80016a4:	2000053c 	.word	0x2000053c

080016a8 <MemManage_Handler>:
  while (1)
 80016a8:	e7fe      	b.n	80016a8 <MemManage_Handler>

080016aa <NMI_Handler>:
  while (1)
 80016aa:	e7fe      	b.n	80016aa <NMI_Handler>

080016ac <StartDefaultTask>:
    for(uint32_t i=0; i< 0xFFF;i++)
 80016ac:	f640 74ff 	movw	r4, #4095	; 0xfff
 80016b0:	2000      	movs	r0, #0
      for(uint32_t j=0;j<0xFF;j++)
 80016b2:	2100      	movs	r1, #0
 80016b4:	1c49      	adds	r1, r1, #1
 80016b6:	29ff      	cmp	r1, #255	; 0xff
 80016b8:	d3fc      	bcc.n	80016b4 <StartDefaultTask+0x8>
 80016ba:	1c40      	adds	r0, r0, #1
    for(uint32_t i=0; i< 0xFFF;i++)
 80016bc:	42a0      	cmp	r0, r4
 80016be:	d3f8      	bcc.n	80016b2 <StartDefaultTask+0x6>
		osDelay(100);
 80016c0:	2064      	movs	r0, #100	; 0x64
 80016c2:	f000 fbb5 	bl	8001e30 <osDelay>
  }
 80016c6:	e7f3      	b.n	80016b0 <StartDefaultTask+0x4>

080016c8 <StartTask02>:
    osDelay(500);
 80016c8:	f44f 74fa 	mov.w	r4, #500	; 0x1f4
    log_buffer_flush();
 80016cc:	f000 fb38 	bl	8001d40 <log_buffer_flush>
    osDelay(500);
 80016d0:	4620      	mov	r0, r4
 80016d2:	f000 fbad 	bl	8001e30 <osDelay>
 80016d6:	e7f9      	b.n	80016cc <StartTask02+0x4>

080016d8 <SysTick_Handler>:

/**
  * @brief This function handles System tick timer.
  */
void SysTick_Handler(void)
{
 80016d8:	b510      	push	{r4, lr}
  /* USER CODE BEGIN SysTick_IRQn 0 */

  /* USER CODE END SysTick_IRQn 0 */
  HAL_IncTick();
 80016da:	f7ff f907 	bl	80008ec <HAL_IncTick>
#if (INCLUDE_xTaskGetSchedulerState == 1 )
  if (xTaskGetSchedulerState() != taskSCHEDULER_NOT_STARTED)
 80016de:	f001 ffd1 	bl	8003684 <xTaskGetSchedulerState>
 80016e2:	2801      	cmp	r0, #1
 80016e4:	d003      	beq.n	80016ee <SysTick_Handler+0x16>
  {
#endif /* INCLUDE_xTaskGetSchedulerState */
  xPortSysTickHandler();
 80016e6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80016ea:	f001 bcd5 	b.w	8003098 <xPortSysTickHandler>
  }
#endif /* INCLUDE_xTaskGetSchedulerState */
  /* USER CODE BEGIN SysTick_IRQn 1 */

  /* USER CODE END SysTick_IRQn 1 */
}
 80016ee:	bd10      	pop	{r4, pc}

080016f0 <SystemClock_Config>:
{
 80016f0:	b530      	push	{r4, r5, lr}
 80016f2:	b08f      	sub	sp, #60	; 0x3c
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
 80016f4:	2128      	movs	r1, #40	; 0x28
 80016f6:	4668      	mov	r0, sp
 80016f8:	f7fe feca 	bl	8000490 <__rt_memclr_w>
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
 80016fc:	2114      	movs	r1, #20
 80016fe:	a80a      	add	r0, sp, #40	; 0x28
 8001700:	f7fe fec6 	bl	8000490 <__rt_memclr_w>
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
 8001704:	2101      	movs	r1, #1
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
 8001706:	0408      	lsls	r0, r1, #16
  RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
 8001708:	e9cd 1000 	strd	r1, r0, [sp]
 800170c:	2400      	movs	r4, #0
 800170e:	9402      	str	r4, [sp, #8]
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
 8001710:	2502      	movs	r5, #2
 8001712:	9104      	str	r1, [sp, #16]
 8001714:	e9cd 5007 	strd	r5, r0, [sp, #28]
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL9;
 8001718:	f44f 10e0 	mov.w	r0, #1835008	; 0x1c0000
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
 800171c:	9009      	str	r0, [sp, #36]	; 0x24
 800171e:	4668      	mov	r0, sp
 8001720:	f7ff fa5e 	bl	8000be0 <HAL_RCC_OscConfig>
 8001724:	b108      	cbz	r0, 800172a <SystemClock_Config+0x3a>
  __disable_irq();
 8001726:	b672      	cpsid	i
  while (1)
 8001728:	e7fe      	b.n	8001728 <SystemClock_Config+0x38>
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
 800172a:	200f      	movs	r0, #15
 800172c:	e9cd 050a 	strd	r0, r5, [sp, #40]	; 0x28
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
 8001730:	f44f 6080 	mov.w	r0, #1024	; 0x400
 8001734:	e9cd 400c 	strd	r4, r0, [sp, #48]	; 0x30
  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
 8001738:	2102      	movs	r1, #2
 800173a:	a80a      	add	r0, sp, #40	; 0x28
 800173c:	940e      	str	r4, [sp, #56]	; 0x38
 800173e:	f7ff f973 	bl	8000a28 <HAL_RCC_ClockConfig>
 8001742:	2800      	cmp	r0, #0
 8001744:	d001      	beq.n	800174a <SystemClock_Config+0x5a>
  __disable_irq();
 8001746:	b672      	cpsid	i
  while (1)
 8001748:	e7fe      	b.n	8001748 <SystemClock_Config+0x58>
}
 800174a:	b00f      	add	sp, #60	; 0x3c
 800174c:	bd30      	pop	{r4, r5, pc}

0800174e <SystemInit>:

  /* Configure the Vector Table location -------------------------------------*/
#if defined(USER_VECT_TAB_ADDRESS)
  SCB->VTOR = VECT_TAB_BASE_ADDRESS | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal SRAM. */
#endif /* USER_VECT_TAB_ADDRESS */
}
 800174e:	4770      	bx	lr

08001750 <TIM2_IRQHandler>:
void TIM2_IRQHandler(void)
{
  /* USER CODE BEGIN TIM2_IRQn 0 */

  /* USER CODE END TIM2_IRQn 0 */
  HAL_TIM_IRQHandler(&htim2);
 8001750:	4801      	ldr	r0, [pc, #4]	; (8001758 <TIM2_IRQHandler+0x8>)
 8001752:	f7ff bd24 	b.w	800119e <HAL_TIM_IRQHandler>
 8001756:	0000      	.short	0x0000
 8001758:	200004f4 	.word	0x200004f4

0800175c <TIM3_IRQHandler>:
void TIM3_IRQHandler(void)
{
  /* USER CODE BEGIN TIM3_IRQn 0 */

  /* USER CODE END TIM3_IRQn 0 */
  HAL_TIM_IRQHandler(&htim3);
 800175c:	4801      	ldr	r0, [pc, #4]	; (8001764 <TIM3_IRQHandler+0x8>)
 800175e:	f7ff bd1e 	b.w	800119e <HAL_TIM_IRQHandler>
 8001762:	0000      	.short	0x0000
 8001764:	2000053c 	.word	0x2000053c

08001768 <TIM_Base_SetConfig>:
  * @param  TIMx TIM peripheral
  * @param  Structure TIM Base configuration structure
  * @retval None
  */
void TIM_Base_SetConfig(TIM_TypeDef *TIMx, const TIM_Base_InitTypeDef *Structure)
{
 8001768:	b5f0      	push	{r4, r5, r6, r7, lr}
  uint32_t tmpcr1;
  tmpcr1 = TIMx->CR1;
 800176a:	6802      	ldr	r2, [r0, #0]

  /* Set TIM Time Base Unit parameters ---------------------------------------*/
  if (IS_TIM_COUNTER_MODE_SELECT_INSTANCE(TIMx))
 800176c:	4b16      	ldr	r3, [pc, #88]	; (80017c8 <TIM_Base_SetConfig+0x60>)
 800176e:	4c17      	ldr	r4, [pc, #92]	; (80017cc <TIM_Base_SetConfig+0x64>)
 8001770:	4d17      	ldr	r5, [pc, #92]	; (80017d0 <TIM_Base_SetConfig+0x68>)
 8001772:	f04f 4780 	mov.w	r7, #1073741824	; 0x40000000
 8001776:	4298      	cmp	r0, r3
{
 8001778:	d005      	beq.n	8001786 <TIM_Base_SetConfig+0x1e>
  if (IS_TIM_COUNTER_MODE_SELECT_INSTANCE(TIMx))
 800177a:	42b8      	cmp	r0, r7
 800177c:	d003      	beq.n	8001786 <TIM_Base_SetConfig+0x1e>
 800177e:	42a0      	cmp	r0, r4
 8001780:	d001      	beq.n	8001786 <TIM_Base_SetConfig+0x1e>
 8001782:	42a8      	cmp	r0, r5
 8001784:	d103      	bne.n	800178e <TIM_Base_SetConfig+0x26>
  {
    /* Select the Counter Mode */
    tmpcr1 &= ~(TIM_CR1_DIR | TIM_CR1_CMS);
 8001786:	f022 0670 	bic.w	r6, r2, #112	; 0x70
    tmpcr1 |= Structure->CounterMode;
 800178a:	684a      	ldr	r2, [r1, #4]
 800178c:	4332      	orrs	r2, r6
  }

  if (IS_TIM_CLOCK_DIVISION_INSTANCE(TIMx))
 800178e:	4298      	cmp	r0, r3
 8001790:	d005      	beq.n	800179e <TIM_Base_SetConfig+0x36>
 8001792:	42b8      	cmp	r0, r7
 8001794:	d003      	beq.n	800179e <TIM_Base_SetConfig+0x36>
 8001796:	42a0      	cmp	r0, r4
 8001798:	d001      	beq.n	800179e <TIM_Base_SetConfig+0x36>
 800179a:	42a8      	cmp	r0, r5
 800179c:	d103      	bne.n	80017a6 <TIM_Base_SetConfig+0x3e>
  {
    /* Set the clock division */
    tmpcr1 &= ~TIM_CR1_CKD;
 800179e:	f422 7440 	bic.w	r4, r2, #768	; 0x300
    tmpcr1 |= (uint32_t)Structure->ClockDivision;
 80017a2:	68ca      	ldr	r2, [r1, #12]
 80017a4:	4322      	orrs	r2, r4
  }

  /* Set the auto-reload preload */
  MODIFY_REG(tmpcr1, TIM_CR1_ARPE, Structure->AutoReloadPreload);
 80017a6:	694c      	ldr	r4, [r1, #20]
 80017a8:	f022 0280 	bic.w	r2, r2, #128	; 0x80
 80017ac:	4322      	orrs	r2, r4

  TIMx->CR1 = tmpcr1;
 80017ae:	6002      	str	r2, [r0, #0]

  /* Set the Autoreload value */
  TIMx->ARR = (uint32_t)Structure->Period ;
 80017b0:	688a      	ldr	r2, [r1, #8]
 80017b2:	62c2      	str	r2, [r0, #44]	; 0x2c

  /* Set the Prescaler value */
  TIMx->PSC = Structure->Prescaler;
 80017b4:	680a      	ldr	r2, [r1, #0]
 80017b6:	6282      	str	r2, [r0, #40]	; 0x28

  if (IS_TIM_REPETITION_COUNTER_INSTANCE(TIMx))
 80017b8:	4298      	cmp	r0, r3
 80017ba:	d101      	bne.n	80017c0 <TIM_Base_SetConfig+0x58>
  {
    /* Set the Repetition Counter value */
    TIMx->RCR = Structure->RepetitionCounter;
 80017bc:	6909      	ldr	r1, [r1, #16]
 80017be:	6301      	str	r1, [r0, #48]	; 0x30
  }

  /* Generate an update event to reload the Prescaler
     and the repetition counter (only for advanced timer) value immediately */
  TIMx->EGR = TIM_EGR_UG;
 80017c0:	2101      	movs	r1, #1
 80017c2:	6141      	str	r1, [r0, #20]
}
 80017c4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80017c6:	0000      	.short	0x0000
 80017c8:	40012c00 	.word	0x40012c00
 80017cc:	40000400 	.word	0x40000400
 80017d0:	40000800 	.word	0x40000800

080017d4 <TIM_ETR_SetConfig>:
  *          This parameter must be a value between 0x00 and 0x0F
  * @retval None
  */
void TIM_ETR_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ExtTRGPrescaler,
                       uint32_t TIM_ExtTRGPolarity, uint32_t ExtTRGFilter)
{
 80017d4:	b510      	push	{r4, lr}
  uint32_t tmpsmcr;

  tmpsmcr = TIMx->SMCR;
 80017d6:	6884      	ldr	r4, [r0, #8]

  /* Reset the ETR Bits */
  tmpsmcr &= ~(TIM_SMCR_ETF | TIM_SMCR_ETPS | TIM_SMCR_ECE | TIM_SMCR_ETP);

  /* Set the Prescaler, the Filter value and the Polarity */
  tmpsmcr |= (uint32_t)(TIM_ExtTRGPrescaler | (TIM_ExtTRGPolarity | (ExtTRGFilter << 8U)));
 80017d8:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
  tmpsmcr &= ~(TIM_SMCR_ETF | TIM_SMCR_ETPS | TIM_SMCR_ECE | TIM_SMCR_ETP);
 80017dc:	f424 447f 	bic.w	r4, r4, #65280	; 0xff00
  tmpsmcr |= (uint32_t)(TIM_ExtTRGPrescaler | (TIM_ExtTRGPolarity | (ExtTRGFilter << 8U)));
 80017e0:	430a      	orrs	r2, r1
 80017e2:	4322      	orrs	r2, r4

  /* Write to TIMx SMCR */
  TIMx->SMCR = tmpsmcr;
 80017e4:	6082      	str	r2, [r0, #8]
}
 80017e6:	bd10      	pop	{r4, pc}

080017e8 <TIM_ITRx_SetConfig>:
  tmpsmcr = TIMx->SMCR;
 80017e8:	6882      	ldr	r2, [r0, #8]
  tmpsmcr &= ~TIM_SMCR_TS;
 80017ea:	f022 0270 	bic.w	r2, r2, #112	; 0x70
  tmpsmcr |= (InputTriggerSource | TIM_SLAVEMODE_EXTERNAL1);
 80017ee:	430a      	orrs	r2, r1
 80017f0:	f042 0107 	orr.w	r1, r2, #7
  TIMx->SMCR = tmpsmcr;
 80017f4:	6081      	str	r1, [r0, #8]
}
 80017f6:	4770      	bx	lr

080017f8 <TIM_SlaveTimer_SetConfig>:
{
 80017f8:	b570      	push	{r4, r5, r6, lr}
  tmpsmcr = htim->Instance->SMCR;
 80017fa:	6803      	ldr	r3, [r0, #0]
  HAL_StatusTypeDef status = HAL_OK;
 80017fc:	2400      	movs	r4, #0
  tmpsmcr = htim->Instance->SMCR;
 80017fe:	689a      	ldr	r2, [r3, #8]
  tmpsmcr &= ~TIM_SMCR_TS;
 8001800:	f022 0570 	bic.w	r5, r2, #112	; 0x70
  tmpsmcr |= sSlaveConfig->InputTrigger;
 8001804:	684a      	ldr	r2, [r1, #4]
 8001806:	432a      	orrs	r2, r5
  tmpsmcr &= ~TIM_SMCR_SMS;
 8001808:	f022 0507 	bic.w	r5, r2, #7
  tmpsmcr |= sSlaveConfig->SlaveMode;
 800180c:	680a      	ldr	r2, [r1, #0]
 800180e:	432a      	orrs	r2, r5
  htim->Instance->SMCR = tmpsmcr;
 8001810:	609a      	str	r2, [r3, #8]
  switch (sSlaveConfig->InputTrigger)
 8001812:	684a      	ldr	r2, [r1, #4]
 8001814:	f012 0f0f 	tst.w	r2, #15
{
 8001818:	d131      	bne.n	800187e <TIM_SlaveTimer_SetConfig+0x86>
  switch (sSlaveConfig->InputTrigger)
 800181a:	1112      	asrs	r2, r2, #4
 800181c:	2a08      	cmp	r2, #8
 800181e:	d22e      	bcs.n	800187e <TIM_SlaveTimer_SetConfig+0x86>
 8001820:	e8df f002 	tbb	[pc, r2]
 8001824:	2e2e2e2e 	.word	0x2e2e2e2e
 8001828:	0427210b 	.word	0x0427210b
      TIM_ETR_SetConfig(htim->Instance,
 800182c:	690b      	ldr	r3, [r1, #16]
 800182e:	e9d1 2102 	ldrd	r2, r1, [r1, #8]
 8001832:	6800      	ldr	r0, [r0, #0]
 8001834:	f7ff ffce 	bl	80017d4 <TIM_ETR_SetConfig>
      break;
 8001838:	e022      	b.n	8001880 <TIM_SlaveTimer_SetConfig+0x88>
      if (sSlaveConfig->SlaveMode == TIM_SLAVEMODE_GATED)
 800183a:	680a      	ldr	r2, [r1, #0]
 800183c:	2a05      	cmp	r2, #5
 800183e:	d010      	beq.n	8001862 <TIM_SlaveTimer_SetConfig+0x6a>
      tmpccer = htim->Instance->CCER;
 8001840:	6802      	ldr	r2, [r0, #0]
 8001842:	6a13      	ldr	r3, [r2, #32]
      htim->Instance->CCER &= ~TIM_CCER_CC1E;
 8001844:	6a15      	ldr	r5, [r2, #32]
 8001846:	f025 0501 	bic.w	r5, r5, #1
 800184a:	6215      	str	r5, [r2, #32]
      tmpccmr1 = htim->Instance->CCMR1;
 800184c:	6802      	ldr	r2, [r0, #0]
 800184e:	6995      	ldr	r5, [r2, #24]
      tmpccmr1 |= ((sSlaveConfig->TriggerFilter) << 4U);
 8001850:	6909      	ldr	r1, [r1, #16]
      tmpccmr1 &= ~TIM_CCMR1_IC1F;
 8001852:	f025 05f0 	bic.w	r5, r5, #240	; 0xf0
      tmpccmr1 |= ((sSlaveConfig->TriggerFilter) << 4U);
 8001856:	ea45 1101 	orr.w	r1, r5, r1, lsl #4
      htim->Instance->CCMR1 = tmpccmr1;
 800185a:	6191      	str	r1, [r2, #24]
      htim->Instance->CCER = tmpccer;
 800185c:	6800      	ldr	r0, [r0, #0]
 800185e:	6203      	str	r3, [r0, #32]
      break;
 8001860:	e00e      	b.n	8001880 <TIM_SlaveTimer_SetConfig+0x88>
        return HAL_ERROR;
 8001862:	2001      	movs	r0, #1
}
 8001864:	bd70      	pop	{r4, r5, r6, pc}
      TIM_TI1_ConfigInputStage(htim->Instance,
 8001866:	690a      	ldr	r2, [r1, #16]
 8001868:	6889      	ldr	r1, [r1, #8]
 800186a:	6800      	ldr	r0, [r0, #0]
 800186c:	f000 f80a 	bl	8001884 <TIM_TI1_ConfigInputStage>
      break;
 8001870:	e006      	b.n	8001880 <TIM_SlaveTimer_SetConfig+0x88>
      TIM_TI2_ConfigInputStage(htim->Instance,
 8001872:	690a      	ldr	r2, [r1, #16]
 8001874:	6889      	ldr	r1, [r1, #8]
 8001876:	6800      	ldr	r0, [r0, #0]
 8001878:	f000 f815 	bl	80018a6 <TIM_TI2_ConfigInputStage>
      break;
 800187c:	e000      	b.n	8001880 <TIM_SlaveTimer_SetConfig+0x88>
      status = HAL_ERROR;
 800187e:	2401      	movs	r4, #1
  return status;
 8001880:	4620      	mov	r0, r4
}
 8001882:	bd70      	pop	{r4, r5, r6, pc}

08001884 <TIM_TI1_ConfigInputStage>:
{
 8001884:	b510      	push	{r4, lr}
  tmpccer = TIMx->CCER;
 8001886:	6a03      	ldr	r3, [r0, #32]
  TIMx->CCER &= ~TIM_CCER_CC1E;
 8001888:	6a04      	ldr	r4, [r0, #32]
 800188a:	f024 0401 	bic.w	r4, r4, #1
 800188e:	6204      	str	r4, [r0, #32]
  tmpccmr1 = TIMx->CCMR1;
 8001890:	6984      	ldr	r4, [r0, #24]
  tmpccmr1 &= ~TIM_CCMR1_IC1F;
 8001892:	f024 04f0 	bic.w	r4, r4, #240	; 0xf0
  tmpccmr1 |= (TIM_ICFilter << 4U);
 8001896:	ea44 1402 	orr.w	r4, r4, r2, lsl #4
  tmpccer &= ~(TIM_CCER_CC1P | TIM_CCER_CC1NP);
 800189a:	f023 020a 	bic.w	r2, r3, #10
  tmpccer |= TIM_ICPolarity;
 800189e:	430a      	orrs	r2, r1
  TIMx->CCMR1 = tmpccmr1;
 80018a0:	6184      	str	r4, [r0, #24]
  TIMx->CCER = tmpccer;
 80018a2:	6202      	str	r2, [r0, #32]
}
 80018a4:	bd10      	pop	{r4, pc}

080018a6 <TIM_TI2_ConfigInputStage>:
{
 80018a6:	b510      	push	{r4, lr}
  tmpccer = TIMx->CCER;
 80018a8:	6a03      	ldr	r3, [r0, #32]
  TIMx->CCER &= ~TIM_CCER_CC2E;
 80018aa:	6a04      	ldr	r4, [r0, #32]
 80018ac:	f024 0410 	bic.w	r4, r4, #16
 80018b0:	6204      	str	r4, [r0, #32]
  tmpccmr1 = TIMx->CCMR1;
 80018b2:	6984      	ldr	r4, [r0, #24]
  tmpccer &= ~(TIM_CCER_CC2P | TIM_CCER_CC2NP);
 80018b4:	f023 03a0 	bic.w	r3, r3, #160	; 0xa0
  tmpccmr1 &= ~TIM_CCMR1_IC2F;
 80018b8:	f424 4470 	bic.w	r4, r4, #61440	; 0xf000
  tmpccmr1 |= (TIM_ICFilter << 12U);
 80018bc:	ea44 3202 	orr.w	r2, r4, r2, lsl #12
  tmpccer |= (TIM_ICPolarity << 4U);
 80018c0:	ea43 1101 	orr.w	r1, r3, r1, lsl #4
  TIMx->CCMR1 = tmpccmr1 ;
 80018c4:	6182      	str	r2, [r0, #24]
  TIMx->CCER = tmpccer;
 80018c6:	6201      	str	r1, [r0, #32]
}
 80018c8:	bd10      	pop	{r4, pc}
	...

080018cc <UART_SetConfig>:
  * @param  huart  Pointer to a UART_HandleTypeDef structure that contains
  *                the configuration information for the specified UART module.
  * @retval None
  */
static void UART_SetConfig(UART_HandleTypeDef *huart)
{
 80018cc:	b570      	push	{r4, r5, r6, lr}
 80018ce:	4604      	mov	r4, r0
  assert_param(IS_UART_MODE(huart->Init.Mode));

  /*-------------------------- USART CR2 Configuration -----------------------*/
  /* Configure the UART Stop Bits: Set STOP[13:12] bits
     according to huart->Init.StopBits value */
  MODIFY_REG(huart->Instance->CR2, USART_CR2_STOP, huart->Init.StopBits);
 80018d0:	6800      	ldr	r0, [r0, #0]
 80018d2:	6901      	ldr	r1, [r0, #16]
 80018d4:	68e2      	ldr	r2, [r4, #12]
 80018d6:	f421 5140 	bic.w	r1, r1, #12288	; 0x3000
 80018da:	4311      	orrs	r1, r2
 80018dc:	6101      	str	r1, [r0, #16]
  tmpreg = (uint32_t)huart->Init.WordLength | huart->Init.Parity | huart->Init.Mode | huart->Init.OverSampling;
  MODIFY_REG(huart->Instance->CR1,
             (uint32_t)(USART_CR1_M | USART_CR1_PCE | USART_CR1_PS | USART_CR1_TE | USART_CR1_RE | USART_CR1_OVER8),
             tmpreg);
#else
  tmpreg = (uint32_t)huart->Init.WordLength | huart->Init.Parity | huart->Init.Mode;
 80018de:	6921      	ldr	r1, [r4, #16]
 80018e0:	68a0      	ldr	r0, [r4, #8]
 80018e2:	4308      	orrs	r0, r1
 80018e4:	6961      	ldr	r1, [r4, #20]
 80018e6:	4308      	orrs	r0, r1
  MODIFY_REG(huart->Instance->CR1,
 80018e8:	6821      	ldr	r1, [r4, #0]
 80018ea:	68ca      	ldr	r2, [r1, #12]
 80018ec:	f241 630c 	movw	r3, #5644	; 0x160c
 80018f0:	439a      	bics	r2, r3
 80018f2:	4302      	orrs	r2, r0
 80018f4:	60ca      	str	r2, [r1, #12]
             tmpreg);
#endif /* USART_CR1_OVER8 */

  /*-------------------------- USART CR3 Configuration -----------------------*/
  /* Configure the UART HFC: Set CTSE and RTSE bits according to huart->Init.HwFlowCtl value */
  MODIFY_REG(huart->Instance->CR3, (USART_CR3_RTSE | USART_CR3_CTSE), huart->Init.HwFlowCtl);
 80018f6:	6820      	ldr	r0, [r4, #0]
 80018f8:	6941      	ldr	r1, [r0, #20]
 80018fa:	69a2      	ldr	r2, [r4, #24]
 80018fc:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 8001900:	4311      	orrs	r1, r2
 8001902:	6141      	str	r1, [r0, #20]


  if(huart->Instance == USART1)
 8001904:	491e      	ldr	r1, [pc, #120]	; (8001980 <UART_SetConfig+0xb4>)
 8001906:	6820      	ldr	r0, [r4, #0]
 8001908:	4288      	cmp	r0, r1
{
 800190a:	d102      	bne.n	8001912 <UART_SetConfig+0x46>
  {
    pclk = HAL_RCC_GetPCLK2Freq();
 800190c:	f7ff f932 	bl	8000b74 <HAL_RCC_GetPCLK2Freq>
 8001910:	e001      	b.n	8001916 <UART_SetConfig+0x4a>
  }
  else
  {
    pclk = HAL_RCC_GetPCLK1Freq();
 8001912:	f7ff f91f 	bl	8000b54 <HAL_RCC_GetPCLK1Freq>
  else
  {
    huart->Instance->BRR = UART_BRR_SAMPLING16(pclk, huart->Init.BaudRate);
  }
#else
  huart->Instance->BRR = UART_BRR_SAMPLING16(pclk, huart->Init.BaudRate);
 8001916:	eb00 01c0 	add.w	r1, r0, r0, lsl #3
 800191a:	eb01 1200 	add.w	r2, r1, r0, lsl #4
 800191e:	6860      	ldr	r0, [r4, #4]
 8001920:	2164      	movs	r1, #100	; 0x64
 8001922:	0080      	lsls	r0, r0, #2
 8001924:	fbb2 f3f0 	udiv	r3, r2, r0
 8001928:	fbb3 f3f1 	udiv	r3, r3, r1
 800192c:	f06f 0618 	mvn.w	r6, #24
 8001930:	4373      	muls	r3, r6
 8001932:	fbb2 f5f0 	udiv	r5, r2, r0
 8001936:	fbb2 f6f0 	udiv	r6, r2, r0
 800193a:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800193e:	2332      	movs	r3, #50	; 0x32
 8001940:	eb03 1505 	add.w	r5, r3, r5, lsl #4
 8001944:	fbb5 f5f1 	udiv	r5, r5, r1
 8001948:	fbb6 f6f1 	udiv	r6, r6, r1
 800194c:	f005 05f0 	and.w	r5, r5, #240	; 0xf0
 8001950:	eb05 1506 	add.w	r5, r5, r6, lsl #4
 8001954:	fbb2 f6f0 	udiv	r6, r2, r0
 8001958:	fbb2 f0f0 	udiv	r0, r2, r0
 800195c:	fbb0 f0f1 	udiv	r0, r0, r1
 8001960:	f06f 0218 	mvn.w	r2, #24
 8001964:	4350      	muls	r0, r2
 8001966:	eb06 0080 	add.w	r0, r6, r0, lsl #2
 800196a:	eb03 1000 	add.w	r0, r3, r0, lsl #4
 800196e:	fbb0 f0f1 	udiv	r0, r0, r1
 8001972:	6821      	ldr	r1, [r4, #0]
 8001974:	f000 000f 	and.w	r0, r0, #15
 8001978:	4428      	add	r0, r5
 800197a:	6088      	str	r0, [r1, #8]
#endif /* USART_CR1_OVER8 */
}
 800197c:	bd70      	pop	{r4, r5, r6, pc}
 800197e:	0000      	.short	0x0000
 8001980:	40013800 	.word	0x40013800

08001984 <UART_WaitOnFlagUntilTimeout>:
{
 8001984:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001988:	4698      	mov	r8, r3
 800198a:	4617      	mov	r7, r2
 800198c:	460e      	mov	r6, r1
 800198e:	4604      	mov	r4, r0
        return HAL_TIMEOUT;
 8001990:	9d06      	ldr	r5, [sp, #24]
 8001992:	e027      	b.n	80019e4 <UART_WaitOnFlagUntilTimeout+0x60>
    if (Timeout != HAL_MAX_DELAY)
 8001994:	1c68      	adds	r0, r5, #1
 8001996:	d025      	beq.n	80019e4 <UART_WaitOnFlagUntilTimeout+0x60>
      if ((Timeout == 0U) || ((HAL_GetTick() - Tickstart) > Timeout))
 8001998:	b12d      	cbz	r5, 80019a6 <UART_WaitOnFlagUntilTimeout+0x22>
 800199a:	f7fe ffa1 	bl	80008e0 <HAL_GetTick>
 800199e:	eba0 0008 	sub.w	r0, r0, r8
 80019a2:	42a8      	cmp	r0, r5
 80019a4:	d91e      	bls.n	80019e4 <UART_WaitOnFlagUntilTimeout+0x60>
        ATOMIC_CLEAR_BIT(huart->Instance->CR1, (USART_CR1_RXNEIE | USART_CR1_PEIE | USART_CR1_TXEIE));
 80019a6:	6820      	ldr	r0, [r4, #0]
 80019a8:	300c      	adds	r0, #12
 80019aa:	e850 1f00 	ldrex	r1, [r0]
 80019ae:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 80019b2:	e840 1200 	strex	r2, r1, [r0]
 80019b6:	2a00      	cmp	r2, #0
 80019b8:	d1f5      	bne.n	80019a6 <UART_WaitOnFlagUntilTimeout+0x22>
        ATOMIC_CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);
 80019ba:	6820      	ldr	r0, [r4, #0]
 80019bc:	3014      	adds	r0, #20
 80019be:	e850 1f00 	ldrex	r1, [r0]
 80019c2:	f021 0101 	bic.w	r1, r1, #1
 80019c6:	e840 1200 	strex	r2, r1, [r0]
 80019ca:	2a00      	cmp	r2, #0
 80019cc:	d1f5      	bne.n	80019ba <UART_WaitOnFlagUntilTimeout+0x36>
        huart->gState  = HAL_UART_STATE_READY;
 80019ce:	2020      	movs	r0, #32
 80019d0:	f884 0041 	strb.w	r0, [r4, #65]	; 0x41
        huart->RxState = HAL_UART_STATE_READY;
 80019d4:	f884 0042 	strb.w	r0, [r4, #66]	; 0x42
        __HAL_UNLOCK(huart);
 80019d8:	2000      	movs	r0, #0
 80019da:	f884 0040 	strb.w	r0, [r4, #64]	; 0x40
        return HAL_TIMEOUT;
 80019de:	2003      	movs	r0, #3
}
 80019e0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
  while ((__HAL_UART_GET_FLAG(huart, Flag) ? SET : RESET) == Status)
 80019e4:	6820      	ldr	r0, [r4, #0]
 80019e6:	6800      	ldr	r0, [r0, #0]
 80019e8:	ea36 0000 	bics.w	r0, r6, r0
 80019ec:	d004      	beq.n	80019f8 <UART_WaitOnFlagUntilTimeout+0x74>
 80019ee:	2000      	movs	r0, #0
 80019f0:	42b8      	cmp	r0, r7
 80019f2:	d0cf      	beq.n	8001994 <UART_WaitOnFlagUntilTimeout+0x10>
  return HAL_OK;
 80019f4:	2000      	movs	r0, #0
}
 80019f6:	e7f3      	b.n	80019e0 <UART_WaitOnFlagUntilTimeout+0x5c>
  while ((__HAL_UART_GET_FLAG(huart, Flag) ? SET : RESET) == Status)
 80019f8:	2001      	movs	r0, #1
 80019fa:	e7f9      	b.n	80019f0 <UART_WaitOnFlagUntilTimeout+0x6c>

080019fc <UART_convertVal>:
    /* Return the number of characters written. */
    return ((int32_t)uIdx);
}

static int32_t UART_convertVal(uint32_t ulValue, uint32_t ulPos, uint32_t ulBase, uint32_t ulNeg, uint32_t ulCount, char cFill, char *pcBuf)
{
 80019fc:	b5f0      	push	{r4, r5, r6, r7, lr}
 80019fe:	4606      	mov	r6, r0
 8001a00:	e9dd 7006 	ldrd	r7, r0, [sp, #24]
    uint32_t ulIdx;
    uint32_t count = ulCount;
    uint32_t neg = ulNeg;
    uint32_t pos = ulPos;

    for (ulIdx = 1u;
 8001a04:	2501      	movs	r5, #1
{
 8001a06:	9c05      	ldr	r4, [sp, #20]
 8001a08:	e001      	b.n	8001a0e <UART_convertVal+0x12>
 8001a0a:	4665      	mov	r5, ip
 8001a0c:	1e64      	subs	r4, r4, #1
         (((ulIdx * ulBase) <= ulValue) &&
 8001a0e:	fb05 fc02 	mul.w	ip, r5, r2
 8001a12:	45b4      	cmp	ip, r6
 8001a14:	d803      	bhi.n	8001a1e <UART_convertVal+0x22>
          (((ulIdx * ulBase) / ulBase) == ulIdx));
 8001a16:	fbbc fef2 	udiv	lr, ip, r2
 8001a1a:	45ae      	cmp	lr, r5
 8001a1c:	d0f5      	beq.n	8001a0a <UART_convertVal+0xe>
    /* If the value is negative and the value is padded with
     * zeros, then place the minus sign before the padding. */
    if ((neg != 0U) && ((int8_t)cFill == (int8_t) '0'))
    {
        /* Place the minus sign in the output buffer. */
        pcBuf[pos] = (char) '-';
 8001a1e:	f04f 0c2d 	mov.w	ip, #45	; 0x2d
    if (neg != 0U)
 8001a22:	b14b      	cbz	r3, 8001a38 <UART_convertVal+0x3c>
    if ((neg != 0U) && ((int8_t)cFill == (int8_t) '0'))
 8001a24:	fa4f fe87 	sxtb.w	lr, r7
 8001a28:	1e64      	subs	r4, r4, #1
 8001a2a:	f1be 0f30 	cmp.w	lr, #48	; 0x30
        count--;
 8001a2e:	d103      	bne.n	8001a38 <UART_convertVal+0x3c>
        pcBuf[pos] = (char) '-';
 8001a30:	f800 c001 	strb.w	ip, [r0, r1]
        pos++;

        /* The minus sign has been placed, so turn off the
         * negative flag. */
        neg = 0;
 8001a34:	2300      	movs	r3, #0
 8001a36:	1c49      	adds	r1, r1, #1
    }

    /* Provide additional padding at the beginning of the
     * string conversion if needed. */
    if ((count > 1u) && (count < 16u))
 8001a38:	f1a4 0e02 	sub.w	lr, r4, #2
 8001a3c:	f1be 0f0e 	cmp.w	lr, #14
 8001a40:	d204      	bcs.n	8001a4c <UART_convertVal+0x50>
 8001a42:	1e64      	subs	r4, r4, #1
    {
        for (count--; count != 0U; count--)
 8001a44:	d002      	beq.n	8001a4c <UART_convertVal+0x50>
        {
            pcBuf[pos] = cFill;
 8001a46:	5447      	strb	r7, [r0, r1]
 8001a48:	1c49      	adds	r1, r1, #1
        for (count--; count != 0U; count--)
 8001a4a:	e7fa      	b.n	8001a42 <UART_convertVal+0x46>
        }
    }

    /* If the value is negative, then place the minus sign
     * before the number. */
    if (neg != 0U)
 8001a4c:	b113      	cbz	r3, 8001a54 <UART_convertVal+0x58>
    {
        /* Place the minus sign in the output buffer. */
        pcBuf[pos] = (char) '-';
 8001a4e:	f800 c001 	strb.w	ip, [r0, r1]
 8001a52:	1c49      	adds	r1, r1, #1
    }

    /* Convert the value into a string. */
    for (; ulIdx != 0U; ulIdx /= ulBase)
    {
        pcBuf[pos] = g_pcHex[(ulValue / ulIdx) % ulBase];
 8001a54:	4b09      	ldr	r3, [pc, #36]	; (8001a7c <UART_convertVal+0x80>)
 8001a56:	681b      	ldr	r3, [r3, #0]
    for (; ulIdx != 0U; ulIdx /= ulBase)
 8001a58:	b15d      	cbz	r5, 8001a72 <UART_convertVal+0x76>
        pcBuf[pos] = g_pcHex[(ulValue / ulIdx) % ulBase];
 8001a5a:	fbb6 f4f5 	udiv	r4, r6, r5
 8001a5e:	fbb4 f7f2 	udiv	r7, r4, r2
 8001a62:	fb02 4417 	mls	r4, r2, r7, r4
    for (; ulIdx != 0U; ulIdx /= ulBase)
 8001a66:	fbb5 f5f2 	udiv	r5, r5, r2
        pcBuf[pos] = g_pcHex[(ulValue / ulIdx) % ulBase];
 8001a6a:	5d1c      	ldrb	r4, [r3, r4]
 8001a6c:	5444      	strb	r4, [r0, r1]
    for (; ulIdx != 0U; ulIdx /= ulBase)
 8001a6e:	1c49      	adds	r1, r1, #1
 8001a70:	e7f2      	b.n	8001a58 <UART_convertVal+0x5c>
        pos++;
    }

    /* Write the string. */
    (void)UART_dataWrite(pcBuf, pos);
 8001a72:	f000 f805 	bl	8001a80 <UART_dataWrite>

    return 0;
 8001a76:	2000      	movs	r0, #0
}
 8001a78:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001a7a:	0000      	.short	0x0000
 8001a7c:	08003a18 	.word	0x08003a18

08001a80 <UART_dataWrite>:
{
 8001a80:	b530      	push	{r4, r5, lr}
 8001a82:	460d      	mov	r5, r1
 8001a84:	4604      	mov	r4, r0
    for (uIdx = 0; uIdx < ulLen; uIdx++)
 8001a86:	2300      	movs	r3, #0
{
 8001a88:	e009      	b.n	8001a9e <UART_dataWrite+0x1e>
        if (pcBuf[uIdx] == (char) '\n')
 8001a8a:	5ce0      	ldrb	r0, [r4, r3]
 8001a8c:	280a      	cmp	r0, #10
 8001a8e:	d102      	bne.n	8001a96 <UART_dataWrite+0x16>
            UART_putc(((uint8_t)('\r')));
 8001a90:	200d      	movs	r0, #13
 8001a92:	f000 f89b 	bl	8001bcc <UART_putc>
        UART_putc((uint8_t)pcBuf[uIdx]);
 8001a96:	5ce0      	ldrb	r0, [r4, r3]
 8001a98:	f000 f898 	bl	8001bcc <UART_putc>
 8001a9c:	1c5b      	adds	r3, r3, #1
    for (uIdx = 0; uIdx < ulLen; uIdx++)
 8001a9e:	42ab      	cmp	r3, r5
 8001aa0:	d3f3      	bcc.n	8001a8a <UART_dataWrite+0xa>
    return ((int32_t)uIdx);
 8001aa2:	4618      	mov	r0, r3
}
 8001aa4:	bd30      	pop	{r4, r5, pc}
	...

08001aa8 <UART_printf>:

void UART_printf(const char *pcString, ...)
{
 8001aa8:	b40f      	push	{r0, r1, r2, r3}
 8001aaa:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001aae:	b088      	sub	sp, #32
    va_list  vaArgP;
    int32_t temp_var = 0;
    const char *pStr = pcString;

    /* Start the varargs processing. */
    (void)va_start(vaArgP, pcString);
 8001ab0:	ad0f      	add	r5, sp, #60	; 0x3c
    char    *pcStr, pcBuf[16], cFill;
 8001ab2:	f10d 0810 	add.w	r8, sp, #16
{
 8001ab6:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8001ab8:	e079      	b.n	8001bae <UART_printf+0x106>

    /* Loop while there are more characters in the string. */
    while (*pStr != (char)0U)
    {
        /* Find the first non-% character, or the end of the string. */
        for (ulIdx = 0;
 8001aba:	2600      	movs	r6, #0
 8001abc:	e000      	b.n	8001ac0 <UART_printf+0x18>
 8001abe:	1c76      	adds	r6, r6, #1
             (pStr[ulIdx] != (char) '%') &&
 8001ac0:	5da0      	ldrb	r0, [r4, r6]
 8001ac2:	2825      	cmp	r0, #37	; 0x25
 8001ac4:	d001      	beq.n	8001aca <UART_printf+0x22>
             (pStr[ulIdx] != (char) '\0');
 8001ac6:	2800      	cmp	r0, #0
 8001ac8:	d1f9      	bne.n	8001abe <UART_printf+0x16>
             ulIdx++)
        {}

        /* Write this portion of the string. */
        (void)UART_dataWrite(pStr, ulIdx);
 8001aca:	4631      	mov	r1, r6
 8001acc:	4620      	mov	r0, r4
 8001ace:	f7ff ffd7 	bl	8001a80 <UART_dataWrite>

        /* Skip the portion of the string that was written. */
        pStr += ulIdx;
 8001ad2:	4434      	add	r4, r6

        /* See if the next character is a %. */
        if (*pStr == (char) '%')
 8001ad4:	7820      	ldrb	r0, [r4, #0]
 8001ad6:	2825      	cmp	r0, #37	; 0x25
 8001ad8:	d169      	bne.n	8001bae <UART_printf+0x106>
            /* Skip the %. */
            pStr++;

            /* Set the digit count to zero, and the fill character to space
             * (i.e. to the defaults). */
            ulCount = 0;
 8001ada:	2600      	movs	r6, #0
            cFill   = (char) ' ';
 8001adc:	2020      	movs	r0, #32

            /* Determine how to handle the next character. */ 
            while((*pStr >= (char)'0') && (*pStr <= (char)'9'))
 8001ade:	e00a      	b.n	8001af6 <UART_printf+0x4e>
            {
                /* If this is a zero, and it is the first digit, then the
                 * fill character is a zero instead of a space. */
                if ((pStr[-1] == (char) '0') && (ulCount == 0U))
 8001ae0:	f814 1c01 	ldrb.w	r1, [r4, #-1]
 8001ae4:	2930      	cmp	r1, #48	; 0x30
 8001ae6:	d101      	bne.n	8001aec <UART_printf+0x44>
 8001ae8:	b906      	cbnz	r6, 8001aec <UART_printf+0x44>
                {
                    cFill = (char) '0';
 8001aea:	2030      	movs	r0, #48	; 0x30
                }

                /* Update the digit count. */
                ulCount *= 10u;
 8001aec:	eb06 0186 	add.w	r1, r6, r6, lsl #2
 8001af0:	0049      	lsls	r1, r1, #1
 8001af2:	3930      	subs	r1, #48	; 0x30
                ulCount += ((uint32_t)(*pStr)) - (uint32_t) '0';
 8001af4:	1856      	adds	r6, r2, r1
            while((*pStr >= (char)'0') && (*pStr <= (char)'9'))
 8001af6:	f814 2f01 	ldrb.w	r2, [r4, #1]!
 8001afa:	f1a2 0130 	sub.w	r1, r2, #48	; 0x30
 8001afe:	2909      	cmp	r1, #9
 8001b00:	d9ee      	bls.n	8001ae0 <UART_printf+0x38>

                /* Get the next character. */
                pStr++;
            }
            switch (*pStr)
 8001b02:	b2d1      	uxtb	r1, r2
 8001b04:	2970      	cmp	r1, #112	; 0x70
 8001b06:	d043      	beq.n	8001b90 <UART_printf+0xe8>
 8001b08:	dc08      	bgt.n	8001b1c <UART_printf+0x74>
 8001b0a:	2925      	cmp	r1, #37	; 0x25
 8001b0c:	d04a      	beq.n	8001ba4 <UART_printf+0xfc>
 8001b0e:	2958      	cmp	r1, #88	; 0x58
 8001b10:	d03e      	beq.n	8001b90 <UART_printf+0xe8>
 8001b12:	2963      	cmp	r1, #99	; 0x63
 8001b14:	d00b      	beq.n	8001b2e <UART_printf+0x86>
 8001b16:	2964      	cmp	r1, #100	; 0x64
 8001b18:	d106      	bne.n	8001b28 <UART_printf+0x80>
 8001b1a:	e00d      	b.n	8001b38 <UART_printf+0x90>
 8001b1c:	2973      	cmp	r1, #115	; 0x73
 8001b1e:	d01e      	beq.n	8001b5e <UART_printf+0xb6>
 8001b20:	2975      	cmp	r1, #117	; 0x75
 8001b22:	d031      	beq.n	8001b88 <UART_printf+0xe0>
 8001b24:	2978      	cmp	r1, #120	; 0x78
 8001b26:	d033      	beq.n	8001b90 <UART_printf+0xe8>

                /* Handle all other commands. */
                default:
                {
                    /* Indicate an error. */
                    (void)UART_dataWrite("ERROR", 5u);
 8001b28:	2105      	movs	r1, #5
 8001b2a:	a025      	add	r0, pc, #148	; (adr r0, 8001bc0 <UART_printf+0x118>)

                    /* This command has been handled. */
                    break;
 8001b2c:	e03c      	b.n	8001ba8 <UART_printf+0x100>
                    ulValue = (uint32_t)va_arg(vaArgP, uint32_t);
 8001b2e:	cd01      	ldmia	r5!, {r0}
                    (void)UART_dataWrite((const char *) &ulValue, 1u);
 8001b30:	9003      	str	r0, [sp, #12]
 8001b32:	2101      	movs	r1, #1
 8001b34:	a803      	add	r0, sp, #12
                    break;
 8001b36:	e037      	b.n	8001ba8 <UART_printf+0x100>
                    ulValue = (uint32_t)va_arg(vaArgP, uint32_t);
 8001b38:	cd04      	ldmia	r5!, {r2}
                    ulPos = 0;
 8001b3a:	2100      	movs	r1, #0
                    if ((int32_t) ulValue < 0)
 8001b3c:	9203      	str	r2, [sp, #12]
 8001b3e:	2a00      	cmp	r2, #0
 8001b40:	da03      	bge.n	8001b4a <UART_printf+0xa2>
                        temp_var = (0 - ((int32_t)ulValue));
 8001b42:	4252      	negs	r2, r2
                        ulNeg = 1u;
 8001b44:	2301      	movs	r3, #1
 8001b46:	9203      	str	r2, [sp, #12]
 8001b48:	e000      	b.n	8001b4c <UART_printf+0xa4>
                        ulNeg = 0;
 8001b4a:	2300      	movs	r3, #0
                    (void)UART_convertVal(ulValue, ulPos, ulBase, ulNeg, ulCount, cFill, pcBuf);
 8001b4c:	e9cd 6000 	strd	r6, r0, [sp]
                    ulBase = 10u;
 8001b50:	220a      	movs	r2, #10
                    (void)UART_convertVal(ulValue, ulPos, ulBase, ulNeg, ulCount, cFill, pcBuf);
 8001b52:	f8cd 8008 	str.w	r8, [sp, #8]
 8001b56:	9803      	ldr	r0, [sp, #12]
 8001b58:	f7ff ff50 	bl	80019fc <UART_convertVal>
 8001b5c:	e026      	b.n	8001bac <UART_printf+0x104>
                    pcStr = va_arg(vaArgP, char *);
 8001b5e:	cd01      	ldmia	r5!, {r0}
                    for (ulIdx = 0; pcStr[ulIdx] != (char) '\0'; ulIdx++)
 8001b60:	2700      	movs	r7, #0
 8001b62:	e000      	b.n	8001b66 <UART_printf+0xbe>
 8001b64:	1c7f      	adds	r7, r7, #1
 8001b66:	5dc1      	ldrb	r1, [r0, r7]
 8001b68:	2900      	cmp	r1, #0
 8001b6a:	d1fb      	bne.n	8001b64 <UART_printf+0xbc>
                    (void)UART_dataWrite(pcStr, ulIdx);
 8001b6c:	4639      	mov	r1, r7
 8001b6e:	f7ff ff87 	bl	8001a80 <UART_dataWrite>
                    if (ulCount > ulIdx)
 8001b72:	42be      	cmp	r6, r7
 8001b74:	d91a      	bls.n	8001bac <UART_printf+0x104>
                        ulCount -= ulIdx;
 8001b76:	1bf6      	subs	r6, r6, r7
                        while ((ulCount--)  != 0U)
 8001b78:	e003      	b.n	8001b82 <UART_printf+0xda>
                            (void)UART_dataWrite(" ", 1u);
 8001b7a:	2101      	movs	r1, #1
 8001b7c:	a012      	add	r0, pc, #72	; (adr r0, 8001bc8 <UART_printf+0x120>)
 8001b7e:	f7ff ff7f 	bl	8001a80 <UART_dataWrite>
 8001b82:	1e76      	subs	r6, r6, #1
                        while ((ulCount--)  != 0U)
 8001b84:	d2f9      	bcs.n	8001b7a <UART_printf+0xd2>
 8001b86:	e011      	b.n	8001bac <UART_printf+0x104>
                    ulValue = (uint32_t)va_arg(vaArgP, uint32_t);
 8001b88:	cd80      	ldmia	r5!, {r7}
                    ulPos = 0;
 8001b8a:	2100      	movs	r1, #0
                    ulBase = 10u;
 8001b8c:	220a      	movs	r2, #10
                    break;
 8001b8e:	e002      	b.n	8001b96 <UART_printf+0xee>
                    ulValue = (uint32_t)va_arg(vaArgP, uint32_t);
 8001b90:	cd80      	ldmia	r5!, {r7}
                    ulPos = 0;
 8001b92:	2100      	movs	r1, #0
                    ulBase = 16u;
 8001b94:	2210      	movs	r2, #16
                    ulNeg = 0;
 8001b96:	e9cd 6000 	strd	r6, r0, [sp]
 8001b9a:	e9cd 8702 	strd	r8, r7, [sp, #8]
 8001b9e:	2300      	movs	r3, #0
 8001ba0:	4638      	mov	r0, r7
 8001ba2:	e7d9      	b.n	8001b58 <UART_printf+0xb0>
                    (void)UART_dataWrite(pStr - 1u, 1u);
 8001ba4:	2101      	movs	r1, #1
 8001ba6:	1e60      	subs	r0, r4, #1
                    (void)UART_dataWrite((const char *) &ulValue, 1u);
 8001ba8:	f7ff ff6a 	bl	8001a80 <UART_dataWrite>
 8001bac:	1c64      	adds	r4, r4, #1
    while (*pStr != (char)0U)
 8001bae:	7820      	ldrb	r0, [r4, #0]
 8001bb0:	2800      	cmp	r0, #0
 8001bb2:	d182      	bne.n	8001aba <UART_printf+0x12>
    }

    /* End the varargs processing. */
    va_end(vaArgP);

}
 8001bb4:	b008      	add	sp, #32
 8001bb6:	e8bd 01f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8}
 8001bba:	f85d fb14 	ldr.w	pc, [sp], #20
 8001bbe:	0000      	.short	0x0000
 8001bc0:	4f525245 	.word	0x4f525245
 8001bc4:	00000052 	.word	0x00000052
 8001bc8:	00000020 	.word	0x00000020

08001bcc <UART_putc>:
    log_buff.data[log_buff.write_pos++] = data;
 8001bcc:	4908      	ldr	r1, [pc, #32]	; (8001bf0 <UART_putc+0x24>)
 8001bce:	f8b1 2400 	ldrh.w	r2, [r1, #1024]	; 0x400
 8001bd2:	5488      	strb	r0, [r1, r2]
 8001bd4:	f8b1 0400 	ldrh.w	r0, [r1, #1024]	; 0x400
 8001bd8:	1c40      	adds	r0, r0, #1
 8001bda:	b280      	uxth	r0, r0
 8001bdc:	f8a1 0400 	strh.w	r0, [r1, #1024]	; 0x400
    if(log_buff.write_pos >= LOG_BUFF_SIZE)
 8001be0:	f5b0 6f80 	cmp.w	r0, #1024	; 0x400
{
 8001be4:	d302      	bcc.n	8001bec <UART_putc+0x20>
        log_buff.write_pos= 0;
 8001be6:	2000      	movs	r0, #0
 8001be8:	f8a1 0400 	strh.w	r0, [r1, #1024]	; 0x400
}
 8001bec:	4770      	bx	lr
 8001bee:	0000      	.short	0x0000
 8001bf0:	200000a8 	.word	0x200000a8

08001bf4 <UsageFault_Handler>:
  while (1)
 8001bf4:	e7fe      	b.n	8001bf4 <UsageFault_Handler>

08001bf6 <__NVIC_SetPriority>:
    NVIC->IP[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 8001bf6:	0709      	lsls	r1, r1, #28
 8001bf8:	0e09      	lsrs	r1, r1, #24
  if ((int32_t)(IRQn) >= 0)
 8001bfa:	2800      	cmp	r0, #0
{
 8001bfc:	db04      	blt.n	8001c08 <__NVIC_SetPriority+0x12>
 8001bfe:	f100 20e0 	add.w	r0, r0, #3758153728	; 0xe000e000
    NVIC->IP[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 8001c02:	f880 1400 	strb.w	r1, [r0, #1024]	; 0x400
}
 8001c06:	4770      	bx	lr
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 8001c08:	f000 000f 	and.w	r0, r0, #15
 8001c0c:	f100 20e0 	add.w	r0, r0, #3758153728	; 0xe000e000
 8001c10:	f880 1d14 	strb.w	r1, [r0, #3348]	; 0xd14
}
 8001c14:	4770      	bx	lr

08001c16 <configureTimerForRunTimeStats>:
/* USER CODE BEGIN 1 */
/* Functions needed when configGENERATE_RUN_TIME_STATS is on */
__weak void configureTimerForRunTimeStats(void)
{

}
 8001c16:	4770      	bx	lr

08001c18 <cpu_load>:
  uint32_t time =0;
 8001c18:	2600      	movs	r6, #0
	uint8_t pin = GPIO_PIN_SET;
 8001c1a:	2401      	movs	r4, #1
    UART_printf("timer2 %d\r\n",timer_50us);
 8001c1c:	4d18      	ldr	r5, [pc, #96]	; (8001c80 <cpu_load+0x68>)
		HAL_GPIO_WritePin(GPIOC,GPIO_PIN_13,pin);
 8001c1e:	f8df 9064 	ldr.w	r9, [pc, #100]	; 8001c84 <cpu_load+0x6c>
{
 8001c22:	b0c0      	sub	sp, #256	; 0x100
		HAL_GPIO_WritePin(GPIOC,GPIO_PIN_13,pin);
 8001c24:	f44f 5800 	mov.w	r8, #8192	; 0x2000
    memset(&cpu_info,0,sizeof(cpu_info));
 8001c28:	0227      	lsls	r7, r4, #8
    osDelay(1000);
 8001c2a:	f44f 7a7a 	mov.w	sl, #1000	; 0x3e8
    UART_printf("timer2 %d\r\n",timer_50us);
 8001c2e:	a016      	add	r0, pc, #88	; (adr r0, 8001c88 <cpu_load+0x70>)
 8001c30:	6869      	ldr	r1, [r5, #4]
 8001c32:	f7ff ff39 	bl	8001aa8 <UART_printf>
		UART_printf("hello world %d\r\n",timer1_loop-time);
 8001c36:	6828      	ldr	r0, [r5, #0]
 8001c38:	1b81      	subs	r1, r0, r6
 8001c3a:	a016      	add	r0, pc, #88	; (adr r0, 8001c94 <cpu_load+0x7c>)
 8001c3c:	f7ff ff34 	bl	8001aa8 <UART_printf>
		HAL_GPIO_WritePin(GPIOC,GPIO_PIN_13,pin);
 8001c40:	4622      	mov	r2, r4
 8001c42:	4641      	mov	r1, r8
 8001c44:	4648      	mov	r0, r9
 8001c46:	682e      	ldr	r6, [r5, #0]
 8001c48:	f7fe fe44 	bl	80008d4 <HAL_GPIO_WritePin>
    pin = !pin;
 8001c4c:	b1b4      	cbz	r4, 8001c7c <cpu_load+0x64>
 8001c4e:	2400      	movs	r4, #0
    memset(&cpu_info,0,sizeof(cpu_info));
 8001c50:	4639      	mov	r1, r7
 8001c52:	4668      	mov	r0, sp
 8001c54:	f7fe fc1c 	bl	8000490 <__rt_memclr_w>
    UART_printf("#######cpuload########\r\n");
 8001c58:	a013      	add	r0, pc, #76	; (adr r0, 8001ca8 <cpu_load+0x90>)
 8001c5a:	f7ff ff25 	bl	8001aa8 <UART_printf>
    memset(&cpu_info,0,sizeof(cpu_info));
 8001c5e:	4639      	mov	r1, r7
 8001c60:	4668      	mov	r0, sp
 8001c62:	f7fe fc15 	bl	8000490 <__rt_memclr_w>
    vTaskGetRunTimeStats(&cpu_info);
 8001c66:	4668      	mov	r0, sp
 8001c68:	f001 f878 	bl	8002d5c <vTaskGetRunTimeStats>
    UART_printf("%s",cpu_info);
 8001c6c:	4669      	mov	r1, sp
 8001c6e:	a015      	add	r0, pc, #84	; (adr r0, 8001cc4 <cpu_load+0xac>)
 8001c70:	f7ff ff1a 	bl	8001aa8 <UART_printf>
    osDelay(1000);
 8001c74:	4650      	mov	r0, sl
 8001c76:	f000 f8db 	bl	8001e30 <osDelay>
 8001c7a:	e7d8      	b.n	8001c2e <cpu_load+0x16>
    pin = !pin;
 8001c7c:	2401      	movs	r4, #1
 8001c7e:	e7e7      	b.n	8001c50 <cpu_load+0x38>
 8001c80:	20000004 	.word	0x20000004
 8001c84:	40011000 	.word	0x40011000
 8001c88:	656d6974 	.word	0x656d6974
 8001c8c:	25203272 	.word	0x25203272
 8001c90:	000a0d64 	.word	0x000a0d64
 8001c94:	6c6c6568 	.word	0x6c6c6568
 8001c98:	6f77206f 	.word	0x6f77206f
 8001c9c:	20646c72 	.word	0x20646c72
 8001ca0:	0a0d6425 	.word	0x0a0d6425
 8001ca4:	00000000 	.word	0x00000000
 8001ca8:	23232323 	.word	0x23232323
 8001cac:	63232323 	.word	0x63232323
 8001cb0:	6f6c7570 	.word	0x6f6c7570
 8001cb4:	23236461 	.word	0x23236461
 8001cb8:	23232323 	.word	0x23232323
 8001cbc:	0a0d2323 	.word	0x0a0d2323
 8001cc0:	00000000 	.word	0x00000000
 8001cc4:	00007325 	.word	0x00007325

08001cc8 <eTaskGetState>:
/*-----------------------------------------------------------*/

#if( ( INCLUDE_eTaskGetState == 1 ) || ( configUSE_TRACE_FACILITY == 1 ) )

	eTaskState eTaskGetState( TaskHandle_t xTask )
	{
 8001cc8:	b570      	push	{r4, r5, r6, lr}
 8001cca:	4605      	mov	r5, r0
	eTaskState eReturn;
	List_t *pxStateList;
	const TCB_t * const pxTCB = ( TCB_t * ) xTask;

		configASSERT( pxTCB );
 8001ccc:	2d00      	cmp	r5, #0
	{
 8001cce:	d005      	beq.n	8001cdc <eTaskGetState+0x14>

		if( pxTCB == pxCurrentTCB )
 8001cd0:	4e15      	ldr	r6, [pc, #84]	; (8001d28 <eTaskGetState+0x60>)
 8001cd2:	6830      	ldr	r0, [r6, #0]
 8001cd4:	4285      	cmp	r5, r0
 8001cd6:	d109      	bne.n	8001cec <eTaskGetState+0x24>
		{
			/* The task calling this function is querying its own state. */
			eReturn = eRunning;
 8001cd8:	2000      	movs	r0, #0
				eReturn = eReady;
			}
		}

		return eReturn;
	} /*lint !e818 xTask cannot be a pointer to const because it is a typedef. */
 8001cda:	bd70      	pop	{r4, r5, r6, pc}
}
/*-----------------------------------------------------------*/

static portFORCE_INLINE void vPortRaiseBASEPRI( void )
{
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8001cdc:	2050      	movs	r0, #80	; 0x50

	__asm
	{
		/* Set BASEPRI to the max syscall priority to effect a critical
		section. */
		msr basepri, ulNewBASEPRI
 8001cde:	f380 8811 	msr	BASEPRI, r0
		dsb
 8001ce2:	f3bf 8f4f 	dsb	sy
		isb
 8001ce6:	f3bf 8f6f 	isb	sy
		configASSERT( pxTCB );
 8001cea:	e7fe      	b.n	8001cea <eTaskGetState+0x22>
			taskENTER_CRITICAL();
 8001cec:	f000 fef8 	bl	8002ae0 <vPortEnterCritical>
				pxStateList = ( List_t * ) listLIST_ITEM_CONTAINER( &( pxTCB->xStateListItem ) );
 8001cf0:	696c      	ldr	r4, [r5, #20]
			taskEXIT_CRITICAL();
 8001cf2:	f000 ff15 	bl	8002b20 <vPortExitCritical>
			if( ( pxStateList == pxDelayedTaskList ) || ( pxStateList == pxOverflowDelayedTaskList ) )
 8001cf6:	6870      	ldr	r0, [r6, #4]
 8001cf8:	4284      	cmp	r4, r0
 8001cfa:	d002      	beq.n	8001d02 <eTaskGetState+0x3a>
 8001cfc:	68b0      	ldr	r0, [r6, #8]
 8001cfe:	4284      	cmp	r4, r0
 8001d00:	d101      	bne.n	8001d06 <eTaskGetState+0x3e>
				eReturn = eBlocked;
 8001d02:	2002      	movs	r0, #2
	} /*lint !e818 xTask cannot be a pointer to const because it is a typedef. */
 8001d04:	bd70      	pop	{r4, r5, r6, pc}
				else if( pxStateList == &xSuspendedTaskList )
 8001d06:	4809      	ldr	r0, [pc, #36]	; (8001d2c <eTaskGetState+0x64>)
 8001d08:	4284      	cmp	r4, r0
 8001d0a:	d105      	bne.n	8001d18 <eTaskGetState+0x50>
					if( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) == NULL )
 8001d0c:	6aa8      	ldr	r0, [r5, #40]	; 0x28
 8001d0e:	b108      	cbz	r0, 8001d14 <eTaskGetState+0x4c>
						eReturn = eBlocked;
 8001d10:	2002      	movs	r0, #2
	} /*lint !e818 xTask cannot be a pointer to const because it is a typedef. */
 8001d12:	bd70      	pop	{r4, r5, r6, pc}
						eReturn = eSuspended;
 8001d14:	2003      	movs	r0, #3
	} /*lint !e818 xTask cannot be a pointer to const because it is a typedef. */
 8001d16:	bd70      	pop	{r4, r5, r6, pc}
				else if( ( pxStateList == &xTasksWaitingTermination ) || ( pxStateList == NULL ) )
 8001d18:	4805      	ldr	r0, [pc, #20]	; (8001d30 <eTaskGetState+0x68>)
 8001d1a:	4284      	cmp	r4, r0
 8001d1c:	d002      	beq.n	8001d24 <eTaskGetState+0x5c>
 8001d1e:	b10c      	cbz	r4, 8001d24 <eTaskGetState+0x5c>
				eReturn = eReady;
 8001d20:	2001      	movs	r0, #1
	} /*lint !e818 xTask cannot be a pointer to const because it is a typedef. */
 8001d22:	bd70      	pop	{r4, r5, r6, pc}
					eReturn = eDeleted;
 8001d24:	2004      	movs	r0, #4
	} /*lint !e818 xTask cannot be a pointer to const because it is a typedef. */
 8001d26:	bd70      	pop	{r4, r5, r6, pc}
 8001d28:	20000028 	.word	0x20000028
 8001d2c:	20000abc 	.word	0x20000abc
 8001d30:	20000aa8 	.word	0x20000aa8

08001d34 <getRunTimeCounterValue>:
    return timer_50us;
 8001d34:	4801      	ldr	r0, [pc, #4]	; (8001d3c <getRunTimeCounterValue+0x8>)
 8001d36:	6840      	ldr	r0, [r0, #4]
}
 8001d38:	4770      	bx	lr
 8001d3a:	0000      	.short	0x0000
 8001d3c:	20000004 	.word	0x20000004

08001d40 <log_buffer_flush>:
{
 8001d40:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    uint8_t data = 0;
 8001d42:	2500      	movs	r5, #0
 8001d44:	f88d 5000 	strb.w	r5, [sp]
        data = log_buff.data[log_buff.read_pos++];
 8001d48:	4c0e      	ldr	r4, [pc, #56]	; (8001d84 <log_buffer_flush+0x44>)
        HAL_UART_Transmit(s_uart_handle,&data,sizeof(data),0xff);
 8001d4a:	4e0f      	ldr	r6, [pc, #60]	; (8001d88 <log_buffer_flush+0x48>)
        if(log_buff.read_pos>=LOG_BUFF_SIZE)
 8001d4c:	f44f 6780 	mov.w	r7, #1024	; 0x400
{
 8001d50:	e011      	b.n	8001d76 <log_buffer_flush+0x36>
        data = log_buff.data[log_buff.read_pos++];
 8001d52:	5c21      	ldrb	r1, [r4, r0]
 8001d54:	f88d 1000 	strb.w	r1, [sp]
 8001d58:	1c40      	adds	r0, r0, #1
 8001d5a:	f8a4 0402 	strh.w	r0, [r4, #1026]	; 0x402
        HAL_UART_Transmit(s_uart_handle,&data,sizeof(data),0xff);
 8001d5e:	23ff      	movs	r3, #255	; 0xff
 8001d60:	2201      	movs	r2, #1
 8001d62:	4669      	mov	r1, sp
 8001d64:	6830      	ldr	r0, [r6, #0]
 8001d66:	f7ff fb7f 	bl	8001468 <HAL_UART_Transmit>
        if(log_buff.read_pos>=LOG_BUFF_SIZE)
 8001d6a:	f8b4 0402 	ldrh.w	r0, [r4, #1026]	; 0x402
 8001d6e:	42b8      	cmp	r0, r7
 8001d70:	d301      	bcc.n	8001d76 <log_buffer_flush+0x36>
            log_buff.read_pos= 0;
 8001d72:	f8a4 5402 	strh.w	r5, [r4, #1026]	; 0x402
    while(log_buff.read_pos != log_buff.write_pos)
 8001d76:	f8b4 0402 	ldrh.w	r0, [r4, #1026]	; 0x402
 8001d7a:	f8b4 1400 	ldrh.w	r1, [r4, #1024]	; 0x400
 8001d7e:	4288      	cmp	r0, r1
 8001d80:	d1e7      	bne.n	8001d52 <log_buffer_flush+0x12>
}
 8001d82:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8001d84:	200000a8 	.word	0x200000a8
 8001d88:	20000000 	.word	0x20000000

08001d8c <main>:
  HAL_Init();
 8001d8c:	f7fe fdb6 	bl	80008fc <HAL_Init>
  SystemClock_Config();
 8001d90:	f7ff fcae 	bl	80016f0 <SystemClock_Config>
  MX_GPIO_Init();
 8001d94:	f7ff fbb6 	bl	8001504 <MX_GPIO_Init>
  MX_TIM1_Init();
 8001d98:	f7ff fbec 	bl	8001574 <MX_TIM1_Init>
  huart1.Instance = USART1;
 8001d9c:	481e      	ldr	r0, [pc, #120]	; (8001e18 <main+0x8c>)
 8001d9e:	491d      	ldr	r1, [pc, #116]	; (8001e14 <main+0x88>)
  huart1.Init.Mode = UART_MODE_TX_RX;
 8001da0:	220c      	movs	r2, #12
  huart1.Init.BaudRate = 115200;
 8001da2:	6001      	str	r1, [r0, #0]
 8001da4:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
  huart1.Init.WordLength = UART_WORDLENGTH_8B;
 8001da8:	6041      	str	r1, [r0, #4]
 8001daa:	2100      	movs	r1, #0
  huart1.Init.StopBits = UART_STOPBITS_1;
 8001dac:	6081      	str	r1, [r0, #8]
  huart1.Init.Mode = UART_MODE_TX_RX;
 8001dae:	60c1      	str	r1, [r0, #12]
 8001db0:	e9c0 1204 	strd	r1, r2, [r0, #16]
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
 8001db4:	6181      	str	r1, [r0, #24]
  if (HAL_UART_Init(&huart1) != HAL_OK)
 8001db6:	61c1      	str	r1, [r0, #28]
 8001db8:	f7ff faec 	bl	8001394 <HAL_UART_Init>
 8001dbc:	b108      	cbz	r0, 8001dc2 <main+0x36>
  __disable_irq();
 8001dbe:	b672      	cpsid	i
  while (1)
 8001dc0:	e7fe      	b.n	8001dc0 <main+0x34>
  MX_TIM3_Init();
 8001dc2:	f7ff fc3d 	bl	8001640 <MX_TIM3_Init>
  MX_TIM2_Init();
 8001dc6:	f7ff fc09 	bl	80015dc <MX_TIM2_Init>
  osKernelInitialize();
 8001dca:	f000 f84d 	bl	8001e68 <osKernelInitialize>
  defaultTaskHandle = osThreadNew(StartDefaultTask, NULL, &defaultTask_attributes);
 8001dce:	4a13      	ldr	r2, [pc, #76]	; (8001e1c <main+0x90>)
 8001dd0:	2100      	movs	r1, #0
 8001dd2:	4813      	ldr	r0, [pc, #76]	; (8001e20 <main+0x94>)
 8001dd4:	f000 f884 	bl	8001ee0 <osThreadNew>
 8001dd8:	4c12      	ldr	r4, [pc, #72]	; (8001e24 <main+0x98>)
  mylogTaskHandle = osThreadNew(StartTask02, NULL, &mylogTask_attributes);
 8001dda:	4a10      	ldr	r2, [pc, #64]	; (8001e1c <main+0x90>)
 8001ddc:	2100      	movs	r1, #0
 8001dde:	60a0      	str	r0, [r4, #8]
 8001de0:	3224      	adds	r2, #36	; 0x24
 8001de2:	4811      	ldr	r0, [pc, #68]	; (8001e28 <main+0x9c>)
 8001de4:	f000 f87c 	bl	8001ee0 <osThreadNew>
  myTask03Handle = osThreadNew(cpu_load, NULL, &myTask03_attributes);
 8001de8:	4a0c      	ldr	r2, [pc, #48]	; (8001e1c <main+0x90>)
 8001dea:	60e0      	str	r0, [r4, #12]
 8001dec:	3248      	adds	r2, #72	; 0x48
 8001dee:	2100      	movs	r1, #0
 8001df0:	480e      	ldr	r0, [pc, #56]	; (8001e2c <main+0xa0>)
 8001df2:	f000 f875 	bl	8001ee0 <osThreadNew>
	HAL_TIM_Base_Start_IT(&htim3);
 8001df6:	6120      	str	r0, [r4, #16]
 8001df8:	4807      	ldr	r0, [pc, #28]	; (8001e18 <main+0x8c>)
 8001dfa:	3848      	subs	r0, #72	; 0x48
 8001dfc:	f7ff f934 	bl	8001068 <HAL_TIM_Base_Start_IT>
	HAL_TIM_Base_Start_IT(&htim2); 
 8001e00:	4805      	ldr	r0, [pc, #20]	; (8001e18 <main+0x8c>)
 8001e02:	3890      	subs	r0, #144	; 0x90
 8001e04:	f7ff f930 	bl	8001068 <HAL_TIM_Base_Start_IT>
	uart_printf_init(&huart1);
 8001e08:	4803      	ldr	r0, [pc, #12]	; (8001e18 <main+0x8c>)
 8001e0a:	f000 fda9 	bl	8002960 <uart_printf_init>
  osKernelStart();
 8001e0e:	f000 f847 	bl	8001ea0 <osKernelStart>
  while (1)
 8001e12:	e7fe      	b.n	8001e12 <main+0x86>
 8001e14:	40013800 	.word	0x40013800
 8001e18:	20000584 	.word	0x20000584
 8001e1c:	08003a1c 	.word	0x08003a1c
 8001e20:	080016ad 	.word	0x080016ad
 8001e24:	20000004 	.word	0x20000004
 8001e28:	080016c9 	.word	0x080016c9
 8001e2c:	08001c19 	.word	0x08001c19

08001e30 <osDelay>:

  /* Return flags before clearing */
  return (rflags);
}

osStatus_t osDelay (uint32_t ticks) {
 8001e30:	b510      	push	{r4, lr}
 8001e32:	4601      	mov	r1, r0
  \return               IPSR Register value
 */
__STATIC_INLINE uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __ASM("ipsr");
  return(__regIPSR);
 8001e34:	f3ef 8005 	mrs	r0, IPSR
  osStatus_t stat;

  if (IS_IRQ()) {
 8001e38:	b948      	cbnz	r0, 8001e4e <osDelay+0x1e>
  \return               Priority Mask value
 */
__STATIC_INLINE uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __ASM("primask");
  return(__regPriMask);
 8001e3a:	f3ef 8010 	mrs	r0, PRIMASK
 8001e3e:	b930      	cbnz	r0, 8001e4e <osDelay+0x1e>
 8001e40:	4808      	ldr	r0, [pc, #32]	; (8001e64 <osDelay+0x34>)
 8001e42:	6800      	ldr	r0, [r0, #0]
 8001e44:	2802      	cmp	r0, #2
 8001e46:	d105      	bne.n	8001e54 <osDelay+0x24>
  \return               Base Priority register value
 */
__STATIC_INLINE uint32_t  __get_BASEPRI(void)
{
  register uint32_t __regBasePri         __ASM("basepri");
  return(__regBasePri);
 8001e48:	f3ef 8011 	mrs	r0, BASEPRI
 8001e4c:	b110      	cbz	r0, 8001e54 <osDelay+0x24>
    stat = osErrorISR;
 8001e4e:	f06f 0405 	mvn.w	r4, #5
 8001e52:	e004      	b.n	8001e5e <osDelay+0x2e>
  }
  else {
    stat = osOK;
 8001e54:	2400      	movs	r4, #0

    if (ticks != 0U) {
 8001e56:	b111      	cbz	r1, 8001e5e <osDelay+0x2e>
      vTaskDelay(ticks);
 8001e58:	4608      	mov	r0, r1
 8001e5a:	f000 ff1b 	bl	8002c94 <vTaskDelay>
    }
  }

  return (stat);
 8001e5e:	4620      	mov	r0, r4
}
 8001e60:	bd10      	pop	{r4, pc}
 8001e62:	0000      	.short	0x0000
 8001e64:	20000080 	.word	0x20000080

08001e68 <osKernelInitialize>:
  return(__regIPSR);
 8001e68:	f3ef 8005 	mrs	r0, IPSR
  if (IS_IRQ()) {
 8001e6c:	2800      	cmp	r0, #0
osStatus_t osKernelInitialize (void) {
 8001e6e:	d109      	bne.n	8001e84 <osKernelInitialize+0x1c>
  return(__regPriMask);
 8001e70:	f3ef 8010 	mrs	r0, PRIMASK
  if (IS_IRQ()) {
 8001e74:	b930      	cbnz	r0, 8001e84 <osKernelInitialize+0x1c>
 8001e76:	4a09      	ldr	r2, [pc, #36]	; (8001e9c <osKernelInitialize+0x34>)
 8001e78:	6810      	ldr	r0, [r2, #0]
 8001e7a:	2802      	cmp	r0, #2
 8001e7c:	d105      	bne.n	8001e8a <osKernelInitialize+0x22>
  return(__regBasePri);
 8001e7e:	f3ef 8111 	mrs	r1, BASEPRI
 8001e82:	b111      	cbz	r1, 8001e8a <osKernelInitialize+0x22>
    stat = osErrorISR;
 8001e84:	f06f 0005 	mvn.w	r0, #5
}
 8001e88:	4770      	bx	lr
    if (KernelState == osKernelInactive) {
 8001e8a:	b110      	cbz	r0, 8001e92 <osKernelInitialize+0x2a>
      stat = osError;
 8001e8c:	f04f 30ff 	mov.w	r0, #4294967295
}
 8001e90:	4770      	bx	lr
      KernelState = osKernelReady;
 8001e92:	2001      	movs	r0, #1
 8001e94:	6010      	str	r0, [r2, #0]
      stat = osOK;
 8001e96:	2000      	movs	r0, #0
}
 8001e98:	4770      	bx	lr
 8001e9a:	0000      	.short	0x0000
 8001e9c:	20000080 	.word	0x20000080

08001ea0 <osKernelStart>:
osStatus_t osKernelStart (void) {
 8001ea0:	b510      	push	{r4, lr}
  return(__regIPSR);
 8001ea2:	f3ef 8005 	mrs	r0, IPSR
  if (IS_IRQ()) {
 8001ea6:	2800      	cmp	r0, #0
osStatus_t osKernelStart (void) {
 8001ea8:	d109      	bne.n	8001ebe <osKernelStart+0x1e>
  return(__regPriMask);
 8001eaa:	f3ef 8010 	mrs	r0, PRIMASK
  if (IS_IRQ()) {
 8001eae:	b930      	cbnz	r0, 8001ebe <osKernelStart+0x1e>
 8001eb0:	4a0a      	ldr	r2, [pc, #40]	; (8001edc <osKernelStart+0x3c>)
 8001eb2:	6810      	ldr	r0, [r2, #0]
 8001eb4:	2802      	cmp	r0, #2
 8001eb6:	d105      	bne.n	8001ec4 <osKernelStart+0x24>
  return(__regBasePri);
 8001eb8:	f3ef 8111 	mrs	r1, BASEPRI
 8001ebc:	b111      	cbz	r1, 8001ec4 <osKernelStart+0x24>
    stat = osErrorISR;
 8001ebe:	f06f 0005 	mvn.w	r0, #5
}
 8001ec2:	bd10      	pop	{r4, pc}
    if (KernelState == osKernelReady) {
 8001ec4:	2801      	cmp	r0, #1
 8001ec6:	d002      	beq.n	8001ece <osKernelStart+0x2e>
      stat = osError;
 8001ec8:	f04f 30ff 	mov.w	r0, #4294967295
}
 8001ecc:	bd10      	pop	{r4, pc}
      KernelState = osKernelRunning;
 8001ece:	2002      	movs	r0, #2
 8001ed0:	6010      	str	r0, [r2, #0]
      vTaskStartScheduler();
 8001ed2:	f000 fff1 	bl	8002eb8 <vTaskStartScheduler>
      stat = osOK;
 8001ed6:	2000      	movs	r0, #0
}
 8001ed8:	bd10      	pop	{r4, pc}
 8001eda:	0000      	.short	0x0000
 8001edc:	20000080 	.word	0x20000080

08001ee0 <osThreadNew>:
osThreadId_t osThreadNew (osThreadFunc_t func, void *argument, const osThreadAttr_t *attr) {
 8001ee0:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8001ee4:	b085      	sub	sp, #20
 8001ee6:	460b      	mov	r3, r1
 8001ee8:	f04f 0700 	mov.w	r7, #0
  hTask = NULL;
 8001eec:	9703      	str	r7, [sp, #12]
  return(__regIPSR);
 8001eee:	f3ef 8105 	mrs	r1, IPSR
  if (!IS_IRQ() && (func != NULL)) {
 8001ef2:	2900      	cmp	r1, #0
 8001ef4:	d15d      	bne.n	8001fb2 <osThreadNew+0xd2>
  return(__regPriMask);
 8001ef6:	f3ef 8110 	mrs	r1, PRIMASK
 8001efa:	2900      	cmp	r1, #0
 8001efc:	d159      	bne.n	8001fb2 <osThreadNew+0xd2>
 8001efe:	492f      	ldr	r1, [pc, #188]	; (8001fbc <osThreadNew+0xdc>)
 8001f00:	6809      	ldr	r1, [r1, #0]
 8001f02:	2902      	cmp	r1, #2
 8001f04:	d103      	bne.n	8001f0e <osThreadNew+0x2e>
  return(__regBasePri);
 8001f06:	f3ef 8111 	mrs	r1, BASEPRI
 8001f0a:	2900      	cmp	r1, #0
 8001f0c:	d151      	bne.n	8001fb2 <osThreadNew+0xd2>
 8001f0e:	2800      	cmp	r0, #0
 8001f10:	d04f      	beq.n	8001fb2 <osThreadNew+0xd2>
    stack = configMINIMAL_STACK_SIZE;
 8001f12:	2480      	movs	r4, #128	; 0x80
    prio  = (UBaseType_t)osPriorityNormal;
 8001f14:	f04f 0c18 	mov.w	ip, #24
    empty = '\0';
 8001f18:	9704      	str	r7, [sp, #16]
    name  = &empty;
 8001f1a:	f10d 0910 	add.w	r9, sp, #16
    mem   = -1;
 8001f1e:	f04f 31ff 	mov.w	r1, #4294967295
    if (attr != NULL) {
 8001f22:	b352      	cbz	r2, 8001f7a <osThreadNew+0x9a>
      if (attr->name != NULL) {
 8001f24:	6816      	ldr	r6, [r2, #0]
 8001f26:	b106      	cbz	r6, 8001f2a <osThreadNew+0x4a>
        name = attr->name;
 8001f28:	46b1      	mov	r9, r6
      if (attr->priority != osPriorityNone) {
 8001f2a:	6995      	ldr	r5, [r2, #24]
 8001f2c:	b105      	cbz	r5, 8001f30 <osThreadNew+0x50>
        prio = (UBaseType_t)attr->priority;
 8001f2e:	46ac      	mov	ip, r5
      if ((prio < osPriorityIdle) || (prio > osPriorityISR) || ((attr->attr_bits & osThreadJoinable) == osThreadJoinable)) {
 8001f30:	f1ac 0501 	sub.w	r5, ip, #1
 8001f34:	2d38      	cmp	r5, #56	; 0x38
 8001f36:	d203      	bcs.n	8001f40 <osThreadNew+0x60>
 8001f38:	7915      	ldrb	r5, [r2, #4]
 8001f3a:	f015 0f01 	tst.w	r5, #1
 8001f3e:	d003      	beq.n	8001f48 <osThreadNew+0x68>
}
 8001f40:	b005      	add	sp, #20
        return (NULL);
 8001f42:	2000      	movs	r0, #0
}
 8001f44:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
      if (attr->stack_size > 0U) {
 8001f48:	6955      	ldr	r5, [r2, #20]
 8001f4a:	b105      	cbz	r5, 8001f4e <osThreadNew+0x6e>
        stack = attr->stack_size / sizeof(StackType_t);
 8001f4c:	08ac      	lsrs	r4, r5, #2
      if ((attr->cb_mem    != NULL) && (attr->cb_size    >= sizeof(StaticTask_t)) &&
 8001f4e:	f8d2 8008 	ldr.w	r8, [r2, #8]
 8001f52:	f1b8 0f00 	cmp.w	r8, #0
 8001f56:	d007      	beq.n	8001f68 <osThreadNew+0x88>
 8001f58:	68d6      	ldr	r6, [r2, #12]
 8001f5a:	2e60      	cmp	r6, #96	; 0x60
 8001f5c:	d304      	bcc.n	8001f68 <osThreadNew+0x88>
          (attr->stack_mem != NULL) && (attr->stack_size >  0U)) {
 8001f5e:	6916      	ldr	r6, [r2, #16]
 8001f60:	b116      	cbz	r6, 8001f68 <osThreadNew+0x88>
 8001f62:	b10d      	cbz	r5, 8001f68 <osThreadNew+0x88>
        mem = 1;
 8001f64:	2101      	movs	r1, #1
 8001f66:	e009      	b.n	8001f7c <osThreadNew+0x9c>
        if ((attr->cb_mem == NULL) && (attr->cb_size == 0U) && (attr->stack_mem == NULL)) {
 8001f68:	f1b8 0f00 	cmp.w	r8, #0
 8001f6c:	d106      	bne.n	8001f7c <osThreadNew+0x9c>
 8001f6e:	68d5      	ldr	r5, [r2, #12]
 8001f70:	b925      	cbnz	r5, 8001f7c <osThreadNew+0x9c>
 8001f72:	6915      	ldr	r5, [r2, #16]
 8001f74:	b915      	cbnz	r5, 8001f7c <osThreadNew+0x9c>
          mem = 0;
 8001f76:	2100      	movs	r1, #0
 8001f78:	e000      	b.n	8001f7c <osThreadNew+0x9c>
      mem = 0;
 8001f7a:	2100      	movs	r1, #0
    if (mem == 1) {
 8001f7c:	2901      	cmp	r1, #1
 8001f7e:	d001      	beq.n	8001f84 <osThreadNew+0xa4>
      if (mem == 0) {
 8001f80:	b161      	cbz	r1, 8001f9c <osThreadNew+0xbc>
 8001f82:	e016      	b.n	8001fb2 <osThreadNew+0xd2>
      hTask = xTaskCreateStatic ((TaskFunction_t)func, name, stack, argument, prio, (StackType_t  *)attr->stack_mem,
 8001f84:	6891      	ldr	r1, [r2, #8]
 8001f86:	6912      	ldr	r2, [r2, #16]
 8001f88:	9201      	str	r2, [sp, #4]
 8001f8a:	9102      	str	r1, [sp, #8]
 8001f8c:	f8cd c000 	str.w	ip, [sp]
 8001f90:	4622      	mov	r2, r4
 8001f92:	4649      	mov	r1, r9
 8001f94:	f001 fb46 	bl	8003624 <xTaskCreateStatic>
 8001f98:	9003      	str	r0, [sp, #12]
 8001f9a:	e00a      	b.n	8001fb2 <osThreadNew+0xd2>
        if (xTaskCreate ((TaskFunction_t)func, name, (uint16_t)stack, argument, prio, &hTask) != pdPASS) {
 8001f9c:	a903      	add	r1, sp, #12
 8001f9e:	9101      	str	r1, [sp, #4]
 8001fa0:	b2a2      	uxth	r2, r4
 8001fa2:	f8cd c000 	str.w	ip, [sp]
 8001fa6:	4649      	mov	r1, r9
 8001fa8:	f001 fb06 	bl	80035b8 <xTaskCreate>
 8001fac:	2801      	cmp	r0, #1
 8001fae:	d000      	beq.n	8001fb2 <osThreadNew+0xd2>
          hTask = NULL;
 8001fb0:	9703      	str	r7, [sp, #12]
  return ((osThreadId_t)hTask);
 8001fb2:	9803      	ldr	r0, [sp, #12]
}
 8001fb4:	b005      	add	sp, #20
 8001fb6:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001fba:	0000      	.short	0x0000
 8001fbc:	20000080 	.word	0x20000080

08001fc0 <prvAddCurrentTaskToDelayedList>:
#endif /* configUSE_TASK_NOTIFICATIONS */
/*-----------------------------------------------------------*/


static void prvAddCurrentTaskToDelayedList( TickType_t xTicksToWait, const BaseType_t xCanBlockIndefinitely )
{
 8001fc0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001fc4:	4604      	mov	r4, r0
 8001fc6:	460f      	mov	r7, r1
TickType_t xTimeToWake;
const TickType_t xConstTickCount = xTickCount;
 8001fc8:	4e13      	ldr	r6, [pc, #76]	; (8002018 <prvAddCurrentTaskToDelayedList+0x58>)
 8001fca:	6975      	ldr	r5, [r6, #20]
	}
	#endif

	/* Remove the task from the ready list before adding it to the blocked list
	as the same list item is used for both lists. */
	if( uxListRemove( &( pxCurrentTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
 8001fcc:	6830      	ldr	r0, [r6, #0]
 8001fce:	1d00      	adds	r0, r0, #4
 8001fd0:	f000 fcce 	bl	8002970 <uxListRemove>
		mtCOVERAGE_TEST_MARKER();
	}

	#if ( INCLUDE_vTaskSuspend == 1 )
	{
		if( ( xTicksToWait == portMAX_DELAY ) && ( xCanBlockIndefinitely != pdFALSE ) )
 8001fd4:	f1b4 3fff 	cmp.w	r4, #4294967295
 8001fd8:	d107      	bne.n	8001fea <prvAddCurrentTaskToDelayedList+0x2a>
 8001fda:	b137      	cbz	r7, 8001fea <prvAddCurrentTaskToDelayedList+0x2a>
		{
			/* Add the task to the suspended task list instead of a delayed task
			list to ensure it is not woken by a timing event.  It will block
			indefinitely. */
			vListInsertEnd( &xSuspendedTaskList, &( pxCurrentTCB->xStateListItem ) );
 8001fdc:	6830      	ldr	r0, [r6, #0]
 8001fde:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8001fe2:	1d01      	adds	r1, r0, #4
 8001fe4:	480d      	ldr	r0, [pc, #52]	; (800201c <prvAddCurrentTaskToDelayedList+0x5c>)
 8001fe6:	f000 bd6f 	b.w	8002ac8 <vListInsertEnd>
		else
		{
			/* Calculate the time at which the task should be woken if the event
			does not occur.  This may overflow but this doesn't matter, the
			kernel will manage it correctly. */
			xTimeToWake = xConstTickCount + xTicksToWait;
 8001fea:	442c      	add	r4, r5

			/* The list item will be inserted in wake time order. */
			listSET_LIST_ITEM_VALUE( &( pxCurrentTCB->xStateListItem ), xTimeToWake );
 8001fec:	6830      	ldr	r0, [r6, #0]
 8001fee:	6044      	str	r4, [r0, #4]

			if( xTimeToWake < xConstTickCount )
 8001ff0:	42ac      	cmp	r4, r5
 8001ff2:	d206      	bcs.n	8002002 <prvAddCurrentTaskToDelayedList+0x42>
			{
				/* Wake time has overflowed.  Place this item in the overflow
				list. */
				vListInsert( pxOverflowDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
 8001ff4:	6830      	ldr	r0, [r6, #0]
 8001ff6:	1d01      	adds	r1, r0, #4
 8001ff8:	68b0      	ldr	r0, [r6, #8]
 8001ffa:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8001ffe:	f000 bd48 	b.w	8002a92 <vListInsert>
			}
			else
			{
				/* The wake time has not overflowed, so the current block list
				is used. */
				vListInsert( pxDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
 8002002:	6830      	ldr	r0, [r6, #0]
 8002004:	1d01      	adds	r1, r0, #4
 8002006:	6870      	ldr	r0, [r6, #4]
 8002008:	f000 fd43 	bl	8002a92 <vListInsert>

				/* If the task entering the blocked state was placed at the
				head of the list of blocked tasks then xNextTaskUnblockTime
				needs to be updated too. */
				if( xTimeToWake < xNextTaskUnblockTime )
 800200c:	6b30      	ldr	r0, [r6, #48]	; 0x30
 800200e:	4284      	cmp	r4, r0
 8002010:	d200      	bcs.n	8002014 <prvAddCurrentTaskToDelayedList+0x54>
				{
					xNextTaskUnblockTime = xTimeToWake;
 8002012:	6334      	str	r4, [r6, #48]	; 0x30

		/* Avoid compiler warning when INCLUDE_vTaskSuspend is not 1. */
		( void ) xCanBlockIndefinitely;
	}
	#endif /* INCLUDE_vTaskSuspend */
}
 8002014:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002018:	20000028 	.word	0x20000028
 800201c:	20000abc 	.word	0x20000abc

08002020 <prvAddNewTaskToReadyList>:
{
 8002020:	b570      	push	{r4, r5, r6, lr}
 8002022:	4604      	mov	r4, r0
	taskENTER_CRITICAL();
 8002024:	f000 fd5c 	bl	8002ae0 <vPortEnterCritical>
		uxCurrentNumberOfTasks++;
 8002028:	4d1c      	ldr	r5, [pc, #112]	; (800209c <prvAddNewTaskToReadyList+0x7c>)
 800202a:	6928      	ldr	r0, [r5, #16]
 800202c:	1c40      	adds	r0, r0, #1
 800202e:	6128      	str	r0, [r5, #16]
		if( pxCurrentTCB == NULL )
 8002030:	6828      	ldr	r0, [r5, #0]
 8002032:	b110      	cbz	r0, 800203a <prvAddNewTaskToReadyList+0x1a>
			if( xSchedulerRunning == pdFALSE )
 8002034:	69e8      	ldr	r0, [r5, #28]
 8002036:	b138      	cbz	r0, 8002048 <prvAddNewTaskToReadyList+0x28>
 8002038:	e00c      	b.n	8002054 <prvAddNewTaskToReadyList+0x34>
			pxCurrentTCB = pxNewTCB;
 800203a:	602c      	str	r4, [r5, #0]
			if( uxCurrentNumberOfTasks == ( UBaseType_t ) 1 )
 800203c:	6928      	ldr	r0, [r5, #16]
 800203e:	2801      	cmp	r0, #1
 8002040:	d108      	bne.n	8002054 <prvAddNewTaskToReadyList+0x34>
				prvInitialiseTaskLists();
 8002042:	f000 f993 	bl	800236c <prvInitialiseTaskLists>
 8002046:	e005      	b.n	8002054 <prvAddNewTaskToReadyList+0x34>
				if( pxCurrentTCB->uxPriority <= pxNewTCB->uxPriority )
 8002048:	6828      	ldr	r0, [r5, #0]
 800204a:	6ae1      	ldr	r1, [r4, #44]	; 0x2c
 800204c:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
 800204e:	4288      	cmp	r0, r1
 8002050:	d800      	bhi.n	8002054 <prvAddNewTaskToReadyList+0x34>
					pxCurrentTCB = pxNewTCB;
 8002052:	602c      	str	r4, [r5, #0]
		uxTaskNumber++;
 8002054:	6ae8      	ldr	r0, [r5, #44]	; 0x2c
 8002056:	1c40      	adds	r0, r0, #1
 8002058:	62e8      	str	r0, [r5, #44]	; 0x2c
			pxNewTCB->uxTCBNumber = uxTaskNumber;
 800205a:	6460      	str	r0, [r4, #68]	; 0x44
		prvAddTaskToReadyList( pxNewTCB );
 800205c:	6ae0      	ldr	r0, [r4, #44]	; 0x2c
 800205e:	69a9      	ldr	r1, [r5, #24]
 8002060:	4288      	cmp	r0, r1
 8002062:	d900      	bls.n	8002066 <prvAddNewTaskToReadyList+0x46>
 8002064:	61a8      	str	r0, [r5, #24]
 8002066:	490e      	ldr	r1, [pc, #56]	; (80020a0 <prvAddNewTaskToReadyList+0x80>)
 8002068:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 800206c:	eb01 0080 	add.w	r0, r1, r0, lsl #2
 8002070:	1d21      	adds	r1, r4, #4
 8002072:	f000 fd29 	bl	8002ac8 <vListInsertEnd>
	taskEXIT_CRITICAL();
 8002076:	f000 fd53 	bl	8002b20 <vPortExitCritical>
	if( xSchedulerRunning != pdFALSE )
 800207a:	69e8      	ldr	r0, [r5, #28]
 800207c:	2800      	cmp	r0, #0
 800207e:	d00c      	beq.n	800209a <prvAddNewTaskToReadyList+0x7a>
		if( pxCurrentTCB->uxPriority < pxNewTCB->uxPriority )
 8002080:	6828      	ldr	r0, [r5, #0]
 8002082:	6ae1      	ldr	r1, [r4, #44]	; 0x2c
 8002084:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
 8002086:	4288      	cmp	r0, r1
 8002088:	d207      	bcs.n	800209a <prvAddNewTaskToReadyList+0x7a>
			taskYIELD_IF_USING_PREEMPTION();
 800208a:	4906      	ldr	r1, [pc, #24]	; (80020a4 <prvAddNewTaskToReadyList+0x84>)
 800208c:	f04f 5080 	mov.w	r0, #268435456	; 0x10000000
 8002090:	6008      	str	r0, [r1, #0]
 8002092:	f3bf 8f4f 	dsb	sy
 8002096:	f3bf 8f6f 	isb	sy
}
 800209a:	bd70      	pop	{r4, r5, r6, pc}
 800209c:	20000028 	.word	0x20000028
 80020a0:	2000060c 	.word	0x2000060c
 80020a4:	e000ed04 	.word	0xe000ed04

080020a8 <prvCheckForValidListAndQueue>:
	pxOverflowTimerList = pxTemp;
}
/*-----------------------------------------------------------*/

static void prvCheckForValidListAndQueue( void )
{
 80020a8:	b538      	push	{r3, r4, r5, lr}
	/* Check that the list from which active timers are referenced, and the
	queue used to communicate with the timer service, have been
	initialised. */
	taskENTER_CRITICAL();
 80020aa:	f000 fd19 	bl	8002ae0 <vPortEnterCritical>
	{
		if( xTimerQueue == NULL )
 80020ae:	4c0f      	ldr	r4, [pc, #60]	; (80020ec <prvCheckForValidListAndQueue+0x44>)
 80020b0:	68a0      	ldr	r0, [r4, #8]
 80020b2:	b9b8      	cbnz	r0, 80020e4 <prvCheckForValidListAndQueue+0x3c>
		{
			vListInitialise( &xActiveTimerList1 );
 80020b4:	480e      	ldr	r0, [pc, #56]	; (80020f0 <prvCheckForValidListAndQueue+0x48>)
 80020b6:	f000 fcde 	bl	8002a76 <vListInitialise>
			vListInitialise( &xActiveTimerList2 );
 80020ba:	480e      	ldr	r0, [pc, #56]	; (80020f4 <prvCheckForValidListAndQueue+0x4c>)
 80020bc:	f000 fcdb 	bl	8002a76 <vListInitialise>
			pxCurrentTimerList = &xActiveTimerList1;
 80020c0:	480b      	ldr	r0, [pc, #44]	; (80020f0 <prvCheckForValidListAndQueue+0x48>)
 80020c2:	6020      	str	r0, [r4, #0]
			pxOverflowTimerList = &xActiveTimerList2;
 80020c4:	3014      	adds	r0, #20
 80020c6:	6060      	str	r0, [r4, #4]
				/* The timer queue is allocated statically in case
				configSUPPORT_DYNAMIC_ALLOCATION is 0. */
				static StaticQueue_t xStaticTimerQueue; /*lint !e956 Ok to declare in this manner to prevent additional conditional compilation guards in other locations. */
				static uint8_t ucStaticTimerQueueStorage[ ( size_t ) configTIMER_QUEUE_LENGTH * sizeof( DaemonTaskMessage_t ) ]; /*lint !e956 Ok to declare in this manner to prevent additional conditional compilation guards in other locations. */

				xTimerQueue = xQueueCreateStatic( ( UBaseType_t ) configTIMER_QUEUE_LENGTH, ( UBaseType_t ) sizeof( DaemonTaskMessage_t ), &( ucStaticTimerQueueStorage[ 0 ] ), &xStaticTimerQueue );
 80020c8:	2000      	movs	r0, #0
 80020ca:	4b0b      	ldr	r3, [pc, #44]	; (80020f8 <prvCheckForValidListAndQueue+0x50>)
 80020cc:	9000      	str	r0, [sp, #0]
 80020ce:	f103 0250 	add.w	r2, r3, #80	; 0x50
 80020d2:	2110      	movs	r1, #16
 80020d4:	200a      	movs	r0, #10
 80020d6:	f000 fff5 	bl	80030c4 <xQueueGenericCreateStatic>
 80020da:	60a0      	str	r0, [r4, #8]
			}
			#endif

			#if ( configQUEUE_REGISTRY_SIZE > 0 )
			{
				if( xTimerQueue != NULL )
 80020dc:	b110      	cbz	r0, 80020e4 <prvCheckForValidListAndQueue+0x3c>
				{
					vQueueAddToRegistry( xTimerQueue, "TmrQ" );
 80020de:	a107      	add	r1, pc, #28	; (adr r1, 80020fc <prvCheckForValidListAndQueue+0x54>)
 80020e0:	f000 fd9e 	bl	8002c20 <vQueueAddToRegistry>
		else
		{
			mtCOVERAGE_TEST_MARKER();
		}
	}
	taskEXIT_CRITICAL();
 80020e4:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80020e8:	f000 bd1a 	b.w	8002b20 <vPortExitCritical>
 80020ec:	2000006c 	.word	0x2000006c
 80020f0:	20000ad0 	.word	0x20000ad0
 80020f4:	20000ae4 	.word	0x20000ae4
 80020f8:	20000af8 	.word	0x20000af8
 80020fc:	51726d54 	.word	0x51726d54
 8002100:	00000000 	.word	0x00000000

08002104 <prvCheckTasksWaitingTermination>:
{
 8002104:	b570      	push	{r4, r5, r6, lr}
		while( uxDeletedTasksWaitingCleanUp > ( UBaseType_t ) 0U )
 8002106:	4c0d      	ldr	r4, [pc, #52]	; (800213c <prvCheckTasksWaitingTermination+0x38>)
 8002108:	68e0      	ldr	r0, [r4, #12]
 800210a:	2800      	cmp	r0, #0
{
 800210c:	d015      	beq.n	800213a <prvCheckTasksWaitingTermination+0x36>
				pxTCB = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( ( &xTasksWaitingTermination ) );
 800210e:	4e0c      	ldr	r6, [pc, #48]	; (8002140 <prvCheckTasksWaitingTermination+0x3c>)
			taskENTER_CRITICAL();
 8002110:	f000 fce6 	bl	8002ae0 <vPortEnterCritical>
				pxTCB = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( ( &xTasksWaitingTermination ) );
 8002114:	68f0      	ldr	r0, [r6, #12]
 8002116:	68c5      	ldr	r5, [r0, #12]
				( void ) uxListRemove( &( pxTCB->xStateListItem ) );
 8002118:	1d28      	adds	r0, r5, #4
 800211a:	f000 fc29 	bl	8002970 <uxListRemove>
				--uxCurrentNumberOfTasks;
 800211e:	6920      	ldr	r0, [r4, #16]
 8002120:	1e40      	subs	r0, r0, #1
 8002122:	6120      	str	r0, [r4, #16]
				--uxDeletedTasksWaitingCleanUp;
 8002124:	68e0      	ldr	r0, [r4, #12]
 8002126:	1e40      	subs	r0, r0, #1
 8002128:	60e0      	str	r0, [r4, #12]
			taskEXIT_CRITICAL();
 800212a:	f000 fcf9 	bl	8002b20 <vPortExitCritical>
			prvDeleteTCB( pxTCB );
 800212e:	4628      	mov	r0, r5
 8002130:	f000 f851 	bl	80021d6 <prvDeleteTCB>
		while( uxDeletedTasksWaitingCleanUp > ( UBaseType_t ) 0U )
 8002134:	68e0      	ldr	r0, [r4, #12]
 8002136:	2800      	cmp	r0, #0
 8002138:	d1ea      	bne.n	8002110 <prvCheckTasksWaitingTermination+0xc>
}
 800213a:	bd70      	pop	{r4, r5, r6, pc}
 800213c:	20000028 	.word	0x20000028
 8002140:	20000aa8 	.word	0x20000aa8

08002144 <prvCopyDataFromQueue>:
	return xReturn;
}
/*-----------------------------------------------------------*/

static void prvCopyDataFromQueue( Queue_t * const pxQueue, void * const pvBuffer )
{
 8002144:	460b      	mov	r3, r1
	if( pxQueue->uxItemSize != ( UBaseType_t ) 0 )
 8002146:	6c02      	ldr	r2, [r0, #64]	; 0x40
 8002148:	2a00      	cmp	r2, #0
{
 800214a:	d00c      	beq.n	8002166 <prvCopyDataFromQueue+0x22>
	{
		pxQueue->u.pcReadFrom += pxQueue->uxItemSize;
 800214c:	68c1      	ldr	r1, [r0, #12]
 800214e:	4411      	add	r1, r2
 8002150:	60c1      	str	r1, [r0, #12]
		if( pxQueue->u.pcReadFrom >= pxQueue->pcTail ) /*lint !e946 MISRA exception justified as use of the relational operator is the cleanest solutions. */
 8002152:	f8d0 c004 	ldr.w	ip, [r0, #4]
 8002156:	4561      	cmp	r1, ip
 8002158:	d301      	bcc.n	800215e <prvCopyDataFromQueue+0x1a>
		{
			pxQueue->u.pcReadFrom = pxQueue->pcHead;
 800215a:	6801      	ldr	r1, [r0, #0]
 800215c:	60c1      	str	r1, [r0, #12]
		}
		else
		{
			mtCOVERAGE_TEST_MARKER();
		}
		( void ) memcpy( ( void * ) pvBuffer, ( void * ) pxQueue->u.pcReadFrom, ( size_t ) pxQueue->uxItemSize ); /*lint !e961 !e418 MISRA exception as the casts are only redundant for some ports.  Also previous logic ensures a null pointer can only be passed to memcpy() when the count is 0. */
 800215e:	68c1      	ldr	r1, [r0, #12]
 8002160:	4618      	mov	r0, r3
 8002162:	f7fe b948 	b.w	80003f6 <__rt_memcpy>
	}
}
 8002166:	4770      	bx	lr

08002168 <prvCopyDataToQueue>:
{
 8002168:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800216c:	4604      	mov	r4, r0
 800216e:	4616      	mov	r6, r2
BaseType_t xReturn = pdFALSE;
 8002170:	2700      	movs	r7, #0
	uxMessagesWaiting = pxQueue->uxMessagesWaiting;
 8002172:	6ba5      	ldr	r5, [r4, #56]	; 0x38
	if( pxQueue->uxItemSize == ( UBaseType_t ) 0 )
 8002174:	6c22      	ldr	r2, [r4, #64]	; 0x40
 8002176:	2a00      	cmp	r2, #0
{
 8002178:	d010      	beq.n	800219c <prvCopyDataToQueue+0x34>
	else if( xPosition == queueSEND_TO_BACK )
 800217a:	b1c6      	cbz	r6, 80021ae <prvCopyDataToQueue+0x46>
		( void ) memcpy( ( void * ) pxQueue->u.pcReadFrom, pvItemToQueue, ( size_t ) pxQueue->uxItemSize ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
 800217c:	68e0      	ldr	r0, [r4, #12]
 800217e:	f7fe f93a 	bl	80003f6 <__rt_memcpy>
		pxQueue->u.pcReadFrom -= pxQueue->uxItemSize;
 8002182:	68e1      	ldr	r1, [r4, #12]
 8002184:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8002186:	1a09      	subs	r1, r1, r0
 8002188:	60e1      	str	r1, [r4, #12]
		if( pxQueue->u.pcReadFrom < pxQueue->pcHead ) /*lint !e946 MISRA exception justified as comparison of pointers is the cleanest solution. */
 800218a:	6822      	ldr	r2, [r4, #0]
 800218c:	4291      	cmp	r1, r2
 800218e:	d202      	bcs.n	8002196 <prvCopyDataToQueue+0x2e>
			pxQueue->u.pcReadFrom = ( pxQueue->pcTail - pxQueue->uxItemSize );
 8002190:	6861      	ldr	r1, [r4, #4]
 8002192:	1a08      	subs	r0, r1, r0
 8002194:	60e0      	str	r0, [r4, #12]
		if( xPosition == queueOVERWRITE )
 8002196:	2e02      	cmp	r6, #2
 8002198:	d016      	beq.n	80021c8 <prvCopyDataToQueue+0x60>
 800219a:	e017      	b.n	80021cc <prvCopyDataToQueue+0x64>
			if( pxQueue->uxQueueType == queueQUEUE_IS_MUTEX )
 800219c:	6820      	ldr	r0, [r4, #0]
 800219e:	b9a8      	cbnz	r0, 80021cc <prvCopyDataToQueue+0x64>
				xReturn = xTaskPriorityDisinherit( ( void * ) pxQueue->pxMutexHolder );
 80021a0:	6860      	ldr	r0, [r4, #4]
 80021a2:	f001 fae9 	bl	8003778 <xTaskPriorityDisinherit>
 80021a6:	4607      	mov	r7, r0
				pxQueue->pxMutexHolder = NULL;
 80021a8:	2000      	movs	r0, #0
 80021aa:	6060      	str	r0, [r4, #4]
 80021ac:	e00e      	b.n	80021cc <prvCopyDataToQueue+0x64>
		( void ) memcpy( ( void * ) pxQueue->pcWriteTo, pvItemToQueue, ( size_t ) pxQueue->uxItemSize ); /*lint !e961 !e418 MISRA exception as the casts are only redundant for some ports, plus previous logic ensures a null pointer can only be passed to memcpy() if the copy size is 0. */
 80021ae:	68a0      	ldr	r0, [r4, #8]
 80021b0:	f7fe f921 	bl	80003f6 <__rt_memcpy>
		pxQueue->pcWriteTo += pxQueue->uxItemSize;
 80021b4:	6c21      	ldr	r1, [r4, #64]	; 0x40
 80021b6:	68a0      	ldr	r0, [r4, #8]
 80021b8:	4408      	add	r0, r1
 80021ba:	60a0      	str	r0, [r4, #8]
		if( pxQueue->pcWriteTo >= pxQueue->pcTail ) /*lint !e946 MISRA exception justified as comparison of pointers is the cleanest solution. */
 80021bc:	6861      	ldr	r1, [r4, #4]
 80021be:	4288      	cmp	r0, r1
 80021c0:	d304      	bcc.n	80021cc <prvCopyDataToQueue+0x64>
			pxQueue->pcWriteTo = pxQueue->pcHead;
 80021c2:	6820      	ldr	r0, [r4, #0]
 80021c4:	60a0      	str	r0, [r4, #8]
 80021c6:	e001      	b.n	80021cc <prvCopyDataToQueue+0x64>
			if( uxMessagesWaiting > ( UBaseType_t ) 0 )
 80021c8:	b105      	cbz	r5, 80021cc <prvCopyDataToQueue+0x64>
				--uxMessagesWaiting;
 80021ca:	1e6d      	subs	r5, r5, #1
	pxQueue->uxMessagesWaiting = uxMessagesWaiting + ( UBaseType_t ) 1;
 80021cc:	1c68      	adds	r0, r5, #1
 80021ce:	63a0      	str	r0, [r4, #56]	; 0x38
	return xReturn;
 80021d0:	4638      	mov	r0, r7
}
 80021d2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080021d6 <prvDeleteTCB>:
	{
 80021d6:	b510      	push	{r4, lr}
 80021d8:	4604      	mov	r4, r0
			if( pxTCB->ucStaticallyAllocated == tskDYNAMICALLY_ALLOCATED_STACK_AND_TCB )
 80021da:	f894 105d 	ldrb.w	r1, [r4, #93]	; 0x5d
 80021de:	2900      	cmp	r1, #0
	{
 80021e0:	d00b      	beq.n	80021fa <prvDeleteTCB+0x24>
			else if( pxTCB->ucStaticallyAllocated == tskSTATICALLY_ALLOCATED_STACK_ONLY )
 80021e2:	2901      	cmp	r1, #1
 80021e4:	d011      	beq.n	800220a <prvDeleteTCB+0x34>
				configASSERT( pxTCB->ucStaticallyAllocated == tskSTATICALLY_ALLOCATED_STACK_AND_TCB	);
 80021e6:	2902      	cmp	r1, #2
 80021e8:	d014      	beq.n	8002214 <prvDeleteTCB+0x3e>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 80021ea:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 80021ec:	f380 8811 	msr	BASEPRI, r0
		dsb
 80021f0:	f3bf 8f4f 	dsb	sy
		isb
 80021f4:	f3bf 8f6f 	isb	sy
 80021f8:	e7fe      	b.n	80021f8 <prvDeleteTCB+0x22>
				vPortFree( pxTCB->pxStack );
 80021fa:	6b20      	ldr	r0, [r4, #48]	; 0x30
 80021fc:	f000 fca6 	bl	8002b4c <vPortFree>
				vPortFree( pxTCB );
 8002200:	4620      	mov	r0, r4
 8002202:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8002206:	f000 bca1 	b.w	8002b4c <vPortFree>
				vPortFree( pxTCB );
 800220a:	4620      	mov	r0, r4
 800220c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8002210:	f000 bc9c 	b.w	8002b4c <vPortFree>
	}
 8002214:	bd10      	pop	{r4, pc}
	...

08002218 <prvGetNextExpireTime>:
	*pxListWasEmpty = listLIST_IS_EMPTY( pxCurrentTimerList );
 8002218:	4907      	ldr	r1, [pc, #28]	; (8002238 <prvGetNextExpireTime+0x20>)
 800221a:	680a      	ldr	r2, [r1, #0]
 800221c:	6811      	ldr	r1, [r2, #0]
 800221e:	2900      	cmp	r1, #0
{
 8002220:	d004      	beq.n	800222c <prvGetNextExpireTime+0x14>
	*pxListWasEmpty = listLIST_IS_EMPTY( pxCurrentTimerList );
 8002222:	2100      	movs	r1, #0
 8002224:	6001      	str	r1, [r0, #0]
	if( *pxListWasEmpty == pdFALSE )
 8002226:	b119      	cbz	r1, 8002230 <prvGetNextExpireTime+0x18>
		xNextExpireTime = ( TickType_t ) 0U;
 8002228:	2000      	movs	r0, #0
}
 800222a:	4770      	bx	lr
	*pxListWasEmpty = listLIST_IS_EMPTY( pxCurrentTimerList );
 800222c:	2101      	movs	r1, #1
 800222e:	e7f9      	b.n	8002224 <prvGetNextExpireTime+0xc>
		xNextExpireTime = listGET_ITEM_VALUE_OF_HEAD_ENTRY( pxCurrentTimerList );
 8002230:	68d0      	ldr	r0, [r2, #12]
 8002232:	6800      	ldr	r0, [r0, #0]
}
 8002234:	4770      	bx	lr
 8002236:	0000      	.short	0x0000
 8002238:	2000006c 	.word	0x2000006c

0800223c <prvHeapInit>:
static void prvHeapInit( void )
{
BlockLink_t *pxFirstFreeBlock;
uint8_t *pucAlignedHeap;
size_t uxAddress;
size_t xTotalHeapSize = configTOTAL_HEAP_SIZE;
 800223c:	f44f 6140 	mov.w	r1, #3072	; 0xc00

	/* Ensure the heap starts on a correctly aligned boundary. */
	uxAddress = ( size_t ) ucHeap;
 8002240:	4810      	ldr	r0, [pc, #64]	; (8002284 <prvHeapInit+0x48>)

	if( ( uxAddress & portBYTE_ALIGNMENT_MASK ) != 0 )
 8002242:	f010 0f07 	tst.w	r0, #7
{
 8002246:	d006      	beq.n	8002256 <prvHeapInit+0x1a>
	{
		uxAddress += ( portBYTE_ALIGNMENT - 1 );
 8002248:	1dc0      	adds	r0, r0, #7
		uxAddress &= ~( ( size_t ) portBYTE_ALIGNMENT_MASK );
 800224a:	f020 0007 	bic.w	r0, r0, #7
		xTotalHeapSize -= uxAddress - ( size_t ) ucHeap;
 800224e:	490d      	ldr	r1, [pc, #52]	; (8002284 <prvHeapInit+0x48>)
 8002250:	1a41      	subs	r1, r0, r1
 8002252:	f5c1 6140 	rsb	r1, r1, #3072	; 0xc00

	pucAlignedHeap = ( uint8_t * ) uxAddress;

	/* xStart is used to hold a pointer to the first item in the list of free
	blocks.  The void cast is used to prevent compiler warnings. */
	xStart.pxNextFreeBlock = ( void * ) pucAlignedHeap;
 8002256:	4a0c      	ldr	r2, [pc, #48]	; (8002288 <prvHeapInit+0x4c>)
 8002258:	6010      	str	r0, [r2, #0]
	xStart.xBlockSize = ( size_t ) 0;
 800225a:	2300      	movs	r3, #0
 800225c:	6053      	str	r3, [r2, #4]

	/* pxEnd is used to mark the end of the list of free blocks and is inserted
	at the end of the heap space. */
	uxAddress = ( ( size_t ) pucAlignedHeap ) + xTotalHeapSize;
 800225e:	4401      	add	r1, r0
	uxAddress -= xHeapStructSize;
 8002260:	3908      	subs	r1, #8
	uxAddress &= ~( ( size_t ) portBYTE_ALIGNMENT_MASK );
 8002262:	f021 0107 	bic.w	r1, r1, #7
	pxEnd = ( void * ) uxAddress;
 8002266:	3a10      	subs	r2, #16
 8002268:	6011      	str	r1, [r2, #0]
	pxEnd->xBlockSize = 0;
 800226a:	604b      	str	r3, [r1, #4]
	pxEnd->pxNextFreeBlock = NULL;
 800226c:	600b      	str	r3, [r1, #0]

	/* To start with there is a single free block that is sized to take up the
	entire heap space, minus the space taken by pxEnd. */
	pxFirstFreeBlock = ( void * ) pucAlignedHeap;
	pxFirstFreeBlock->xBlockSize = uxAddress - ( size_t ) pxFirstFreeBlock;
 800226e:	1a0b      	subs	r3, r1, r0
 8002270:	6043      	str	r3, [r0, #4]
	pxFirstFreeBlock->pxNextFreeBlock = pxEnd;
 8002272:	6001      	str	r1, [r0, #0]

	/* Only one block exists - and it covers the entire usable heap space. */
	xMinimumEverFreeBytesRemaining = pxFirstFreeBlock->xBlockSize;
 8002274:	6840      	ldr	r0, [r0, #4]
 8002276:	6090      	str	r0, [r2, #8]
	xFreeBytesRemaining = pxFirstFreeBlock->xBlockSize;
 8002278:	6050      	str	r0, [r2, #4]

	/* Work out the position of the top bit in a size_t variable. */
	xBlockAllocatedBit = ( ( size_t ) 1 ) << ( ( sizeof( size_t ) * heapBITS_PER_BYTE ) - 1 );
 800227a:	f04f 4000 	mov.w	r0, #2147483648	; 0x80000000
 800227e:	60d0      	str	r0, [r2, #12]
}
 8002280:	4770      	bx	lr
 8002282:	0000      	.short	0x0000
 8002284:	200012a8 	.word	0x200012a8
 8002288:	20000094 	.word	0x20000094

0800228c <prvIdleTask>:
			if( listCURRENT_LIST_LENGTH( &( pxReadyTasksLists[ tskIDLE_PRIORITY ] ) ) > ( UBaseType_t ) 1 )
 800228c:	4e08      	ldr	r6, [pc, #32]	; (80022b0 <prvIdleTask+0x24>)
				taskYIELD();
 800228e:	f04f 5480 	mov.w	r4, #268435456	; 0x10000000
 8002292:	4d08      	ldr	r5, [pc, #32]	; (80022b4 <prvIdleTask+0x28>)
		prvCheckTasksWaitingTermination();
 8002294:	f7ff ff36 	bl	8002104 <prvCheckTasksWaitingTermination>
			if( listCURRENT_LIST_LENGTH( &( pxReadyTasksLists[ tskIDLE_PRIORITY ] ) ) > ( UBaseType_t ) 1 )
 8002298:	6830      	ldr	r0, [r6, #0]
 800229a:	2801      	cmp	r0, #1
 800229c:	d904      	bls.n	80022a8 <prvIdleTask+0x1c>
				taskYIELD();
 800229e:	602c      	str	r4, [r5, #0]
 80022a0:	f3bf 8f4f 	dsb	sy
 80022a4:	f3bf 8f6f 	isb	sy
			vApplicationIdleHook();
 80022a8:	f000 fbe4 	bl	8002a74 <vApplicationIdleHook>
 80022ac:	e7f2      	b.n	8002294 <prvIdleTask+0x8>
 80022ae:	0000      	.short	0x0000
 80022b0:	2000060c 	.word	0x2000060c
 80022b4:	e000ed04 	.word	0xe000ed04

080022b8 <prvInitialiseNewQueue>:
{
 80022b8:	b570      	push	{r4, r5, r6, lr}
 80022ba:	461d      	mov	r5, r3
 80022bc:	9c04      	ldr	r4, [sp, #16]
	if( uxItemSize == ( UBaseType_t ) 0 )
 80022be:	2900      	cmp	r1, #0
{
 80022c0:	d009      	beq.n	80022d6 <prvInitialiseNewQueue+0x1e>
		pxNewQueue->pcHead = ( int8_t * ) pucQueueStorage;
 80022c2:	6022      	str	r2, [r4, #0]
	pxNewQueue->uxLength = uxQueueLength;
 80022c4:	63e0      	str	r0, [r4, #60]	; 0x3c
	pxNewQueue->uxItemSize = uxItemSize;
 80022c6:	6421      	str	r1, [r4, #64]	; 0x40
	( void ) xQueueGenericReset( pxNewQueue, pdTRUE );
 80022c8:	2101      	movs	r1, #1
 80022ca:	4620      	mov	r0, r4
 80022cc:	f000 ff32 	bl	8003134 <xQueueGenericReset>
		pxNewQueue->ucQueueType = ucQueueType;
 80022d0:	f884 504c 	strb.w	r5, [r4, #76]	; 0x4c
}
 80022d4:	bd70      	pop	{r4, r5, r6, pc}
		pxNewQueue->pcHead = ( int8_t * ) pxNewQueue;
 80022d6:	6024      	str	r4, [r4, #0]
 80022d8:	e7f4      	b.n	80022c4 <prvInitialiseNewQueue+0xc>

080022da <prvInitialiseNewTask>:
{
 80022da:	e92d 5ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
 80022de:	4682      	mov	sl, r0
 80022e0:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80022e2:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 80022e4:	9c0c      	ldr	r4, [sp, #48]	; 0x30
 80022e6:	460e      	mov	r6, r1
 80022e8:	4690      	mov	r8, r2
 80022ea:	469b      	mov	fp, r3
		( void ) memset( pxNewTCB->pxStack, ( int ) tskSTACK_FILL_BYTE, ( size_t ) ulStackDepth * sizeof( StackType_t ) );
 80022ec:	ea4f 0188 	mov.w	r1, r8, lsl #2
 80022f0:	22a5      	movs	r2, #165	; 0xa5
 80022f2:	6b20      	ldr	r0, [r4, #48]	; 0x30
 80022f4:	f7fe f8c4 	bl	8000480 <__aeabi_memset>
		pxTopOfStack = pxNewTCB->pxStack + ( ulStackDepth - ( uint32_t ) 1 );
 80022f8:	6b20      	ldr	r0, [r4, #48]	; 0x30
 80022fa:	f1a8 0101 	sub.w	r1, r8, #1
 80022fe:	eb00 0081 	add.w	r0, r0, r1, lsl #2
		pxTopOfStack = ( StackType_t * ) ( ( ( portPOINTER_SIZE_TYPE ) pxTopOfStack ) & ( ~( ( portPOINTER_SIZE_TYPE ) portBYTE_ALIGNMENT_MASK ) ) ); /*lint !e923 MISRA exception.  Avoiding casts between pointers and integers is not practical.  Size differences accounted for using portPOINTER_SIZE_TYPE type. */
 8002302:	f020 0907 	bic.w	r9, r0, #7
		configASSERT( ( ( ( portPOINTER_SIZE_TYPE ) pxTopOfStack & ( portPOINTER_SIZE_TYPE ) portBYTE_ALIGNMENT_MASK ) == 0UL ) );
 8002306:	f04f 0800 	mov.w	r8, #0
	for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) configMAX_TASK_NAME_LEN; x++ )
 800230a:	2000      	movs	r0, #0
		pxNewTCB->pcTaskName[ x ] = pcName[ x ];
 800230c:	1822      	adds	r2, r4, r0
 800230e:	5c31      	ldrb	r1, [r6, r0]
 8002310:	f882 1034 	strb.w	r1, [r2, #52]	; 0x34
		if( pcName[ x ] == 0x00 )
 8002314:	5c31      	ldrb	r1, [r6, r0]
 8002316:	b111      	cbz	r1, 800231e <prvInitialiseNewTask+0x44>
	for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) configMAX_TASK_NAME_LEN; x++ )
 8002318:	1c40      	adds	r0, r0, #1
 800231a:	2810      	cmp	r0, #16
 800231c:	d3f6      	bcc.n	800230c <prvInitialiseNewTask+0x32>
	pxNewTCB->pcTaskName[ configMAX_TASK_NAME_LEN - 1 ] = '\0';
 800231e:	f884 8043 	strb.w	r8, [r4, #67]	; 0x43
	if( uxPriority >= ( UBaseType_t ) configMAX_PRIORITIES )
 8002322:	2d38      	cmp	r5, #56	; 0x38
			break;
 8002324:	d300      	bcc.n	8002328 <prvInitialiseNewTask+0x4e>
		uxPriority = ( UBaseType_t ) configMAX_PRIORITIES - ( UBaseType_t ) 1U;
 8002326:	2537      	movs	r5, #55	; 0x37
	pxNewTCB->uxPriority = uxPriority;
 8002328:	62e5      	str	r5, [r4, #44]	; 0x2c
		pxNewTCB->uxBasePriority = uxPriority;
 800232a:	64e5      	str	r5, [r4, #76]	; 0x4c
		pxNewTCB->uxMutexesHeld = 0;
 800232c:	f8c4 8050 	str.w	r8, [r4, #80]	; 0x50
	vListInitialiseItem( &( pxNewTCB->xStateListItem ) );
 8002330:	1d20      	adds	r0, r4, #4
 8002332:	f000 fbab 	bl	8002a8c <vListInitialiseItem>
	vListInitialiseItem( &( pxNewTCB->xEventListItem ) );
 8002336:	f104 0018 	add.w	r0, r4, #24
 800233a:	f000 fba7 	bl	8002a8c <vListInitialiseItem>
	listSET_LIST_ITEM_OWNER( &( pxNewTCB->xStateListItem ), pxNewTCB );
 800233e:	6124      	str	r4, [r4, #16]
	listSET_LIST_ITEM_VALUE( &( pxNewTCB->xEventListItem ), ( TickType_t ) configMAX_PRIORITIES - ( TickType_t ) uxPriority ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
 8002340:	f1c5 0038 	rsb	r0, r5, #56	; 0x38
 8002344:	61a0      	str	r0, [r4, #24]
	listSET_LIST_ITEM_OWNER( &( pxNewTCB->xEventListItem ), pxNewTCB );
 8002346:	6264      	str	r4, [r4, #36]	; 0x24
		pxNewTCB->ulRunTimeCounter = 0UL;
 8002348:	f8c4 8054 	str.w	r8, [r4, #84]	; 0x54
		pxNewTCB->ulNotifiedValue = 0;
 800234c:	f8c4 8058 	str.w	r8, [r4, #88]	; 0x58
		pxNewTCB->ucNotifyState = taskNOT_WAITING_NOTIFICATION;
 8002350:	f884 805c 	strb.w	r8, [r4, #92]	; 0x5c
		pxNewTCB->pxTopOfStack = pxPortInitialiseStack( pxTopOfStack, pxTaskCode, pvParameters );
 8002354:	465a      	mov	r2, fp
 8002356:	4651      	mov	r1, sl
 8002358:	4648      	mov	r0, r9
 800235a:	f000 faef 	bl	800293c <pxPortInitialiseStack>
 800235e:	6020      	str	r0, [r4, #0]
	if( ( void * ) pxCreatedTask != NULL )
 8002360:	2f00      	cmp	r7, #0
 8002362:	d000      	beq.n	8002366 <prvInitialiseNewTask+0x8c>
		*pxCreatedTask = ( TaskHandle_t ) pxNewTCB;
 8002364:	603c      	str	r4, [r7, #0]
}
 8002366:	e8bd 9ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}
	...

0800236c <prvInitialiseTaskLists>:
{
 800236c:	b570      	push	{r4, r5, r6, lr}
	for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) configMAX_PRIORITIES; uxPriority++ )
 800236e:	2400      	movs	r4, #0
		vListInitialise( &( pxReadyTasksLists[ uxPriority ] ) );
 8002370:	4d0f      	ldr	r5, [pc, #60]	; (80023b0 <prvInitialiseTaskLists+0x44>)
 8002372:	eb04 0084 	add.w	r0, r4, r4, lsl #2
 8002376:	eb05 0080 	add.w	r0, r5, r0, lsl #2
 800237a:	f000 fb7c 	bl	8002a76 <vListInitialise>
	for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) configMAX_PRIORITIES; uxPriority++ )
 800237e:	1c64      	adds	r4, r4, #1
 8002380:	2c38      	cmp	r4, #56	; 0x38
 8002382:	d3f6      	bcc.n	8002372 <prvInitialiseTaskLists+0x6>
	vListInitialise( &xDelayedTaskList1 );
 8002384:	480b      	ldr	r0, [pc, #44]	; (80023b4 <prvInitialiseTaskLists+0x48>)
 8002386:	f000 fb76 	bl	8002a76 <vListInitialise>
	vListInitialise( &xDelayedTaskList2 );
 800238a:	480b      	ldr	r0, [pc, #44]	; (80023b8 <prvInitialiseTaskLists+0x4c>)
 800238c:	f000 fb73 	bl	8002a76 <vListInitialise>
	vListInitialise( &xPendingReadyList );
 8002390:	480a      	ldr	r0, [pc, #40]	; (80023bc <prvInitialiseTaskLists+0x50>)
 8002392:	f000 fb70 	bl	8002a76 <vListInitialise>
		vListInitialise( &xTasksWaitingTermination );
 8002396:	480a      	ldr	r0, [pc, #40]	; (80023c0 <prvInitialiseTaskLists+0x54>)
 8002398:	f000 fb6d 	bl	8002a76 <vListInitialise>
		vListInitialise( &xSuspendedTaskList );
 800239c:	4809      	ldr	r0, [pc, #36]	; (80023c4 <prvInitialiseTaskLists+0x58>)
 800239e:	f000 fb6a 	bl	8002a76 <vListInitialise>
	pxDelayedTaskList = &xDelayedTaskList1;
 80023a2:	4809      	ldr	r0, [pc, #36]	; (80023c8 <prvInitialiseTaskLists+0x5c>)
 80023a4:	4903      	ldr	r1, [pc, #12]	; (80023b4 <prvInitialiseTaskLists+0x48>)
 80023a6:	6041      	str	r1, [r0, #4]
	pxOverflowDelayedTaskList = &xDelayedTaskList2;
 80023a8:	3114      	adds	r1, #20
 80023aa:	6081      	str	r1, [r0, #8]
}
 80023ac:	bd70      	pop	{r4, r5, r6, pc}
 80023ae:	0000      	.short	0x0000
 80023b0:	2000060c 	.word	0x2000060c
 80023b4:	20000a6c 	.word	0x20000a6c
 80023b8:	20000a80 	.word	0x20000a80
 80023bc:	20000a94 	.word	0x20000a94
 80023c0:	20000aa8 	.word	0x20000aa8
 80023c4:	20000abc 	.word	0x20000abc
 80023c8:	20000028 	.word	0x20000028

080023cc <prvInsertBlockIntoFreeList>:
/*-----------------------------------------------------------*/

static void prvInsertBlockIntoFreeList( BlockLink_t *pxBlockToInsert )
{
 80023cc:	b410      	push	{r4}
BlockLink_t *pxIterator;
uint8_t *puc;

	/* Iterate through the list until a block is found that has a higher address
	than the block being inserted. */
	for( pxIterator = &xStart; pxIterator->pxNextFreeBlock < pxBlockToInsert; pxIterator = pxIterator->pxNextFreeBlock )
 80023ce:	4914      	ldr	r1, [pc, #80]	; (8002420 <prvInsertBlockIntoFreeList+0x54>)
{
 80023d0:	e000      	b.n	80023d4 <prvInsertBlockIntoFreeList+0x8>
	for( pxIterator = &xStart; pxIterator->pxNextFreeBlock < pxBlockToInsert; pxIterator = pxIterator->pxNextFreeBlock )
 80023d2:	4611      	mov	r1, r2
 80023d4:	680a      	ldr	r2, [r1, #0]
 80023d6:	4282      	cmp	r2, r0
 80023d8:	d3fb      	bcc.n	80023d2 <prvInsertBlockIntoFreeList+0x6>
	}

	/* Do the block being inserted, and the block it is being inserted after
	make a contiguous block of memory? */
	puc = ( uint8_t * ) pxIterator;
	if( ( puc + pxIterator->xBlockSize ) == ( uint8_t * ) pxBlockToInsert )
 80023da:	684b      	ldr	r3, [r1, #4]
 80023dc:	eb03 0c01 	add.w	ip, r3, r1
 80023e0:	4584      	cmp	ip, r0
 80023e2:	d103      	bne.n	80023ec <prvInsertBlockIntoFreeList+0x20>
	{
		pxIterator->xBlockSize += pxBlockToInsert->xBlockSize;
 80023e4:	6840      	ldr	r0, [r0, #4]
 80023e6:	4418      	add	r0, r3
 80023e8:	6048      	str	r0, [r1, #4]
		pxBlockToInsert = pxIterator;
 80023ea:	4608      	mov	r0, r1
	}

	/* Do the block being inserted, and the block it is being inserted before
	make a contiguous block of memory? */
	puc = ( uint8_t * ) pxBlockToInsert;
	if( ( puc + pxBlockToInsert->xBlockSize ) == ( uint8_t * ) pxIterator->pxNextFreeBlock )
 80023ec:	680c      	ldr	r4, [r1, #0]
 80023ee:	f8d0 c004 	ldr.w	ip, [r0, #4]
 80023f2:	eb0c 0300 	add.w	r3, ip, r0
 80023f6:	42a3      	cmp	r3, r4
 80023f8:	d10c      	bne.n	8002414 <prvInsertBlockIntoFreeList+0x48>
	{
		if( pxIterator->pxNextFreeBlock != pxEnd )
 80023fa:	4b0a      	ldr	r3, [pc, #40]	; (8002424 <prvInsertBlockIntoFreeList+0x58>)
 80023fc:	681b      	ldr	r3, [r3, #0]
 80023fe:	429a      	cmp	r2, r3
 8002400:	d006      	beq.n	8002410 <prvInsertBlockIntoFreeList+0x44>
		{
			/* Form one big block from the two blocks. */
			pxBlockToInsert->xBlockSize += pxIterator->pxNextFreeBlock->xBlockSize;
 8002402:	6852      	ldr	r2, [r2, #4]
 8002404:	4462      	add	r2, ip
 8002406:	6042      	str	r2, [r0, #4]
			pxBlockToInsert->pxNextFreeBlock = pxIterator->pxNextFreeBlock->pxNextFreeBlock;
 8002408:	680a      	ldr	r2, [r1, #0]
 800240a:	6812      	ldr	r2, [r2, #0]
 800240c:	6002      	str	r2, [r0, #0]
 800240e:	e002      	b.n	8002416 <prvInsertBlockIntoFreeList+0x4a>
		}
		else
		{
			pxBlockToInsert->pxNextFreeBlock = pxEnd;
 8002410:	6003      	str	r3, [r0, #0]
 8002412:	e000      	b.n	8002416 <prvInsertBlockIntoFreeList+0x4a>
		}
	}
	else
	{
		pxBlockToInsert->pxNextFreeBlock = pxIterator->pxNextFreeBlock;
 8002414:	6002      	str	r2, [r0, #0]

	/* If the block being inserted plugged a gab, so was merged with the block
	before and the block after, then it's pxNextFreeBlock pointer will have
	already been set, and should not be set here as that would make it point
	to itself. */
	if( pxIterator != pxBlockToInsert )
 8002416:	4281      	cmp	r1, r0
 8002418:	d000      	beq.n	800241c <prvInsertBlockIntoFreeList+0x50>
	{
		pxIterator->pxNextFreeBlock = pxBlockToInsert;
 800241a:	6008      	str	r0, [r1, #0]
	}
	else
	{
		mtCOVERAGE_TEST_MARKER();
	}
}
 800241c:	bc10      	pop	{r4}
 800241e:	4770      	bx	lr
 8002420:	20000094 	.word	0x20000094
 8002424:	20000084 	.word	0x20000084

08002428 <prvInsertTimerInActiveList>:
{
 8002428:	b510      	push	{r4, lr}
BaseType_t xProcessTimerNow = pdFALSE;
 800242a:	2400      	movs	r4, #0
	listSET_LIST_ITEM_VALUE( &( pxTimer->xTimerListItem ), xNextExpiryTime );
 800242c:	6041      	str	r1, [r0, #4]
	listSET_LIST_ITEM_OWNER( &( pxTimer->xTimerListItem ), pxTimer );
 800242e:	6100      	str	r0, [r0, #16]
			vListInsert( pxOverflowTimerList, &( pxTimer->xTimerListItem ) );
 8002430:	f8df c038 	ldr.w	ip, [pc, #56]	; 800246c <prvInsertTimerInActiveList+0x44>
	if( xNextExpiryTime <= xTimeNow )
 8002434:	4291      	cmp	r1, r2
{
 8002436:	d80b      	bhi.n	8002450 <prvInsertTimerInActiveList+0x28>
		if( ( ( TickType_t ) ( xTimeNow - xCommandTime ) ) >= pxTimer->xTimerPeriodInTicks ) /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
 8002438:	1ad1      	subs	r1, r2, r3
 800243a:	6982      	ldr	r2, [r0, #24]
 800243c:	4291      	cmp	r1, r2
 800243e:	d301      	bcc.n	8002444 <prvInsertTimerInActiveList+0x1c>
			xProcessTimerNow = pdTRUE;
 8002440:	2401      	movs	r4, #1
 8002442:	e010      	b.n	8002466 <prvInsertTimerInActiveList+0x3e>
			vListInsert( pxOverflowTimerList, &( pxTimer->xTimerListItem ) );
 8002444:	1d01      	adds	r1, r0, #4
 8002446:	f8dc 0004 	ldr.w	r0, [ip, #4]
 800244a:	f000 fb22 	bl	8002a92 <vListInsert>
 800244e:	e00a      	b.n	8002466 <prvInsertTimerInActiveList+0x3e>
		if( ( xTimeNow < xCommandTime ) && ( xNextExpiryTime >= xCommandTime ) )
 8002450:	429a      	cmp	r2, r3
 8002452:	d203      	bcs.n	800245c <prvInsertTimerInActiveList+0x34>
 8002454:	4299      	cmp	r1, r3
 8002456:	d301      	bcc.n	800245c <prvInsertTimerInActiveList+0x34>
			xProcessTimerNow = pdTRUE;
 8002458:	2401      	movs	r4, #1
 800245a:	e004      	b.n	8002466 <prvInsertTimerInActiveList+0x3e>
			vListInsert( pxCurrentTimerList, &( pxTimer->xTimerListItem ) );
 800245c:	1d01      	adds	r1, r0, #4
 800245e:	f8dc 0000 	ldr.w	r0, [ip]
 8002462:	f000 fb16 	bl	8002a92 <vListInsert>
	return xProcessTimerNow;
 8002466:	4620      	mov	r0, r4
}
 8002468:	bd10      	pop	{r4, pc}
 800246a:	0000      	.short	0x0000
 800246c:	2000006c 	.word	0x2000006c

08002470 <prvIsQueueEmpty>:
	taskEXIT_CRITICAL();
}
/*-----------------------------------------------------------*/

static BaseType_t prvIsQueueEmpty( const Queue_t *pxQueue )
{
 8002470:	b510      	push	{r4, lr}
 8002472:	4604      	mov	r4, r0
BaseType_t xReturn;

	taskENTER_CRITICAL();
 8002474:	f000 fb34 	bl	8002ae0 <vPortEnterCritical>
	{
		if( pxQueue->uxMessagesWaiting == ( UBaseType_t )  0 )
 8002478:	6ba0      	ldr	r0, [r4, #56]	; 0x38
 800247a:	b120      	cbz	r0, 8002486 <prvIsQueueEmpty+0x16>
		{
			xReturn = pdTRUE;
		}
		else
		{
			xReturn = pdFALSE;
 800247c:	2400      	movs	r4, #0
		}
	}
	taskEXIT_CRITICAL();
 800247e:	f000 fb4f 	bl	8002b20 <vPortExitCritical>

	return xReturn;
 8002482:	4620      	mov	r0, r4
}
 8002484:	bd10      	pop	{r4, pc}
			xReturn = pdTRUE;
 8002486:	2401      	movs	r4, #1
 8002488:	e7f9      	b.n	800247e <prvIsQueueEmpty+0xe>

0800248a <prvIsQueueFull>:
	return xReturn;
} /*lint !e818 xQueue could not be pointer to const because it is a typedef. */
/*-----------------------------------------------------------*/

static BaseType_t prvIsQueueFull( const Queue_t *pxQueue )
{
 800248a:	b510      	push	{r4, lr}
 800248c:	4604      	mov	r4, r0
BaseType_t xReturn;

	taskENTER_CRITICAL();
 800248e:	f000 fb27 	bl	8002ae0 <vPortEnterCritical>
	{
		if( pxQueue->uxMessagesWaiting == pxQueue->uxLength )
 8002492:	6ba0      	ldr	r0, [r4, #56]	; 0x38
 8002494:	6be1      	ldr	r1, [r4, #60]	; 0x3c
 8002496:	4288      	cmp	r0, r1
 8002498:	d101      	bne.n	800249e <prvIsQueueFull+0x14>
		{
			xReturn = pdTRUE;
 800249a:	2401      	movs	r4, #1
 800249c:	e000      	b.n	80024a0 <prvIsQueueFull+0x16>
		}
		else
		{
			xReturn = pdFALSE;
 800249e:	2400      	movs	r4, #0
		}
	}
	taskEXIT_CRITICAL();
 80024a0:	f000 fb3e 	bl	8002b20 <vPortExitCritical>

	return xReturn;
 80024a4:	4620      	mov	r0, r4
}
 80024a6:	bd10      	pop	{r4, pc}

080024a8 <prvListTasksWithinSingleList>:
	{
 80024a8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80024ac:	4680      	mov	r8, r0
 80024ae:	460c      	mov	r4, r1
 80024b0:	4691      	mov	r9, r2
	UBaseType_t uxTask = 0;
 80024b2:	2500      	movs	r5, #0
		if( listCURRENT_LIST_LENGTH( pxList ) > ( UBaseType_t ) 0 )
 80024b4:	6820      	ldr	r0, [r4, #0]
 80024b6:	2800      	cmp	r0, #0
	{
 80024b8:	d023      	beq.n	8002502 <prvListTasksWithinSingleList+0x5a>
			listGET_OWNER_OF_NEXT_ENTRY( pxFirstTCB, pxList );
 80024ba:	6860      	ldr	r0, [r4, #4]
 80024bc:	6840      	ldr	r0, [r0, #4]
 80024be:	6060      	str	r0, [r4, #4]
 80024c0:	f104 0608 	add.w	r6, r4, #8
 80024c4:	42b0      	cmp	r0, r6
 80024c6:	d101      	bne.n	80024cc <prvListTasksWithinSingleList+0x24>
 80024c8:	6841      	ldr	r1, [r0, #4]
 80024ca:	6061      	str	r1, [r4, #4]
 80024cc:	6860      	ldr	r0, [r4, #4]
 80024ce:	68c7      	ldr	r7, [r0, #12]
				listGET_OWNER_OF_NEXT_ENTRY( pxNextTCB, pxList );
 80024d0:	6860      	ldr	r0, [r4, #4]
 80024d2:	f8d0 c004 	ldr.w	ip, [r0, #4]
 80024d6:	f8c4 c004 	str.w	ip, [r4, #4]
 80024da:	45b4      	cmp	ip, r6
 80024dc:	d102      	bne.n	80024e4 <prvListTasksWithinSingleList+0x3c>
 80024de:	f8dc 1004 	ldr.w	r1, [ip, #4]
 80024e2:	6061      	str	r1, [r4, #4]
 80024e4:	6860      	ldr	r0, [r4, #4]
 80024e6:	f8d0 a00c 	ldr.w	sl, [r0, #12]
				vTaskGetInfo( ( TaskHandle_t ) pxNextTCB, &( pxTaskStatusArray[ uxTask ] ), pdTRUE, eState );
 80024ea:	eb05 00c5 	add.w	r0, r5, r5, lsl #3
 80024ee:	eb08 0180 	add.w	r1, r8, r0, lsl #2
 80024f2:	464b      	mov	r3, r9
 80024f4:	2201      	movs	r2, #1
 80024f6:	4650      	mov	r0, sl
 80024f8:	f000 fbf4 	bl	8002ce4 <vTaskGetInfo>
				uxTask++;
 80024fc:	1c6d      	adds	r5, r5, #1
			} while( pxNextTCB != pxFirstTCB );
 80024fe:	45ba      	cmp	sl, r7
 8002500:	d1e6      	bne.n	80024d0 <prvListTasksWithinSingleList+0x28>
		return uxTask;
 8002502:	4628      	mov	r0, r5
	}
 8002504:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

08002508 <prvProcessExpiredTimer>:
{
 8002508:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800250a:	4605      	mov	r5, r0
 800250c:	460e      	mov	r6, r1
Timer_t * const pxTimer = ( Timer_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxCurrentTimerList );
 800250e:	4814      	ldr	r0, [pc, #80]	; (8002560 <prvProcessExpiredTimer+0x58>)
 8002510:	6800      	ldr	r0, [r0, #0]
 8002512:	68c0      	ldr	r0, [r0, #12]
 8002514:	68c4      	ldr	r4, [r0, #12]
	( void ) uxListRemove( &( pxTimer->xTimerListItem ) );
 8002516:	1d20      	adds	r0, r4, #4
 8002518:	f000 fa2a 	bl	8002970 <uxListRemove>
	if( pxTimer->uxAutoReload == ( UBaseType_t ) pdTRUE )
 800251c:	69e0      	ldr	r0, [r4, #28]
 800251e:	2801      	cmp	r0, #1
 8002520:	d110      	bne.n	8002544 <prvProcessExpiredTimer+0x3c>
		if( prvInsertTimerInActiveList( pxTimer, ( xNextExpireTime + pxTimer->xTimerPeriodInTicks ), xTimeNow, xNextExpireTime ) != pdFALSE )
 8002522:	69a0      	ldr	r0, [r4, #24]
 8002524:	462b      	mov	r3, r5
 8002526:	1941      	adds	r1, r0, r5
 8002528:	4632      	mov	r2, r6
 800252a:	4620      	mov	r0, r4
 800252c:	f7ff ff7c 	bl	8002428 <prvInsertTimerInActiveList>
 8002530:	b140      	cbz	r0, 8002544 <prvProcessExpiredTimer+0x3c>
			xResult = xTimerGenericCommand( pxTimer, tmrCOMMAND_START_DONT_TRACE, xNextExpireTime, NULL, tmrNO_DELAY );
 8002532:	2000      	movs	r0, #0
 8002534:	4603      	mov	r3, r0
 8002536:	4601      	mov	r1, r0
 8002538:	9000      	str	r0, [sp, #0]
 800253a:	462a      	mov	r2, r5
 800253c:	4620      	mov	r0, r4
 800253e:	f001 fa31 	bl	80039a4 <xTimerGenericCommand>
			configASSERT( xResult );
 8002542:	b128      	cbz	r0, 8002550 <prvProcessExpiredTimer+0x48>
	pxTimer->pxCallbackFunction( ( TimerHandle_t ) pxTimer );
 8002544:	6a61      	ldr	r1, [r4, #36]	; 0x24
 8002546:	b001      	add	sp, #4
 8002548:	4620      	mov	r0, r4
 800254a:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
 800254e:	4708      	bx	r1
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002550:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002552:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002556:	f3bf 8f4f 	dsb	sy
		isb
 800255a:	f3bf 8f6f 	isb	sy
			configASSERT( xResult );
 800255e:	e7fe      	b.n	800255e <prvProcessExpiredTimer+0x56>
 8002560:	2000006c 	.word	0x2000006c

08002564 <prvProcessReceivedCommands>:
{
 8002564:	b530      	push	{r4, r5, lr}
 8002566:	b087      	sub	sp, #28
	while( xQueueReceive( xTimerQueue, &xMessage, tmrNO_DELAY ) != pdFAIL ) /*lint !e603 xMessage does not have to be initialised as it is passed out, not in, and it is not used unless xQueueReceive() returns pdTRUE. */
 8002568:	4d33      	ldr	r5, [pc, #204]	; (8002638 <prvProcessReceivedCommands+0xd4>)
 800256a:	2200      	movs	r2, #0
 800256c:	a902      	add	r1, sp, #8
 800256e:	68a8      	ldr	r0, [r5, #8]
 8002570:	f000 ff3e 	bl	80033f0 <xQueueReceive>
 8002574:	2800      	cmp	r0, #0
 8002576:	d05c      	beq.n	8002632 <prvProcessReceivedCommands+0xce>
			if( xMessage.xMessageID < ( BaseType_t ) 0 )
 8002578:	9802      	ldr	r0, [sp, #8]
 800257a:	2800      	cmp	r0, #0
 800257c:	da03      	bge.n	8002586 <prvProcessReceivedCommands+0x22>
				pxCallback->pxCallbackFunction( pxCallback->pvParameter1, pxCallback->ulParameter2 );
 800257e:	9a03      	ldr	r2, [sp, #12]
 8002580:	9905      	ldr	r1, [sp, #20]
 8002582:	9804      	ldr	r0, [sp, #16]
 8002584:	4790      	blx	r2
		if( xMessage.xMessageID >= ( BaseType_t ) 0 )
 8002586:	9802      	ldr	r0, [sp, #8]
 8002588:	2800      	cmp	r0, #0
 800258a:	db4b      	blt.n	8002624 <prvProcessReceivedCommands+0xc0>
			pxTimer = xMessage.u.xTimerParameters.pxTimer;
 800258c:	9c04      	ldr	r4, [sp, #16]
			if( listIS_CONTAINED_WITHIN( NULL, &( pxTimer->xTimerListItem ) ) == pdFALSE ) /*lint !e961. The cast is only redundant when NULL is passed into the macro. */
 800258e:	6960      	ldr	r0, [r4, #20]
 8002590:	b110      	cbz	r0, 8002598 <prvProcessReceivedCommands+0x34>
				( void ) uxListRemove( &( pxTimer->xTimerListItem ) );
 8002592:	1d20      	adds	r0, r4, #4
 8002594:	f000 f9ec 	bl	8002970 <uxListRemove>
			xTimeNow = prvSampleTimeNow( &xTimerListsWereSwitched );
 8002598:	a801      	add	r0, sp, #4
 800259a:	f000 f897 	bl	80026cc <prvSampleTimeNow>
 800259e:	4602      	mov	r2, r0
			switch( xMessage.xMessageID )
 80025a0:	9802      	ldr	r0, [sp, #8]
 80025a2:	280a      	cmp	r0, #10
 80025a4:	d23e      	bcs.n	8002624 <prvProcessReceivedCommands+0xc0>
 80025a6:	e8df f000 	tbb	[pc, r0]
 80025aa:	0505      	.short	0x0505
 80025ac:	37263d05 	.word	0x37263d05
 80025b0:	263d0505 	.word	0x263d0505
					if( prvInsertTimerInActiveList( pxTimer,  xMessage.u.xTimerParameters.xMessageValue + pxTimer->xTimerPeriodInTicks, xTimeNow, xMessage.u.xTimerParameters.xMessageValue ) != pdFALSE )
 80025b4:	9803      	ldr	r0, [sp, #12]
 80025b6:	69a1      	ldr	r1, [r4, #24]
 80025b8:	4603      	mov	r3, r0
 80025ba:	4401      	add	r1, r0
 80025bc:	4620      	mov	r0, r4
 80025be:	f7ff ff33 	bl	8002428 <prvInsertTimerInActiveList>
 80025c2:	b300      	cbz	r0, 8002606 <prvProcessReceivedCommands+0xa2>
						pxTimer->pxCallbackFunction( ( TimerHandle_t ) pxTimer );
 80025c4:	6a61      	ldr	r1, [r4, #36]	; 0x24
 80025c6:	4620      	mov	r0, r4
 80025c8:	4788      	blx	r1
						if( pxTimer->uxAutoReload == ( UBaseType_t ) pdTRUE )
 80025ca:	69e0      	ldr	r0, [r4, #28]
 80025cc:	2801      	cmp	r0, #1
 80025ce:	d129      	bne.n	8002624 <prvProcessReceivedCommands+0xc0>
							xResult = xTimerGenericCommand( pxTimer, tmrCOMMAND_START_DONT_TRACE, xMessage.u.xTimerParameters.xMessageValue + pxTimer->xTimerPeriodInTicks, NULL, tmrNO_DELAY );
 80025d0:	2000      	movs	r0, #0
 80025d2:	9000      	str	r0, [sp, #0]
 80025d4:	9803      	ldr	r0, [sp, #12]
 80025d6:	69a1      	ldr	r1, [r4, #24]
 80025d8:	2300      	movs	r3, #0
 80025da:	1842      	adds	r2, r0, r1
 80025dc:	4619      	mov	r1, r3
 80025de:	4620      	mov	r0, r4
 80025e0:	f001 f9e0 	bl	80039a4 <xTimerGenericCommand>
							configASSERT( xResult );
 80025e4:	b978      	cbnz	r0, 8002606 <prvProcessReceivedCommands+0xa2>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 80025e6:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 80025e8:	f380 8811 	msr	BASEPRI, r0
		dsb
 80025ec:	f3bf 8f4f 	dsb	sy
		isb
 80025f0:	f3bf 8f6f 	isb	sy
 80025f4:	e7fe      	b.n	80025f4 <prvProcessReceivedCommands+0x90>
					pxTimer->xTimerPeriodInTicks = xMessage.u.xTimerParameters.xMessageValue;
 80025f6:	9803      	ldr	r0, [sp, #12]
 80025f8:	61a0      	str	r0, [r4, #24]
					configASSERT( ( pxTimer->xTimerPeriodInTicks > 0 ) );
 80025fa:	b128      	cbz	r0, 8002608 <prvProcessReceivedCommands+0xa4>
					( void ) prvInsertTimerInActiveList( pxTimer, ( xTimeNow + pxTimer->xTimerPeriodInTicks ), xTimeNow, xTimeNow );
 80025fc:	1881      	adds	r1, r0, r2
 80025fe:	4613      	mov	r3, r2
 8002600:	4620      	mov	r0, r4
 8002602:	f7ff ff11 	bl	8002428 <prvInsertTimerInActiveList>
					break;
 8002606:	e00d      	b.n	8002624 <prvProcessReceivedCommands+0xc0>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002608:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 800260a:	f380 8811 	msr	BASEPRI, r0
		dsb
 800260e:	f3bf 8f4f 	dsb	sy
		isb
 8002612:	f3bf 8f6f 	isb	sy
					configASSERT( ( pxTimer->xTimerPeriodInTicks > 0 ) );
 8002616:	e7fe      	b.n	8002616 <prvProcessReceivedCommands+0xb2>
						if( pxTimer->ucStaticallyAllocated == ( uint8_t ) pdFALSE )
 8002618:	f894 002c 	ldrb.w	r0, [r4, #44]	; 0x2c
 800261c:	b910      	cbnz	r0, 8002624 <prvProcessReceivedCommands+0xc0>
							vPortFree( pxTimer );
 800261e:	4620      	mov	r0, r4
 8002620:	f000 fa94 	bl	8002b4c <vPortFree>
	while( xQueueReceive( xTimerQueue, &xMessage, tmrNO_DELAY ) != pdFAIL ) /*lint !e603 xMessage does not have to be initialised as it is passed out, not in, and it is not used unless xQueueReceive() returns pdTRUE. */
 8002624:	2200      	movs	r2, #0
 8002626:	a902      	add	r1, sp, #8
 8002628:	68a8      	ldr	r0, [r5, #8]
 800262a:	f000 fee1 	bl	80033f0 <xQueueReceive>
 800262e:	2800      	cmp	r0, #0
 8002630:	d1a2      	bne.n	8002578 <prvProcessReceivedCommands+0x14>
}
 8002632:	b007      	add	sp, #28
 8002634:	bd30      	pop	{r4, r5, pc}
 8002636:	0000      	.short	0x0000
 8002638:	2000006c 	.word	0x2000006c

0800263c <prvProcessTimerOrBlockTask>:
{
 800263c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800263e:	4605      	mov	r5, r0
 8002640:	460c      	mov	r4, r1
	vTaskSuspendAll();
 8002642:	f000 fc83 	bl	8002f4c <vTaskSuspendAll>
		xTimeNow = prvSampleTimeNow( &xTimerListsWereSwitched );
 8002646:	4668      	mov	r0, sp
 8002648:	f000 f840 	bl	80026cc <prvSampleTimeNow>
 800264c:	4606      	mov	r6, r0
		if( xTimerListsWereSwitched == pdFALSE )
 800264e:	9800      	ldr	r0, [sp, #0]
 8002650:	b110      	cbz	r0, 8002658 <prvProcessTimerOrBlockTask+0x1c>
			( void ) xTaskResumeAll();
 8002652:	f001 f90d 	bl	8003870 <xTaskResumeAll>
}
 8002656:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
			if( ( xListWasEmpty == pdFALSE ) && ( xNextExpireTime <= xTimeNow ) )
 8002658:	b944      	cbnz	r4, 800266c <prvProcessTimerOrBlockTask+0x30>
 800265a:	42b5      	cmp	r5, r6
 800265c:	d806      	bhi.n	800266c <prvProcessTimerOrBlockTask+0x30>
				( void ) xTaskResumeAll();
 800265e:	f001 f907 	bl	8003870 <xTaskResumeAll>
				prvProcessExpiredTimer( xNextExpireTime, xTimeNow );
 8002662:	4631      	mov	r1, r6
 8002664:	4628      	mov	r0, r5
 8002666:	f7ff ff4f 	bl	8002508 <prvProcessExpiredTimer>
}
 800266a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
					xListWasEmpty = listLIST_IS_EMPTY( pxOverflowTimerList );
 800266c:	480c      	ldr	r0, [pc, #48]	; (80026a0 <prvProcessTimerOrBlockTask+0x64>)
				if( xListWasEmpty != pdFALSE )
 800266e:	b11c      	cbz	r4, 8002678 <prvProcessTimerOrBlockTask+0x3c>
					xListWasEmpty = listLIST_IS_EMPTY( pxOverflowTimerList );
 8002670:	6841      	ldr	r1, [r0, #4]
 8002672:	6809      	ldr	r1, [r1, #0]
 8002674:	b191      	cbz	r1, 800269c <prvProcessTimerOrBlockTask+0x60>
 8002676:	2400      	movs	r4, #0
				vQueueWaitForMessageRestricted( xTimerQueue, ( xNextExpireTime - xTimeNow ), xListWasEmpty );
 8002678:	1ba9      	subs	r1, r5, r6
 800267a:	4622      	mov	r2, r4
 800267c:	6880      	ldr	r0, [r0, #8]
 800267e:	f000 fae3 	bl	8002c48 <vQueueWaitForMessageRestricted>
				if( xTaskResumeAll() == pdFALSE )
 8002682:	f001 f8f5 	bl	8003870 <xTaskResumeAll>
 8002686:	2800      	cmp	r0, #0
 8002688:	d1ef      	bne.n	800266a <prvProcessTimerOrBlockTask+0x2e>
					portYIELD_WITHIN_API();
 800268a:	4906      	ldr	r1, [pc, #24]	; (80026a4 <prvProcessTimerOrBlockTask+0x68>)
 800268c:	f04f 5080 	mov.w	r0, #268435456	; 0x10000000
 8002690:	6008      	str	r0, [r1, #0]
 8002692:	f3bf 8f4f 	dsb	sy
 8002696:	f3bf 8f6f 	isb	sy
}
 800269a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
					xListWasEmpty = listLIST_IS_EMPTY( pxOverflowTimerList );
 800269c:	2401      	movs	r4, #1
 800269e:	e7eb      	b.n	8002678 <prvProcessTimerOrBlockTask+0x3c>
 80026a0:	2000006c 	.word	0x2000006c
 80026a4:	e000ed04 	.word	0xe000ed04

080026a8 <prvResetNextTaskUnblockTime>:
	if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
 80026a8:	4907      	ldr	r1, [pc, #28]	; (80026c8 <prvResetNextTaskUnblockTime+0x20>)
 80026aa:	6848      	ldr	r0, [r1, #4]
 80026ac:	6800      	ldr	r0, [r0, #0]
 80026ae:	2800      	cmp	r0, #0
{
 80026b0:	d005      	beq.n	80026be <prvResetNextTaskUnblockTime+0x16>
		( pxTCB ) = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxDelayedTaskList );
 80026b2:	6848      	ldr	r0, [r1, #4]
 80026b4:	68c0      	ldr	r0, [r0, #12]
 80026b6:	68c0      	ldr	r0, [r0, #12]
		xNextTaskUnblockTime = listGET_LIST_ITEM_VALUE( &( ( pxTCB )->xStateListItem ) );
 80026b8:	6840      	ldr	r0, [r0, #4]
 80026ba:	6308      	str	r0, [r1, #48]	; 0x30
}
 80026bc:	4770      	bx	lr
		xNextTaskUnblockTime = portMAX_DELAY;
 80026be:	f04f 30ff 	mov.w	r0, #4294967295
 80026c2:	6308      	str	r0, [r1, #48]	; 0x30
}
 80026c4:	4770      	bx	lr
 80026c6:	0000      	.short	0x0000
 80026c8:	20000028 	.word	0x20000028

080026cc <prvSampleTimeNow>:
{
 80026cc:	b570      	push	{r4, r5, r6, lr}
 80026ce:	4604      	mov	r4, r0
	xTimeNow = xTaskGetTickCount();
 80026d0:	f000 ffe6 	bl	80036a0 <xTaskGetTickCount>
 80026d4:	4605      	mov	r5, r0
	if( xTimeNow < xLastTime )
 80026d6:	4e07      	ldr	r6, [pc, #28]	; (80026f4 <prvSampleTimeNow+0x28>)
 80026d8:	6930      	ldr	r0, [r6, #16]
 80026da:	4285      	cmp	r5, r0
 80026dc:	d204      	bcs.n	80026e8 <prvSampleTimeNow+0x1c>
		prvSwitchTimerLists();
 80026de:	f000 f80b 	bl	80026f8 <prvSwitchTimerLists>
		*pxTimerListsWereSwitched = pdTRUE;
 80026e2:	2001      	movs	r0, #1
 80026e4:	6020      	str	r0, [r4, #0]
 80026e6:	e001      	b.n	80026ec <prvSampleTimeNow+0x20>
		*pxTimerListsWereSwitched = pdFALSE;
 80026e8:	2000      	movs	r0, #0
 80026ea:	6020      	str	r0, [r4, #0]
	xLastTime = xTimeNow;
 80026ec:	6135      	str	r5, [r6, #16]
	return xTimeNow;
 80026ee:	4628      	mov	r0, r5
}
 80026f0:	bd70      	pop	{r4, r5, r6, pc}
 80026f2:	0000      	.short	0x0000
 80026f4:	2000006c 	.word	0x2000006c

080026f8 <prvSwitchTimerLists>:
{
 80026f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	while( listLIST_IS_EMPTY( pxCurrentTimerList ) == pdFALSE )
 80026fa:	4e1b      	ldr	r6, [pc, #108]	; (8002768 <prvSwitchTimerLists+0x70>)
 80026fc:	6830      	ldr	r0, [r6, #0]
 80026fe:	6800      	ldr	r0, [r0, #0]
 8002700:	2800      	cmp	r0, #0
{
 8002702:	d024      	beq.n	800274e <prvSwitchTimerLists+0x56>
 8002704:	2700      	movs	r7, #0
		xNextExpireTime = listGET_ITEM_VALUE_OF_HEAD_ENTRY( pxCurrentTimerList );
 8002706:	6830      	ldr	r0, [r6, #0]
 8002708:	68c0      	ldr	r0, [r0, #12]
 800270a:	6805      	ldr	r5, [r0, #0]
		pxTimer = ( Timer_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxCurrentTimerList );
 800270c:	68c4      	ldr	r4, [r0, #12]
		( void ) uxListRemove( &( pxTimer->xTimerListItem ) );
 800270e:	1d20      	adds	r0, r4, #4
 8002710:	f000 f92e 	bl	8002970 <uxListRemove>
		pxTimer->pxCallbackFunction( ( TimerHandle_t ) pxTimer );
 8002714:	6a61      	ldr	r1, [r4, #36]	; 0x24
 8002716:	4620      	mov	r0, r4
 8002718:	4788      	blx	r1
		if( pxTimer->uxAutoReload == ( UBaseType_t ) pdTRUE )
 800271a:	69e0      	ldr	r0, [r4, #28]
 800271c:	2801      	cmp	r0, #1
 800271e:	d112      	bne.n	8002746 <prvSwitchTimerLists+0x4e>
			xReloadTime = ( xNextExpireTime + pxTimer->xTimerPeriodInTicks );
 8002720:	69a0      	ldr	r0, [r4, #24]
 8002722:	4428      	add	r0, r5
			if( xReloadTime > xNextExpireTime )
 8002724:	42a8      	cmp	r0, r5
 8002726:	d906      	bls.n	8002736 <prvSwitchTimerLists+0x3e>
				listSET_LIST_ITEM_VALUE( &( pxTimer->xTimerListItem ), xReloadTime );
 8002728:	6060      	str	r0, [r4, #4]
				listSET_LIST_ITEM_OWNER( &( pxTimer->xTimerListItem ), pxTimer );
 800272a:	6124      	str	r4, [r4, #16]
				vListInsert( pxCurrentTimerList, &( pxTimer->xTimerListItem ) );
 800272c:	1d21      	adds	r1, r4, #4
 800272e:	6830      	ldr	r0, [r6, #0]
 8002730:	f000 f9af 	bl	8002a92 <vListInsert>
 8002734:	e007      	b.n	8002746 <prvSwitchTimerLists+0x4e>
				xResult = xTimerGenericCommand( pxTimer, tmrCOMMAND_START_DONT_TRACE, xNextExpireTime, NULL, tmrNO_DELAY );
 8002736:	2300      	movs	r3, #0
 8002738:	462a      	mov	r2, r5
 800273a:	4619      	mov	r1, r3
 800273c:	4620      	mov	r0, r4
 800273e:	9700      	str	r7, [sp, #0]
 8002740:	f001 f930 	bl	80039a4 <xTimerGenericCommand>
				configASSERT( xResult );
 8002744:	b140      	cbz	r0, 8002758 <prvSwitchTimerLists+0x60>
	while( listLIST_IS_EMPTY( pxCurrentTimerList ) == pdFALSE )
 8002746:	6830      	ldr	r0, [r6, #0]
 8002748:	6800      	ldr	r0, [r0, #0]
 800274a:	2800      	cmp	r0, #0
 800274c:	d1db      	bne.n	8002706 <prvSwitchTimerLists+0xe>
	pxTemp = pxCurrentTimerList;
 800274e:	6830      	ldr	r0, [r6, #0]
	pxCurrentTimerList = pxOverflowTimerList;
 8002750:	6871      	ldr	r1, [r6, #4]
 8002752:	6031      	str	r1, [r6, #0]
	pxOverflowTimerList = pxTemp;
 8002754:	6070      	str	r0, [r6, #4]
}
 8002756:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002758:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 800275a:	f380 8811 	msr	BASEPRI, r0
		dsb
 800275e:	f3bf 8f4f 	dsb	sy
		isb
 8002762:	f3bf 8f6f 	isb	sy
				configASSERT( xResult );
 8002766:	e7fe      	b.n	8002766 <prvSwitchTimerLists+0x6e>
 8002768:	2000006c 	.word	0x2000006c

0800276c <prvTaskCheckFreeStackSpace>:
	uint32_t ulCount = 0U;
 800276c:	2100      	movs	r1, #0
		while( *pucStackByte == ( uint8_t ) tskSTACK_FILL_BYTE )
 800276e:	7802      	ldrb	r2, [r0, #0]
 8002770:	2aa5      	cmp	r2, #165	; 0xa5
	{
 8002772:	d104      	bne.n	800277e <prvTaskCheckFreeStackSpace+0x12>
			pucStackByte -= portSTACK_GROWTH;
 8002774:	1c40      	adds	r0, r0, #1
			ulCount++;
 8002776:	1c49      	adds	r1, r1, #1
		while( *pucStackByte == ( uint8_t ) tskSTACK_FILL_BYTE )
 8002778:	7802      	ldrb	r2, [r0, #0]
 800277a:	2aa5      	cmp	r2, #165	; 0xa5
 800277c:	d0fa      	beq.n	8002774 <prvTaskCheckFreeStackSpace+0x8>
		ulCount /= ( uint32_t ) sizeof( StackType_t ); /*lint !e961 Casting is not redundant on smaller architectures. */
 800277e:	0888      	lsrs	r0, r1, #2
		return ( uint16_t ) ulCount;
 8002780:	b280      	uxth	r0, r0
	}
 8002782:	4770      	bx	lr

08002784 <prvTaskExitError>:
	configASSERT( uxCriticalNesting == ~0UL );
 8002784:	480a      	ldr	r0, [pc, #40]	; (80027b0 <prvTaskExitError+0x2c>)
 8002786:	6840      	ldr	r0, [r0, #4]
 8002788:	f1b0 3fff 	cmp.w	r0, #4294967295
{
 800278c:	d007      	beq.n	800279e <prvTaskExitError+0x1a>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800278e:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002790:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002794:	f3bf 8f4f 	dsb	sy
		isb
 8002798:	f3bf 8f6f 	isb	sy
	configASSERT( uxCriticalNesting == ~0UL );
 800279c:	e7fe      	b.n	800279c <prvTaskExitError+0x18>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800279e:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 80027a0:	f380 8811 	msr	BASEPRI, r0
		dsb
 80027a4:	f3bf 8f4f 	dsb	sy
		isb
 80027a8:	f3bf 8f6f 	isb	sy
	for( ;; );
 80027ac:	e7fe      	b.n	80027ac <prvTaskExitError+0x28>
 80027ae:	0000      	.short	0x0000
 80027b0:	2000009c 	.word	0x2000009c

080027b4 <prvTimerTask>:
{
 80027b4:	b082      	sub	sp, #8
		xNextExpireTime = prvGetNextExpireTime( &xListWasEmpty );
 80027b6:	a801      	add	r0, sp, #4
 80027b8:	f7ff fd2e 	bl	8002218 <prvGetNextExpireTime>
		prvProcessTimerOrBlockTask( xNextExpireTime, xListWasEmpty );
 80027bc:	9901      	ldr	r1, [sp, #4]
 80027be:	f7ff ff3d 	bl	800263c <prvProcessTimerOrBlockTask>
		prvProcessReceivedCommands();
 80027c2:	f7ff fecf 	bl	8002564 <prvProcessReceivedCommands>
 80027c6:	e7f6      	b.n	80027b6 <prvTimerTask+0x2>

080027c8 <prvUnlockQueue>:
{
 80027c8:	b570      	push	{r4, r5, r6, lr}
 80027ca:	4604      	mov	r4, r0
	taskENTER_CRITICAL();
 80027cc:	f000 f988 	bl	8002ae0 <vPortEnterCritical>
		int8_t cTxLock = pxQueue->cTxLock;
 80027d0:	f994 5045 	ldrsb.w	r5, [r4, #69]	; 0x45
		while( cTxLock > queueLOCKED_UNMODIFIED )
 80027d4:	2d00      	cmp	r5, #0
 80027d6:	dd0c      	ble.n	80027f2 <prvUnlockQueue+0x2a>
				if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
 80027d8:	6a60      	ldr	r0, [r4, #36]	; 0x24
 80027da:	b150      	cbz	r0, 80027f2 <prvUnlockQueue+0x2a>
					if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
 80027dc:	f104 0024 	add.w	r0, r4, #36	; 0x24
 80027e0:	f001 f80a 	bl	80037f8 <xTaskRemoveFromEventList>
 80027e4:	b108      	cbz	r0, 80027ea <prvUnlockQueue+0x22>
						vTaskMissedYield();
 80027e6:	f000 fb29 	bl	8002e3c <vTaskMissedYield>
			--cTxLock;
 80027ea:	1e68      	subs	r0, r5, #1
 80027ec:	b245      	sxtb	r5, r0
		while( cTxLock > queueLOCKED_UNMODIFIED )
 80027ee:	2d00      	cmp	r5, #0
 80027f0:	dcf2      	bgt.n	80027d8 <prvUnlockQueue+0x10>
		pxQueue->cTxLock = queueUNLOCKED;
 80027f2:	f04f 36ff 	mov.w	r6, #4294967295
 80027f6:	f884 6045 	strb.w	r6, [r4, #69]	; 0x45
	taskEXIT_CRITICAL();
 80027fa:	f000 f991 	bl	8002b20 <vPortExitCritical>
	taskENTER_CRITICAL();
 80027fe:	f000 f96f 	bl	8002ae0 <vPortEnterCritical>
		int8_t cRxLock = pxQueue->cRxLock;
 8002802:	f994 5044 	ldrsb.w	r5, [r4, #68]	; 0x44
		while( cRxLock > queueLOCKED_UNMODIFIED )
 8002806:	2d00      	cmp	r5, #0
					break;
 8002808:	dd0c      	ble.n	8002824 <prvUnlockQueue+0x5c>
			if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
 800280a:	6920      	ldr	r0, [r4, #16]
 800280c:	b150      	cbz	r0, 8002824 <prvUnlockQueue+0x5c>
				if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
 800280e:	f104 0010 	add.w	r0, r4, #16
 8002812:	f000 fff1 	bl	80037f8 <xTaskRemoveFromEventList>
 8002816:	b108      	cbz	r0, 800281c <prvUnlockQueue+0x54>
					vTaskMissedYield();
 8002818:	f000 fb10 	bl	8002e3c <vTaskMissedYield>
				--cRxLock;
 800281c:	1e68      	subs	r0, r5, #1
 800281e:	b245      	sxtb	r5, r0
		while( cRxLock > queueLOCKED_UNMODIFIED )
 8002820:	2d00      	cmp	r5, #0
				--cRxLock;
 8002822:	dcf2      	bgt.n	800280a <prvUnlockQueue+0x42>
		pxQueue->cRxLock = queueUNLOCKED;
 8002824:	f884 6044 	strb.w	r6, [r4, #68]	; 0x44
	taskEXIT_CRITICAL();
 8002828:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800282c:	f000 b978 	b.w	8002b20 <vPortExitCritical>

08002830 <prvWriteNameToBuffer>:
	{
 8002830:	b510      	push	{r4, lr}
 8002832:	4604      	mov	r4, r0
		strcpy( pcBuffer, pcTaskName );
 8002834:	4620      	mov	r0, r4
 8002836:	f7fd fd9b 	bl	8000370 <strcpy>
		for( x = strlen( pcBuffer ); x < ( size_t ) ( configMAX_TASK_NAME_LEN - 1 ); x++ )
 800283a:	4620      	mov	r0, r4
 800283c:	f7fd fdbc 	bl	80003b8 <strlen>
 8002840:	280f      	cmp	r0, #15
 8002842:	d204      	bcs.n	800284e <prvWriteNameToBuffer+0x1e>
			pcBuffer[ x ] = ' ';
 8002844:	2120      	movs	r1, #32
 8002846:	5421      	strb	r1, [r4, r0]
		for( x = strlen( pcBuffer ); x < ( size_t ) ( configMAX_TASK_NAME_LEN - 1 ); x++ )
 8002848:	1c40      	adds	r0, r0, #1
 800284a:	280f      	cmp	r0, #15
 800284c:	d3fb      	bcc.n	8002846 <prvWriteNameToBuffer+0x16>
		pcBuffer[ x ] = 0x00;
 800284e:	2100      	movs	r1, #0
 8002850:	5421      	strb	r1, [r4, r0]
		return &( pcBuffer[ x ] );
 8002852:	4420      	add	r0, r4
	}
 8002854:	bd10      	pop	{r4, pc}
	...

08002858 <pvPortMalloc>:
{
 8002858:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800285c:	4605      	mov	r5, r0
void *pvReturn = NULL;
 800285e:	2600      	movs	r6, #0
	vTaskSuspendAll();
 8002860:	f000 fb74 	bl	8002f4c <vTaskSuspendAll>
		if( pxEnd == NULL )
 8002864:	4f33      	ldr	r7, [pc, #204]	; (8002934 <pvPortMalloc+0xdc>)
 8002866:	6838      	ldr	r0, [r7, #0]
 8002868:	b908      	cbnz	r0, 800286e <pvPortMalloc+0x16>
			prvHeapInit();
 800286a:	f7ff fce7 	bl	800223c <prvHeapInit>
		if( ( xWantedSize & xBlockAllocatedBit ) == 0 )
 800286e:	68f8      	ldr	r0, [r7, #12]
 8002870:	4205      	tst	r5, r0
 8002872:	d14e      	bne.n	8002912 <pvPortMalloc+0xba>
			if( xWantedSize > 0 )
 8002874:	b19d      	cbz	r5, 800289e <pvPortMalloc+0x46>
				xWantedSize += xHeapStructSize;
 8002876:	3508      	adds	r5, #8
				if( ( xWantedSize & portBYTE_ALIGNMENT_MASK ) != 0x00 )
 8002878:	f015 0f07 	tst.w	r5, #7
 800287c:	d00f      	beq.n	800289e <pvPortMalloc+0x46>
					xWantedSize += ( portBYTE_ALIGNMENT - ( xWantedSize & portBYTE_ALIGNMENT_MASK ) );
 800287e:	f005 0007 	and.w	r0, r5, #7
 8002882:	f1c0 0008 	rsb	r0, r0, #8
 8002886:	4405      	add	r5, r0
					configASSERT( ( xWantedSize & portBYTE_ALIGNMENT_MASK ) == 0 );
 8002888:	f015 0f07 	tst.w	r5, #7
 800288c:	d007      	beq.n	800289e <pvPortMalloc+0x46>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800288e:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002890:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002894:	f3bf 8f4f 	dsb	sy
		isb
 8002898:	f3bf 8f6f 	isb	sy
 800289c:	e7fe      	b.n	800289c <pvPortMalloc+0x44>
			if( ( xWantedSize > 0 ) && ( xWantedSize <= xFreeBytesRemaining ) )
 800289e:	2d00      	cmp	r5, #0
 80028a0:	d037      	beq.n	8002912 <pvPortMalloc+0xba>
 80028a2:	6878      	ldr	r0, [r7, #4]
 80028a4:	4285      	cmp	r5, r0
 80028a6:	d834      	bhi.n	8002912 <pvPortMalloc+0xba>
				pxPreviousBlock = &xStart;
 80028a8:	4923      	ldr	r1, [pc, #140]	; (8002938 <pvPortMalloc+0xe0>)
				pxBlock = xStart.pxNextFreeBlock;
 80028aa:	4608      	mov	r0, r1
 80028ac:	6804      	ldr	r4, [r0, #0]
				while( ( pxBlock->xBlockSize < xWantedSize ) && ( pxBlock->pxNextFreeBlock != NULL ) )
 80028ae:	e001      	b.n	80028b4 <pvPortMalloc+0x5c>
					pxPreviousBlock = pxBlock;
 80028b0:	4621      	mov	r1, r4
					pxBlock = pxBlock->pxNextFreeBlock;
 80028b2:	4604      	mov	r4, r0
				while( ( pxBlock->xBlockSize < xWantedSize ) && ( pxBlock->pxNextFreeBlock != NULL ) )
 80028b4:	6860      	ldr	r0, [r4, #4]
 80028b6:	42a8      	cmp	r0, r5
 80028b8:	d202      	bcs.n	80028c0 <pvPortMalloc+0x68>
 80028ba:	6820      	ldr	r0, [r4, #0]
 80028bc:	2800      	cmp	r0, #0
 80028be:	d1f7      	bne.n	80028b0 <pvPortMalloc+0x58>
				if( pxBlock != pxEnd )
 80028c0:	6838      	ldr	r0, [r7, #0]
 80028c2:	4284      	cmp	r4, r0
 80028c4:	d025      	beq.n	8002912 <pvPortMalloc+0xba>
					pvReturn = ( void * ) ( ( ( uint8_t * ) pxPreviousBlock->pxNextFreeBlock ) + xHeapStructSize );
 80028c6:	6808      	ldr	r0, [r1, #0]
 80028c8:	f100 0608 	add.w	r6, r0, #8
					pxPreviousBlock->pxNextFreeBlock = pxBlock->pxNextFreeBlock;
 80028cc:	6820      	ldr	r0, [r4, #0]
 80028ce:	6008      	str	r0, [r1, #0]
					if( ( pxBlock->xBlockSize - xWantedSize ) > heapMINIMUM_BLOCK_SIZE )
 80028d0:	6860      	ldr	r0, [r4, #4]
 80028d2:	1b41      	subs	r1, r0, r5
 80028d4:	2910      	cmp	r1, #16
 80028d6:	d90f      	bls.n	80028f8 <pvPortMalloc+0xa0>
						pxNewBlockLink = ( void * ) ( ( ( uint8_t * ) pxBlock ) + xWantedSize );
 80028d8:	1960      	adds	r0, r4, r5
						configASSERT( ( ( ( size_t ) pxNewBlockLink ) & portBYTE_ALIGNMENT_MASK ) == 0 );
 80028da:	f010 0f07 	tst.w	r0, #7
 80028de:	d007      	beq.n	80028f0 <pvPortMalloc+0x98>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 80028e0:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 80028e2:	f380 8811 	msr	BASEPRI, r0
		dsb
 80028e6:	f3bf 8f4f 	dsb	sy
		isb
 80028ea:	f3bf 8f6f 	isb	sy
 80028ee:	e7fe      	b.n	80028ee <pvPortMalloc+0x96>
						pxNewBlockLink->xBlockSize = pxBlock->xBlockSize - xWantedSize;
 80028f0:	6041      	str	r1, [r0, #4]
						pxBlock->xBlockSize = xWantedSize;
 80028f2:	6065      	str	r5, [r4, #4]
						prvInsertBlockIntoFreeList( pxNewBlockLink );
 80028f4:	f7ff fd6a 	bl	80023cc <prvInsertBlockIntoFreeList>
					xFreeBytesRemaining -= pxBlock->xBlockSize;
 80028f8:	6861      	ldr	r1, [r4, #4]
 80028fa:	6878      	ldr	r0, [r7, #4]
 80028fc:	1a40      	subs	r0, r0, r1
 80028fe:	6078      	str	r0, [r7, #4]
					if( xFreeBytesRemaining < xMinimumEverFreeBytesRemaining )
 8002900:	68ba      	ldr	r2, [r7, #8]
 8002902:	4290      	cmp	r0, r2
 8002904:	d200      	bcs.n	8002908 <pvPortMalloc+0xb0>
						xMinimumEverFreeBytesRemaining = xFreeBytesRemaining;
 8002906:	60b8      	str	r0, [r7, #8]
					pxBlock->xBlockSize |= xBlockAllocatedBit;
 8002908:	68f8      	ldr	r0, [r7, #12]
 800290a:	4308      	orrs	r0, r1
 800290c:	6060      	str	r0, [r4, #4]
					pxBlock->pxNextFreeBlock = NULL;
 800290e:	2000      	movs	r0, #0
 8002910:	6020      	str	r0, [r4, #0]
	( void ) xTaskResumeAll();
 8002912:	f000 ffad 	bl	8003870 <xTaskResumeAll>
	configASSERT( ( ( ( size_t ) pvReturn ) & ( size_t ) portBYTE_ALIGNMENT_MASK ) == 0 );
 8002916:	f016 0f07 	tst.w	r6, #7
 800291a:	d007      	beq.n	800292c <pvPortMalloc+0xd4>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800291c:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 800291e:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002922:	f3bf 8f4f 	dsb	sy
		isb
 8002926:	f3bf 8f6f 	isb	sy
 800292a:	e7fe      	b.n	800292a <pvPortMalloc+0xd2>
	return pvReturn;
 800292c:	4630      	mov	r0, r6
}
 800292e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002932:	0000      	.short	0x0000
 8002934:	20000084 	.word	0x20000084
 8002938:	20000094 	.word	0x20000094

0800293c <pxPortInitialiseStack>:
	pxTopOfStack--; /* Offset added to account for the way the MCU uses the stack on entry/exit of interrupts. */
 800293c:	1f00      	subs	r0, r0, #4
	*pxTopOfStack = portINITIAL_XPSR;	/* xPSR */
 800293e:	f04f 7380 	mov.w	r3, #16777216	; 0x1000000
 8002942:	6003      	str	r3, [r0, #0]
	pxTopOfStack--;
 8002944:	1f00      	subs	r0, r0, #4
	*pxTopOfStack = ( ( StackType_t ) pxCode ) & portSTART_ADDRESS_MASK;	/* PC */
 8002946:	f021 0101 	bic.w	r1, r1, #1
 800294a:	6001      	str	r1, [r0, #0]
	pxTopOfStack--;
 800294c:	1f00      	subs	r0, r0, #4
	*pxTopOfStack = ( StackType_t ) prvTaskExitError;	/* LR */
 800294e:	4903      	ldr	r1, [pc, #12]	; (800295c <pxPortInitialiseStack+0x20>)
 8002950:	6001      	str	r1, [r0, #0]
	pxTopOfStack -= 5;	/* R12, R3, R2 and R1. */
 8002952:	3814      	subs	r0, #20
	*pxTopOfStack = ( StackType_t ) pvParameters;	/* R0 */
 8002954:	6002      	str	r2, [r0, #0]
	pxTopOfStack -= 8;	/* R11, R10, R9, R8, R7, R6, R5 and R4. */
 8002956:	3820      	subs	r0, #32
}
 8002958:	4770      	bx	lr
 800295a:	0000      	.short	0x0000
 800295c:	08002785 	.word	0x08002785

08002960 <uart_printf_init>:
{
 8002960:	2800      	cmp	r0, #0
 8002962:	d001      	beq.n	8002968 <uart_printf_init+0x8>
		s_uart_handle = handle;
 8002964:	4901      	ldr	r1, [pc, #4]	; (800296c <uart_printf_init+0xc>)
 8002966:	6008      	str	r0, [r1, #0]
}
 8002968:	4770      	bx	lr
 800296a:	0000      	.short	0x0000
 800296c:	20000000 	.word	0x20000000

08002970 <uxListRemove>:

UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove )
{
/* The list item knows which list it is in.  Obtain the list from the list
item. */
List_t * const pxList = ( List_t * ) pxItemToRemove->pvContainer;
 8002970:	6901      	ldr	r1, [r0, #16]

	pxItemToRemove->pxNext->pxPrevious = pxItemToRemove->pxPrevious;
 8002972:	6843      	ldr	r3, [r0, #4]
 8002974:	6882      	ldr	r2, [r0, #8]
 8002976:	609a      	str	r2, [r3, #8]
	pxItemToRemove->pxPrevious->pxNext = pxItemToRemove->pxNext;
 8002978:	6883      	ldr	r3, [r0, #8]
 800297a:	6842      	ldr	r2, [r0, #4]
 800297c:	605a      	str	r2, [r3, #4]

	/* Only used during decision coverage testing. */
	mtCOVERAGE_TEST_DELAY();

	/* Make sure the index is left pointing to a valid item. */
	if( pxList->pxIndex == pxItemToRemove )
 800297e:	684a      	ldr	r2, [r1, #4]
 8002980:	4282      	cmp	r2, r0
{
 8002982:	d101      	bne.n	8002988 <uxListRemove+0x18>
	{
		pxList->pxIndex = pxItemToRemove->pxPrevious;
 8002984:	6882      	ldr	r2, [r0, #8]
 8002986:	604a      	str	r2, [r1, #4]
	else
	{
		mtCOVERAGE_TEST_MARKER();
	}

	pxItemToRemove->pvContainer = NULL;
 8002988:	2200      	movs	r2, #0
 800298a:	6102      	str	r2, [r0, #16]
	( pxList->uxNumberOfItems )--;
 800298c:	6808      	ldr	r0, [r1, #0]
 800298e:	1e40      	subs	r0, r0, #1
 8002990:	6008      	str	r0, [r1, #0]

	return pxList->uxNumberOfItems;
 8002992:	6808      	ldr	r0, [r1, #0]
}
 8002994:	4770      	bx	lr
	...

08002998 <uxTaskGetSystemState>:
	{
 8002998:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800299c:	4606      	mov	r6, r0
 800299e:	460b      	mov	r3, r1
 80029a0:	4617      	mov	r7, r2
	UBaseType_t uxTask = 0, uxQueue = configMAX_PRIORITIES;
 80029a2:	2400      	movs	r4, #0
 80029a4:	2538      	movs	r5, #56	; 0x38
		vTaskSuspendAll();
 80029a6:	f000 fad1 	bl	8002f4c <vTaskSuspendAll>
			if( uxArraySize >= uxCurrentNumberOfTasks )
 80029aa:	f8df 808c 	ldr.w	r8, [pc, #140]	; 8002a38 <uxTaskGetSystemState+0xa0>
 80029ae:	f8d8 0010 	ldr.w	r0, [r8, #16]
 80029b2:	4283      	cmp	r3, r0
 80029b4:	d33a      	bcc.n	8002a2c <uxTaskGetSystemState+0x94>
					uxTask += prvListTasksWithinSingleList( &( pxTaskStatusArray[ uxTask ] ), &( pxReadyTasksLists[ uxQueue ] ), eReady );
 80029b6:	f8df 9084 	ldr.w	r9, [pc, #132]	; 8002a3c <uxTaskGetSystemState+0xa4>
					uxQueue--;
 80029ba:	1e6d      	subs	r5, r5, #1
					uxTask += prvListTasksWithinSingleList( &( pxTaskStatusArray[ uxTask ] ), &( pxReadyTasksLists[ uxQueue ] ), eReady );
 80029bc:	eb05 0085 	add.w	r0, r5, r5, lsl #2
 80029c0:	eb09 0180 	add.w	r1, r9, r0, lsl #2
 80029c4:	eb04 00c4 	add.w	r0, r4, r4, lsl #3
 80029c8:	eb06 0080 	add.w	r0, r6, r0, lsl #2
 80029cc:	2201      	movs	r2, #1
 80029ce:	f7ff fd6b 	bl	80024a8 <prvListTasksWithinSingleList>
 80029d2:	4404      	add	r4, r0
				} while( uxQueue > ( UBaseType_t ) tskIDLE_PRIORITY ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
 80029d4:	2d00      	cmp	r5, #0
 80029d6:	d1f0      	bne.n	80029ba <uxTaskGetSystemState+0x22>
				uxTask += prvListTasksWithinSingleList( &( pxTaskStatusArray[ uxTask ] ), ( List_t * ) pxDelayedTaskList, eBlocked );
 80029d8:	eb04 00c4 	add.w	r0, r4, r4, lsl #3
 80029dc:	eb06 0080 	add.w	r0, r6, r0, lsl #2
 80029e0:	2202      	movs	r2, #2
 80029e2:	f8d8 1004 	ldr.w	r1, [r8, #4]
 80029e6:	f7ff fd5f 	bl	80024a8 <prvListTasksWithinSingleList>
 80029ea:	4404      	add	r4, r0
				uxTask += prvListTasksWithinSingleList( &( pxTaskStatusArray[ uxTask ] ), ( List_t * ) pxOverflowDelayedTaskList, eBlocked );
 80029ec:	eb04 00c4 	add.w	r0, r4, r4, lsl #3
 80029f0:	eb06 0080 	add.w	r0, r6, r0, lsl #2
 80029f4:	2202      	movs	r2, #2
 80029f6:	f8d8 1008 	ldr.w	r1, [r8, #8]
 80029fa:	f7ff fd55 	bl	80024a8 <prvListTasksWithinSingleList>
 80029fe:	4404      	add	r4, r0
					uxTask += prvListTasksWithinSingleList( &( pxTaskStatusArray[ uxTask ] ), &xTasksWaitingTermination, eDeleted );
 8002a00:	eb04 00c4 	add.w	r0, r4, r4, lsl #3
 8002a04:	eb06 0080 	add.w	r0, r6, r0, lsl #2
 8002a08:	2204      	movs	r2, #4
 8002a0a:	490d      	ldr	r1, [pc, #52]	; (8002a40 <uxTaskGetSystemState+0xa8>)
 8002a0c:	f7ff fd4c 	bl	80024a8 <prvListTasksWithinSingleList>
 8002a10:	4404      	add	r4, r0
					uxTask += prvListTasksWithinSingleList( &( pxTaskStatusArray[ uxTask ] ), &xSuspendedTaskList, eSuspended );
 8002a12:	eb04 00c4 	add.w	r0, r4, r4, lsl #3
 8002a16:	eb06 0080 	add.w	r0, r6, r0, lsl #2
 8002a1a:	2203      	movs	r2, #3
 8002a1c:	4909      	ldr	r1, [pc, #36]	; (8002a44 <uxTaskGetSystemState+0xac>)
 8002a1e:	f7ff fd43 	bl	80024a8 <prvListTasksWithinSingleList>
 8002a22:	4404      	add	r4, r0
					if( pulTotalRunTime != NULL )
 8002a24:	b117      	cbz	r7, 8002a2c <uxTaskGetSystemState+0x94>
							*pulTotalRunTime = portGET_RUN_TIME_COUNTER_VALUE();
 8002a26:	f7ff f985 	bl	8001d34 <getRunTimeCounterValue>
 8002a2a:	6038      	str	r0, [r7, #0]
		( void ) xTaskResumeAll();
 8002a2c:	f000 ff20 	bl	8003870 <xTaskResumeAll>
		return uxTask;
 8002a30:	4620      	mov	r0, r4
	}
 8002a32:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8002a36:	0000      	.short	0x0000
 8002a38:	20000028 	.word	0x20000028
 8002a3c:	2000060c 	.word	0x2000060c
 8002a40:	20000aa8 	.word	0x20000aa8
 8002a44:	20000abc 	.word	0x20000abc

08002a48 <vApplicationGetIdleTaskMemory>:
/*
  vApplicationGetIdleTaskMemory gets called when configSUPPORT_STATIC_ALLOCATION
  equals to 1 and is required for static memory allocation support.
*/
void vApplicationGetIdleTaskMemory (StaticTask_t **ppxIdleTaskTCBBuffer, StackType_t **ppxIdleTaskStackBuffer, uint32_t *pulIdleTaskStackSize) {
  *ppxIdleTaskTCBBuffer   = &Idle_TCB;
 8002a48:	4b03      	ldr	r3, [pc, #12]	; (8002a58 <vApplicationGetIdleTaskMemory+0x10>)
 8002a4a:	6003      	str	r3, [r0, #0]
  *ppxIdleTaskStackBuffer = &Idle_Stack[0];
 8002a4c:	f103 0060 	add.w	r0, r3, #96	; 0x60
 8002a50:	6008      	str	r0, [r1, #0]
  *pulIdleTaskStackSize   = (uint32_t)configMINIMAL_STACK_SIZE;
 8002a52:	2080      	movs	r0, #128	; 0x80
 8002a54:	6010      	str	r0, [r2, #0]
}
 8002a56:	4770      	bx	lr
 8002a58:	20000be8 	.word	0x20000be8

08002a5c <vApplicationGetTimerTaskMemory>:
/*
  vApplicationGetTimerTaskMemory gets called when configSUPPORT_STATIC_ALLOCATION
  equals to 1 and is required for static memory allocation support.
*/
void vApplicationGetTimerTaskMemory (StaticTask_t **ppxTimerTaskTCBBuffer, StackType_t **ppxTimerTaskStackBuffer, uint32_t *pulTimerTaskStackSize) {
  *ppxTimerTaskTCBBuffer   = &Timer_TCB;
 8002a5c:	4b04      	ldr	r3, [pc, #16]	; (8002a70 <vApplicationGetTimerTaskMemory+0x14>)
 8002a5e:	6003      	str	r3, [r0, #0]
  *ppxTimerTaskStackBuffer = &Timer_Stack[0];
 8002a60:	f103 0060 	add.w	r0, r3, #96	; 0x60
 8002a64:	6008      	str	r0, [r1, #0]
  *pulTimerTaskStackSize   = (uint32_t)configTIMER_TASK_STACK_DEPTH;
 8002a66:	f44f 7080 	mov.w	r0, #256	; 0x100
 8002a6a:	6010      	str	r0, [r2, #0]
}
 8002a6c:	4770      	bx	lr
 8002a6e:	0000      	.short	0x0000
 8002a70:	20000e48 	.word	0x20000e48

08002a74 <vApplicationIdleHook>:
   specified, or call vTaskDelay()). If the application makes use of the
   vTaskDelete() API function (as this demo application does) then it is also
   important that vApplicationIdleHook() is permitted to return to its calling
   function, because it is the responsibility of the idle task to clean up
   memory allocated by the kernel to any task that has since been deleted. */
}
 8002a74:	4770      	bx	lr

08002a76 <vListInitialise>:
	pxList->pxIndex = ( ListItem_t * ) &( pxList->xListEnd );			/*lint !e826 !e740 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
 8002a76:	f100 0108 	add.w	r1, r0, #8
 8002a7a:	6041      	str	r1, [r0, #4]
	pxList->xListEnd.xItemValue = portMAX_DELAY;
 8002a7c:	f04f 32ff 	mov.w	r2, #4294967295
 8002a80:	6082      	str	r2, [r0, #8]
	pxList->xListEnd.pxNext = ( ListItem_t * ) &( pxList->xListEnd );	/*lint !e826 !e740 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
 8002a82:	60c1      	str	r1, [r0, #12]
	pxList->xListEnd.pxPrevious = ( ListItem_t * ) &( pxList->xListEnd );/*lint !e826 !e740 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
 8002a84:	6101      	str	r1, [r0, #16]
	pxList->uxNumberOfItems = ( UBaseType_t ) 0U;
 8002a86:	2100      	movs	r1, #0
 8002a88:	6001      	str	r1, [r0, #0]
}
 8002a8a:	4770      	bx	lr

08002a8c <vListInitialiseItem>:
	pxItem->pvContainer = NULL;
 8002a8c:	2100      	movs	r1, #0
 8002a8e:	6101      	str	r1, [r0, #16]
}
 8002a90:	4770      	bx	lr

08002a92 <vListInsert>:
{
 8002a92:	b410      	push	{r4}
const TickType_t xValueOfInsertion = pxNewListItem->xItemValue;
 8002a94:	f8d1 c000 	ldr.w	ip, [r1]
	if( xValueOfInsertion == portMAX_DELAY )
 8002a98:	f1bc 3fff 	cmp.w	ip, #4294967295
{
 8002a9c:	d002      	beq.n	8002aa4 <vListInsert+0x12>
		for( pxIterator = ( ListItem_t * ) &( pxList->xListEnd ); pxIterator->pxNext->xItemValue <= xValueOfInsertion; pxIterator = pxIterator->pxNext ) /*lint !e826 !e740 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
 8002a9e:	f100 0208 	add.w	r2, r0, #8
 8002aa2:	e002      	b.n	8002aaa <vListInsert+0x18>
		pxIterator = pxList->xListEnd.pxPrevious;
 8002aa4:	6902      	ldr	r2, [r0, #16]
 8002aa6:	e004      	b.n	8002ab2 <vListInsert+0x20>
		for( pxIterator = ( ListItem_t * ) &( pxList->xListEnd ); pxIterator->pxNext->xItemValue <= xValueOfInsertion; pxIterator = pxIterator->pxNext ) /*lint !e826 !e740 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
 8002aa8:	461a      	mov	r2, r3
 8002aaa:	6853      	ldr	r3, [r2, #4]
 8002aac:	681c      	ldr	r4, [r3, #0]
 8002aae:	4564      	cmp	r4, ip
 8002ab0:	d9fa      	bls.n	8002aa8 <vListInsert+0x16>
	pxNewListItem->pxNext = pxIterator->pxNext;
 8002ab2:	6853      	ldr	r3, [r2, #4]
 8002ab4:	604b      	str	r3, [r1, #4]
	pxNewListItem->pxNext->pxPrevious = pxNewListItem;
 8002ab6:	6099      	str	r1, [r3, #8]
	pxNewListItem->pxPrevious = pxIterator;
 8002ab8:	608a      	str	r2, [r1, #8]
	pxIterator->pxNext = pxNewListItem;
 8002aba:	6051      	str	r1, [r2, #4]
	pxNewListItem->pvContainer = ( void * ) pxList;
 8002abc:	6108      	str	r0, [r1, #16]
	( pxList->uxNumberOfItems )++;
 8002abe:	6801      	ldr	r1, [r0, #0]
 8002ac0:	1c49      	adds	r1, r1, #1
 8002ac2:	6001      	str	r1, [r0, #0]
}
 8002ac4:	bc10      	pop	{r4}
 8002ac6:	4770      	bx	lr

08002ac8 <vListInsertEnd>:
ListItem_t * const pxIndex = pxList->pxIndex;
 8002ac8:	6842      	ldr	r2, [r0, #4]
	pxNewListItem->pxNext = pxIndex;
 8002aca:	604a      	str	r2, [r1, #4]
	pxNewListItem->pxPrevious = pxIndex->pxPrevious;
 8002acc:	6893      	ldr	r3, [r2, #8]
 8002ace:	608b      	str	r3, [r1, #8]
	pxIndex->pxPrevious->pxNext = pxNewListItem;
 8002ad0:	6893      	ldr	r3, [r2, #8]
 8002ad2:	6059      	str	r1, [r3, #4]
	pxIndex->pxPrevious = pxNewListItem;
 8002ad4:	6091      	str	r1, [r2, #8]
	pxNewListItem->pvContainer = ( void * ) pxList;
 8002ad6:	6108      	str	r0, [r1, #16]
	( pxList->uxNumberOfItems )++;
 8002ad8:	6801      	ldr	r1, [r0, #0]
 8002ada:	1c49      	adds	r1, r1, #1
 8002adc:	6001      	str	r1, [r0, #0]
}
 8002ade:	4770      	bx	lr

08002ae0 <vPortEnterCritical>:
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002ae0:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002ae2:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002ae6:	f3bf 8f4f 	dsb	sy
		isb
 8002aea:	f3bf 8f6f 	isb	sy
	uxCriticalNesting++;
 8002aee:	490a      	ldr	r1, [pc, #40]	; (8002b18 <vPortEnterCritical+0x38>)
 8002af0:	6848      	ldr	r0, [r1, #4]
 8002af2:	1c40      	adds	r0, r0, #1
 8002af4:	6048      	str	r0, [r1, #4]
	if( uxCriticalNesting == 1 )
 8002af6:	2801      	cmp	r0, #1
{
 8002af8:	d10c      	bne.n	8002b14 <vPortEnterCritical+0x34>
		configASSERT( ( portNVIC_INT_CTRL_REG & portVECTACTIVE_MASK ) == 0 );
 8002afa:	4808      	ldr	r0, [pc, #32]	; (8002b1c <vPortEnterCritical+0x3c>)
 8002afc:	6800      	ldr	r0, [r0, #0]
 8002afe:	f010 0fff 	tst.w	r0, #255	; 0xff
 8002b02:	d007      	beq.n	8002b14 <vPortEnterCritical+0x34>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002b04:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002b06:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002b0a:	f3bf 8f4f 	dsb	sy
		isb
 8002b0e:	f3bf 8f6f 	isb	sy
 8002b12:	e7fe      	b.n	8002b12 <vPortEnterCritical+0x32>
}
 8002b14:	4770      	bx	lr
 8002b16:	0000      	.short	0x0000
 8002b18:	2000009c 	.word	0x2000009c
 8002b1c:	e000ed04 	.word	0xe000ed04

08002b20 <vPortExitCritical>:
	configASSERT( uxCriticalNesting );
 8002b20:	4909      	ldr	r1, [pc, #36]	; (8002b48 <vPortExitCritical+0x28>)
 8002b22:	6848      	ldr	r0, [r1, #4]
 8002b24:	2800      	cmp	r0, #0
{
 8002b26:	d006      	beq.n	8002b36 <vPortExitCritical+0x16>
	uxCriticalNesting--;
 8002b28:	1e40      	subs	r0, r0, #1
 8002b2a:	6048      	str	r0, [r1, #4]
	if( uxCriticalNesting == 0 )
 8002b2c:	2800      	cmp	r0, #0
 8002b2e:	d101      	bne.n	8002b34 <vPortExitCritical+0x14>
		msr basepri, ulBASEPRI
 8002b30:	f380 8811 	msr	BASEPRI, r0
}
 8002b34:	4770      	bx	lr
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002b36:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002b38:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002b3c:	f3bf 8f4f 	dsb	sy
		isb
 8002b40:	f3bf 8f6f 	isb	sy
	configASSERT( uxCriticalNesting );
 8002b44:	e7fe      	b.n	8002b44 <vPortExitCritical+0x24>
 8002b46:	0000      	.short	0x0000
 8002b48:	2000009c 	.word	0x2000009c

08002b4c <vPortFree>:
{
 8002b4c:	b570      	push	{r4, r5, r6, lr}
	if( pv != NULL )
 8002b4e:	2800      	cmp	r0, #0
{
 8002b50:	d027      	beq.n	8002ba2 <vPortFree+0x56>
		puc -= xHeapStructSize;
 8002b52:	f1a0 0408 	sub.w	r4, r0, #8
		configASSERT( ( pxLink->xBlockSize & xBlockAllocatedBit ) != 0 );
 8002b56:	4d13      	ldr	r5, [pc, #76]	; (8002ba4 <vPortFree+0x58>)
 8002b58:	6860      	ldr	r0, [r4, #4]
 8002b5a:	68e9      	ldr	r1, [r5, #12]
 8002b5c:	4208      	tst	r0, r1
 8002b5e:	d107      	bne.n	8002b70 <vPortFree+0x24>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002b60:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002b62:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002b66:	f3bf 8f4f 	dsb	sy
		isb
 8002b6a:	f3bf 8f6f 	isb	sy
 8002b6e:	e7fe      	b.n	8002b6e <vPortFree+0x22>
		configASSERT( pxLink->pxNextFreeBlock == NULL );
 8002b70:	6822      	ldr	r2, [r4, #0]
 8002b72:	b13a      	cbz	r2, 8002b84 <vPortFree+0x38>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002b74:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002b76:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002b7a:	f3bf 8f4f 	dsb	sy
		isb
 8002b7e:	f3bf 8f6f 	isb	sy
 8002b82:	e7fe      	b.n	8002b82 <vPortFree+0x36>
				pxLink->xBlockSize &= ~xBlockAllocatedBit;
 8002b84:	4388      	bics	r0, r1
 8002b86:	6060      	str	r0, [r4, #4]
				vTaskSuspendAll();
 8002b88:	f000 f9e0 	bl	8002f4c <vTaskSuspendAll>
					xFreeBytesRemaining += pxLink->xBlockSize;
 8002b8c:	6860      	ldr	r0, [r4, #4]
 8002b8e:	6869      	ldr	r1, [r5, #4]
 8002b90:	4408      	add	r0, r1
 8002b92:	6068      	str	r0, [r5, #4]
					prvInsertBlockIntoFreeList( ( ( BlockLink_t * ) pxLink ) );
 8002b94:	4620      	mov	r0, r4
 8002b96:	f7ff fc19 	bl	80023cc <prvInsertBlockIntoFreeList>
				( void ) xTaskResumeAll();
 8002b9a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8002b9e:	f000 be67 	b.w	8003870 <xTaskResumeAll>
}
 8002ba2:	bd70      	pop	{r4, r5, r6, pc}
 8002ba4:	20000084 	.word	0x20000084

08002ba8 <vPortSetupTimerInterrupt>:
		portNVIC_SYSTICK_CTRL_REG = 0UL;
 8002ba8:	f04f 20e0 	mov.w	r0, #3758153728	; 0xe000e000
 8002bac:	2100      	movs	r1, #0
 8002bae:	6101      	str	r1, [r0, #16]
		portNVIC_SYSTICK_CURRENT_VALUE_REG = 0UL;
 8002bb0:	6181      	str	r1, [r0, #24]
		portNVIC_SYSTICK_LOAD_REG = ( configSYSTICK_CLOCK_HZ / configTICK_RATE_HZ ) - 1UL;
 8002bb2:	4905      	ldr	r1, [pc, #20]	; (8002bc8 <vPortSetupTimerInterrupt+0x20>)
 8002bb4:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
 8002bb8:	6809      	ldr	r1, [r1, #0]
 8002bba:	fbb1 f1f2 	udiv	r1, r1, r2
 8002bbe:	1e49      	subs	r1, r1, #1
 8002bc0:	6141      	str	r1, [r0, #20]
		portNVIC_SYSTICK_CTRL_REG = ( portNVIC_SYSTICK_CLK_BIT | portNVIC_SYSTICK_INT_BIT | portNVIC_SYSTICK_ENABLE_BIT );
 8002bc2:	2107      	movs	r1, #7
 8002bc4:	6101      	str	r1, [r0, #16]
	}
 8002bc6:	4770      	bx	lr
 8002bc8:	20000024 	.word	0x20000024

08002bcc <vPortValidateInterruptPriority>:
/*-----------------------------------------------------------*/

#if( configASSERT_DEFINED == 1 )

	void vPortValidateInterruptPriority( void )
	{
 8002bcc:	b510      	push	{r4, lr}
	uint32_t ulCurrentInterrupt;
	uint8_t ucCurrentPriority;

		/* Obtain the number of the currently executing interrupt. */
		ulCurrentInterrupt = vPortGetIPSR();
 8002bce:	f7fd fb27 	bl	8000220 <vPortGetIPSR>
			interrupt entry is as fast and simple as possible.

			The following links provide detailed information:
			http://www.freertos.org/RTOS-Cortex-M3-M4.html
			http://www.freertos.org/FAQHelp.html */
			configASSERT( ucCurrentPriority >= ucMaxSysCallPriority );
 8002bd2:	4911      	ldr	r1, [pc, #68]	; (8002c18 <vPortValidateInterruptPriority+0x4c>)
		if( ulCurrentInterrupt >= portFIRST_USER_INTERRUPT_NUMBER )
 8002bd4:	2810      	cmp	r0, #16
 8002bd6:	d30e      	bcc.n	8002bf6 <vPortValidateInterruptPriority+0x2a>
			ucCurrentPriority = pcInterruptPriorityRegisters[ ulCurrentInterrupt ];
 8002bd8:	f100 20e0 	add.w	r0, r0, #3758153728	; 0xe000e000
 8002bdc:	f890 03f0 	ldrb.w	r0, [r0, #1008]	; 0x3f0
			configASSERT( ucCurrentPriority >= ucMaxSysCallPriority );
 8002be0:	780a      	ldrb	r2, [r1, #0]
 8002be2:	4290      	cmp	r0, r2
 8002be4:	d207      	bcs.n	8002bf6 <vPortValidateInterruptPriority+0x2a>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002be6:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002be8:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002bec:	f3bf 8f4f 	dsb	sy
		isb
 8002bf0:	f3bf 8f6f 	isb	sy
 8002bf4:	e7fe      	b.n	8002bf4 <vPortValidateInterruptPriority+0x28>
		configuration then the correct setting can be achieved on all Cortex-M
		devices by calling NVIC_SetPriorityGrouping( 0 ); before starting the
		scheduler.  Note however that some vendor specific peripheral libraries
		assume a non-zero priority group setting, in which cases using a value
		of zero will result in unpredictable behaviour. */
		configASSERT( ( portAIRCR_REG & portPRIORITY_GROUP_MASK ) <= ulMaxPRIGROUPValue );
 8002bf6:	4809      	ldr	r0, [pc, #36]	; (8002c1c <vPortValidateInterruptPriority+0x50>)
 8002bf8:	6800      	ldr	r0, [r0, #0]
 8002bfa:	6889      	ldr	r1, [r1, #8]
 8002bfc:	f400 60e0 	and.w	r0, r0, #1792	; 0x700
 8002c00:	4288      	cmp	r0, r1
 8002c02:	d907      	bls.n	8002c14 <vPortValidateInterruptPriority+0x48>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002c04:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002c06:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002c0a:	f3bf 8f4f 	dsb	sy
		isb
 8002c0e:	f3bf 8f6f 	isb	sy
 8002c12:	e7fe      	b.n	8002c12 <vPortValidateInterruptPriority+0x46>
	}
 8002c14:	bd10      	pop	{r4, pc}
 8002c16:	0000      	.short	0x0000
 8002c18:	2000009c 	.word	0x2000009c
 8002c1c:	e000ed0c 	.word	0xe000ed0c

08002c20 <vQueueAddToRegistry>:
	{
	UBaseType_t ux;

		/* See if there is an empty space in the registry.  A NULL name denotes
		a free slot. */
		for( ux = ( UBaseType_t ) 0U; ux < ( UBaseType_t ) configQUEUE_REGISTRY_SIZE; ux++ )
 8002c20:	2200      	movs	r2, #0
		{
			if( xQueueRegistry[ ux ].pcQueueName == NULL )
 8002c22:	4b08      	ldr	r3, [pc, #32]	; (8002c44 <vQueueAddToRegistry+0x24>)
 8002c24:	f853 c032 	ldr.w	ip, [r3, r2, lsl #3]
 8002c28:	f1bc 0f00 	cmp.w	ip, #0
 8002c2c:	d003      	beq.n	8002c36 <vQueueAddToRegistry+0x16>
		for( ux = ( UBaseType_t ) 0U; ux < ( UBaseType_t ) configQUEUE_REGISTRY_SIZE; ux++ )
 8002c2e:	1c52      	adds	r2, r2, #1
 8002c30:	2a08      	cmp	r2, #8
 8002c32:	d3f7      	bcc.n	8002c24 <vQueueAddToRegistry+0x4>
			else
			{
				mtCOVERAGE_TEST_MARKER();
			}
		}
	}
 8002c34:	4770      	bx	lr
				xQueueRegistry[ ux ].pcQueueName = pcQueueName;
 8002c36:	f843 1032 	str.w	r1, [r3, r2, lsl #3]
				xQueueRegistry[ ux ].xHandle = xQueue;
 8002c3a:	eb03 01c2 	add.w	r1, r3, r2, lsl #3
 8002c3e:	6048      	str	r0, [r1, #4]
	}
 8002c40:	4770      	bx	lr
 8002c42:	0000      	.short	0x0000
 8002c44:	200005cc 	.word	0x200005cc

08002c48 <vQueueWaitForMessageRestricted>:
/*-----------------------------------------------------------*/

#if ( configUSE_TIMERS == 1 )

	void vQueueWaitForMessageRestricted( QueueHandle_t xQueue, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely )
	{
 8002c48:	b570      	push	{r4, r5, r6, lr}
 8002c4a:	4604      	mov	r4, r0
 8002c4c:	460d      	mov	r5, r1
 8002c4e:	4616      	mov	r6, r2
		will not actually cause the task to block, just place it on a blocked
		list.  It will not block until the scheduler is unlocked - at which
		time a yield will be performed.  If an item is added to the queue while
		the queue is locked, and the calling task blocks on the queue, then the
		calling task will be immediately unblocked when the queue is unlocked. */
		prvLockQueue( pxQueue );
 8002c50:	f7ff ff46 	bl	8002ae0 <vPortEnterCritical>
 8002c54:	f994 0044 	ldrsb.w	r0, [r4, #68]	; 0x44
 8002c58:	f1b0 3fff 	cmp.w	r0, #4294967295
 8002c5c:	f04f 0000 	mov.w	r0, #0
 8002c60:	d101      	bne.n	8002c66 <vQueueWaitForMessageRestricted+0x1e>
 8002c62:	f884 0044 	strb.w	r0, [r4, #68]	; 0x44
 8002c66:	f994 1045 	ldrsb.w	r1, [r4, #69]	; 0x45
 8002c6a:	f1b1 3fff 	cmp.w	r1, #4294967295
 8002c6e:	d101      	bne.n	8002c74 <vQueueWaitForMessageRestricted+0x2c>
 8002c70:	f884 0045 	strb.w	r0, [r4, #69]	; 0x45
 8002c74:	f7ff ff54 	bl	8002b20 <vPortExitCritical>
		if( pxQueue->uxMessagesWaiting == ( UBaseType_t ) 0U )
 8002c78:	6ba0      	ldr	r0, [r4, #56]	; 0x38
 8002c7a:	b928      	cbnz	r0, 8002c88 <vQueueWaitForMessageRestricted+0x40>
		{
			/* There is nothing in the queue, block for the specified period. */
			vTaskPlaceOnEventListRestricted( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait, xWaitIndefinitely );
 8002c7c:	4632      	mov	r2, r6
 8002c7e:	4629      	mov	r1, r5
 8002c80:	f104 0024 	add.w	r0, r4, #36	; 0x24
 8002c84:	f000 f8fa 	bl	8002e7c <vTaskPlaceOnEventListRestricted>
		}
		else
		{
			mtCOVERAGE_TEST_MARKER();
		}
		prvUnlockQueue( pxQueue );
 8002c88:	4620      	mov	r0, r4
 8002c8a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8002c8e:	f7ff bd9b 	b.w	80027c8 <prvUnlockQueue>
	...

08002c94 <vTaskDelay>:
	{
 8002c94:	b510      	push	{r4, lr}
 8002c96:	4602      	mov	r2, r0
	BaseType_t xAlreadyYielded = pdFALSE;
 8002c98:	2000      	movs	r0, #0
		if( xTicksToDelay > ( TickType_t ) 0U )
 8002c9a:	2a00      	cmp	r2, #0
	{
 8002c9c:	d012      	beq.n	8002cc4 <vTaskDelay+0x30>
			configASSERT( uxSchedulerSuspended == 0 );
 8002c9e:	480f      	ldr	r0, [pc, #60]	; (8002cdc <vTaskDelay+0x48>)
 8002ca0:	6b80      	ldr	r0, [r0, #56]	; 0x38
 8002ca2:	b138      	cbz	r0, 8002cb4 <vTaskDelay+0x20>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002ca4:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002ca6:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002caa:	f3bf 8f4f 	dsb	sy
		isb
 8002cae:	f3bf 8f6f 	isb	sy
 8002cb2:	e7fe      	b.n	8002cb2 <vTaskDelay+0x1e>
			vTaskSuspendAll();
 8002cb4:	f000 f94a 	bl	8002f4c <vTaskSuspendAll>
				prvAddCurrentTaskToDelayedList( xTicksToDelay, pdFALSE );
 8002cb8:	2100      	movs	r1, #0
 8002cba:	4610      	mov	r0, r2
 8002cbc:	f7ff f980 	bl	8001fc0 <prvAddCurrentTaskToDelayedList>
			xAlreadyYielded = xTaskResumeAll();
 8002cc0:	f000 fdd6 	bl	8003870 <xTaskResumeAll>
		if( xAlreadyYielded == pdFALSE )
 8002cc4:	2800      	cmp	r0, #0
 8002cc6:	d107      	bne.n	8002cd8 <vTaskDelay+0x44>
			portYIELD_WITHIN_API();
 8002cc8:	4905      	ldr	r1, [pc, #20]	; (8002ce0 <vTaskDelay+0x4c>)
 8002cca:	f04f 5080 	mov.w	r0, #268435456	; 0x10000000
 8002cce:	6008      	str	r0, [r1, #0]
 8002cd0:	f3bf 8f4f 	dsb	sy
 8002cd4:	f3bf 8f6f 	isb	sy
	}
 8002cd8:	bd10      	pop	{r4, pc}
 8002cda:	0000      	.short	0x0000
 8002cdc:	20000028 	.word	0x20000028
 8002ce0:	e000ed04 	.word	0xe000ed04

08002ce4 <vTaskGetInfo>:
	{
 8002ce4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002ce8:	460c      	mov	r4, r1
 8002cea:	4616      	mov	r6, r2
		pxTCB = prvGetTCBFromHandle( xTask );
 8002cec:	491a      	ldr	r1, [pc, #104]	; (8002d58 <vTaskGetInfo+0x74>)
 8002cee:	2800      	cmp	r0, #0
	{
 8002cf0:	d016      	beq.n	8002d20 <vTaskGetInfo+0x3c>
		pxTCB = prvGetTCBFromHandle( xTask );
 8002cf2:	4605      	mov	r5, r0
		pxTaskStatus->xHandle = ( TaskHandle_t ) pxTCB;
 8002cf4:	6025      	str	r5, [r4, #0]
		pxTaskStatus->pcTaskName = ( const char * ) &( pxTCB->pcTaskName [ 0 ] );
 8002cf6:	f105 0034 	add.w	r0, r5, #52	; 0x34
 8002cfa:	6060      	str	r0, [r4, #4]
		pxTaskStatus->uxCurrentPriority = pxTCB->uxPriority;
 8002cfc:	6ae8      	ldr	r0, [r5, #44]	; 0x2c
 8002cfe:	6120      	str	r0, [r4, #16]
		pxTaskStatus->pxStackBase = pxTCB->pxStack;
 8002d00:	6b28      	ldr	r0, [r5, #48]	; 0x30
 8002d02:	61e0      	str	r0, [r4, #28]
		pxTaskStatus->xTaskNumber = pxTCB->uxTCBNumber;
 8002d04:	6c68      	ldr	r0, [r5, #68]	; 0x44
 8002d06:	60a0      	str	r0, [r4, #8]
			pxTaskStatus->uxBasePriority = pxTCB->uxBasePriority;
 8002d08:	6ce8      	ldr	r0, [r5, #76]	; 0x4c
 8002d0a:	6160      	str	r0, [r4, #20]
			pxTaskStatus->ulRunTimeCounter = pxTCB->ulRunTimeCounter;
 8002d0c:	6d68      	ldr	r0, [r5, #84]	; 0x54
 8002d0e:	61a0      	str	r0, [r4, #24]
		if( eState != eInvalid )
 8002d10:	2700      	movs	r7, #0
 8002d12:	2b05      	cmp	r3, #5
 8002d14:	d012      	beq.n	8002d3c <vTaskGetInfo+0x58>
			if( pxTCB == pxCurrentTCB )
 8002d16:	6808      	ldr	r0, [r1, #0]
 8002d18:	4285      	cmp	r5, r0
 8002d1a:	d103      	bne.n	8002d24 <vTaskGetInfo+0x40>
				pxTaskStatus->eCurrentState = eRunning;
 8002d1c:	7327      	strb	r7, [r4, #12]
 8002d1e:	e011      	b.n	8002d44 <vTaskGetInfo+0x60>
		pxTCB = prvGetTCBFromHandle( xTask );
 8002d20:	680d      	ldr	r5, [r1, #0]
 8002d22:	e7e7      	b.n	8002cf4 <vTaskGetInfo+0x10>
				pxTaskStatus->eCurrentState = eState;
 8002d24:	7323      	strb	r3, [r4, #12]
					if( eState == eSuspended )
 8002d26:	2b03      	cmp	r3, #3
 8002d28:	d10c      	bne.n	8002d44 <vTaskGetInfo+0x60>
						vTaskSuspendAll();
 8002d2a:	f000 f90f 	bl	8002f4c <vTaskSuspendAll>
							if( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) != NULL )
 8002d2e:	6aa8      	ldr	r0, [r5, #40]	; 0x28
 8002d30:	b108      	cbz	r0, 8002d36 <vTaskGetInfo+0x52>
								pxTaskStatus->eCurrentState = eBlocked;
 8002d32:	2002      	movs	r0, #2
 8002d34:	7320      	strb	r0, [r4, #12]
						( void ) xTaskResumeAll();
 8002d36:	f000 fd9b 	bl	8003870 <xTaskResumeAll>
 8002d3a:	e003      	b.n	8002d44 <vTaskGetInfo+0x60>
			pxTaskStatus->eCurrentState = eTaskGetState( pxTCB );
 8002d3c:	4628      	mov	r0, r5
 8002d3e:	f7fe ffc3 	bl	8001cc8 <eTaskGetState>
 8002d42:	7320      	strb	r0, [r4, #12]
		if( xGetFreeStackSpace != pdFALSE )
 8002d44:	b12e      	cbz	r6, 8002d52 <vTaskGetInfo+0x6e>
				pxTaskStatus->usStackHighWaterMark = prvTaskCheckFreeStackSpace( ( uint8_t * ) pxTCB->pxStack );
 8002d46:	6b28      	ldr	r0, [r5, #48]	; 0x30
 8002d48:	f7ff fd10 	bl	800276c <prvTaskCheckFreeStackSpace>
 8002d4c:	8420      	strh	r0, [r4, #32]
	}
 8002d4e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
			pxTaskStatus->usStackHighWaterMark = 0;
 8002d52:	8427      	strh	r7, [r4, #32]
	}
 8002d54:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002d58:	20000028 	.word	0x20000028

08002d5c <vTaskGetRunTimeStats>:
	{
 8002d5c:	b570      	push	{r4, r5, r6, lr}
 8002d5e:	b084      	sub	sp, #16
 8002d60:	4606      	mov	r6, r0
		*pcWriteBuffer = 0x00;
 8002d62:	2500      	movs	r5, #0
 8002d64:	7035      	strb	r5, [r6, #0]
		uxArraySize = uxCurrentNumberOfTasks;
 8002d66:	4829      	ldr	r0, [pc, #164]	; (8002e0c <vTaskGetRunTimeStats+0xb0>)
 8002d68:	6901      	ldr	r1, [r0, #16]
 8002d6a:	9103      	str	r1, [sp, #12]
		pxTaskStatusArray = pvPortMalloc( uxCurrentNumberOfTasks * sizeof( TaskStatus_t ) );
 8002d6c:	6900      	ldr	r0, [r0, #16]
 8002d6e:	eb00 00c0 	add.w	r0, r0, r0, lsl #3
 8002d72:	0080      	lsls	r0, r0, #2
 8002d74:	f7ff fd70 	bl	8002858 <pvPortMalloc>
 8002d78:	4604      	mov	r4, r0
		if( pxTaskStatusArray != NULL )
 8002d7a:	0020      	movs	r0, r4
 8002d7c:	d043      	beq.n	8002e06 <vTaskGetRunTimeStats+0xaa>
			uxArraySize = uxTaskGetSystemState( pxTaskStatusArray, uxArraySize, &ulTotalTime );
 8002d7e:	aa01      	add	r2, sp, #4
 8002d80:	9903      	ldr	r1, [sp, #12]
 8002d82:	f7ff fe09 	bl	8002998 <uxTaskGetSystemState>
 8002d86:	9003      	str	r0, [sp, #12]
			ulTotalTime /= 100UL;
 8002d88:	4921      	ldr	r1, [pc, #132]	; (8002e10 <vTaskGetRunTimeStats+0xb4>)
 8002d8a:	9801      	ldr	r0, [sp, #4]
 8002d8c:	fba1 1000 	umull	r1, r0, r1, r0
 8002d90:	0940      	lsrs	r0, r0, #5
 8002d92:	9001      	str	r0, [sp, #4]
			if( ulTotalTime > 0 )
 8002d94:	2800      	cmp	r0, #0
 8002d96:	d033      	beq.n	8002e00 <vTaskGetRunTimeStats+0xa4>
				for( x = 0; x < uxArraySize; x++ )
 8002d98:	9502      	str	r5, [sp, #8]
 8002d9a:	9803      	ldr	r0, [sp, #12]
 8002d9c:	2800      	cmp	r0, #0
 8002d9e:	d92f      	bls.n	8002e00 <vTaskGetRunTimeStats+0xa4>
					ulStatsAsPercentage = pxTaskStatusArray[ x ].ulRunTimeCounter / ulTotalTime;
 8002da0:	9802      	ldr	r0, [sp, #8]
 8002da2:	9a01      	ldr	r2, [sp, #4]
 8002da4:	eb00 00c0 	add.w	r0, r0, r0, lsl #3
 8002da8:	eb04 0080 	add.w	r0, r4, r0, lsl #2
 8002dac:	6981      	ldr	r1, [r0, #24]
 8002dae:	fbb1 f5f2 	udiv	r5, r1, r2
					pcWriteBuffer = prvWriteNameToBuffer( pcWriteBuffer, pxTaskStatusArray[ x ].pcTaskName );
 8002db2:	6841      	ldr	r1, [r0, #4]
 8002db4:	4630      	mov	r0, r6
 8002db6:	f7ff fd3b 	bl	8002830 <prvWriteNameToBuffer>
 8002dba:	4606      	mov	r6, r0
					if( ulStatsAsPercentage > 0UL )
 8002dbc:	b15d      	cbz	r5, 8002dd6 <vTaskGetRunTimeStats+0x7a>
							sprintf( pcWriteBuffer, "\t%u\t\t%u%%\r\n", ( unsigned int ) pxTaskStatusArray[ x ].ulRunTimeCounter, ( unsigned int ) ulStatsAsPercentage );
 8002dbe:	9802      	ldr	r0, [sp, #8]
 8002dc0:	462b      	mov	r3, r5
 8002dc2:	eb00 00c0 	add.w	r0, r0, r0, lsl #3
 8002dc6:	eb04 0080 	add.w	r0, r4, r0, lsl #2
 8002dca:	a112      	add	r1, pc, #72	; (adr r1, 8002e14 <vTaskGetRunTimeStats+0xb8>)
 8002dcc:	6982      	ldr	r2, [r0, #24]
 8002dce:	4630      	mov	r0, r6
 8002dd0:	f7fd fa4a 	bl	8000268 <__2sprintf>
 8002dd4:	e009      	b.n	8002dea <vTaskGetRunTimeStats+0x8e>
							sprintf( pcWriteBuffer, "\t%u\t\t<1%%\r\n", ( unsigned int ) pxTaskStatusArray[ x ].ulRunTimeCounter );
 8002dd6:	9802      	ldr	r0, [sp, #8]
 8002dd8:	a111      	add	r1, pc, #68	; (adr r1, 8002e20 <vTaskGetRunTimeStats+0xc4>)
 8002dda:	eb00 00c0 	add.w	r0, r0, r0, lsl #3
 8002dde:	eb04 0080 	add.w	r0, r4, r0, lsl #2
 8002de2:	6982      	ldr	r2, [r0, #24]
 8002de4:	4630      	mov	r0, r6
 8002de6:	f7fd fa3f 	bl	8000268 <__2sprintf>
					pcWriteBuffer += strlen( pcWriteBuffer );
 8002dea:	4630      	mov	r0, r6
 8002dec:	f7fd fae4 	bl	80003b8 <strlen>
 8002df0:	4406      	add	r6, r0
				for( x = 0; x < uxArraySize; x++ )
 8002df2:	9802      	ldr	r0, [sp, #8]
 8002df4:	1c40      	adds	r0, r0, #1
 8002df6:	9002      	str	r0, [sp, #8]
 8002df8:	9903      	ldr	r1, [sp, #12]
 8002dfa:	9802      	ldr	r0, [sp, #8]
 8002dfc:	4288      	cmp	r0, r1
 8002dfe:	d3cf      	bcc.n	8002da0 <vTaskGetRunTimeStats+0x44>
			vPortFree( pxTaskStatusArray );
 8002e00:	4620      	mov	r0, r4
 8002e02:	f7ff fea3 	bl	8002b4c <vPortFree>
	}
 8002e06:	b004      	add	sp, #16
 8002e08:	bd70      	pop	{r4, r5, r6, pc}
 8002e0a:	0000      	.short	0x0000
 8002e0c:	20000028 	.word	0x20000028
 8002e10:	51eb851f 	.word	0x51eb851f
 8002e14:	09752509 	.word	0x09752509
 8002e18:	25752509 	.word	0x25752509
 8002e1c:	000a0d25 	.word	0x000a0d25
 8002e20:	09752509 	.word	0x09752509
 8002e24:	25313c09 	.word	0x25313c09
 8002e28:	000a0d25 	.word	0x000a0d25

08002e2c <vTaskInternalSetTimeOutState>:
	pxTimeOut->xOverflowCount = xNumOfOverflows;
 8002e2c:	4902      	ldr	r1, [pc, #8]	; (8002e38 <vTaskInternalSetTimeOutState+0xc>)
 8002e2e:	6a8a      	ldr	r2, [r1, #40]	; 0x28
 8002e30:	6002      	str	r2, [r0, #0]
	pxTimeOut->xTimeOnEntering = xTickCount;
 8002e32:	6949      	ldr	r1, [r1, #20]
 8002e34:	6041      	str	r1, [r0, #4]
}
 8002e36:	4770      	bx	lr
 8002e38:	20000028 	.word	0x20000028

08002e3c <vTaskMissedYield>:
	xYieldPending = pdTRUE;
 8002e3c:	4901      	ldr	r1, [pc, #4]	; (8002e44 <vTaskMissedYield+0x8>)
 8002e3e:	2001      	movs	r0, #1
 8002e40:	6248      	str	r0, [r1, #36]	; 0x24
}
 8002e42:	4770      	bx	lr
 8002e44:	20000028 	.word	0x20000028

08002e48 <vTaskPlaceOnEventList>:
{
 8002e48:	b510      	push	{r4, lr}
 8002e4a:	460c      	mov	r4, r1
	configASSERT( pxEventList );
 8002e4c:	2800      	cmp	r0, #0
{
 8002e4e:	d00b      	beq.n	8002e68 <vTaskPlaceOnEventList+0x20>
	vListInsert( pxEventList, &( pxCurrentTCB->xEventListItem ) );
 8002e50:	4a09      	ldr	r2, [pc, #36]	; (8002e78 <vTaskPlaceOnEventList+0x30>)
 8002e52:	6812      	ldr	r2, [r2, #0]
 8002e54:	f102 0118 	add.w	r1, r2, #24
 8002e58:	f7ff fe1b 	bl	8002a92 <vListInsert>
	prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
 8002e5c:	4620      	mov	r0, r4
 8002e5e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8002e62:	2101      	movs	r1, #1
 8002e64:	f7ff b8ac 	b.w	8001fc0 <prvAddCurrentTaskToDelayedList>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002e68:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002e6a:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002e6e:	f3bf 8f4f 	dsb	sy
		isb
 8002e72:	f3bf 8f6f 	isb	sy
	configASSERT( pxEventList );
 8002e76:	e7fe      	b.n	8002e76 <vTaskPlaceOnEventList+0x2e>
 8002e78:	20000028 	.word	0x20000028

08002e7c <vTaskPlaceOnEventListRestricted>:
	{
 8002e7c:	b570      	push	{r4, r5, r6, lr}
 8002e7e:	460d      	mov	r5, r1
 8002e80:	4614      	mov	r4, r2
		configASSERT( pxEventList );
 8002e82:	2800      	cmp	r0, #0
	{
 8002e84:	d00d      	beq.n	8002ea2 <vTaskPlaceOnEventListRestricted+0x26>
		vListInsertEnd( pxEventList, &( pxCurrentTCB->xEventListItem ) );
 8002e86:	490b      	ldr	r1, [pc, #44]	; (8002eb4 <vTaskPlaceOnEventListRestricted+0x38>)
 8002e88:	6809      	ldr	r1, [r1, #0]
 8002e8a:	3118      	adds	r1, #24
 8002e8c:	f7ff fe1c 	bl	8002ac8 <vListInsertEnd>
		if( xWaitIndefinitely != pdFALSE )
 8002e90:	b10c      	cbz	r4, 8002e96 <vTaskPlaceOnEventListRestricted+0x1a>
			xTicksToWait = portMAX_DELAY;
 8002e92:	f04f 35ff 	mov.w	r5, #4294967295
		prvAddCurrentTaskToDelayedList( xTicksToWait, xWaitIndefinitely );
 8002e96:	4621      	mov	r1, r4
 8002e98:	4628      	mov	r0, r5
 8002e9a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8002e9e:	f7ff b88f 	b.w	8001fc0 <prvAddCurrentTaskToDelayedList>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002ea2:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002ea4:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002ea8:	f3bf 8f4f 	dsb	sy
		isb
 8002eac:	f3bf 8f6f 	isb	sy
		configASSERT( pxEventList );
 8002eb0:	e7fe      	b.n	8002eb0 <vTaskPlaceOnEventListRestricted+0x34>
 8002eb2:	0000      	.short	0x0000
 8002eb4:	20000028 	.word	0x20000028

08002eb8 <vTaskStartScheduler>:
{
 8002eb8:	b530      	push	{r4, r5, lr}
 8002eba:	b087      	sub	sp, #28
		StaticTask_t *pxIdleTaskTCBBuffer = NULL;
 8002ebc:	2500      	movs	r5, #0
 8002ebe:	9506      	str	r5, [sp, #24]
		StackType_t *pxIdleTaskStackBuffer = NULL;
 8002ec0:	9505      	str	r5, [sp, #20]
		vApplicationGetIdleTaskMemory( &pxIdleTaskTCBBuffer, &pxIdleTaskStackBuffer, &ulIdleTaskStackSize );
 8002ec2:	aa04      	add	r2, sp, #16
 8002ec4:	a905      	add	r1, sp, #20
 8002ec6:	a806      	add	r0, sp, #24
 8002ec8:	f7ff fdbe 	bl	8002a48 <vApplicationGetIdleTaskMemory>
		xIdleTaskHandle = xTaskCreateStatic(	prvIdleTask,
 8002ecc:	9806      	ldr	r0, [sp, #24]
 8002ece:	9905      	ldr	r1, [sp, #20]
 8002ed0:	9101      	str	r1, [sp, #4]
 8002ed2:	9002      	str	r0, [sp, #8]
 8002ed4:	2300      	movs	r3, #0
 8002ed6:	9500      	str	r5, [sp, #0]
 8002ed8:	a118      	add	r1, pc, #96	; (adr r1, 8002f3c <vTaskStartScheduler+0x84>)
 8002eda:	481a      	ldr	r0, [pc, #104]	; (8002f44 <vTaskStartScheduler+0x8c>)
 8002edc:	9a04      	ldr	r2, [sp, #16]
 8002ede:	f000 fba1 	bl	8003624 <xTaskCreateStatic>
 8002ee2:	4c19      	ldr	r4, [pc, #100]	; (8002f48 <vTaskStartScheduler+0x90>)
 8002ee4:	6360      	str	r0, [r4, #52]	; 0x34
		if( xIdleTaskHandle != NULL )
 8002ee6:	b108      	cbz	r0, 8002eec <vTaskStartScheduler+0x34>
			xReturn = pdPASS;
 8002ee8:	2001      	movs	r0, #1
 8002eea:	e000      	b.n	8002eee <vTaskStartScheduler+0x36>
			xReturn = pdFAIL;
 8002eec:	2000      	movs	r0, #0
		if( xReturn == pdPASS )
 8002eee:	2801      	cmp	r0, #1
 8002ef0:	d101      	bne.n	8002ef6 <vTaskStartScheduler+0x3e>
			xReturn = xTimerCreateTimerTask();
 8002ef2:	f000 fd23 	bl	800393c <xTimerCreateTimerTask>
	if( xReturn == pdPASS )
 8002ef6:	2801      	cmp	r0, #1
 8002ef8:	d00a      	beq.n	8002f10 <vTaskStartScheduler+0x58>
		configASSERT( xReturn != errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY );
 8002efa:	f1b0 3fff 	cmp.w	r0, #4294967295
 8002efe:	d11b      	bne.n	8002f38 <vTaskStartScheduler+0x80>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002f00:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002f02:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002f06:	f3bf 8f4f 	dsb	sy
		isb
 8002f0a:	f3bf 8f6f 	isb	sy
 8002f0e:	e7fe      	b.n	8002f0e <vTaskStartScheduler+0x56>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002f10:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002f12:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002f16:	f3bf 8f4f 	dsb	sy
		isb
 8002f1a:	f3bf 8f6f 	isb	sy
		xNextTaskUnblockTime = portMAX_DELAY;
 8002f1e:	f04f 30ff 	mov.w	r0, #4294967295
 8002f22:	6320      	str	r0, [r4, #48]	; 0x30
		xSchedulerRunning = pdTRUE;
 8002f24:	2001      	movs	r0, #1
 8002f26:	61e0      	str	r0, [r4, #28]
		xTickCount = ( TickType_t ) 0U;
 8002f28:	6165      	str	r5, [r4, #20]
		portCONFIGURE_TIMER_FOR_RUN_TIME_STATS();
 8002f2a:	f7fe fe74 	bl	8001c16 <configureTimerForRunTimeStats>
		if( xPortStartScheduler() != pdFALSE )
 8002f2e:	b007      	add	sp, #28
 8002f30:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 8002f34:	f000 b856 	b.w	8002fe4 <xPortStartScheduler>
}
 8002f38:	b007      	add	sp, #28
 8002f3a:	bd30      	pop	{r4, r5, pc}
 8002f3c:	454c4449 	.word	0x454c4449
 8002f40:	00000000 	.word	0x00000000
 8002f44:	0800228d 	.word	0x0800228d
 8002f48:	20000028 	.word	0x20000028

08002f4c <vTaskSuspendAll>:
	++uxSchedulerSuspended;
 8002f4c:	4802      	ldr	r0, [pc, #8]	; (8002f58 <vTaskSuspendAll+0xc>)
 8002f4e:	6b81      	ldr	r1, [r0, #56]	; 0x38
 8002f50:	1c49      	adds	r1, r1, #1
 8002f52:	6381      	str	r1, [r0, #56]	; 0x38
}
 8002f54:	4770      	bx	lr
 8002f56:	0000      	.short	0x0000
 8002f58:	20000028 	.word	0x20000028

08002f5c <vTaskSwitchContext>:
{
 8002f5c:	b510      	push	{r4, lr}
	if( uxSchedulerSuspended != ( UBaseType_t ) pdFALSE )
 8002f5e:	4c1f      	ldr	r4, [pc, #124]	; (8002fdc <vTaskSwitchContext+0x80>)
 8002f60:	6ba0      	ldr	r0, [r4, #56]	; 0x38
 8002f62:	2800      	cmp	r0, #0
{
 8002f64:	d002      	beq.n	8002f6c <vTaskSwitchContext+0x10>
		xYieldPending = pdTRUE;
 8002f66:	2001      	movs	r0, #1
 8002f68:	6260      	str	r0, [r4, #36]	; 0x24
}
 8002f6a:	bd10      	pop	{r4, pc}
		xYieldPending = pdFALSE;
 8002f6c:	2000      	movs	r0, #0
 8002f6e:	6260      	str	r0, [r4, #36]	; 0x24
					ulTotalRunTime = portGET_RUN_TIME_COUNTER_VALUE();
 8002f70:	f7fe fee0 	bl	8001d34 <getRunTimeCounterValue>
 8002f74:	6420      	str	r0, [r4, #64]	; 0x40
				if( ulTotalRunTime > ulTaskSwitchedInTime )
 8002f76:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8002f78:	4290      	cmp	r0, r2
 8002f7a:	d904      	bls.n	8002f86 <vTaskSwitchContext+0x2a>
					pxCurrentTCB->ulRunTimeCounter += ( ulTotalRunTime - ulTaskSwitchedInTime );
 8002f7c:	6821      	ldr	r1, [r4, #0]
 8002f7e:	1a82      	subs	r2, r0, r2
 8002f80:	6d4b      	ldr	r3, [r1, #84]	; 0x54
 8002f82:	441a      	add	r2, r3
 8002f84:	654a      	str	r2, [r1, #84]	; 0x54
				ulTaskSwitchedInTime = ulTotalRunTime;
 8002f86:	63e0      	str	r0, [r4, #60]	; 0x3c
		taskSELECT_HIGHEST_PRIORITY_TASK();
 8002f88:	69a0      	ldr	r0, [r4, #24]
 8002f8a:	4915      	ldr	r1, [pc, #84]	; (8002fe0 <vTaskSwitchContext+0x84>)
 8002f8c:	eb00 0280 	add.w	r2, r0, r0, lsl #2
 8002f90:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
 8002f94:	b93a      	cbnz	r2, 8002fa6 <vTaskSwitchContext+0x4a>
 8002f96:	b1c0      	cbz	r0, 8002fca <vTaskSwitchContext+0x6e>
 8002f98:	1e40      	subs	r0, r0, #1
 8002f9a:	eb00 0280 	add.w	r2, r0, r0, lsl #2
 8002f9e:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
 8002fa2:	2a00      	cmp	r2, #0
 8002fa4:	d0f7      	beq.n	8002f96 <vTaskSwitchContext+0x3a>
 8002fa6:	eb00 0280 	add.w	r2, r0, r0, lsl #2
 8002faa:	eb01 0182 	add.w	r1, r1, r2, lsl #2
 8002fae:	684a      	ldr	r2, [r1, #4]
 8002fb0:	6852      	ldr	r2, [r2, #4]
 8002fb2:	604a      	str	r2, [r1, #4]
 8002fb4:	f101 0308 	add.w	r3, r1, #8
 8002fb8:	429a      	cmp	r2, r3
 8002fba:	d101      	bne.n	8002fc0 <vTaskSwitchContext+0x64>
 8002fbc:	6852      	ldr	r2, [r2, #4]
 8002fbe:	604a      	str	r2, [r1, #4]
 8002fc0:	6849      	ldr	r1, [r1, #4]
 8002fc2:	68c9      	ldr	r1, [r1, #12]
 8002fc4:	6021      	str	r1, [r4, #0]
 8002fc6:	61a0      	str	r0, [r4, #24]
}
 8002fc8:	bd10      	pop	{r4, pc}
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002fca:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002fcc:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002fd0:	f3bf 8f4f 	dsb	sy
		isb
 8002fd4:	f3bf 8f6f 	isb	sy
		taskSELECT_HIGHEST_PRIORITY_TASK();
 8002fd8:	e7fe      	b.n	8002fd8 <vTaskSwitchContext+0x7c>
 8002fda:	0000      	.short	0x0000
 8002fdc:	20000028 	.word	0x20000028
 8002fe0:	2000060c 	.word	0x2000060c

08002fe4 <xPortStartScheduler>:
{
 8002fe4:	b500      	push	{lr}
 8002fe6:	b083      	sub	sp, #12
		volatile uint8_t * const pucFirstUserPriorityRegister = ( uint8_t * ) ( portNVIC_IP_REGISTERS_OFFSET_16 + portFIRST_USER_INTERRUPT_NUMBER );
 8002fe8:	4928      	ldr	r1, [pc, #160]	; (800308c <xPortStartScheduler+0xa8>)
		ulOriginalPriority = *pucFirstUserPriorityRegister;
 8002fea:	7808      	ldrb	r0, [r1, #0]
 8002fec:	9002      	str	r0, [sp, #8]
		*pucFirstUserPriorityRegister = portMAX_8_BIT_VALUE;
 8002fee:	20ff      	movs	r0, #255	; 0xff
 8002ff0:	7008      	strb	r0, [r1, #0]
		ucMaxPriorityValue = *pucFirstUserPriorityRegister;
 8002ff2:	7808      	ldrb	r0, [r1, #0]
 8002ff4:	9001      	str	r0, [sp, #4]
		configASSERT( ucMaxPriorityValue == ( configKERNEL_INTERRUPT_PRIORITY & ucMaxPriorityValue ) );
 8002ff6:	f89d 0004 	ldrb.w	r0, [sp, #4]
 8002ffa:	f89d 2004 	ldrb.w	r2, [sp, #4]
 8002ffe:	f000 00f0 	and.w	r0, r0, #240	; 0xf0
 8003002:	4290      	cmp	r0, r2
{
 8003004:	d007      	beq.n	8003016 <xPortStartScheduler+0x32>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8003006:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003008:	f380 8811 	msr	BASEPRI, r0
		dsb
 800300c:	f3bf 8f4f 	dsb	sy
		isb
 8003010:	f3bf 8f6f 	isb	sy
		configASSERT( ucMaxPriorityValue == ( configKERNEL_INTERRUPT_PRIORITY & ucMaxPriorityValue ) );
 8003014:	e7fe      	b.n	8003014 <xPortStartScheduler+0x30>
		ucMaxSysCallPriority = configMAX_SYSCALL_INTERRUPT_PRIORITY & ucMaxPriorityValue;
 8003016:	f89d 0004 	ldrb.w	r0, [sp, #4]
 800301a:	4b1d      	ldr	r3, [pc, #116]	; (8003090 <xPortStartScheduler+0xac>)
 800301c:	f000 0050 	and.w	r0, r0, #80	; 0x50
 8003020:	7018      	strb	r0, [r3, #0]
		ulMaxPRIGROUPValue = portMAX_PRIGROUP_BITS;
 8003022:	2007      	movs	r0, #7
 8003024:	6098      	str	r0, [r3, #8]
		while( ( ucMaxPriorityValue & portTOP_BIT_OF_BYTE ) == portTOP_BIT_OF_BYTE )
 8003026:	f89d 0004 	ldrb.w	r0, [sp, #4]
 800302a:	f010 0f80 	tst.w	r0, #128	; 0x80
 800302e:	d00b      	beq.n	8003048 <xPortStartScheduler+0x64>
			ulMaxPRIGROUPValue--;
 8003030:	6898      	ldr	r0, [r3, #8]
 8003032:	1e40      	subs	r0, r0, #1
 8003034:	6098      	str	r0, [r3, #8]
			ucMaxPriorityValue <<= ( uint8_t ) 0x01;
 8003036:	f89d 0004 	ldrb.w	r0, [sp, #4]
 800303a:	0040      	lsls	r0, r0, #1
 800303c:	9001      	str	r0, [sp, #4]
		while( ( ucMaxPriorityValue & portTOP_BIT_OF_BYTE ) == portTOP_BIT_OF_BYTE )
 800303e:	f89d 0004 	ldrb.w	r0, [sp, #4]
 8003042:	f010 0f80 	tst.w	r0, #128	; 0x80
 8003046:	d1f3      	bne.n	8003030 <xPortStartScheduler+0x4c>
			configASSERT( ( portMAX_PRIGROUP_BITS - ulMaxPRIGROUPValue ) == configPRIO_BITS );
 8003048:	6898      	ldr	r0, [r3, #8]
 800304a:	2803      	cmp	r0, #3
 800304c:	d007      	beq.n	800305e <xPortStartScheduler+0x7a>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800304e:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003050:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003054:	f3bf 8f4f 	dsb	sy
		isb
 8003058:	f3bf 8f6f 	isb	sy
 800305c:	e7fe      	b.n	800305c <xPortStartScheduler+0x78>
		ulMaxPRIGROUPValue <<= portPRIGROUP_SHIFT;
 800305e:	f44f 7040 	mov.w	r0, #768	; 0x300
 8003062:	6098      	str	r0, [r3, #8]
		*pucFirstUserPriorityRegister = ulOriginalPriority;
 8003064:	9802      	ldr	r0, [sp, #8]
 8003066:	7008      	strb	r0, [r1, #0]
	portNVIC_SYSPRI2_REG |= portNVIC_PENDSV_PRI;
 8003068:	480a      	ldr	r0, [pc, #40]	; (8003094 <xPortStartScheduler+0xb0>)
 800306a:	6801      	ldr	r1, [r0, #0]
 800306c:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8003070:	6001      	str	r1, [r0, #0]
	portNVIC_SYSPRI2_REG |= portNVIC_SYSTICK_PRI;
 8003072:	6801      	ldr	r1, [r0, #0]
 8003074:	f041 4170 	orr.w	r1, r1, #4026531840	; 0xf0000000
 8003078:	6001      	str	r1, [r0, #0]
	vPortSetupTimerInterrupt();
 800307a:	f7ff fd95 	bl	8002ba8 <vPortSetupTimerInterrupt>
	uxCriticalNesting = 0;
 800307e:	2000      	movs	r0, #0
 8003080:	6058      	str	r0, [r3, #4]
	prvStartFirstTask();
 8003082:	f7fd f897 	bl	80001b4 <__asm___6_port_c_39a90d8d__prvStartFirstTask>
}
 8003086:	b003      	add	sp, #12
	return 0;
 8003088:	2000      	movs	r0, #0
}
 800308a:	bd00      	pop	{pc}
 800308c:	e000e400 	.word	0xe000e400
 8003090:	2000009c 	.word	0x2000009c
 8003094:	e000ed20 	.word	0xe000ed20

08003098 <xPortSysTickHandler>:
{
 8003098:	b510      	push	{r4, lr}
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800309a:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 800309c:	f380 8811 	msr	BASEPRI, r0
		dsb
 80030a0:	f3bf 8f4f 	dsb	sy
		isb
 80030a4:	f3bf 8f6f 	isb	sy
		if( xTaskIncrementTick() != pdFALSE )
 80030a8:	f000 fb00 	bl	80036ac <xTaskIncrementTick>
 80030ac:	b118      	cbz	r0, 80030b6 <xPortSysTickHandler+0x1e>
			portNVIC_INT_CTRL_REG = portNVIC_PENDSVSET_BIT;
 80030ae:	4904      	ldr	r1, [pc, #16]	; (80030c0 <xPortSysTickHandler+0x28>)
 80030b0:	f04f 5080 	mov.w	r0, #268435456	; 0x10000000
 80030b4:	6008      	str	r0, [r1, #0]
	__asm
	{
		/* Set BASEPRI to 0 so no interrupts are masked.  This function is only
		used to lower the mask in an interrupt, so memory barriers are not 
		used. */
		msr basepri, #0
 80030b6:	2000      	movs	r0, #0
 80030b8:	f380 8811 	msr	BASEPRI, r0
}
 80030bc:	bd10      	pop	{r4, pc}
 80030be:	0000      	.short	0x0000
 80030c0:	e000ed04 	.word	0xe000ed04

080030c4 <xQueueGenericCreateStatic>:
	{
 80030c4:	b538      	push	{r3, r4, r5, lr}
 80030c6:	9d04      	ldr	r5, [sp, #16]
		configASSERT( uxQueueLength > ( UBaseType_t ) 0 );
 80030c8:	2800      	cmp	r0, #0
	{
 80030ca:	d004      	beq.n	80030d6 <xQueueGenericCreateStatic+0x12>
		configASSERT( pxStaticQueue != NULL );
 80030cc:	b15b      	cbz	r3, 80030e6 <xQueueGenericCreateStatic+0x22>
		configASSERT( !( ( pucQueueStorage != NULL ) && ( uxItemSize == 0 ) ) );
 80030ce:	b102      	cbz	r2, 80030d2 <xQueueGenericCreateStatic+0xe>
 80030d0:	b189      	cbz	r1, 80030f6 <xQueueGenericCreateStatic+0x32>
		configASSERT( !( ( pucQueueStorage == NULL ) && ( uxItemSize != 0 ) ) );
 80030d2:	b1c2      	cbz	r2, 8003106 <xQueueGenericCreateStatic+0x42>
 80030d4:	e020      	b.n	8003118 <xQueueGenericCreateStatic+0x54>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 80030d6:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 80030d8:	f380 8811 	msr	BASEPRI, r0
		dsb
 80030dc:	f3bf 8f4f 	dsb	sy
		isb
 80030e0:	f3bf 8f6f 	isb	sy
		configASSERT( uxQueueLength > ( UBaseType_t ) 0 );
 80030e4:	e7fe      	b.n	80030e4 <xQueueGenericCreateStatic+0x20>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 80030e6:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 80030e8:	f380 8811 	msr	BASEPRI, r0
		dsb
 80030ec:	f3bf 8f4f 	dsb	sy
		isb
 80030f0:	f3bf 8f6f 	isb	sy
		configASSERT( pxStaticQueue != NULL );
 80030f4:	e7fe      	b.n	80030f4 <xQueueGenericCreateStatic+0x30>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 80030f6:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 80030f8:	f380 8811 	msr	BASEPRI, r0
		dsb
 80030fc:	f3bf 8f4f 	dsb	sy
		isb
 8003100:	f3bf 8f6f 	isb	sy
		configASSERT( !( ( pucQueueStorage != NULL ) && ( uxItemSize == 0 ) ) );
 8003104:	e7fe      	b.n	8003104 <xQueueGenericCreateStatic+0x40>
		configASSERT( !( ( pucQueueStorage == NULL ) && ( uxItemSize != 0 ) ) );
 8003106:	b139      	cbz	r1, 8003118 <xQueueGenericCreateStatic+0x54>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8003108:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 800310a:	f380 8811 	msr	BASEPRI, r0
		dsb
 800310e:	f3bf 8f4f 	dsb	sy
		isb
 8003112:	f3bf 8f6f 	isb	sy
 8003116:	e7fe      	b.n	8003116 <xQueueGenericCreateStatic+0x52>
			volatile size_t xSize = sizeof( StaticQueue_t );
 8003118:	f04f 0c50 	mov.w	ip, #80	; 0x50
 800311c:	f8cd c000 	str.w	ip, [sp]
		pxNewQueue = ( Queue_t * ) pxStaticQueue; /*lint !e740 Unusual cast is ok as the structures are designed to have the same alignment, and the size is checked by an assert. */
 8003120:	461c      	mov	r4, r3
				pxNewQueue->ucStaticallyAllocated = pdTRUE;
 8003122:	2301      	movs	r3, #1
 8003124:	f884 3046 	strb.w	r3, [r4, #70]	; 0x46
			prvInitialiseNewQueue( uxQueueLength, uxItemSize, pucQueueStorage, ucQueueType, pxNewQueue );
 8003128:	462b      	mov	r3, r5
 800312a:	9400      	str	r4, [sp, #0]
 800312c:	f7ff f8c4 	bl	80022b8 <prvInitialiseNewQueue>
		return pxNewQueue;
 8003130:	4620      	mov	r0, r4
	}
 8003132:	bd38      	pop	{r3, r4, r5, pc}

08003134 <xQueueGenericReset>:
{
 8003134:	b570      	push	{r4, r5, r6, lr}
 8003136:	4604      	mov	r4, r0
 8003138:	460d      	mov	r5, r1
	configASSERT( pxQueue );
 800313a:	2c00      	cmp	r4, #0
{
 800313c:	d025      	beq.n	800318a <xQueueGenericReset+0x56>
	taskENTER_CRITICAL();
 800313e:	f7ff fccf 	bl	8002ae0 <vPortEnterCritical>
		pxQueue->pcTail = pxQueue->pcHead + ( pxQueue->uxLength * pxQueue->uxItemSize );
 8003142:	6c22      	ldr	r2, [r4, #64]	; 0x40
 8003144:	6be1      	ldr	r1, [r4, #60]	; 0x3c
 8003146:	6820      	ldr	r0, [r4, #0]
 8003148:	fb01 0002 	mla	r0, r1, r2, r0
 800314c:	6060      	str	r0, [r4, #4]
		pxQueue->uxMessagesWaiting = ( UBaseType_t ) 0U;
 800314e:	2000      	movs	r0, #0
 8003150:	63a0      	str	r0, [r4, #56]	; 0x38
		pxQueue->pcWriteTo = pxQueue->pcHead;
 8003152:	6820      	ldr	r0, [r4, #0]
 8003154:	60a0      	str	r0, [r4, #8]
		pxQueue->u.pcReadFrom = pxQueue->pcHead + ( ( pxQueue->uxLength - ( UBaseType_t ) 1U ) * pxQueue->uxItemSize );
 8003156:	6be1      	ldr	r1, [r4, #60]	; 0x3c
 8003158:	6c22      	ldr	r2, [r4, #64]	; 0x40
 800315a:	6820      	ldr	r0, [r4, #0]
 800315c:	1e49      	subs	r1, r1, #1
 800315e:	fb01 0002 	mla	r0, r1, r2, r0
 8003162:	60e0      	str	r0, [r4, #12]
		pxQueue->cRxLock = queueUNLOCKED;
 8003164:	f04f 30ff 	mov.w	r0, #4294967295
 8003168:	f884 0044 	strb.w	r0, [r4, #68]	; 0x44
		pxQueue->cTxLock = queueUNLOCKED;
 800316c:	f884 0045 	strb.w	r0, [r4, #69]	; 0x45
		if( xNewQueue == pdFALSE )
 8003170:	b19d      	cbz	r5, 800319a <xQueueGenericReset+0x66>
			vListInitialise( &( pxQueue->xTasksWaitingToSend ) );
 8003172:	f104 0010 	add.w	r0, r4, #16
 8003176:	f7ff fc7e 	bl	8002a76 <vListInitialise>
			vListInitialise( &( pxQueue->xTasksWaitingToReceive ) );
 800317a:	f104 0024 	add.w	r0, r4, #36	; 0x24
 800317e:	f7ff fc7a 	bl	8002a76 <vListInitialise>
	taskEXIT_CRITICAL();
 8003182:	f7ff fccd 	bl	8002b20 <vPortExitCritical>
	return pdPASS;
 8003186:	2001      	movs	r0, #1
}
 8003188:	bd70      	pop	{r4, r5, r6, pc}
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800318a:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 800318c:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003190:	f3bf 8f4f 	dsb	sy
		isb
 8003194:	f3bf 8f6f 	isb	sy
	configASSERT( pxQueue );
 8003198:	e7fe      	b.n	8003198 <xQueueGenericReset+0x64>
			if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
 800319a:	6920      	ldr	r0, [r4, #16]
 800319c:	2800      	cmp	r0, #0
 800319e:	d0f0      	beq.n	8003182 <xQueueGenericReset+0x4e>
				if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
 80031a0:	f104 0010 	add.w	r0, r4, #16
 80031a4:	f000 fb28 	bl	80037f8 <xTaskRemoveFromEventList>
 80031a8:	2800      	cmp	r0, #0
 80031aa:	d0ea      	beq.n	8003182 <xQueueGenericReset+0x4e>
					queueYIELD_IF_USING_PREEMPTION();
 80031ac:	4904      	ldr	r1, [pc, #16]	; (80031c0 <xQueueGenericReset+0x8c>)
 80031ae:	f04f 5080 	mov.w	r0, #268435456	; 0x10000000
 80031b2:	6008      	str	r0, [r1, #0]
 80031b4:	f3bf 8f4f 	dsb	sy
 80031b8:	f3bf 8f6f 	isb	sy
 80031bc:	e7e1      	b.n	8003182 <xQueueGenericReset+0x4e>
 80031be:	0000      	.short	0x0000
 80031c0:	e000ed04 	.word	0xe000ed04

080031c4 <xQueueGenericSend>:
{
 80031c4:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
 80031c8:	b082      	sub	sp, #8
 80031ca:	4604      	mov	r4, r0
 80031cc:	468a      	mov	sl, r1
 80031ce:	461f      	mov	r7, r3
BaseType_t xEntryTimeSet = pdFALSE, xYieldRequired;
 80031d0:	2500      	movs	r5, #0
	configASSERT( pxQueue );
 80031d2:	2c00      	cmp	r4, #0
{
 80031d4:	d003      	beq.n	80031de <xQueueGenericSend+0x1a>
	configASSERT( !( ( pvItemToQueue == NULL ) && ( pxQueue->uxItemSize != ( UBaseType_t ) 0U ) ) );
 80031d6:	f1ba 0f00 	cmp.w	sl, #0
 80031da:	d008      	beq.n	80031ee <xQueueGenericSend+0x2a>
 80031dc:	e011      	b.n	8003202 <xQueueGenericSend+0x3e>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 80031de:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 80031e0:	f380 8811 	msr	BASEPRI, r0
		dsb
 80031e4:	f3bf 8f4f 	dsb	sy
		isb
 80031e8:	f3bf 8f6f 	isb	sy
	configASSERT( pxQueue );
 80031ec:	e7fe      	b.n	80031ec <xQueueGenericSend+0x28>
	configASSERT( !( ( pvItemToQueue == NULL ) && ( pxQueue->uxItemSize != ( UBaseType_t ) 0U ) ) );
 80031ee:	6c20      	ldr	r0, [r4, #64]	; 0x40
 80031f0:	b138      	cbz	r0, 8003202 <xQueueGenericSend+0x3e>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 80031f2:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 80031f4:	f380 8811 	msr	BASEPRI, r0
		dsb
 80031f8:	f3bf 8f4f 	dsb	sy
		isb
 80031fc:	f3bf 8f6f 	isb	sy
 8003200:	e7fe      	b.n	8003200 <xQueueGenericSend+0x3c>
	configASSERT( !( ( xCopyPosition == queueOVERWRITE ) && ( pxQueue->uxLength != 1 ) ) );
 8003202:	2f02      	cmp	r7, #2
 8003204:	d10a      	bne.n	800321c <xQueueGenericSend+0x58>
 8003206:	6be0      	ldr	r0, [r4, #60]	; 0x3c
 8003208:	2801      	cmp	r0, #1
 800320a:	d007      	beq.n	800321c <xQueueGenericSend+0x58>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800320c:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 800320e:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003212:	f3bf 8f4f 	dsb	sy
		isb
 8003216:	f3bf 8f6f 	isb	sy
 800321a:	e7fe      	b.n	800321a <xQueueGenericSend+0x56>
		configASSERT( !( ( xTaskGetSchedulerState() == taskSCHEDULER_SUSPENDED ) && ( xTicksToWait != 0 ) ) );
 800321c:	f000 fa32 	bl	8003684 <xTaskGetSchedulerState>
 8003220:	b948      	cbnz	r0, 8003236 <xQueueGenericSend+0x72>
 8003222:	9804      	ldr	r0, [sp, #16]
 8003224:	b138      	cbz	r0, 8003236 <xQueueGenericSend+0x72>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8003226:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003228:	f380 8811 	msr	BASEPRI, r0
		dsb
 800322c:	f3bf 8f4f 	dsb	sy
		isb
 8003230:	f3bf 8f6f 	isb	sy
 8003234:	e7fe      	b.n	8003234 <xQueueGenericSend+0x70>
	for( ;; )
 8003236:	2600      	movs	r6, #0
							queueYIELD_IF_USING_PREEMPTION();
 8003238:	f04f 5880 	mov.w	r8, #268435456	; 0x10000000
 800323c:	f8df 90f0 	ldr.w	r9, [pc, #240]	; 8003330 <xQueueGenericSend+0x16c>
		taskENTER_CRITICAL();
 8003240:	f7ff fc4e 	bl	8002ae0 <vPortEnterCritical>
			if( ( pxQueue->uxMessagesWaiting < pxQueue->uxLength ) || ( xCopyPosition == queueOVERWRITE ) )
 8003244:	6ba0      	ldr	r0, [r4, #56]	; 0x38
 8003246:	6be1      	ldr	r1, [r4, #60]	; 0x3c
 8003248:	4288      	cmp	r0, r1
 800324a:	d305      	bcc.n	8003258 <xQueueGenericSend+0x94>
 800324c:	2f02      	cmp	r7, #2
 800324e:	d003      	beq.n	8003258 <xQueueGenericSend+0x94>
				if( xTicksToWait == ( TickType_t ) 0 )
 8003250:	9804      	ldr	r0, [sp, #16]
 8003252:	b308      	cbz	r0, 8003298 <xQueueGenericSend+0xd4>
				else if( xEntryTimeSet == pdFALSE )
 8003254:	b335      	cbz	r5, 80032a4 <xQueueGenericSend+0xe0>
 8003256:	e029      	b.n	80032ac <xQueueGenericSend+0xe8>
				xYieldRequired = prvCopyDataToQueue( pxQueue, pvItemToQueue, xCopyPosition );
 8003258:	463a      	mov	r2, r7
 800325a:	4651      	mov	r1, sl
 800325c:	4620      	mov	r0, r4
 800325e:	f7fe ff83 	bl	8002168 <prvCopyDataToQueue>
					if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
 8003262:	6a61      	ldr	r1, [r4, #36]	; 0x24
 8003264:	b159      	cbz	r1, 800327e <xQueueGenericSend+0xba>
						if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
 8003266:	f104 0024 	add.w	r0, r4, #36	; 0x24
 800326a:	f000 fac5 	bl	80037f8 <xTaskRemoveFromEventList>
 800326e:	b168      	cbz	r0, 800328c <xQueueGenericSend+0xc8>
							queueYIELD_IF_USING_PREEMPTION();
 8003270:	f8c9 8000 	str.w	r8, [r9]
 8003274:	f3bf 8f4f 	dsb	sy
 8003278:	f3bf 8f6f 	isb	sy
 800327c:	e006      	b.n	800328c <xQueueGenericSend+0xc8>
					else if( xYieldRequired != pdFALSE )
 800327e:	b128      	cbz	r0, 800328c <xQueueGenericSend+0xc8>
						queueYIELD_IF_USING_PREEMPTION();
 8003280:	f8c9 8000 	str.w	r8, [r9]
 8003284:	f3bf 8f4f 	dsb	sy
 8003288:	f3bf 8f6f 	isb	sy
				taskEXIT_CRITICAL();
 800328c:	f7ff fc48 	bl	8002b20 <vPortExitCritical>
}
 8003290:	b006      	add	sp, #24
				return pdPASS;
 8003292:	2001      	movs	r0, #1
}
 8003294:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
					taskEXIT_CRITICAL();
 8003298:	f7ff fc42 	bl	8002b20 <vPortExitCritical>
}
 800329c:	b006      	add	sp, #24
					return errQUEUE_FULL;
 800329e:	2000      	movs	r0, #0
}
 80032a0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
					vTaskInternalSetTimeOutState( &xTimeOut );
 80032a4:	4668      	mov	r0, sp
 80032a6:	f7ff fdc1 	bl	8002e2c <vTaskInternalSetTimeOutState>
					xEntryTimeSet = pdTRUE;
 80032aa:	2501      	movs	r5, #1
		taskEXIT_CRITICAL();
 80032ac:	f7ff fc38 	bl	8002b20 <vPortExitCritical>
		vTaskSuspendAll();
 80032b0:	f7ff fe4c 	bl	8002f4c <vTaskSuspendAll>
		prvLockQueue( pxQueue );
 80032b4:	f7ff fc14 	bl	8002ae0 <vPortEnterCritical>
 80032b8:	f994 0044 	ldrsb.w	r0, [r4, #68]	; 0x44
 80032bc:	f1b0 3fff 	cmp.w	r0, #4294967295
 80032c0:	d101      	bne.n	80032c6 <xQueueGenericSend+0x102>
 80032c2:	f884 6044 	strb.w	r6, [r4, #68]	; 0x44
 80032c6:	f994 0045 	ldrsb.w	r0, [r4, #69]	; 0x45
 80032ca:	f1b0 3fff 	cmp.w	r0, #4294967295
 80032ce:	d101      	bne.n	80032d4 <xQueueGenericSend+0x110>
 80032d0:	f884 6045 	strb.w	r6, [r4, #69]	; 0x45
 80032d4:	f7ff fc24 	bl	8002b20 <vPortExitCritical>
		if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdFALSE )
 80032d8:	a904      	add	r1, sp, #16
 80032da:	4668      	mov	r0, sp
 80032dc:	f000 f92c 	bl	8003538 <xTaskCheckForTimeOut>
 80032e0:	b140      	cbz	r0, 80032f4 <xQueueGenericSend+0x130>
			prvUnlockQueue( pxQueue );
 80032e2:	4620      	mov	r0, r4
 80032e4:	f7ff fa70 	bl	80027c8 <prvUnlockQueue>
			( void ) xTaskResumeAll();
 80032e8:	f000 fac2 	bl	8003870 <xTaskResumeAll>
}
 80032ec:	b006      	add	sp, #24
			return errQUEUE_FULL;
 80032ee:	2000      	movs	r0, #0
}
 80032f0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
			if( prvIsQueueFull( pxQueue ) != pdFALSE )
 80032f4:	4620      	mov	r0, r4
 80032f6:	f7ff f8c8 	bl	800248a <prvIsQueueFull>
 80032fa:	b190      	cbz	r0, 8003322 <xQueueGenericSend+0x15e>
				vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToSend ), xTicksToWait );
 80032fc:	f104 0010 	add.w	r0, r4, #16
 8003300:	9904      	ldr	r1, [sp, #16]
 8003302:	f7ff fda1 	bl	8002e48 <vTaskPlaceOnEventList>
				prvUnlockQueue( pxQueue );
 8003306:	4620      	mov	r0, r4
 8003308:	f7ff fa5e 	bl	80027c8 <prvUnlockQueue>
				if( xTaskResumeAll() == pdFALSE )
 800330c:	f000 fab0 	bl	8003870 <xTaskResumeAll>
 8003310:	2800      	cmp	r0, #0
 8003312:	d195      	bne.n	8003240 <xQueueGenericSend+0x7c>
					portYIELD_WITHIN_API();
 8003314:	f8c9 8000 	str.w	r8, [r9]
 8003318:	f3bf 8f4f 	dsb	sy
 800331c:	f3bf 8f6f 	isb	sy
 8003320:	e78e      	b.n	8003240 <xQueueGenericSend+0x7c>
				prvUnlockQueue( pxQueue );
 8003322:	4620      	mov	r0, r4
 8003324:	f7ff fa50 	bl	80027c8 <prvUnlockQueue>
				( void ) xTaskResumeAll();
 8003328:	f000 faa2 	bl	8003870 <xTaskResumeAll>
 800332c:	e788      	b.n	8003240 <xQueueGenericSend+0x7c>
 800332e:	0000      	.short	0x0000
 8003330:	e000ed04 	.word	0xe000ed04

08003334 <xQueueGenericSendFromISR>:
{
 8003334:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8003338:	4604      	mov	r4, r0
 800333a:	4689      	mov	r9, r1
 800333c:	4617      	mov	r7, r2
 800333e:	461e      	mov	r6, r3
	configASSERT( pxQueue );
 8003340:	2c00      	cmp	r4, #0
{
 8003342:	d003      	beq.n	800334c <xQueueGenericSendFromISR+0x18>
	configASSERT( !( ( pvItemToQueue == NULL ) && ( pxQueue->uxItemSize != ( UBaseType_t ) 0U ) ) );
 8003344:	f1b9 0f00 	cmp.w	r9, #0
 8003348:	d008      	beq.n	800335c <xQueueGenericSendFromISR+0x28>
 800334a:	e011      	b.n	8003370 <xQueueGenericSendFromISR+0x3c>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800334c:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 800334e:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003352:	f3bf 8f4f 	dsb	sy
		isb
 8003356:	f3bf 8f6f 	isb	sy
	configASSERT( pxQueue );
 800335a:	e7fe      	b.n	800335a <xQueueGenericSendFromISR+0x26>
	configASSERT( !( ( pvItemToQueue == NULL ) && ( pxQueue->uxItemSize != ( UBaseType_t ) 0U ) ) );
 800335c:	6c20      	ldr	r0, [r4, #64]	; 0x40
 800335e:	b138      	cbz	r0, 8003370 <xQueueGenericSendFromISR+0x3c>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8003360:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003362:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003366:	f3bf 8f4f 	dsb	sy
		isb
 800336a:	f3bf 8f6f 	isb	sy
 800336e:	e7fe      	b.n	800336e <xQueueGenericSendFromISR+0x3a>
	configASSERT( !( ( xCopyPosition == queueOVERWRITE ) && ( pxQueue->uxLength != 1 ) ) );
 8003370:	2e02      	cmp	r6, #2
 8003372:	d10a      	bne.n	800338a <xQueueGenericSendFromISR+0x56>
 8003374:	6be0      	ldr	r0, [r4, #60]	; 0x3c
 8003376:	2801      	cmp	r0, #1
 8003378:	d007      	beq.n	800338a <xQueueGenericSendFromISR+0x56>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800337a:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 800337c:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003380:	f3bf 8f4f 	dsb	sy
		isb
 8003384:	f3bf 8f6f 	isb	sy
 8003388:	e7fe      	b.n	8003388 <xQueueGenericSendFromISR+0x54>
	portASSERT_IF_INTERRUPT_PRIORITY_INVALID();
 800338a:	f7ff fc1f 	bl	8002bcc <vPortValidateInterruptPriority>
}
/*-----------------------------------------------------------*/

static portFORCE_INLINE uint32_t ulPortRaiseBASEPRI( void )
{
uint32_t ulReturn, ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800338e:	2050      	movs	r0, #80	; 0x50

	__asm
	{
		/* Set BASEPRI to the max syscall priority to effect a critical
		section. */
		mrs ulReturn, basepri
 8003390:	f3ef 8811 	mrs	r8, BASEPRI
		msr basepri, ulNewBASEPRI
 8003394:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003398:	f3bf 8f4f 	dsb	sy
		isb
 800339c:	f3bf 8f6f 	isb	sy
		if( ( pxQueue->uxMessagesWaiting < pxQueue->uxLength ) || ( xCopyPosition == queueOVERWRITE ) )
 80033a0:	6ba0      	ldr	r0, [r4, #56]	; 0x38
 80033a2:	6be1      	ldr	r1, [r4, #60]	; 0x3c
 80033a4:	4288      	cmp	r0, r1
 80033a6:	d306      	bcc.n	80033b6 <xQueueGenericSendFromISR+0x82>
 80033a8:	2e02      	cmp	r6, #2
 80033aa:	d004      	beq.n	80033b6 <xQueueGenericSendFromISR+0x82>
			xReturn = errQUEUE_FULL;
 80033ac:	2000      	movs	r0, #0
		msr basepri, ulBASEPRI
 80033ae:	f388 8811 	msr	BASEPRI, r8
}
 80033b2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
			const int8_t cTxLock = pxQueue->cTxLock;
 80033b6:	f994 5045 	ldrsb.w	r5, [r4, #69]	; 0x45
			( void ) prvCopyDataToQueue( pxQueue, pvItemToQueue, xCopyPosition );
 80033ba:	4632      	mov	r2, r6
 80033bc:	4649      	mov	r1, r9
 80033be:	4620      	mov	r0, r4
 80033c0:	f7fe fed2 	bl	8002168 <prvCopyDataToQueue>
			if( cTxLock == queueUNLOCKED )
 80033c4:	f1b5 3fff 	cmp.w	r5, #4294967295
 80033c8:	d004      	beq.n	80033d4 <xQueueGenericSendFromISR+0xa0>
				pxQueue->cTxLock = ( int8_t ) ( cTxLock + 1 );
 80033ca:	1c68      	adds	r0, r5, #1
 80033cc:	f884 0045 	strb.w	r0, [r4, #69]	; 0x45
			xReturn = pdPASS;
 80033d0:	2001      	movs	r0, #1
		}
 80033d2:	e7ec      	b.n	80033ae <xQueueGenericSendFromISR+0x7a>
					if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
 80033d4:	6a60      	ldr	r0, [r4, #36]	; 0x24
 80033d6:	2800      	cmp	r0, #0
 80033d8:	d0fa      	beq.n	80033d0 <xQueueGenericSendFromISR+0x9c>
						if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
 80033da:	f104 0024 	add.w	r0, r4, #36	; 0x24
 80033de:	f000 fa0b 	bl	80037f8 <xTaskRemoveFromEventList>
 80033e2:	2800      	cmp	r0, #0
 80033e4:	d0f4      	beq.n	80033d0 <xQueueGenericSendFromISR+0x9c>
							if( pxHigherPriorityTaskWoken != NULL )
 80033e6:	2f00      	cmp	r7, #0
 80033e8:	d0f2      	beq.n	80033d0 <xQueueGenericSendFromISR+0x9c>
								*pxHigherPriorityTaskWoken = pdTRUE;
 80033ea:	2001      	movs	r0, #1
 80033ec:	6038      	str	r0, [r7, #0]
 80033ee:	e7ef      	b.n	80033d0 <xQueueGenericSendFromISR+0x9c>

080033f0 <xQueueReceive>:
{
 80033f0:	e92d 47f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, lr}
 80033f4:	b083      	sub	sp, #12
 80033f6:	4604      	mov	r4, r0
 80033f8:	468a      	mov	sl, r1
BaseType_t xEntryTimeSet = pdFALSE;
 80033fa:	2500      	movs	r5, #0
	configASSERT( ( pxQueue ) );
 80033fc:	2c00      	cmp	r4, #0
{
 80033fe:	d003      	beq.n	8003408 <xQueueReceive+0x18>
	configASSERT( !( ( ( pvBuffer ) == NULL ) && ( ( pxQueue )->uxItemSize != ( UBaseType_t ) 0U ) ) );
 8003400:	f1ba 0f00 	cmp.w	sl, #0
 8003404:	d008      	beq.n	8003418 <xQueueReceive+0x28>
 8003406:	e011      	b.n	800342c <xQueueReceive+0x3c>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8003408:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 800340a:	f380 8811 	msr	BASEPRI, r0
		dsb
 800340e:	f3bf 8f4f 	dsb	sy
		isb
 8003412:	f3bf 8f6f 	isb	sy
	configASSERT( ( pxQueue ) );
 8003416:	e7fe      	b.n	8003416 <xQueueReceive+0x26>
	configASSERT( !( ( ( pvBuffer ) == NULL ) && ( ( pxQueue )->uxItemSize != ( UBaseType_t ) 0U ) ) );
 8003418:	6c20      	ldr	r0, [r4, #64]	; 0x40
 800341a:	b138      	cbz	r0, 800342c <xQueueReceive+0x3c>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800341c:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 800341e:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003422:	f3bf 8f4f 	dsb	sy
		isb
 8003426:	f3bf 8f6f 	isb	sy
 800342a:	e7fe      	b.n	800342a <xQueueReceive+0x3a>
		configASSERT( !( ( xTaskGetSchedulerState() == taskSCHEDULER_SUSPENDED ) && ( xTicksToWait != 0 ) ) );
 800342c:	f000 f92a 	bl	8003684 <xTaskGetSchedulerState>
 8003430:	b948      	cbnz	r0, 8003446 <xQueueReceive+0x56>
 8003432:	9805      	ldr	r0, [sp, #20]
 8003434:	b138      	cbz	r0, 8003446 <xQueueReceive+0x56>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8003436:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003438:	f380 8811 	msr	BASEPRI, r0
		dsb
 800343c:	f3bf 8f4f 	dsb	sy
		isb
 8003440:	f3bf 8f6f 	isb	sy
 8003444:	e7fe      	b.n	8003444 <xQueueReceive+0x54>
	for( ;; )
 8003446:	2700      	movs	r7, #0
						queueYIELD_IF_USING_PREEMPTION();
 8003448:	f04f 5880 	mov.w	r8, #268435456	; 0x10000000
 800344c:	f8df 90e4 	ldr.w	r9, [pc, #228]	; 8003534 <xQueueReceive+0x144>
		taskENTER_CRITICAL();
 8003450:	f7ff fb46 	bl	8002ae0 <vPortEnterCritical>
			const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;
 8003454:	6ba6      	ldr	r6, [r4, #56]	; 0x38
			if( uxMessagesWaiting > ( UBaseType_t ) 0 )
 8003456:	b1c6      	cbz	r6, 800348a <xQueueReceive+0x9a>
				prvCopyDataFromQueue( pxQueue, pvBuffer );
 8003458:	4651      	mov	r1, sl
 800345a:	4620      	mov	r0, r4
 800345c:	f7fe fe72 	bl	8002144 <prvCopyDataFromQueue>
				pxQueue->uxMessagesWaiting = uxMessagesWaiting - ( UBaseType_t ) 1;
 8003460:	1e70      	subs	r0, r6, #1
 8003462:	63a0      	str	r0, [r4, #56]	; 0x38
				if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
 8003464:	6920      	ldr	r0, [r4, #16]
 8003466:	b150      	cbz	r0, 800347e <xQueueReceive+0x8e>
					if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
 8003468:	f104 0010 	add.w	r0, r4, #16
 800346c:	f000 f9c4 	bl	80037f8 <xTaskRemoveFromEventList>
 8003470:	b128      	cbz	r0, 800347e <xQueueReceive+0x8e>
						queueYIELD_IF_USING_PREEMPTION();
 8003472:	f8c9 8000 	str.w	r8, [r9]
 8003476:	f3bf 8f4f 	dsb	sy
 800347a:	f3bf 8f6f 	isb	sy
				taskEXIT_CRITICAL();
 800347e:	f7ff fb4f 	bl	8002b20 <vPortExitCritical>
}
 8003482:	b006      	add	sp, #24
				return pdPASS;
 8003484:	2001      	movs	r0, #1
}
 8003486:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
				if( xTicksToWait == ( TickType_t ) 0 )
 800348a:	9805      	ldr	r0, [sp, #20]
 800348c:	b108      	cbz	r0, 8003492 <xQueueReceive+0xa2>
				else if( xEntryTimeSet == pdFALSE )
 800348e:	b135      	cbz	r5, 800349e <xQueueReceive+0xae>
 8003490:	e009      	b.n	80034a6 <xQueueReceive+0xb6>
					taskEXIT_CRITICAL();
 8003492:	f7ff fb45 	bl	8002b20 <vPortExitCritical>
}
 8003496:	b006      	add	sp, #24
					return errQUEUE_EMPTY;
 8003498:	2000      	movs	r0, #0
}
 800349a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
					vTaskInternalSetTimeOutState( &xTimeOut );
 800349e:	4668      	mov	r0, sp
 80034a0:	f7ff fcc4 	bl	8002e2c <vTaskInternalSetTimeOutState>
					xEntryTimeSet = pdTRUE;
 80034a4:	2501      	movs	r5, #1
		taskEXIT_CRITICAL();
 80034a6:	f7ff fb3b 	bl	8002b20 <vPortExitCritical>
		vTaskSuspendAll();
 80034aa:	f7ff fd4f 	bl	8002f4c <vTaskSuspendAll>
		prvLockQueue( pxQueue );
 80034ae:	f7ff fb17 	bl	8002ae0 <vPortEnterCritical>
 80034b2:	f994 0044 	ldrsb.w	r0, [r4, #68]	; 0x44
 80034b6:	f1b0 3fff 	cmp.w	r0, #4294967295
 80034ba:	d101      	bne.n	80034c0 <xQueueReceive+0xd0>
 80034bc:	f884 7044 	strb.w	r7, [r4, #68]	; 0x44
 80034c0:	f994 0045 	ldrsb.w	r0, [r4, #69]	; 0x45
 80034c4:	f1b0 3fff 	cmp.w	r0, #4294967295
 80034c8:	d101      	bne.n	80034ce <xQueueReceive+0xde>
 80034ca:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
 80034ce:	f7ff fb27 	bl	8002b20 <vPortExitCritical>
		if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdFALSE )
 80034d2:	a905      	add	r1, sp, #20
 80034d4:	4668      	mov	r0, sp
 80034d6:	f000 f82f 	bl	8003538 <xTaskCheckForTimeOut>
 80034da:	b168      	cbz	r0, 80034f8 <xQueueReceive+0x108>
			prvUnlockQueue( pxQueue );
 80034dc:	4620      	mov	r0, r4
 80034de:	f7ff f973 	bl	80027c8 <prvUnlockQueue>
			( void ) xTaskResumeAll();
 80034e2:	f000 f9c5 	bl	8003870 <xTaskResumeAll>
			if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
 80034e6:	4620      	mov	r0, r4
 80034e8:	f7fe ffc2 	bl	8002470 <prvIsQueueEmpty>
 80034ec:	2800      	cmp	r0, #0
 80034ee:	d0af      	beq.n	8003450 <xQueueReceive+0x60>
}
 80034f0:	b006      	add	sp, #24
				return errQUEUE_EMPTY;
 80034f2:	2000      	movs	r0, #0
}
 80034f4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
			if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
 80034f8:	4620      	mov	r0, r4
 80034fa:	f7fe ffb9 	bl	8002470 <prvIsQueueEmpty>
 80034fe:	b190      	cbz	r0, 8003526 <xQueueReceive+0x136>
				vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait );
 8003500:	f104 0024 	add.w	r0, r4, #36	; 0x24
 8003504:	9905      	ldr	r1, [sp, #20]
 8003506:	f7ff fc9f 	bl	8002e48 <vTaskPlaceOnEventList>
				prvUnlockQueue( pxQueue );
 800350a:	4620      	mov	r0, r4
 800350c:	f7ff f95c 	bl	80027c8 <prvUnlockQueue>
				if( xTaskResumeAll() == pdFALSE )
 8003510:	f000 f9ae 	bl	8003870 <xTaskResumeAll>
 8003514:	2800      	cmp	r0, #0
 8003516:	d19b      	bne.n	8003450 <xQueueReceive+0x60>
					portYIELD_WITHIN_API();
 8003518:	f8c9 8000 	str.w	r8, [r9]
 800351c:	f3bf 8f4f 	dsb	sy
 8003520:	f3bf 8f6f 	isb	sy
 8003524:	e794      	b.n	8003450 <xQueueReceive+0x60>
				prvUnlockQueue( pxQueue );
 8003526:	4620      	mov	r0, r4
 8003528:	f7ff f94e 	bl	80027c8 <prvUnlockQueue>
				( void ) xTaskResumeAll();
 800352c:	f000 f9a0 	bl	8003870 <xTaskResumeAll>
 8003530:	e78e      	b.n	8003450 <xQueueReceive+0x60>
 8003532:	0000      	.short	0x0000
 8003534:	e000ed04 	.word	0xe000ed04

08003538 <xTaskCheckForTimeOut>:
{
 8003538:	b570      	push	{r4, r5, r6, lr}
 800353a:	4605      	mov	r5, r0
 800353c:	460c      	mov	r4, r1
	configASSERT( pxTimeOut );
 800353e:	2d00      	cmp	r5, #0
{
 8003540:	d015      	beq.n	800356e <xTaskCheckForTimeOut+0x36>
	configASSERT( pxTicksToWait );
 8003542:	b1e4      	cbz	r4, 800357e <xTaskCheckForTimeOut+0x46>
	taskENTER_CRITICAL();
 8003544:	f7ff facc 	bl	8002ae0 <vPortEnterCritical>
		const TickType_t xConstTickCount = xTickCount;
 8003548:	f8df c068 	ldr.w	ip, [pc, #104]	; 80035b4 <xTaskCheckForTimeOut+0x7c>
 800354c:	f8dc 0014 	ldr.w	r0, [ip, #20]
		const TickType_t xElapsedTime = xConstTickCount - pxTimeOut->xTimeOnEntering;
 8003550:	686b      	ldr	r3, [r5, #4]
 8003552:	1ac1      	subs	r1, r0, r3
			if( *pxTicksToWait == portMAX_DELAY )
 8003554:	6822      	ldr	r2, [r4, #0]
 8003556:	f1b2 3fff 	cmp.w	r2, #4294967295
 800355a:	d018      	beq.n	800358e <xTaskCheckForTimeOut+0x56>
		if( ( xNumOfOverflows != pxTimeOut->xOverflowCount ) && ( xConstTickCount >= pxTimeOut->xTimeOnEntering ) ) /*lint !e525 Indentation preferred as is to make code within pre-processor directives clearer. */
 800355c:	682e      	ldr	r6, [r5, #0]
 800355e:	f8dc c028 	ldr.w	ip, [ip, #40]	; 0x28
 8003562:	4566      	cmp	r6, ip
 8003564:	d015      	beq.n	8003592 <xTaskCheckForTimeOut+0x5a>
 8003566:	4283      	cmp	r3, r0
 8003568:	d813      	bhi.n	8003592 <xTaskCheckForTimeOut+0x5a>
			xReturn = pdTRUE;
 800356a:	2401      	movs	r4, #1
 800356c:	e01d      	b.n	80035aa <xTaskCheckForTimeOut+0x72>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800356e:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003570:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003574:	f3bf 8f4f 	dsb	sy
		isb
 8003578:	f3bf 8f6f 	isb	sy
	configASSERT( pxTimeOut );
 800357c:	e7fe      	b.n	800357c <xTaskCheckForTimeOut+0x44>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800357e:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003580:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003584:	f3bf 8f4f 	dsb	sy
		isb
 8003588:	f3bf 8f6f 	isb	sy
	configASSERT( pxTicksToWait );
 800358c:	e7fe      	b.n	800358c <xTaskCheckForTimeOut+0x54>
				xReturn = pdFALSE;
 800358e:	2400      	movs	r4, #0
 8003590:	e00b      	b.n	80035aa <xTaskCheckForTimeOut+0x72>
		else if( xElapsedTime < *pxTicksToWait ) /*lint !e961 Explicit casting is only redundant with some compilers, whereas others require it to prevent integer conversion errors. */
 8003592:	428a      	cmp	r2, r1
 8003594:	d906      	bls.n	80035a4 <xTaskCheckForTimeOut+0x6c>
			*pxTicksToWait -= xElapsedTime;
 8003596:	1a50      	subs	r0, r2, r1
 8003598:	6020      	str	r0, [r4, #0]
			vTaskInternalSetTimeOutState( pxTimeOut );
 800359a:	4628      	mov	r0, r5
 800359c:	f7ff fc46 	bl	8002e2c <vTaskInternalSetTimeOutState>
			xReturn = pdFALSE;
 80035a0:	2400      	movs	r4, #0
 80035a2:	e002      	b.n	80035aa <xTaskCheckForTimeOut+0x72>
			*pxTicksToWait = 0;
 80035a4:	2000      	movs	r0, #0
 80035a6:	6020      	str	r0, [r4, #0]
			xReturn = pdTRUE;
 80035a8:	2401      	movs	r4, #1
	taskEXIT_CRITICAL();
 80035aa:	f7ff fab9 	bl	8002b20 <vPortExitCritical>
	return xReturn;
 80035ae:	4620      	mov	r0, r4
}
 80035b0:	bd70      	pop	{r4, r5, r6, pc}
 80035b2:	0000      	.short	0x0000
 80035b4:	20000028 	.word	0x20000028

080035b8 <xTaskCreate>:
	{
 80035b8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80035bc:	b085      	sub	sp, #20
 80035be:	4681      	mov	r9, r0
 80035c0:	9f0f      	ldr	r7, [sp, #60]	; 0x3c
 80035c2:	9e0e      	ldr	r6, [sp, #56]	; 0x38
 80035c4:	468a      	mov	sl, r1
 80035c6:	4690      	mov	r8, r2
 80035c8:	469b      	mov	fp, r3
			pxStack = ( StackType_t * ) pvPortMalloc( ( ( ( size_t ) usStackDepth ) * sizeof( StackType_t ) ) ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
 80035ca:	ea4f 0088 	mov.w	r0, r8, lsl #2
 80035ce:	f7ff f943 	bl	8002858 <pvPortMalloc>
 80035d2:	4605      	mov	r5, r0
			if( pxStack != NULL )
 80035d4:	0028      	movs	r0, r5
 80035d6:	d00a      	beq.n	80035ee <xTaskCreate+0x36>
				pxNewTCB = ( TCB_t * ) pvPortMalloc( sizeof( TCB_t ) ); /*lint !e961 MISRA exception as the casts are only redundant for some paths. */
 80035d8:	2060      	movs	r0, #96	; 0x60
 80035da:	f7ff f93d 	bl	8002858 <pvPortMalloc>
 80035de:	4604      	mov	r4, r0
				if( pxNewTCB != NULL )
 80035e0:	b10c      	cbz	r4, 80035e6 <xTaskCreate+0x2e>
					pxNewTCB->pxStack = pxStack;
 80035e2:	6325      	str	r5, [r4, #48]	; 0x30
 80035e4:	e004      	b.n	80035f0 <xTaskCreate+0x38>
					vPortFree( pxStack );
 80035e6:	4628      	mov	r0, r5
 80035e8:	f7ff fab0 	bl	8002b4c <vPortFree>
 80035ec:	e000      	b.n	80035f0 <xTaskCreate+0x38>
				pxNewTCB = NULL;
 80035ee:	2400      	movs	r4, #0
		if( pxNewTCB != NULL )
 80035f0:	b19c      	cbz	r4, 800361a <xTaskCreate+0x62>
				pxNewTCB->ucStaticallyAllocated = tskDYNAMICALLY_ALLOCATED_STACK_AND_TCB;
 80035f2:	2000      	movs	r0, #0
 80035f4:	f884 005d 	strb.w	r0, [r4, #93]	; 0x5d
			prvInitialiseNewTask( pxTaskCode, pcName, ( uint32_t ) usStackDepth, pvParameters, uxPriority, pxCreatedTask, pxNewTCB, NULL );
 80035f8:	9003      	str	r0, [sp, #12]
 80035fa:	465b      	mov	r3, fp
 80035fc:	4642      	mov	r2, r8
 80035fe:	4651      	mov	r1, sl
 8003600:	9701      	str	r7, [sp, #4]
 8003602:	9600      	str	r6, [sp, #0]
 8003604:	9402      	str	r4, [sp, #8]
 8003606:	4648      	mov	r0, r9
 8003608:	f7fe fe67 	bl	80022da <prvInitialiseNewTask>
			prvAddNewTaskToReadyList( pxNewTCB );
 800360c:	4620      	mov	r0, r4
 800360e:	f7fe fd07 	bl	8002020 <prvAddNewTaskToReadyList>
	}
 8003612:	b005      	add	sp, #20
			xReturn = pdPASS;
 8003614:	2001      	movs	r0, #1
	}
 8003616:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800361a:	b005      	add	sp, #20
			xReturn = errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY;
 800361c:	f04f 30ff 	mov.w	r0, #4294967295
	}
 8003620:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08003624 <xTaskCreateStatic>:
	{
 8003624:	b570      	push	{r4, r5, r6, lr}
 8003626:	b086      	sub	sp, #24
 8003628:	4606      	mov	r6, r0
 800362a:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
 800362e:	9c0c      	ldr	r4, [sp, #48]	; 0x30
 8003630:	980b      	ldr	r0, [sp, #44]	; 0x2c
		configASSERT( puxStackBuffer != NULL );
 8003632:	2800      	cmp	r0, #0
	{
 8003634:	d016      	beq.n	8003664 <xTaskCreateStatic+0x40>
		configASSERT( pxTaskBuffer != NULL );
 8003636:	b1ec      	cbz	r4, 8003674 <xTaskCreateStatic+0x50>
			volatile size_t xSize = sizeof( StaticTask_t );
 8003638:	2560      	movs	r5, #96	; 0x60
 800363a:	9504      	str	r5, [sp, #16]
			pxNewTCB->pxStack = ( StackType_t * ) puxStackBuffer;
 800363c:	6320      	str	r0, [r4, #48]	; 0x30
				pxNewTCB->ucStaticallyAllocated = tskSTATICALLY_ALLOCATED_STACK_AND_TCB;
 800363e:	2002      	movs	r0, #2
 8003640:	f884 005d 	strb.w	r0, [r4, #93]	; 0x5d
			prvInitialiseNewTask( pxTaskCode, pcName, ulStackDepth, pvParameters, uxPriority, &xReturn, pxNewTCB, NULL );
 8003644:	2000      	movs	r0, #0
 8003646:	ad05      	add	r5, sp, #20
 8003648:	9003      	str	r0, [sp, #12]
 800364a:	f8cd c000 	str.w	ip, [sp]
 800364e:	9501      	str	r5, [sp, #4]
 8003650:	9402      	str	r4, [sp, #8]
 8003652:	4630      	mov	r0, r6
 8003654:	f7fe fe41 	bl	80022da <prvInitialiseNewTask>
			prvAddNewTaskToReadyList( pxNewTCB );
 8003658:	4620      	mov	r0, r4
 800365a:	f7fe fce1 	bl	8002020 <prvAddNewTaskToReadyList>
			configASSERT( xSize == sizeof( TCB_t ) );
 800365e:	9805      	ldr	r0, [sp, #20]
	}
 8003660:	b006      	add	sp, #24
 8003662:	bd70      	pop	{r4, r5, r6, pc}
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8003664:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003666:	f380 8811 	msr	BASEPRI, r0
		dsb
 800366a:	f3bf 8f4f 	dsb	sy
		isb
 800366e:	f3bf 8f6f 	isb	sy
		configASSERT( puxStackBuffer != NULL );
 8003672:	e7fe      	b.n	8003672 <xTaskCreateStatic+0x4e>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8003674:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003676:	f380 8811 	msr	BASEPRI, r0
		dsb
 800367a:	f3bf 8f4f 	dsb	sy
		isb
 800367e:	f3bf 8f6f 	isb	sy
		configASSERT( pxTaskBuffer != NULL );
 8003682:	e7fe      	b.n	8003682 <xTaskCreateStatic+0x5e>

08003684 <xTaskGetSchedulerState>:
		if( xSchedulerRunning == pdFALSE )
 8003684:	4805      	ldr	r0, [pc, #20]	; (800369c <xTaskGetSchedulerState+0x18>)
 8003686:	69c1      	ldr	r1, [r0, #28]
 8003688:	2900      	cmp	r1, #0
	{
 800368a:	d003      	beq.n	8003694 <xTaskGetSchedulerState+0x10>
			if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
 800368c:	6b80      	ldr	r0, [r0, #56]	; 0x38
 800368e:	b118      	cbz	r0, 8003698 <xTaskGetSchedulerState+0x14>
				xReturn = taskSCHEDULER_SUSPENDED;
 8003690:	2000      	movs	r0, #0
	}
 8003692:	4770      	bx	lr
			xReturn = taskSCHEDULER_NOT_STARTED;
 8003694:	2001      	movs	r0, #1
	}
 8003696:	4770      	bx	lr
				xReturn = taskSCHEDULER_RUNNING;
 8003698:	2002      	movs	r0, #2
	}
 800369a:	4770      	bx	lr
 800369c:	20000028 	.word	0x20000028

080036a0 <xTaskGetTickCount>:
		xTicks = xTickCount;
 80036a0:	4801      	ldr	r0, [pc, #4]	; (80036a8 <xTaskGetTickCount+0x8>)
 80036a2:	6940      	ldr	r0, [r0, #20]
}
 80036a4:	4770      	bx	lr
 80036a6:	0000      	.short	0x0000
 80036a8:	20000028 	.word	0x20000028

080036ac <xTaskIncrementTick>:
{
 80036ac:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
BaseType_t xSwitchRequired = pdFALSE;
 80036b0:	2600      	movs	r6, #0
	if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
 80036b2:	4f2f      	ldr	r7, [pc, #188]	; (8003770 <xTaskIncrementTick+0xc4>)
 80036b4:	6bb8      	ldr	r0, [r7, #56]	; 0x38
 80036b6:	2800      	cmp	r0, #0
{
 80036b8:	d008      	beq.n	80036cc <xTaskIncrementTick+0x20>
		++uxPendedTicks;
 80036ba:	6a38      	ldr	r0, [r7, #32]
 80036bc:	1c40      	adds	r0, r0, #1
 80036be:	6238      	str	r0, [r7, #32]
		if( xYieldPending != pdFALSE )
 80036c0:	6a78      	ldr	r0, [r7, #36]	; 0x24
 80036c2:	b100      	cbz	r0, 80036c6 <xTaskIncrementTick+0x1a>
			xSwitchRequired = pdTRUE;
 80036c4:	2601      	movs	r6, #1
	return xSwitchRequired;
 80036c6:	4630      	mov	r0, r6
}
 80036c8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
		const TickType_t xConstTickCount = xTickCount + ( TickType_t ) 1;
 80036cc:	6978      	ldr	r0, [r7, #20]
 80036ce:	1c45      	adds	r5, r0, #1
		xTickCount = xConstTickCount;
 80036d0:	617d      	str	r5, [r7, #20]
		if( xConstTickCount == ( TickType_t ) 0U ) /*lint !e774 'if' does not always evaluate to false as it is looking for an overflow. */
 80036d2:	b99d      	cbnz	r5, 80036fc <xTaskIncrementTick+0x50>
			taskSWITCH_DELAYED_LISTS();
 80036d4:	6878      	ldr	r0, [r7, #4]
 80036d6:	6800      	ldr	r0, [r0, #0]
 80036d8:	b138      	cbz	r0, 80036ea <xTaskIncrementTick+0x3e>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 80036da:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 80036dc:	f380 8811 	msr	BASEPRI, r0
		dsb
 80036e0:	f3bf 8f4f 	dsb	sy
		isb
 80036e4:	f3bf 8f6f 	isb	sy
 80036e8:	e7fe      	b.n	80036e8 <xTaskIncrementTick+0x3c>
 80036ea:	6878      	ldr	r0, [r7, #4]
 80036ec:	68b9      	ldr	r1, [r7, #8]
 80036ee:	6079      	str	r1, [r7, #4]
 80036f0:	60b8      	str	r0, [r7, #8]
 80036f2:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 80036f4:	1c40      	adds	r0, r0, #1
 80036f6:	62b8      	str	r0, [r7, #40]	; 0x28
 80036f8:	f7fe ffd6 	bl	80026a8 <prvResetNextTaskUnblockTime>
		if( xConstTickCount >= xNextTaskUnblockTime )
 80036fc:	6b38      	ldr	r0, [r7, #48]	; 0x30
					prvAddTaskToReadyList( pxTCB );
 80036fe:	f8df 8074 	ldr.w	r8, [pc, #116]	; 8003774 <xTaskIncrementTick+0xc8>
		if( xConstTickCount >= xNextTaskUnblockTime )
 8003702:	4285      	cmp	r5, r0
 8003704:	d30d      	bcc.n	8003722 <xTaskIncrementTick+0x76>
				if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
 8003706:	6878      	ldr	r0, [r7, #4]
 8003708:	6800      	ldr	r0, [r0, #0]
 800370a:	b138      	cbz	r0, 800371c <xTaskIncrementTick+0x70>
					pxTCB = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxDelayedTaskList );
 800370c:	6878      	ldr	r0, [r7, #4]
 800370e:	68c0      	ldr	r0, [r0, #12]
 8003710:	68c4      	ldr	r4, [r0, #12]
					xItemValue = listGET_LIST_ITEM_VALUE( &( pxTCB->xStateListItem ) );
 8003712:	6860      	ldr	r0, [r4, #4]
					if( xConstTickCount < xItemValue )
 8003714:	4285      	cmp	r5, r0
 8003716:	d20e      	bcs.n	8003736 <xTaskIncrementTick+0x8a>
						xNextTaskUnblockTime = xItemValue;
 8003718:	6338      	str	r0, [r7, #48]	; 0x30
						break;
 800371a:	e002      	b.n	8003722 <xTaskIncrementTick+0x76>
					xNextTaskUnblockTime = portMAX_DELAY; /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
 800371c:	f04f 30ff 	mov.w	r0, #4294967295
 8003720:	6338      	str	r0, [r7, #48]	; 0x30
			if( listCURRENT_LIST_LENGTH( &( pxReadyTasksLists[ pxCurrentTCB->uxPriority ] ) ) > ( UBaseType_t ) 1 )
 8003722:	6838      	ldr	r0, [r7, #0]
 8003724:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
 8003726:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 800372a:	f858 0020 	ldr.w	r0, [r8, r0, lsl #2]
 800372e:	2801      	cmp	r0, #1
 8003730:	d9c6      	bls.n	80036c0 <xTaskIncrementTick+0x14>
				xSwitchRequired = pdTRUE;
 8003732:	2601      	movs	r6, #1
 8003734:	e7c4      	b.n	80036c0 <xTaskIncrementTick+0x14>
					( void ) uxListRemove( &( pxTCB->xStateListItem ) );
 8003736:	1d20      	adds	r0, r4, #4
 8003738:	f7ff f91a 	bl	8002970 <uxListRemove>
					if( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) != NULL )
 800373c:	6aa0      	ldr	r0, [r4, #40]	; 0x28
 800373e:	b118      	cbz	r0, 8003748 <xTaskIncrementTick+0x9c>
						( void ) uxListRemove( &( pxTCB->xEventListItem ) );
 8003740:	f104 0018 	add.w	r0, r4, #24
 8003744:	f7ff f914 	bl	8002970 <uxListRemove>
					prvAddTaskToReadyList( pxTCB );
 8003748:	6ae1      	ldr	r1, [r4, #44]	; 0x2c
 800374a:	69b8      	ldr	r0, [r7, #24]
 800374c:	4281      	cmp	r1, r0
 800374e:	d900      	bls.n	8003752 <xTaskIncrementTick+0xa6>
 8003750:	61b9      	str	r1, [r7, #24]
 8003752:	eb01 0081 	add.w	r0, r1, r1, lsl #2
 8003756:	eb08 0080 	add.w	r0, r8, r0, lsl #2
 800375a:	1d21      	adds	r1, r4, #4
 800375c:	f7ff f9b4 	bl	8002ac8 <vListInsertEnd>
						if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
 8003760:	6ae0      	ldr	r0, [r4, #44]	; 0x2c
 8003762:	6839      	ldr	r1, [r7, #0]
 8003764:	6ac9      	ldr	r1, [r1, #44]	; 0x2c
 8003766:	4288      	cmp	r0, r1
 8003768:	d3cd      	bcc.n	8003706 <xTaskIncrementTick+0x5a>
							xSwitchRequired = pdTRUE;
 800376a:	2601      	movs	r6, #1
 800376c:	e7cb      	b.n	8003706 <xTaskIncrementTick+0x5a>
 800376e:	0000      	.short	0x0000
 8003770:	20000028 	.word	0x20000028
 8003774:	2000060c 	.word	0x2000060c

08003778 <xTaskPriorityDisinherit>:
	{
 8003778:	b570      	push	{r4, r5, r6, lr}
	TCB_t * const pxTCB = ( TCB_t * ) pxMutexHolder;
 800377a:	4604      	mov	r4, r0
	BaseType_t xReturn = pdFALSE;
 800377c:	2100      	movs	r1, #0
		if( pxMutexHolder != NULL )
 800377e:	2800      	cmp	r0, #0
	{
 8003780:	d033      	beq.n	80037ea <xTaskPriorityDisinherit+0x72>
			configASSERT( pxTCB == pxCurrentTCB );
 8003782:	4d1b      	ldr	r5, [pc, #108]	; (80037f0 <xTaskPriorityDisinherit+0x78>)
 8003784:	6828      	ldr	r0, [r5, #0]
 8003786:	4284      	cmp	r4, r0
 8003788:	d007      	beq.n	800379a <xTaskPriorityDisinherit+0x22>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800378a:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 800378c:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003790:	f3bf 8f4f 	dsb	sy
		isb
 8003794:	f3bf 8f6f 	isb	sy
 8003798:	e7fe      	b.n	8003798 <xTaskPriorityDisinherit+0x20>
			configASSERT( pxTCB->uxMutexesHeld );
 800379a:	6d20      	ldr	r0, [r4, #80]	; 0x50
 800379c:	b138      	cbz	r0, 80037ae <xTaskPriorityDisinherit+0x36>
			( pxTCB->uxMutexesHeld )--;
 800379e:	1e40      	subs	r0, r0, #1
 80037a0:	6520      	str	r0, [r4, #80]	; 0x50
			if( pxTCB->uxPriority != pxTCB->uxBasePriority )
 80037a2:	6ce3      	ldr	r3, [r4, #76]	; 0x4c
 80037a4:	6ae2      	ldr	r2, [r4, #44]	; 0x2c
 80037a6:	429a      	cmp	r2, r3
 80037a8:	d01f      	beq.n	80037ea <xTaskPriorityDisinherit+0x72>
				if( pxTCB->uxMutexesHeld == ( UBaseType_t ) 0 )
 80037aa:	b140      	cbz	r0, 80037be <xTaskPriorityDisinherit+0x46>
 80037ac:	e01d      	b.n	80037ea <xTaskPriorityDisinherit+0x72>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 80037ae:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 80037b0:	f380 8811 	msr	BASEPRI, r0
		dsb
 80037b4:	f3bf 8f4f 	dsb	sy
		isb
 80037b8:	f3bf 8f6f 	isb	sy
			configASSERT( pxTCB->uxMutexesHeld );
 80037bc:	e7fe      	b.n	80037bc <xTaskPriorityDisinherit+0x44>
					if( uxListRemove( &( pxTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
 80037be:	1d20      	adds	r0, r4, #4
 80037c0:	f7ff f8d6 	bl	8002970 <uxListRemove>
					pxTCB->uxPriority = pxTCB->uxBasePriority;
 80037c4:	6ce0      	ldr	r0, [r4, #76]	; 0x4c
 80037c6:	62e0      	str	r0, [r4, #44]	; 0x2c
					listSET_LIST_ITEM_VALUE( &( pxTCB->xEventListItem ), ( TickType_t ) configMAX_PRIORITIES - ( TickType_t ) pxTCB->uxPriority ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
 80037c8:	f1c0 0038 	rsb	r0, r0, #56	; 0x38
 80037cc:	61a0      	str	r0, [r4, #24]
					prvAddTaskToReadyList( pxTCB );
 80037ce:	6ae0      	ldr	r0, [r4, #44]	; 0x2c
 80037d0:	69a9      	ldr	r1, [r5, #24]
 80037d2:	4288      	cmp	r0, r1
 80037d4:	d900      	bls.n	80037d8 <xTaskPriorityDisinherit+0x60>
 80037d6:	61a8      	str	r0, [r5, #24]
 80037d8:	4906      	ldr	r1, [pc, #24]	; (80037f4 <xTaskPriorityDisinherit+0x7c>)
 80037da:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 80037de:	eb01 0080 	add.w	r0, r1, r0, lsl #2
 80037e2:	1d21      	adds	r1, r4, #4
 80037e4:	f7ff f970 	bl	8002ac8 <vListInsertEnd>
					xReturn = pdTRUE;
 80037e8:	2101      	movs	r1, #1
		return xReturn;
 80037ea:	4608      	mov	r0, r1
	}
 80037ec:	bd70      	pop	{r4, r5, r6, pc}
 80037ee:	0000      	.short	0x0000
 80037f0:	20000028 	.word	0x20000028
 80037f4:	2000060c 	.word	0x2000060c

080037f8 <xTaskRemoveFromEventList>:
{
 80037f8:	b570      	push	{r4, r5, r6, lr}
	pxUnblockedTCB = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxEventList );
 80037fa:	68c0      	ldr	r0, [r0, #12]
 80037fc:	68c4      	ldr	r4, [r0, #12]
	configASSERT( pxUnblockedTCB );
 80037fe:	2c00      	cmp	r4, #0
{
 8003800:	d014      	beq.n	800382c <xTaskRemoveFromEventList+0x34>
	( void ) uxListRemove( &( pxUnblockedTCB->xEventListItem ) );
 8003802:	f104 0018 	add.w	r0, r4, #24
 8003806:	f7ff f8b3 	bl	8002970 <uxListRemove>
	if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
 800380a:	4d16      	ldr	r5, [pc, #88]	; (8003864 <xTaskRemoveFromEventList+0x6c>)
 800380c:	6ba8      	ldr	r0, [r5, #56]	; 0x38
 800380e:	b1a8      	cbz	r0, 800383c <xTaskRemoveFromEventList+0x44>
		vListInsertEnd( &( xPendingReadyList ), &( pxUnblockedTCB->xEventListItem ) );
 8003810:	f104 0118 	add.w	r1, r4, #24
 8003814:	4814      	ldr	r0, [pc, #80]	; (8003868 <xTaskRemoveFromEventList+0x70>)
 8003816:	f7ff f957 	bl	8002ac8 <vListInsertEnd>
	if( pxUnblockedTCB->uxPriority > pxCurrentTCB->uxPriority )
 800381a:	6ae0      	ldr	r0, [r4, #44]	; 0x2c
 800381c:	6829      	ldr	r1, [r5, #0]
 800381e:	6ac9      	ldr	r1, [r1, #44]	; 0x2c
 8003820:	4288      	cmp	r0, r1
 8003822:	d91c      	bls.n	800385e <xTaskRemoveFromEventList+0x66>
		xReturn = pdTRUE;
 8003824:	2001      	movs	r0, #1
		xYieldPending = pdTRUE;
 8003826:	2101      	movs	r1, #1
 8003828:	6269      	str	r1, [r5, #36]	; 0x24
}
 800382a:	bd70      	pop	{r4, r5, r6, pc}
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800382c:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 800382e:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003832:	f3bf 8f4f 	dsb	sy
		isb
 8003836:	f3bf 8f6f 	isb	sy
	configASSERT( pxUnblockedTCB );
 800383a:	e7fe      	b.n	800383a <xTaskRemoveFromEventList+0x42>
		( void ) uxListRemove( &( pxUnblockedTCB->xStateListItem ) );
 800383c:	1d20      	adds	r0, r4, #4
 800383e:	f7ff f897 	bl	8002970 <uxListRemove>
		prvAddTaskToReadyList( pxUnblockedTCB );
 8003842:	6ae0      	ldr	r0, [r4, #44]	; 0x2c
 8003844:	69a9      	ldr	r1, [r5, #24]
 8003846:	4288      	cmp	r0, r1
 8003848:	d900      	bls.n	800384c <xTaskRemoveFromEventList+0x54>
 800384a:	61a8      	str	r0, [r5, #24]
 800384c:	4907      	ldr	r1, [pc, #28]	; (800386c <xTaskRemoveFromEventList+0x74>)
 800384e:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 8003852:	eb01 0080 	add.w	r0, r1, r0, lsl #2
 8003856:	1d21      	adds	r1, r4, #4
 8003858:	f7ff f936 	bl	8002ac8 <vListInsertEnd>
 800385c:	e7dd      	b.n	800381a <xTaskRemoveFromEventList+0x22>
		xReturn = pdFALSE;
 800385e:	2000      	movs	r0, #0
}
 8003860:	bd70      	pop	{r4, r5, r6, pc}
 8003862:	0000      	.short	0x0000
 8003864:	20000028 	.word	0x20000028
 8003868:	20000a94 	.word	0x20000a94
 800386c:	2000060c 	.word	0x2000060c

08003870 <xTaskResumeAll>:
{
 8003870:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
TCB_t *pxTCB = NULL;
 8003874:	2400      	movs	r4, #0
BaseType_t xAlreadyYielded = pdFALSE;
 8003876:	2700      	movs	r7, #0
	configASSERT( uxSchedulerSuspended );
 8003878:	4d2d      	ldr	r5, [pc, #180]	; (8003930 <xTaskResumeAll+0xc0>)
 800387a:	6ba8      	ldr	r0, [r5, #56]	; 0x38
 800387c:	2800      	cmp	r0, #0
{
 800387e:	d007      	beq.n	8003890 <xTaskResumeAll+0x20>
	taskENTER_CRITICAL();
 8003880:	f7ff f92e 	bl	8002ae0 <vPortEnterCritical>
		--uxSchedulerSuspended;
 8003884:	6ba8      	ldr	r0, [r5, #56]	; 0x38
 8003886:	1e40      	subs	r0, r0, #1
 8003888:	63a8      	str	r0, [r5, #56]	; 0x38
		if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
 800388a:	6ba8      	ldr	r0, [r5, #56]	; 0x38
 800388c:	b140      	cbz	r0, 80038a0 <xTaskResumeAll+0x30>
 800388e:	e049      	b.n	8003924 <xTaskResumeAll+0xb4>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8003890:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003892:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003896:	f3bf 8f4f 	dsb	sy
		isb
 800389a:	f3bf 8f6f 	isb	sy
	configASSERT( uxSchedulerSuspended );
 800389e:	e7fe      	b.n	800389e <xTaskResumeAll+0x2e>
			if( uxCurrentNumberOfTasks > ( UBaseType_t ) 0U )
 80038a0:	6928      	ldr	r0, [r5, #16]
 80038a2:	2800      	cmp	r0, #0
 80038a4:	d03e      	beq.n	8003924 <xTaskResumeAll+0xb4>
				while( listLIST_IS_EMPTY( &xPendingReadyList ) == pdFALSE )
 80038a6:	4e23      	ldr	r6, [pc, #140]	; (8003934 <xTaskResumeAll+0xc4>)
 80038a8:	6830      	ldr	r0, [r6, #0]
						xYieldPending = pdTRUE;
 80038aa:	f04f 0801 	mov.w	r8, #1
				while( listLIST_IS_EMPTY( &xPendingReadyList ) == pdFALSE )
 80038ae:	b300      	cbz	r0, 80038f2 <xTaskResumeAll+0x82>
					prvAddTaskToReadyList( pxTCB );
 80038b0:	f5a6 6991 	sub.w	r9, r6, #1160	; 0x488
					pxTCB = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( ( &xPendingReadyList ) );
 80038b4:	68f0      	ldr	r0, [r6, #12]
 80038b6:	68c4      	ldr	r4, [r0, #12]
					( void ) uxListRemove( &( pxTCB->xEventListItem ) );
 80038b8:	f104 0018 	add.w	r0, r4, #24
 80038bc:	f7ff f858 	bl	8002970 <uxListRemove>
					( void ) uxListRemove( &( pxTCB->xStateListItem ) );
 80038c0:	1d20      	adds	r0, r4, #4
 80038c2:	f7ff f855 	bl	8002970 <uxListRemove>
					prvAddTaskToReadyList( pxTCB );
 80038c6:	6ae0      	ldr	r0, [r4, #44]	; 0x2c
 80038c8:	69a9      	ldr	r1, [r5, #24]
 80038ca:	4288      	cmp	r0, r1
 80038cc:	d900      	bls.n	80038d0 <xTaskResumeAll+0x60>
 80038ce:	61a8      	str	r0, [r5, #24]
 80038d0:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 80038d4:	eb09 0080 	add.w	r0, r9, r0, lsl #2
 80038d8:	1d21      	adds	r1, r4, #4
 80038da:	f7ff f8f5 	bl	8002ac8 <vListInsertEnd>
					if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
 80038de:	6ae0      	ldr	r0, [r4, #44]	; 0x2c
 80038e0:	6829      	ldr	r1, [r5, #0]
 80038e2:	6ac9      	ldr	r1, [r1, #44]	; 0x2c
 80038e4:	4288      	cmp	r0, r1
 80038e6:	d301      	bcc.n	80038ec <xTaskResumeAll+0x7c>
						xYieldPending = pdTRUE;
 80038e8:	f8c5 8024 	str.w	r8, [r5, #36]	; 0x24
				while( listLIST_IS_EMPTY( &xPendingReadyList ) == pdFALSE )
 80038ec:	6830      	ldr	r0, [r6, #0]
 80038ee:	2800      	cmp	r0, #0
 80038f0:	d1e0      	bne.n	80038b4 <xTaskResumeAll+0x44>
				if( pxTCB != NULL )
 80038f2:	b10c      	cbz	r4, 80038f8 <xTaskResumeAll+0x88>
					prvResetNextTaskUnblockTime();
 80038f4:	f7fe fed8 	bl	80026a8 <prvResetNextTaskUnblockTime>
					UBaseType_t uxPendedCounts = uxPendedTicks; /* Non-volatile copy. */
 80038f8:	6a2c      	ldr	r4, [r5, #32]
					if( uxPendedCounts > ( UBaseType_t ) 0U )
 80038fa:	b14c      	cbz	r4, 8003910 <xTaskResumeAll+0xa0>
							if( xTaskIncrementTick() != pdFALSE )
 80038fc:	f7ff fed6 	bl	80036ac <xTaskIncrementTick>
 8003900:	b108      	cbz	r0, 8003906 <xTaskResumeAll+0x96>
								xYieldPending = pdTRUE;
 8003902:	f8c5 8024 	str.w	r8, [r5, #36]	; 0x24
							--uxPendedCounts;
 8003906:	1e64      	subs	r4, r4, #1
						} while( uxPendedCounts > ( UBaseType_t ) 0U );
 8003908:	2c00      	cmp	r4, #0
 800390a:	d1f7      	bne.n	80038fc <xTaskResumeAll+0x8c>
						uxPendedTicks = 0;
 800390c:	2000      	movs	r0, #0
 800390e:	6228      	str	r0, [r5, #32]
				if( xYieldPending != pdFALSE )
 8003910:	6a68      	ldr	r0, [r5, #36]	; 0x24
 8003912:	b138      	cbz	r0, 8003924 <xTaskResumeAll+0xb4>
						xAlreadyYielded = pdTRUE;
 8003914:	2701      	movs	r7, #1
					taskYIELD_IF_USING_PREEMPTION();
 8003916:	4908      	ldr	r1, [pc, #32]	; (8003938 <xTaskResumeAll+0xc8>)
 8003918:	0738      	lsls	r0, r7, #28
 800391a:	6008      	str	r0, [r1, #0]
 800391c:	f3bf 8f4f 	dsb	sy
 8003920:	f3bf 8f6f 	isb	sy
	taskEXIT_CRITICAL();
 8003924:	f7ff f8fc 	bl	8002b20 <vPortExitCritical>
	return xAlreadyYielded;
 8003928:	4638      	mov	r0, r7
}
 800392a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800392e:	0000      	.short	0x0000
 8003930:	20000028 	.word	0x20000028
 8003934:	20000a94 	.word	0x20000a94
 8003938:	e000ed04 	.word	0xe000ed04

0800393c <xTimerCreateTimerTask>:
{
 800393c:	b530      	push	{r4, r5, lr}
 800393e:	b087      	sub	sp, #28
BaseType_t xReturn = pdFAIL;
 8003940:	2400      	movs	r4, #0
	prvCheckForValidListAndQueue();
 8003942:	f7fe fbb1 	bl	80020a8 <prvCheckForValidListAndQueue>
	if( xTimerQueue != NULL )
 8003946:	4d13      	ldr	r5, [pc, #76]	; (8003994 <xTimerCreateTimerTask+0x58>)
 8003948:	68a8      	ldr	r0, [r5, #8]
 800394a:	b1b0      	cbz	r0, 800397a <xTimerCreateTimerTask+0x3e>
			StaticTask_t *pxTimerTaskTCBBuffer = NULL;
 800394c:	2000      	movs	r0, #0
 800394e:	9006      	str	r0, [sp, #24]
			StackType_t *pxTimerTaskStackBuffer = NULL;
 8003950:	9005      	str	r0, [sp, #20]
			vApplicationGetTimerTaskMemory( &pxTimerTaskTCBBuffer, &pxTimerTaskStackBuffer, &ulTimerTaskStackSize );
 8003952:	aa04      	add	r2, sp, #16
 8003954:	a905      	add	r1, sp, #20
 8003956:	a806      	add	r0, sp, #24
 8003958:	f7ff f880 	bl	8002a5c <vApplicationGetTimerTaskMemory>
			xTimerTaskHandle = xTaskCreateStatic(	prvTimerTask,
 800395c:	9905      	ldr	r1, [sp, #20]
 800395e:	9806      	ldr	r0, [sp, #24]
 8003960:	2202      	movs	r2, #2
 8003962:	9200      	str	r2, [sp, #0]
 8003964:	9101      	str	r1, [sp, #4]
 8003966:	9002      	str	r0, [sp, #8]
 8003968:	2300      	movs	r3, #0
 800396a:	a10b      	add	r1, pc, #44	; (adr r1, 8003998 <xTimerCreateTimerTask+0x5c>)
 800396c:	480c      	ldr	r0, [pc, #48]	; (80039a0 <xTimerCreateTimerTask+0x64>)
 800396e:	9a04      	ldr	r2, [sp, #16]
 8003970:	f7ff fe58 	bl	8003624 <xTaskCreateStatic>
 8003974:	60e8      	str	r0, [r5, #12]
			if( xTimerTaskHandle != NULL )
 8003976:	b100      	cbz	r0, 800397a <xTimerCreateTimerTask+0x3e>
				xReturn = pdPASS;
 8003978:	2401      	movs	r4, #1
	configASSERT( xReturn );
 800397a:	b114      	cbz	r4, 8003982 <xTimerCreateTimerTask+0x46>
}
 800397c:	b007      	add	sp, #28
	return xReturn;
 800397e:	4620      	mov	r0, r4
}
 8003980:	bd30      	pop	{r4, r5, pc}
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8003982:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003984:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003988:	f3bf 8f4f 	dsb	sy
		isb
 800398c:	f3bf 8f6f 	isb	sy
	configASSERT( xReturn );
 8003990:	e7fe      	b.n	8003990 <xTimerCreateTimerTask+0x54>
 8003992:	0000      	.short	0x0000
 8003994:	2000006c 	.word	0x2000006c
 8003998:	20726d54 	.word	0x20726d54
 800399c:	00637653 	.word	0x00637653
 80039a0:	080027b5 	.word	0x080027b5

080039a4 <xTimerGenericCommand>:
{
 80039a4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80039a6:	b085      	sub	sp, #20
 80039a8:	4684      	mov	ip, r0
 80039aa:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 80039ac:	4616      	mov	r6, r2
 80039ae:	461f      	mov	r7, r3
BaseType_t xReturn = pdFAIL;
 80039b0:	2200      	movs	r2, #0
	configASSERT( xTimer );
 80039b2:	f1bc 0f00 	cmp.w	ip, #0
{
 80039b6:	d014      	beq.n	80039e2 <xTimerGenericCommand+0x3e>
	if( xTimerQueue != NULL )
 80039b8:	4c16      	ldr	r4, [pc, #88]	; (8003a14 <xTimerGenericCommand+0x70>)
 80039ba:	68a0      	ldr	r0, [r4, #8]
 80039bc:	b300      	cbz	r0, 8003a00 <xTimerGenericCommand+0x5c>
		xMessage.xMessageID = xCommandID;
 80039be:	9100      	str	r1, [sp, #0]
		xMessage.u.xTimerParameters.xMessageValue = xOptionalValue;
 80039c0:	9601      	str	r6, [sp, #4]
		xMessage.u.xTimerParameters.pxTimer = ( Timer_t * ) xTimer;
 80039c2:	f8cd c008 	str.w	ip, [sp, #8]
		if( xCommandID < tmrFIRST_FROM_ISR_COMMAND )
 80039c6:	2906      	cmp	r1, #6
 80039c8:	da1b      	bge.n	8003a02 <xTimerGenericCommand+0x5e>
			if( xTaskGetSchedulerState() == taskSCHEDULER_RUNNING )
 80039ca:	f7ff fe5b 	bl	8003684 <xTaskGetSchedulerState>
 80039ce:	2802      	cmp	r0, #2
 80039d0:	d00f      	beq.n	80039f2 <xTimerGenericCommand+0x4e>
				xReturn = xQueueSendToBack( xTimerQueue, &xMessage, tmrNO_DELAY );
 80039d2:	2300      	movs	r3, #0
 80039d4:	461a      	mov	r2, r3
 80039d6:	4669      	mov	r1, sp
 80039d8:	68a0      	ldr	r0, [r4, #8]
 80039da:	f7ff fbf3 	bl	80031c4 <xQueueGenericSend>
 80039de:	4602      	mov	r2, r0
 80039e0:	e015      	b.n	8003a0e <xTimerGenericCommand+0x6a>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 80039e2:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 80039e4:	f380 8811 	msr	BASEPRI, r0
		dsb
 80039e8:	f3bf 8f4f 	dsb	sy
		isb
 80039ec:	f3bf 8f6f 	isb	sy
	configASSERT( xTimer );
 80039f0:	e7fe      	b.n	80039f0 <xTimerGenericCommand+0x4c>
				xReturn = xQueueSendToBack( xTimerQueue, &xMessage, xTicksToWait );
 80039f2:	2300      	movs	r3, #0
 80039f4:	462a      	mov	r2, r5
 80039f6:	4669      	mov	r1, sp
 80039f8:	68a0      	ldr	r0, [r4, #8]
 80039fa:	f7ff fbe3 	bl	80031c4 <xQueueGenericSend>
 80039fe:	4602      	mov	r2, r0
 8003a00:	e005      	b.n	8003a0e <xTimerGenericCommand+0x6a>
			xReturn = xQueueSendToBackFromISR( xTimerQueue, &xMessage, pxHigherPriorityTaskWoken );
 8003a02:	2300      	movs	r3, #0
 8003a04:	463a      	mov	r2, r7
 8003a06:	4669      	mov	r1, sp
 8003a08:	f7ff fc94 	bl	8003334 <xQueueGenericSendFromISR>
 8003a0c:	4602      	mov	r2, r0
}
 8003a0e:	b005      	add	sp, #20
	return xReturn;
 8003a10:	4610      	mov	r0, r2
}
 8003a12:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8003a14:	2000006c 	.word	0x2000006c

08003a18 <g_pcHex>:
 8003a18:	08003ab4                                .:..

08003a1c <defaultTask_attributes>:
 8003a1c:	08003ae0 00000000 00000000 00000000     .:..............
 8003a2c:	00000000 00000200 00000028 00000000     ........(.......
 8003a3c:	00000000                                ....

08003a40 <mylogTask_attributes>:
 8003a40:	08003ad4 00000000 00000000 00000000     .:..............
 8003a50:	00000000 00000200 00000008 00000000     ................
 8003a60:	00000000                                ....

08003a64 <myTask03_attributes>:
 8003a64:	08003ac8 00000000 00000000 00000000     .:..............
 8003a74:	00000000 00000200 00000009 00000000     ................
 8003a84:	00000000                                ....

08003a88 <aPredivFactorTable>:
 8003a88:	                                         ..

08003a8a <aPLLMULFactorTable>:
 8003a8a:	05040302 09080706 0d0c0b0a 10100f0e     ................

08003a9a <AHBPrescTable>:
	...
 8003aa2:	04030201 09080706                       ........

08003aaa <APBPrescTable>:
 8003aaa:	00000000 04030201 31300000 35343332     ..........012345
 8003aba:	39383736 64636261 00006665 796d0000     6789abcdef....my
 8003aca:	6b736154 00003330 796d0000 54676f6c     Task03....mylogT
 8003ada:	006b7361 65640000 6c756166 73615474     ask...defaultTas
 8003aea:	                                         k.

08003aec <Region$$Table$$Base>:
 8003aec:	08003b0c 	.word	0x08003b0c
 8003af0:	20000000 	.word	0x20000000
 8003af4:	000000a8 	.word	0x000000a8
 8003af8:	08000128 	.word	0x08000128
 8003afc:	08003bb4 	.word	0x08003bb4
 8003b00:	200000a8 	.word	0x200000a8
 8003b04:	00002460 	.word	0x00002460
 8003b08:	08000144 	.word	0x08000144
