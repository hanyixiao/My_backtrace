
.\My_LED_Pro.axf:     file format elf32-littlearm


Disassembly of section ER_IROM1:

08000000 <__Vectors>:
 8000000:	08 25 00 20 29 02 00 08 75 17 00 08 71 17 00 08     .%. )...u...q...
 8000010:	73 17 00 08 ef 06 00 08 e5 1c 00 08 00 00 00 00     s...............
	...
 800002c:	91 01 00 08 f1 06 00 08 00 00 00 00 d5 01 00 08     ................
 800003c:	9f 17 00 08 43 02 00 08 43 02 00 08 43 02 00 08     ....C...C...C...
 800004c:	43 02 00 08 43 02 00 08 43 02 00 08 43 02 00 08     C...C...C...C...
 800005c:	43 02 00 08 43 02 00 08 43 02 00 08 43 02 00 08     C...C...C...C...
 800006c:	43 02 00 08 43 02 00 08 43 02 00 08 43 02 00 08     C...C...C...C...
 800007c:	43 02 00 08 43 02 00 08 43 02 00 08 43 02 00 08     C...C...C...C...
 800008c:	43 02 00 08 43 02 00 08 43 02 00 08 43 02 00 08     C...C...C...C...
 800009c:	43 02 00 08 43 02 00 08 43 02 00 08 43 02 00 08     C...C...C...C...
 80000ac:	43 02 00 08 b9 17 00 08 c5 17 00 08 43 02 00 08     C...........C...
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
 8000120:	00003c50 	.word	0x00003c50
 8000124:	00003c70 	.word	0x00003c70

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
 800017c:	f001 fe72 	bl	8001e64 <main>
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
 80001f8:	f002 fff2 	bl	80031e0 <vTaskSwitchContext>
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
 8000250:	080017b7 	.word	0x080017b7
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
  *         the configuration information for the specified GPIO peripheral.
  * @retval None
  */
void HAL_GPIO_Init(GPIO_TypeDef  *GPIOx, GPIO_InitTypeDef *GPIO_Init)
{
  uint32_t position = 0x00u;
 80006f4:	2300      	movs	r3, #0
  assert_param(IS_GPIO_ALL_INSTANCE(GPIOx));
  assert_param(IS_GPIO_PIN(GPIO_Init->Pin));
  assert_param(IS_GPIO_MODE(GPIO_Init->Mode));

  /* Configure the port pins */
  while (((GPIO_Init->Pin) >> position) != 0x00u)
 80006f6:	680a      	ldr	r2, [r1, #0]
  uint32_t config = 0x00u;
 80006f8:	469c      	mov	ip, r3
  while (((GPIO_Init->Pin) >> position) != 0x00u)
 80006fa:	2a00      	cmp	r2, #0
      }
    }

	position++;
  }
}
 80006fc:	bf08      	it	eq
 80006fe:	4770      	bxeq	lr
{
 8000700:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
          SET_BIT(EXTI->RTSR, iocurrent);
 8000704:	4e70      	ldr	r6, [pc, #448]	; (80008c8 <HAL_GPIO_Init+0x1d4>)
      switch (GPIO_Init->Mode)
 8000706:	f8df 91bc 	ldr.w	r9, [pc, #444]	; 80008c4 <HAL_GPIO_Init+0x1d0>
    ioposition = (0x01uL << position);
 800070a:	f04f 0801 	mov.w	r8, #1
      MODIFY_REG((*configregister), ((GPIO_CRL_MODE0 | GPIO_CRL_CNF0) << registeroffset), (config << registeroffset));
 800070e:	270f      	movs	r7, #15
          SET_BIT(EXTI->FTSR, iocurrent);
 8000710:	f106 0e04 	add.w	lr, r6, #4
    iocurrent = (uint32_t)(GPIO_Init->Pin) & ioposition;
 8000714:	680a      	ldr	r2, [r1, #0]
    ioposition = (0x01uL << position);
 8000716:	fa08 f403 	lsl.w	r4, r8, r3
    iocurrent = (uint32_t)(GPIO_Init->Pin) & ioposition;
 800071a:	4022      	ands	r2, r4
    if (iocurrent == ioposition)
 800071c:	42a2      	cmp	r2, r4
 800071e:	d17d      	bne.n	800081c <HAL_GPIO_Init+0x128>
      switch (GPIO_Init->Mode)
 8000720:	684d      	ldr	r5, [r1, #4]
 8000722:	f1a5 5a80 	sub.w	sl, r5, #268435456	; 0x10000000
 8000726:	f5aa 1a88 	sub.w	sl, sl, #1114112	; 0x110000
 800072a:	454d      	cmp	r5, r9
 800072c:	d077      	beq.n	800081e <HAL_GPIO_Init+0x12a>
 800072e:	dc77      	bgt.n	8000820 <HAL_GPIO_Init+0x12c>
 8000730:	2d03      	cmp	r5, #3
          config = GPIO_CR_MODE_INPUT + GPIO_CR_CNF_ANALOG;
 8000732:	bf08      	it	eq
 8000734:	f04f 0c00 	moveq.w	ip, #0
      switch (GPIO_Init->Mode)
 8000738:	d01b      	beq.n	8000772 <HAL_GPIO_Init+0x7e>
 800073a:	dc0d      	bgt.n	8000758 <HAL_GPIO_Init+0x64>
 800073c:	2d00      	cmp	r5, #0
 800073e:	d06e      	beq.n	800081e <HAL_GPIO_Init+0x12a>
 8000740:	2d01      	cmp	r5, #1
          config = GPIO_Init->Speed + GPIO_CR_CNF_GP_OUTPUT_PP;
 8000742:	bf08      	it	eq
 8000744:	f8d1 c00c 	ldreq.w	ip, [r1, #12]
      switch (GPIO_Init->Mode)
 8000748:	d013      	beq.n	8000772 <HAL_GPIO_Init+0x7e>
 800074a:	2d02      	cmp	r5, #2
          config = GPIO_Init->Speed + GPIO_CR_CNF_AF_OUTPUT_PP;
 800074c:	bf04      	itt	eq
 800074e:	f8d1 c00c 	ldreq.w	ip, [r1, #12]
 8000752:	f10c 0c08 	addeq.w	ip, ip, #8
      switch (GPIO_Init->Mode)
 8000756:	e00c      	b.n	8000772 <HAL_GPIO_Init+0x7e>
 8000758:	2d11      	cmp	r5, #17
          config = GPIO_Init->Speed + GPIO_CR_CNF_GP_OUTPUT_OD;
 800075a:	bf04      	itt	eq
 800075c:	f8d1 c00c 	ldreq.w	ip, [r1, #12]
 8000760:	f10c 0c04 	addeq.w	ip, ip, #4
      switch (GPIO_Init->Mode)
 8000764:	d005      	beq.n	8000772 <HAL_GPIO_Init+0x7e>
 8000766:	2d12      	cmp	r5, #18
          config = GPIO_Init->Speed + GPIO_CR_CNF_AF_OUTPUT_OD;
 8000768:	bf04      	itt	eq
 800076a:	f8d1 c00c 	ldreq.w	ip, [r1, #12]
 800076e:	f10c 0c0c 	addeq.w	ip, ip, #12
      configregister = (iocurrent < GPIO_PIN_8) ? &GPIOx->CRL     : &GPIOx->CRH;
 8000772:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 8000776:	bf34      	ite	cc
 8000778:	4605      	movcc	r5, r0
 800077a:	1d05      	addcs	r5, r0, #4
 800077c:	ea4f 0483 	mov.w	r4, r3, lsl #2
 8000780:	bf28      	it	cs
 8000782:	3c20      	subcs	r4, #32
      MODIFY_REG((*configregister), ((GPIO_CRL_MODE0 | GPIO_CRL_CNF0) << registeroffset), (config << registeroffset));
 8000784:	f8d5 a000 	ldr.w	sl, [r5]
 8000788:	fa07 fb04 	lsl.w	fp, r7, r4
 800078c:	ea2a 0a0b 	bic.w	sl, sl, fp
 8000790:	fa0c f404 	lsl.w	r4, ip, r4
 8000794:	ea4a 0404 	orr.w	r4, sl, r4
 8000798:	602c      	str	r4, [r5, #0]
      if ((GPIO_Init->Mode & EXTI_MODE) == EXTI_MODE)
 800079a:	684c      	ldr	r4, [r1, #4]
 800079c:	f014 5f80 	tst.w	r4, #268435456	; 0x10000000
 80007a0:	d064      	beq.n	800086c <HAL_GPIO_Init+0x178>
        __HAL_RCC_AFIO_CLK_ENABLE();
 80007a2:	4c4a      	ldr	r4, [pc, #296]	; (80008cc <HAL_GPIO_Init+0x1d8>)
 80007a4:	69a5      	ldr	r5, [r4, #24]
 80007a6:	f045 0501 	orr.w	r5, r5, #1
 80007aa:	61a5      	str	r5, [r4, #24]
 80007ac:	69a4      	ldr	r4, [r4, #24]
 80007ae:	f004 0401 	and.w	r4, r4, #1
        temp = AFIO->EXTICR[position >> 2u];
 80007b2:	9400      	str	r4, [sp, #0]
 80007b4:	f023 0403 	bic.w	r4, r3, #3
 80007b8:	f104 4580 	add.w	r5, r4, #1073741824	; 0x40000000
 80007bc:	f505 3580 	add.w	r5, r5, #65536	; 0x10000
 80007c0:	f8d5 a008 	ldr.w	sl, [r5, #8]
        CLEAR_BIT(temp, (0x0Fu) << (4u * (position & 0x03u)));
 80007c4:	ea4f 7483 	mov.w	r4, r3, lsl #30
 80007c8:	ea4f 7414 	mov.w	r4, r4, lsr #28
 80007cc:	fa07 fb04 	lsl.w	fp, r7, r4
 80007d0:	ea2a 0a0b 	bic.w	sl, sl, fp
        SET_BIT(temp, (GPIO_GET_INDEX(GPIOx)) << (4u * (position & 0x03u)));
 80007d4:	f1a0 4b80 	sub.w	fp, r0, #1073741824	; 0x40000000
 80007d8:	f5bb 3b84 	subs.w	fp, fp, #67584	; 0x10800
 80007dc:	d018      	beq.n	8000810 <HAL_GPIO_Init+0x11c>
 80007de:	f1a0 4b80 	sub.w	fp, r0, #1073741824	; 0x40000000
 80007e2:	f5bb 3b86 	subs.w	fp, fp, #68608	; 0x10c00
 80007e6:	bf08      	it	eq
 80007e8:	f04f 0b01 	moveq.w	fp, #1
 80007ec:	d010      	beq.n	8000810 <HAL_GPIO_Init+0x11c>
 80007ee:	f1a0 4b80 	sub.w	fp, r0, #1073741824	; 0x40000000
 80007f2:	f5bb 3b88 	subs.w	fp, fp, #69632	; 0x11000
 80007f6:	bf08      	it	eq
 80007f8:	f04f 0b02 	moveq.w	fp, #2
 80007fc:	d008      	beq.n	8000810 <HAL_GPIO_Init+0x11c>
 80007fe:	f1a0 4b80 	sub.w	fp, r0, #1073741824	; 0x40000000
 8000802:	f5bb 3b8a 	subs.w	fp, fp, #70656	; 0x11400
 8000806:	bf0c      	ite	eq
 8000808:	f04f 0b03 	moveq.w	fp, #3
 800080c:	f04f 0b04 	movne.w	fp, #4
 8000810:	fa0b f404 	lsl.w	r4, fp, r4
 8000814:	ea44 040a 	orr.w	r4, r4, sl
        AFIO->EXTICR[position >> 2u] = temp;
 8000818:	60ac      	str	r4, [r5, #8]
        if ((GPIO_Init->Mode & RISING_EDGE) == RISING_EDGE)
 800081a:	e002      	b.n	8000822 <HAL_GPIO_Init+0x12e>
 800081c:	e026      	b.n	800086c <HAL_GPIO_Init+0x178>
 800081e:	e03f      	b.n	80008a0 <HAL_GPIO_Init+0x1ac>
 8000820:	e02b      	b.n	800087a <HAL_GPIO_Init+0x186>
 8000822:	684c      	ldr	r4, [r1, #4]
 8000824:	f414 1f80 	tst.w	r4, #1048576	; 0x100000
          CLEAR_BIT(EXTI->RTSR, iocurrent);
 8000828:	6834      	ldr	r4, [r6, #0]
          SET_BIT(EXTI->RTSR, iocurrent);
 800082a:	bf14      	ite	ne
 800082c:	4314      	orrne	r4, r2
          CLEAR_BIT(EXTI->RTSR, iocurrent);
 800082e:	4394      	biceq	r4, r2
 8000830:	6034      	str	r4, [r6, #0]
        if ((GPIO_Init->Mode & FALLING_EDGE) == FALLING_EDGE)
 8000832:	684c      	ldr	r4, [r1, #4]
 8000834:	f414 1f00 	tst.w	r4, #2097152	; 0x200000
          CLEAR_BIT(EXTI->FTSR, iocurrent);
 8000838:	f8de 4000 	ldr.w	r4, [lr]
          SET_BIT(EXTI->FTSR, iocurrent);
 800083c:	bf14      	ite	ne
 800083e:	4314      	orrne	r4, r2
          CLEAR_BIT(EXTI->FTSR, iocurrent);
 8000840:	4394      	biceq	r4, r2
 8000842:	f8ce 4000 	str.w	r4, [lr]
        if ((GPIO_Init->Mode & GPIO_MODE_EVT) == GPIO_MODE_EVT)
 8000846:	684c      	ldr	r4, [r1, #4]
 8000848:	f414 3f00 	tst.w	r4, #131072	; 0x20000
          CLEAR_BIT(EXTI->EMR, iocurrent);
 800084c:	4c20      	ldr	r4, [pc, #128]	; (80008d0 <HAL_GPIO_Init+0x1dc>)
 800084e:	6825      	ldr	r5, [r4, #0]
          SET_BIT(EXTI->EMR, iocurrent);
 8000850:	bf14      	ite	ne
 8000852:	4315      	orrne	r5, r2
          CLEAR_BIT(EXTI->EMR, iocurrent);
 8000854:	4395      	biceq	r5, r2
 8000856:	6025      	str	r5, [r4, #0]
        if ((GPIO_Init->Mode & GPIO_MODE_IT) == GPIO_MODE_IT)
 8000858:	684c      	ldr	r4, [r1, #4]
 800085a:	f414 3f80 	tst.w	r4, #65536	; 0x10000
          CLEAR_BIT(EXTI->IMR, iocurrent);
 800085e:	4c1d      	ldr	r4, [pc, #116]	; (80008d4 <HAL_GPIO_Init+0x1e0>)
 8000860:	6825      	ldr	r5, [r4, #0]
          SET_BIT(EXTI->IMR, iocurrent);
 8000862:	bf14      	ite	ne
 8000864:	432a      	orrne	r2, r5
          CLEAR_BIT(EXTI->IMR, iocurrent);
 8000866:	ea25 0202 	biceq.w	r2, r5, r2
          SET_BIT(EXTI->IMR, iocurrent);
 800086a:	6022      	str	r2, [r4, #0]
	position++;
 800086c:	680a      	ldr	r2, [r1, #0]
 800086e:	1c5b      	adds	r3, r3, #1
 8000870:	40da      	lsrs	r2, r3
 8000872:	f47f af4f 	bne.w	8000714 <HAL_GPIO_Init+0x20>
}
 8000876:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
      switch (GPIO_Init->Mode)
 800087a:	f5ba 1f88 	cmp.w	sl, #1114112	; 0x110000
 800087e:	d00f      	beq.n	80008a0 <HAL_GPIO_Init+0x1ac>
 8000880:	dc07      	bgt.n	8000892 <HAL_GPIO_Init+0x19e>
 8000882:	f5ba 3f80 	cmp.w	sl, #65536	; 0x10000
 8000886:	bf18      	it	ne
 8000888:	f5ba 1f80 	cmpne.w	sl, #1048576	; 0x100000
 800088c:	f47f af71 	bne.w	8000772 <HAL_GPIO_Init+0x7e>
 8000890:	e006      	b.n	80008a0 <HAL_GPIO_Init+0x1ac>
 8000892:	f5ba 1f00 	cmp.w	sl, #2097152	; 0x200000
 8000896:	bf18      	it	ne
 8000898:	f5ba 1f04 	cmpne.w	sl, #2162688	; 0x210000
 800089c:	f47f af69 	bne.w	8000772 <HAL_GPIO_Init+0x7e>
          if (GPIO_Init->Pull == GPIO_NOPULL)
 80008a0:	f8d1 c008 	ldr.w	ip, [r1, #8]
 80008a4:	f1bc 0f00 	cmp.w	ip, #0
            config = GPIO_CR_MODE_INPUT + GPIO_CR_CNF_INPUT_FLOATING;
 80008a8:	bf08      	it	eq
 80008aa:	f04f 0c04 	moveq.w	ip, #4
          if (GPIO_Init->Pull == GPIO_NOPULL)
 80008ae:	f43f af60 	beq.w	8000772 <HAL_GPIO_Init+0x7e>
          else if (GPIO_Init->Pull == GPIO_PULLUP)
 80008b2:	f1bc 0f01 	cmp.w	ip, #1
            config = GPIO_CR_MODE_INPUT + GPIO_CR_CNF_INPUT_PU_PD;
 80008b6:	f04f 0c08 	mov.w	ip, #8
            GPIOx->BSRR = ioposition;
 80008ba:	bf0c      	ite	eq
 80008bc:	6104      	streq	r4, [r0, #16]
            GPIOx->BRR = ioposition;
 80008be:	6144      	strne	r4, [r0, #20]
          else if (GPIO_Init->Pull == GPIO_PULLUP)
 80008c0:	e757      	b.n	8000772 <HAL_GPIO_Init+0x7e>
 80008c2:	0000      	.short	0x0000
 80008c4:	10110000 	.word	0x10110000
 80008c8:	40010408 	.word	0x40010408
 80008cc:	40021000 	.word	0x40021000
 80008d0:	40010404 	.word	0x40010404
 80008d4:	40010400 	.word	0x40010400

080008d8 <HAL_GPIO_WritePin>:
{
  /* Check the parameters */
  assert_param(IS_GPIO_PIN(GPIO_Pin));
  assert_param(IS_GPIO_PIN_ACTION(PinState));

  if (PinState != GPIO_PIN_RESET)
 80008d8:	2a00      	cmp	r2, #0
  {
    GPIOx->BSRR = GPIO_Pin;
  }
  else
  {
    GPIOx->BSRR = (uint32_t)GPIO_Pin << 16u;
 80008da:	bf08      	it	eq
 80008dc:	0409      	lsleq	r1, r1, #16
 80008de:	6101      	str	r1, [r0, #16]
  }
}
 80008e0:	4770      	bx	lr
	...

080008e4 <HAL_GetTick>:
  *       implementations in user file.
  * @retval tick value
  */
__weak uint32_t HAL_GetTick(void)
{
  return uwTick;
 80008e4:	4801      	ldr	r0, [pc, #4]	; (80008ec <HAL_GetTick+0x8>)
 80008e6:	6880      	ldr	r0, [r0, #8]
}
 80008e8:	4770      	bx	lr
 80008ea:	0000      	.short	0x0000
 80008ec:	20000018 	.word	0x20000018

080008f0 <HAL_IncTick>:
  uwTick += uwTickFreq;
 80008f0:	4802      	ldr	r0, [pc, #8]	; (80008fc <HAL_IncTick+0xc>)
 80008f2:	6881      	ldr	r1, [r0, #8]
 80008f4:	7802      	ldrb	r2, [r0, #0]
 80008f6:	4411      	add	r1, r2
 80008f8:	6081      	str	r1, [r0, #8]
}
 80008fa:	4770      	bx	lr
 80008fc:	20000018 	.word	0x20000018

08000900 <HAL_Init>:
  __HAL_FLASH_PREFETCH_BUFFER_ENABLE();
 8000900:	4807      	ldr	r0, [pc, #28]	; (8000920 <HAL_Init+0x20>)
{
 8000902:	b510      	push	{r4, lr}
  __HAL_FLASH_PREFETCH_BUFFER_ENABLE();
 8000904:	6801      	ldr	r1, [r0, #0]
 8000906:	f041 0110 	orr.w	r1, r1, #16
 800090a:	6001      	str	r1, [r0, #0]
  HAL_NVIC_SetPriorityGrouping(NVIC_PRIORITYGROUP_4);
 800090c:	2003      	movs	r0, #3
 800090e:	f000 f88f 	bl	8000a30 <HAL_NVIC_SetPriorityGrouping>
  HAL_InitTick(TICK_INT_PRIORITY);
 8000912:	200f      	movs	r0, #15
 8000914:	f000 f806 	bl	8000924 <HAL_InitTick>
  HAL_MspInit();
 8000918:	f000 f824 	bl	8000964 <HAL_MspInit>
  return HAL_OK;
 800091c:	2000      	movs	r0, #0
}
 800091e:	bd10      	pop	{r4, pc}
 8000920:	40022000 	.word	0x40022000

08000924 <HAL_InitTick>:
{
 8000924:	b570      	push	{r4, r5, r6, lr}
  if (HAL_SYSTICK_Config(SystemCoreClock / (1000U / uwTickFreq)) > 0U)
 8000926:	4d0d      	ldr	r5, [pc, #52]	; (800095c <HAL_InitTick+0x38>)
{
 8000928:	4604      	mov	r4, r0
  if (HAL_SYSTICK_Config(SystemCoreClock / (1000U / uwTickFreq)) > 0U)
 800092a:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
 800092e:	7828      	ldrb	r0, [r5, #0]
 8000930:	fbb1 f0f0 	udiv	r0, r1, r0
 8000934:	490a      	ldr	r1, [pc, #40]	; (8000960 <HAL_InitTick+0x3c>)
 8000936:	6809      	ldr	r1, [r1, #0]
 8000938:	fbb1 f0f0 	udiv	r0, r1, r0
 800093c:	f000 fb64 	bl	8001008 <HAL_SYSTICK_Config>
 8000940:	b948      	cbnz	r0, 8000956 <HAL_InitTick+0x32>
  if (TickPriority < (1UL << __NVIC_PRIO_BITS))
 8000942:	2c10      	cmp	r4, #16
 8000944:	d207      	bcs.n	8000956 <HAL_InitTick+0x32>
    HAL_NVIC_SetPriority(SysTick_IRQn, TickPriority, 0U);
 8000946:	2200      	movs	r2, #0
 8000948:	4621      	mov	r1, r4
 800094a:	1e50      	subs	r0, r2, #1
 800094c:	f000 f83e 	bl	80009cc <HAL_NVIC_SetPriority>
  return HAL_OK;
 8000950:	2000      	movs	r0, #0
    uwTickPrio = TickPriority;
 8000952:	606c      	str	r4, [r5, #4]
}
 8000954:	bd70      	pop	{r4, r5, r6, pc}
    return HAL_ERROR;
 8000956:	2001      	movs	r0, #1
}
 8000958:	bd70      	pop	{r4, r5, r6, pc}
 800095a:	0000      	.short	0x0000
 800095c:	20000018 	.word	0x20000018
 8000960:	20000024 	.word	0x20000024

08000964 <HAL_MspInit>:
{
  /* USER CODE BEGIN MspInit 0 */

  /* USER CODE END MspInit 0 */

  __HAL_RCC_AFIO_CLK_ENABLE();
 8000964:	480f      	ldr	r0, [pc, #60]	; (80009a4 <HAL_MspInit+0x40>)
{
 8000966:	b508      	push	{r3, lr}
  __HAL_RCC_AFIO_CLK_ENABLE();
 8000968:	6981      	ldr	r1, [r0, #24]
 800096a:	f041 0101 	orr.w	r1, r1, #1
 800096e:	6181      	str	r1, [r0, #24]
 8000970:	6981      	ldr	r1, [r0, #24]
 8000972:	f001 0101 	and.w	r1, r1, #1
  __HAL_RCC_PWR_CLK_ENABLE();
 8000976:	9100      	str	r1, [sp, #0]
 8000978:	69c1      	ldr	r1, [r0, #28]
 800097a:	f041 5180 	orr.w	r1, r1, #268435456	; 0x10000000
 800097e:	61c1      	str	r1, [r0, #28]
 8000980:	69c0      	ldr	r0, [r0, #28]

  /* System interrupt init*/
  /* PendSV_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(PendSV_IRQn, 15, 0);
 8000982:	2200      	movs	r2, #0
  __HAL_RCC_PWR_CLK_ENABLE();
 8000984:	f000 5080 	and.w	r0, r0, #268435456	; 0x10000000
  HAL_NVIC_SetPriority(PendSV_IRQn, 15, 0);
 8000988:	9000      	str	r0, [sp, #0]
 800098a:	210f      	movs	r1, #15
 800098c:	1e90      	subs	r0, r2, #2
 800098e:	f000 f81d 	bl	80009cc <HAL_NVIC_SetPriority>

  /** NOJTAG: JTAG-DP Disabled and SW-DP Enabled
  */
  __HAL_AFIO_REMAP_SWJ_NOJTAG();
 8000992:	4805      	ldr	r0, [pc, #20]	; (80009a8 <HAL_MspInit+0x44>)
 8000994:	6841      	ldr	r1, [r0, #4]
 8000996:	f021 61e0 	bic.w	r1, r1, #117440512	; 0x7000000
 800099a:	f041 7100 	orr.w	r1, r1, #33554432	; 0x2000000
 800099e:	6041      	str	r1, [r0, #4]

  /* USER CODE BEGIN MspInit 1 */

  /* USER CODE END MspInit 1 */
}
 80009a0:	bd08      	pop	{r3, pc}
 80009a2:	0000      	.short	0x0000
 80009a4:	40021000 	.word	0x40021000
 80009a8:	40010000 	.word	0x40010000

080009ac <HAL_NVIC_EnableIRQ>:
  \param [in]      IRQn  Device specific interrupt number.
  \note    IRQn must not be negative.
 */
__STATIC_INLINE void __NVIC_EnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
 80009ac:	2800      	cmp	r0, #0
  /* Check the parameters */
  assert_param(IS_NVIC_DEVICE_IRQ(IRQn));

  /* Enable interrupt */
  NVIC_EnableIRQ(IRQn);
}
 80009ae:	bfb8      	it	lt
 80009b0:	4770      	bxlt	lr
  {
    NVIC->ISER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
 80009b2:	f000 011f 	and.w	r1, r0, #31
 80009b6:	2201      	movs	r2, #1
 80009b8:	fa02 f101 	lsl.w	r1, r2, r1
 80009bc:	0940      	lsrs	r0, r0, #5
 80009be:	0080      	lsls	r0, r0, #2
 80009c0:	f100 20e0 	add.w	r0, r0, #3758153728	; 0xe000e000
 80009c4:	f8c0 1100 	str.w	r1, [r0, #256]	; 0x100
 80009c8:	4770      	bx	lr
	...

080009cc <HAL_NVIC_SetPriority>:
  return ((uint32_t)((SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) >> SCB_AIRCR_PRIGROUP_Pos));
 80009cc:	4b17      	ldr	r3, [pc, #92]	; (8000a2c <HAL_NVIC_SetPriority+0x60>)
{ 
 80009ce:	b410      	push	{r4}
 80009d0:	681b      	ldr	r3, [r3, #0]
 80009d2:	f3c3 2302 	ubfx	r3, r3, #8, #3
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);   /* only values 0..7 are used          */
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(__NVIC_PRIO_BITS)) ? (uint32_t)(__NVIC_PRIO_BITS) : (uint32_t)(7UL - PriorityGroupTmp);
 80009d6:	f1c3 0c07 	rsb	ip, r3, #7
 80009da:	f1bc 0f04 	cmp.w	ip, #4
 80009de:	bf88      	it	hi
 80009e0:	f04f 0c04 	movhi.w	ip, #4
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(__NVIC_PRIO_BITS)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(__NVIC_PRIO_BITS));
 80009e4:	1d1c      	adds	r4, r3, #4
 80009e6:	2c07      	cmp	r4, #7
 80009e8:	bf34      	ite	cc
 80009ea:	2300      	movcc	r3, #0
 80009ec:	1edb      	subcs	r3, r3, #3

  return (
 80009ee:	2401      	movs	r4, #1
 80009f0:	fa04 fc0c 	lsl.w	ip, r4, ip
 80009f4:	f1ac 0c01 	sub.w	ip, ip, #1
 80009f8:	ea0c 0101 	and.w	r1, ip, r1
 80009fc:	4099      	lsls	r1, r3
 80009fe:	fa04 f303 	lsl.w	r3, r4, r3
 8000a02:	1e5b      	subs	r3, r3, #1
 8000a04:	401a      	ands	r2, r3
 8000a06:	4311      	orrs	r1, r2
  if ((int32_t)(IRQn) >= 0)
 8000a08:	2800      	cmp	r0, #0
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 8000a0a:	ea4f 1101 	mov.w	r1, r1, lsl #4
 8000a0e:	bfa1      	itttt	ge
 8000a10:	f100 20e0 	addge.w	r0, r0, #3758153728	; 0xe000e000
    NVIC->IP[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 8000a14:	f880 1400 	strbge.w	r1, [r0, #1024]	; 0x400
}
 8000a18:	bc10      	popge	{r4}
 8000a1a:	4770      	bxge	lr
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 8000a1c:	f000 000f 	and.w	r0, r0, #15
 8000a20:	f100 20e0 	add.w	r0, r0, #3758153728	; 0xe000e000
 8000a24:	f880 1d14 	strb.w	r1, [r0, #3348]	; 0xd14
 8000a28:	bc10      	pop	{r4}
 8000a2a:	4770      	bx	lr
 8000a2c:	e000ed0c 	.word	0xe000ed0c

08000a30 <HAL_NVIC_SetPriorityGrouping>:
  reg_value  =  SCB->AIRCR;                                                   /* read old register configuration    */
 8000a30:	4907      	ldr	r1, [pc, #28]	; (8000a50 <HAL_NVIC_SetPriorityGrouping+0x20>)
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);             /* only values 0..7 are used          */
 8000a32:	f000 0007 	and.w	r0, r0, #7
  reg_value  =  SCB->AIRCR;                                                   /* read old register configuration    */
 8000a36:	680a      	ldr	r2, [r1, #0]
  reg_value &= ~((uint32_t)(SCB_AIRCR_VECTKEY_Msk | SCB_AIRCR_PRIGROUP_Msk)); /* clear bits to change               */
 8000a38:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 8000a3c:	401a      	ands	r2, r3
  reg_value  =  (reg_value                                   |
 8000a3e:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
 8000a42:	f040 70fd 	orr.w	r0, r0, #33161216	; 0x1fa0000
 8000a46:	f040 6080 	orr.w	r0, r0, #67108864	; 0x4000000
  SCB->AIRCR =  reg_value;
 8000a4a:	6008      	str	r0, [r1, #0]
}
 8000a4c:	4770      	bx	lr
 8000a4e:	0000      	.short	0x0000
 8000a50:	e000ed0c 	.word	0xe000ed0c

08000a54 <HAL_RCC_ClockConfig>:
HAL_StatusTypeDef HAL_RCC_ClockConfig(RCC_ClkInitTypeDef  *RCC_ClkInitStruct, uint32_t FLatency)
{
  uint32_t tickstart;

  /* Check Null pointer */
  if (RCC_ClkInitStruct == NULL)
 8000a54:	2800      	cmp	r0, #0
  {
    return HAL_ERROR;
 8000a56:	bf04      	itt	eq
 8000a58:	2001      	moveq	r0, #1

  /* Configure the source of time base considering new system clocks settings*/
  HAL_InitTick(uwTickPrio);

  return HAL_OK;
}
 8000a5a:	4770      	bxeq	lr
{
 8000a5c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
  if (FLatency > __HAL_FLASH_GET_LATENCY())
 8000a60:	f8df 8178 	ldr.w	r8, [pc, #376]	; 8000bdc <HAL_RCC_ClockConfig+0x188>
{
 8000a64:	4605      	mov	r5, r0
 8000a66:	460e      	mov	r6, r1
  if (FLatency > __HAL_FLASH_GET_LATENCY())
 8000a68:	f8d8 0000 	ldr.w	r0, [r8]
 8000a6c:	f000 0007 	and.w	r0, r0, #7
 8000a70:	42b0      	cmp	r0, r6
    return HAL_ERROR;
 8000a72:	d20c      	bcs.n	8000a8e <HAL_RCC_ClockConfig+0x3a>
    __HAL_FLASH_SET_LATENCY(FLatency);
 8000a74:	f8d8 0000 	ldr.w	r0, [r8]
 8000a78:	f020 0007 	bic.w	r0, r0, #7
 8000a7c:	4330      	orrs	r0, r6
 8000a7e:	f8c8 0000 	str.w	r0, [r8]
    if (__HAL_FLASH_GET_LATENCY() != FLatency)
 8000a82:	f8d8 0000 	ldr.w	r0, [r8]
 8000a86:	f000 0007 	and.w	r0, r0, #7
 8000a8a:	42b0      	cmp	r0, r6
 8000a8c:	d163      	bne.n	8000b56 <HAL_RCC_ClockConfig+0x102>
if (((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_HCLK) == RCC_CLOCKTYPE_HCLK)
 8000a8e:	6828      	ldr	r0, [r5, #0]
      MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, RCC_HCLK_DIV16);
 8000a90:	4c53      	ldr	r4, [pc, #332]	; (8000be0 <HAL_RCC_ClockConfig+0x18c>)
if (((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_HCLK) == RCC_CLOCKTYPE_HCLK)
 8000a92:	f010 0f02 	tst.w	r0, #2
 8000a96:	d014      	beq.n	8000ac2 <HAL_RCC_ClockConfig+0x6e>
    if (((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK1) == RCC_CLOCKTYPE_PCLK1)
 8000a98:	f010 0f04 	tst.w	r0, #4
 8000a9c:	d003      	beq.n	8000aa6 <HAL_RCC_ClockConfig+0x52>
      MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, RCC_HCLK_DIV16);
 8000a9e:	6860      	ldr	r0, [r4, #4]
 8000aa0:	f440 60e0 	orr.w	r0, r0, #1792	; 0x700
 8000aa4:	6060      	str	r0, [r4, #4]
    if (((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK2) == RCC_CLOCKTYPE_PCLK2)
 8000aa6:	7828      	ldrb	r0, [r5, #0]
 8000aa8:	f010 0f08 	tst.w	r0, #8
 8000aac:	d003      	beq.n	8000ab6 <HAL_RCC_ClockConfig+0x62>
      MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE2, (RCC_HCLK_DIV16 << 3));
 8000aae:	6860      	ldr	r0, [r4, #4]
 8000ab0:	f440 5060 	orr.w	r0, r0, #14336	; 0x3800
 8000ab4:	6060      	str	r0, [r4, #4]
    MODIFY_REG(RCC->CFGR, RCC_CFGR_HPRE, RCC_ClkInitStruct->AHBCLKDivider);
 8000ab6:	6860      	ldr	r0, [r4, #4]
 8000ab8:	68a9      	ldr	r1, [r5, #8]
 8000aba:	f020 00f0 	bic.w	r0, r0, #240	; 0xf0
 8000abe:	4308      	orrs	r0, r1
 8000ac0:	6060      	str	r0, [r4, #4]
  if (((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_SYSCLK) == RCC_CLOCKTYPE_SYSCLK)
 8000ac2:	7828      	ldrb	r0, [r5, #0]
 8000ac4:	f010 0f01 	tst.w	r0, #1
 8000ac8:	d032      	beq.n	8000b30 <HAL_RCC_ClockConfig+0xdc>
    if (RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_HSE)
 8000aca:	6868      	ldr	r0, [r5, #4]
 8000acc:	2801      	cmp	r0, #1
 8000ace:	d01f      	beq.n	8000b10 <HAL_RCC_ClockConfig+0xbc>
      if (__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
 8000ad0:	6821      	ldr	r1, [r4, #0]
    else if (RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_PLLCLK)
 8000ad2:	2802      	cmp	r0, #2
 8000ad4:	d021      	beq.n	8000b1a <HAL_RCC_ClockConfig+0xc6>
      if (__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
 8000ad6:	f011 0f02 	tst.w	r1, #2
 8000ada:	d03c      	beq.n	8000b56 <HAL_RCC_ClockConfig+0x102>
    __HAL_RCC_SYSCLK_CONFIG(RCC_ClkInitStruct->SYSCLKSource);
 8000adc:	6861      	ldr	r1, [r4, #4]
 8000ade:	f021 0103 	bic.w	r1, r1, #3
 8000ae2:	4308      	orrs	r0, r1
 8000ae4:	6060      	str	r0, [r4, #4]
    tickstart = HAL_GetTick();
 8000ae6:	f7ff fefd 	bl	80008e4 <HAL_GetTick>
 8000aea:	4607      	mov	r7, r0
    while (__HAL_RCC_GET_SYSCLK_SOURCE() != (RCC_ClkInitStruct->SYSCLKSource << RCC_CFGR_SWS_Pos))
 8000aec:	6860      	ldr	r0, [r4, #4]
 8000aee:	6869      	ldr	r1, [r5, #4]
 8000af0:	f000 000c 	and.w	r0, r0, #12
 8000af4:	ebb0 0f81 	cmp.w	r0, r1, lsl #2
      if ((HAL_GetTick() - tickstart) > CLOCKSWITCH_TIMEOUT_VALUE)
 8000af8:	bf18      	it	ne
 8000afa:	f241 3988 	movwne	r9, #5000	; 0x1388
    while (__HAL_RCC_GET_SYSCLK_SOURCE() != (RCC_ClkInitStruct->SYSCLKSource << RCC_CFGR_SWS_Pos))
 8000afe:	d017      	beq.n	8000b30 <HAL_RCC_ClockConfig+0xdc>
      if ((HAL_GetTick() - tickstart) > CLOCKSWITCH_TIMEOUT_VALUE)
 8000b00:	f7ff fef0 	bl	80008e4 <HAL_GetTick>
 8000b04:	1bc0      	subs	r0, r0, r7
 8000b06:	4548      	cmp	r0, r9
 8000b08:	d90b      	bls.n	8000b22 <HAL_RCC_ClockConfig+0xce>
        return HAL_TIMEOUT;
 8000b0a:	2003      	movs	r0, #3
}
 8000b0c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
      if (__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
 8000b10:	6821      	ldr	r1, [r4, #0]
 8000b12:	f411 3f00 	tst.w	r1, #131072	; 0x20000
 8000b16:	d1e1      	bne.n	8000adc <HAL_RCC_ClockConfig+0x88>
 8000b18:	e01d      	b.n	8000b56 <HAL_RCC_ClockConfig+0x102>
      if (__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) == RESET)
 8000b1a:	f011 7f00 	tst.w	r1, #33554432	; 0x2000000
 8000b1e:	d1dd      	bne.n	8000adc <HAL_RCC_ClockConfig+0x88>
 8000b20:	e019      	b.n	8000b56 <HAL_RCC_ClockConfig+0x102>
    while (__HAL_RCC_GET_SYSCLK_SOURCE() != (RCC_ClkInitStruct->SYSCLKSource << RCC_CFGR_SWS_Pos))
 8000b22:	6860      	ldr	r0, [r4, #4]
 8000b24:	6869      	ldr	r1, [r5, #4]
 8000b26:	f000 000c 	and.w	r0, r0, #12
 8000b2a:	ebb0 0f81 	cmp.w	r0, r1, lsl #2
 8000b2e:	d1e7      	bne.n	8000b00 <HAL_RCC_ClockConfig+0xac>
  if (FLatency < __HAL_FLASH_GET_LATENCY())
 8000b30:	f8d8 0000 	ldr.w	r0, [r8]
 8000b34:	f000 0007 	and.w	r0, r0, #7
 8000b38:	42b0      	cmp	r0, r6
 8000b3a:	d90f      	bls.n	8000b5c <HAL_RCC_ClockConfig+0x108>
    __HAL_FLASH_SET_LATENCY(FLatency);
 8000b3c:	f8d8 0000 	ldr.w	r0, [r8]
 8000b40:	f020 0007 	bic.w	r0, r0, #7
 8000b44:	4330      	orrs	r0, r6
 8000b46:	f8c8 0000 	str.w	r0, [r8]
    if (__HAL_FLASH_GET_LATENCY() != FLatency)
 8000b4a:	f8d8 0000 	ldr.w	r0, [r8]
 8000b4e:	f000 0007 	and.w	r0, r0, #7
 8000b52:	42b0      	cmp	r0, r6
 8000b54:	d002      	beq.n	8000b5c <HAL_RCC_ClockConfig+0x108>
    return HAL_ERROR;
 8000b56:	2001      	movs	r0, #1
}
 8000b58:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
if (((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK1) == RCC_CLOCKTYPE_PCLK1)
 8000b5c:	7828      	ldrb	r0, [r5, #0]
 8000b5e:	f010 0f04 	tst.w	r0, #4
 8000b62:	d005      	beq.n	8000b70 <HAL_RCC_ClockConfig+0x11c>
    MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, RCC_ClkInitStruct->APB1CLKDivider);
 8000b64:	6860      	ldr	r0, [r4, #4]
 8000b66:	68e9      	ldr	r1, [r5, #12]
 8000b68:	f420 60e0 	bic.w	r0, r0, #1792	; 0x700
 8000b6c:	4308      	orrs	r0, r1
 8000b6e:	6060      	str	r0, [r4, #4]
  if (((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK2) == RCC_CLOCKTYPE_PCLK2)
 8000b70:	7828      	ldrb	r0, [r5, #0]
 8000b72:	f010 0f08 	tst.w	r0, #8
 8000b76:	d006      	beq.n	8000b86 <HAL_RCC_ClockConfig+0x132>
    MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE2, ((RCC_ClkInitStruct->APB2CLKDivider) << 3));
 8000b78:	6860      	ldr	r0, [r4, #4]
 8000b7a:	6929      	ldr	r1, [r5, #16]
 8000b7c:	f420 5060 	bic.w	r0, r0, #14336	; 0x3800
 8000b80:	ea40 00c1 	orr.w	r0, r0, r1, lsl #3
 8000b84:	6060      	str	r0, [r4, #4]
  uint32_t sysclockfreq = 0U;
#if defined(RCC_CFGR2_PREDIV1SRC)
  uint32_t prediv2 = 0U, pll2mul = 0U;
#endif /*RCC_CFGR2_PREDIV1SRC*/

  tmpreg = RCC->CFGR;
 8000b86:	6861      	ldr	r1, [r4, #4]
  /* Get SYSCLK source -------------------------------------------------------*/
  switch (tmpreg & RCC_CFGR_SWS)
  {
    case RCC_SYSCLKSOURCE_STATUS_HSE:  /* HSE used as system clock */
    {
      sysclockfreq = HSE_VALUE;
 8000b88:	4816      	ldr	r0, [pc, #88]	; (8000be4 <HAL_RCC_ClockConfig+0x190>)
  switch (tmpreg & RCC_CFGR_SWS)
 8000b8a:	f001 020c 	and.w	r2, r1, #12
 8000b8e:	2a04      	cmp	r2, #4
 8000b90:	d014      	beq.n	8000bbc <HAL_RCC_ClockConfig+0x168>
 8000b92:	2a08      	cmp	r2, #8
 8000b94:	d112      	bne.n	8000bbc <HAL_RCC_ClockConfig+0x168>
      break;
    }
    case RCC_SYSCLKSOURCE_STATUS_PLLCLK:  /* PLL used as system clock */
    {
      pllmul = aPLLMULFactorTable[(uint32_t)(tmpreg & RCC_CFGR_PLLMULL) >> RCC_CFGR_PLLMULL_Pos];
 8000b96:	4814      	ldr	r0, [pc, #80]	; (8000be8 <HAL_RCC_ClockConfig+0x194>)
 8000b98:	f3c1 4283 	ubfx	r2, r1, #18, #4
      if ((tmpreg & RCC_CFGR_PLLSRC) != RCC_PLLSOURCE_HSI_DIV2)
 8000b9c:	f411 3f80 	tst.w	r1, #65536	; 0x10000
      pllmul = aPLLMULFactorTable[(uint32_t)(tmpreg & RCC_CFGR_PLLMULL) >> RCC_CFGR_PLLMULL_Pos];
 8000ba0:	5c80      	ldrb	r0, [r0, r2]
#endif /*RCC_CFGR2_PREDIV1SRC*/
      }
      else
      {
        /* HSI used as PLL clock source : PLLCLK = HSI/2 * PLLMUL */
        pllclk = (uint32_t)((HSI_VALUE >> 1) * pllmul);
 8000ba2:	bf04      	itt	eq
 8000ba4:	4911      	ldreq	r1, [pc, #68]	; (8000bec <HAL_RCC_ClockConfig+0x198>)
 8000ba6:	4348      	muleq	r0, r1
      if ((tmpreg & RCC_CFGR_PLLSRC) != RCC_PLLSOURCE_HSI_DIV2)
 8000ba8:	d008      	beq.n	8000bbc <HAL_RCC_ClockConfig+0x168>
        prediv = aPredivFactorTable[(uint32_t)(RCC->CFGR & RCC_CFGR_PLLXTPRE) >> RCC_CFGR_PLLXTPRE_Pos];
 8000baa:	6861      	ldr	r1, [r4, #4]
 8000bac:	4a10      	ldr	r2, [pc, #64]	; (8000bf0 <HAL_RCC_ClockConfig+0x19c>)
 8000bae:	f3c1 4140 	ubfx	r1, r1, #17, #1
 8000bb2:	5c51      	ldrb	r1, [r2, r1]
        pllclk = (uint32_t)((HSE_VALUE  * pllmul) / prediv);
 8000bb4:	4a0b      	ldr	r2, [pc, #44]	; (8000be4 <HAL_RCC_ClockConfig+0x190>)
 8000bb6:	4350      	muls	r0, r2
 8000bb8:	fbb0 f0f1 	udiv	r0, r0, r1
  SystemCoreClock = HAL_RCC_GetSysClockFreq() >> AHBPrescTable[(RCC->CFGR & RCC_CFGR_HPRE) >> RCC_CFGR_HPRE_Pos];
 8000bbc:	6861      	ldr	r1, [r4, #4]
 8000bbe:	4a0d      	ldr	r2, [pc, #52]	; (8000bf4 <HAL_RCC_ClockConfig+0x1a0>)
 8000bc0:	f3c1 1103 	ubfx	r1, r1, #4, #4
 8000bc4:	5c51      	ldrb	r1, [r2, r1]
 8000bc6:	40c8      	lsrs	r0, r1
 8000bc8:	490b      	ldr	r1, [pc, #44]	; (8000bf8 <HAL_RCC_ClockConfig+0x1a4>)
  HAL_InitTick(uwTickPrio);
 8000bca:	6008      	str	r0, [r1, #0]
 8000bcc:	480b      	ldr	r0, [pc, #44]	; (8000bfc <HAL_RCC_ClockConfig+0x1a8>)
 8000bce:	6800      	ldr	r0, [r0, #0]
 8000bd0:	f7ff fea8 	bl	8000924 <HAL_InitTick>
  return HAL_OK;
 8000bd4:	2000      	movs	r0, #0
}
 8000bd6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000bda:	0000      	.short	0x0000
 8000bdc:	40022000 	.word	0x40022000
 8000be0:	40021000 	.word	0x40021000
 8000be4:	007a1200 	.word	0x007a1200
 8000be8:	08003d0e 	.word	0x08003d0e
 8000bec:	003d0900 	.word	0x003d0900
 8000bf0:	08003d0c 	.word	0x08003d0c
 8000bf4:	08003d1e 	.word	0x08003d1e
 8000bf8:	20000024 	.word	0x20000024
 8000bfc:	2000001c 	.word	0x2000001c

08000c00 <HAL_RCC_GetPCLK1Freq>:
  *         and updated within this function
  * @retval HCLK frequency
  */
uint32_t HAL_RCC_GetHCLKFreq(void)
{
  return SystemCoreClock;
 8000c00:	4804      	ldr	r0, [pc, #16]	; (8000c14 <HAL_RCC_GetPCLK1Freq+0x14>)
  * @retval PCLK1 frequency
  */
uint32_t HAL_RCC_GetPCLK1Freq(void)
{
  /* Get HCLK source and Compute PCLK1 frequency ---------------------------*/
  return (HAL_RCC_GetHCLKFreq() >> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE1) >> RCC_CFGR_PPRE1_Pos]);
 8000c02:	4905      	ldr	r1, [pc, #20]	; (8000c18 <HAL_RCC_GetPCLK1Freq+0x18>)
  return SystemCoreClock;
 8000c04:	6800      	ldr	r0, [r0, #0]
  return (HAL_RCC_GetHCLKFreq() >> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE1) >> RCC_CFGR_PPRE1_Pos]);
 8000c06:	6849      	ldr	r1, [r1, #4]
 8000c08:	4a04      	ldr	r2, [pc, #16]	; (8000c1c <HAL_RCC_GetPCLK1Freq+0x1c>)
 8000c0a:	f3c1 2102 	ubfx	r1, r1, #8, #3
 8000c0e:	5c51      	ldrb	r1, [r2, r1]
 8000c10:	40c8      	lsrs	r0, r1
}
 8000c12:	4770      	bx	lr
 8000c14:	20000024 	.word	0x20000024
 8000c18:	40021000 	.word	0x40021000
 8000c1c:	08003d2e 	.word	0x08003d2e

08000c20 <HAL_RCC_GetPCLK2Freq>:
  return SystemCoreClock;
 8000c20:	4804      	ldr	r0, [pc, #16]	; (8000c34 <HAL_RCC_GetPCLK2Freq+0x14>)
  * @retval PCLK2 frequency
  */
uint32_t HAL_RCC_GetPCLK2Freq(void)
{
  /* Get HCLK source and Compute PCLK2 frequency ---------------------------*/
  return (HAL_RCC_GetHCLKFreq() >> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE2) >> RCC_CFGR_PPRE2_Pos]);
 8000c22:	4905      	ldr	r1, [pc, #20]	; (8000c38 <HAL_RCC_GetPCLK2Freq+0x18>)
  return SystemCoreClock;
 8000c24:	6800      	ldr	r0, [r0, #0]
  return (HAL_RCC_GetHCLKFreq() >> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE2) >> RCC_CFGR_PPRE2_Pos]);
 8000c26:	6849      	ldr	r1, [r1, #4]
 8000c28:	4a04      	ldr	r2, [pc, #16]	; (8000c3c <HAL_RCC_GetPCLK2Freq+0x1c>)
 8000c2a:	f3c1 21c2 	ubfx	r1, r1, #11, #3
 8000c2e:	5c51      	ldrb	r1, [r2, r1]
 8000c30:	40c8      	lsrs	r0, r1
}
 8000c32:	4770      	bx	lr
 8000c34:	20000024 	.word	0x20000024
 8000c38:	40021000 	.word	0x40021000
 8000c3c:	08003d2e 	.word	0x08003d2e

08000c40 <HAL_RCC_OscConfig>:
  if (RCC_OscInitStruct == NULL)
 8000c40:	2800      	cmp	r0, #0
    return HAL_ERROR;
 8000c42:	bf04      	itt	eq
 8000c44:	2001      	moveq	r0, #1
}
 8000c46:	4770      	bxeq	lr
{
 8000c48:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000c4c:	4604      	mov	r4, r0
  if (((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSE) == RCC_OSCILLATORTYPE_HSE)
 8000c4e:	7800      	ldrb	r0, [r0, #0]
    if ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_SYSCLKSOURCE_STATUS_HSE)
 8000c50:	4de8      	ldr	r5, [pc, #928]	; (8000ff4 <HAL_RCC_OscConfig+0x3b4>)
  if (((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSE) == RCC_OSCILLATORTYPE_HSE)
 8000c52:	f010 0f01 	tst.w	r0, #1
    return HAL_ERROR;
 8000c56:	d059      	beq.n	8000d0c <HAL_RCC_OscConfig+0xcc>
    if ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_SYSCLKSOURCE_STATUS_HSE)
 8000c58:	6868      	ldr	r0, [r5, #4]
 8000c5a:	f000 000c 	and.w	r0, r0, #12
 8000c5e:	2804      	cmp	r0, #4
 8000c60:	d008      	beq.n	8000c74 <HAL_RCC_OscConfig+0x34>
 8000c62:	6868      	ldr	r0, [r5, #4]
 8000c64:	f000 000c 	and.w	r0, r0, #12
 8000c68:	2808      	cmp	r0, #8
 8000c6a:	d10c      	bne.n	8000c86 <HAL_RCC_OscConfig+0x46>
 8000c6c:	6868      	ldr	r0, [r5, #4]
 8000c6e:	f410 3f80 	tst.w	r0, #65536	; 0x10000
 8000c72:	d008      	beq.n	8000c86 <HAL_RCC_OscConfig+0x46>
      if ((__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET) && (RCC_OscInitStruct->HSEState == RCC_HSE_OFF))
 8000c74:	6828      	ldr	r0, [r5, #0]
 8000c76:	f410 3f00 	tst.w	r0, #131072	; 0x20000
 8000c7a:	d047      	beq.n	8000d0c <HAL_RCC_OscConfig+0xcc>
 8000c7c:	6860      	ldr	r0, [r4, #4]
 8000c7e:	2800      	cmp	r0, #0
 8000c80:	f000 81b2 	beq.w	8000fe8 <HAL_RCC_OscConfig+0x3a8>
 8000c84:	e042      	b.n	8000d0c <HAL_RCC_OscConfig+0xcc>
      __HAL_RCC_HSE_CONFIG(RCC_OscInitStruct->HSEState);
 8000c86:	6860      	ldr	r0, [r4, #4]
 8000c88:	f5b0 3f80 	cmp.w	r0, #65536	; 0x10000
 8000c8c:	bf04      	itt	eq
 8000c8e:	6828      	ldreq	r0, [r5, #0]
 8000c90:	f440 3080 	orreq.w	r0, r0, #65536	; 0x10000
 8000c94:	d00a      	beq.n	8000cac <HAL_RCC_OscConfig+0x6c>
 8000c96:	b110      	cbz	r0, 8000c9e <HAL_RCC_OscConfig+0x5e>
 8000c98:	f5b0 2fa0 	cmp.w	r0, #327680	; 0x50000
 8000c9c:	d011      	beq.n	8000cc2 <HAL_RCC_OscConfig+0x82>
 8000c9e:	6828      	ldr	r0, [r5, #0]
 8000ca0:	f420 3080 	bic.w	r0, r0, #65536	; 0x10000
 8000ca4:	6028      	str	r0, [r5, #0]
 8000ca6:	6828      	ldr	r0, [r5, #0]
 8000ca8:	f420 2080 	bic.w	r0, r0, #262144	; 0x40000
 8000cac:	6028      	str	r0, [r5, #0]
      if (RCC_OscInitStruct->HSEState != RCC_HSE_OFF)
 8000cae:	6860      	ldr	r0, [r4, #4]
 8000cb0:	b1d0      	cbz	r0, 8000ce8 <HAL_RCC_OscConfig+0xa8>
        tickstart = HAL_GetTick();
 8000cb2:	f7ff fe17 	bl	80008e4 <HAL_GetTick>
 8000cb6:	4606      	mov	r6, r0
        while (__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
 8000cb8:	6828      	ldr	r0, [r5, #0]
 8000cba:	f410 3f00 	tst.w	r0, #131072	; 0x20000
 8000cbe:	d008      	beq.n	8000cd2 <HAL_RCC_OscConfig+0x92>
 8000cc0:	e024      	b.n	8000d0c <HAL_RCC_OscConfig+0xcc>
      __HAL_RCC_HSE_CONFIG(RCC_OscInitStruct->HSEState);
 8000cc2:	6828      	ldr	r0, [r5, #0]
 8000cc4:	f440 2080 	orr.w	r0, r0, #262144	; 0x40000
 8000cc8:	6028      	str	r0, [r5, #0]
 8000cca:	6828      	ldr	r0, [r5, #0]
 8000ccc:	f440 3080 	orr.w	r0, r0, #65536	; 0x10000
 8000cd0:	e7ec      	b.n	8000cac <HAL_RCC_OscConfig+0x6c>
          if ((HAL_GetTick() - tickstart) > HSE_TIMEOUT_VALUE)
 8000cd2:	f7ff fe07 	bl	80008e4 <HAL_GetTick>
 8000cd6:	1b80      	subs	r0, r0, r6
 8000cd8:	2864      	cmp	r0, #100	; 0x64
 8000cda:	f200 8136 	bhi.w	8000f4a <HAL_RCC_OscConfig+0x30a>
            return HAL_TIMEOUT;
 8000cde:	6828      	ldr	r0, [r5, #0]
 8000ce0:	f410 3f00 	tst.w	r0, #131072	; 0x20000
 8000ce4:	d0f5      	beq.n	8000cd2 <HAL_RCC_OscConfig+0x92>
 8000ce6:	e011      	b.n	8000d0c <HAL_RCC_OscConfig+0xcc>
        tickstart = HAL_GetTick();
 8000ce8:	f7ff fdfc 	bl	80008e4 <HAL_GetTick>
 8000cec:	4606      	mov	r6, r0
        while (__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET)
 8000cee:	6828      	ldr	r0, [r5, #0]
 8000cf0:	f410 3f00 	tst.w	r0, #131072	; 0x20000
 8000cf4:	d00a      	beq.n	8000d0c <HAL_RCC_OscConfig+0xcc>
          if ((HAL_GetTick() - tickstart) > HSE_TIMEOUT_VALUE)
 8000cf6:	bf00      	nop
 8000cf8:	f7ff fdf4 	bl	80008e4 <HAL_GetTick>
 8000cfc:	1b80      	subs	r0, r0, r6
 8000cfe:	2864      	cmp	r0, #100	; 0x64
 8000d00:	f200 8123 	bhi.w	8000f4a <HAL_RCC_OscConfig+0x30a>
            return HAL_TIMEOUT;
 8000d04:	6828      	ldr	r0, [r5, #0]
 8000d06:	f410 3f00 	tst.w	r0, #131072	; 0x20000
 8000d0a:	d1f5      	bne.n	8000cf8 <HAL_RCC_OscConfig+0xb8>
  if (((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSI) == RCC_OSCILLATORTYPE_HSI)
 8000d0c:	7820      	ldrb	r0, [r4, #0]
        __HAL_RCC_HSI_ENABLE();
 8000d0e:	4eba      	ldr	r6, [pc, #744]	; (8000ff8 <HAL_RCC_OscConfig+0x3b8>)
  if (((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSI) == RCC_OSCILLATORTYPE_HSI)
 8000d10:	f010 0f02 	tst.w	r0, #2
    return HAL_ERROR;
 8000d14:	f04f 0b01 	mov.w	fp, #1
 8000d18:	f04f 0800 	mov.w	r8, #0
  if (((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSI) == RCC_OSCILLATORTYPE_HSI)
 8000d1c:	d045      	beq.n	8000daa <HAL_RCC_OscConfig+0x16a>
    if ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_SYSCLKSOURCE_STATUS_HSI)
 8000d1e:	6868      	ldr	r0, [r5, #4]
 8000d20:	f010 0f0c 	tst.w	r0, #12
 8000d24:	d014      	beq.n	8000d50 <HAL_RCC_OscConfig+0x110>
 8000d26:	6868      	ldr	r0, [r5, #4]
 8000d28:	f000 000c 	and.w	r0, r0, #12
 8000d2c:	2808      	cmp	r0, #8
 8000d2e:	bf04      	itt	eq
 8000d30:	6868      	ldreq	r0, [r5, #4]
 8000d32:	f410 3f80 	tsteq.w	r0, #65536	; 0x10000
 8000d36:	d00b      	beq.n	8000d50 <HAL_RCC_OscConfig+0x110>
      if (RCC_OscInitStruct->HSIState != RCC_HSI_OFF)
 8000d38:	6920      	ldr	r0, [r4, #16]
 8000d3a:	b318      	cbz	r0, 8000d84 <HAL_RCC_OscConfig+0x144>
        __HAL_RCC_HSI_ENABLE();
 8000d3c:	f8c6 b000 	str.w	fp, [r6]
        tickstart = HAL_GetTick();
 8000d40:	f7ff fdd0 	bl	80008e4 <HAL_GetTick>
 8000d44:	4607      	mov	r7, r0
        while (__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
 8000d46:	6828      	ldr	r0, [r5, #0]
 8000d48:	f010 0f02 	tst.w	r0, #2
 8000d4c:	d009      	beq.n	8000d62 <HAL_RCC_OscConfig+0x122>
 8000d4e:	e011      	b.n	8000d74 <HAL_RCC_OscConfig+0x134>
      if ((__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET) && (RCC_OscInitStruct->HSIState != RCC_HSI_ON))
 8000d50:	6828      	ldr	r0, [r5, #0]
 8000d52:	f010 0f02 	tst.w	r0, #2
 8000d56:	bf1c      	itt	ne
 8000d58:	6920      	ldrne	r0, [r4, #16]
 8000d5a:	2801      	cmpne	r0, #1
 8000d5c:	d00a      	beq.n	8000d74 <HAL_RCC_OscConfig+0x134>
 8000d5e:	f000 b943 	b.w	8000fe8 <HAL_RCC_OscConfig+0x3a8>
          if ((HAL_GetTick() - tickstart) > HSI_TIMEOUT_VALUE)
 8000d62:	f7ff fdbf 	bl	80008e4 <HAL_GetTick>
 8000d66:	1bc0      	subs	r0, r0, r7
 8000d68:	2802      	cmp	r0, #2
 8000d6a:	d87d      	bhi.n	8000e68 <HAL_RCC_OscConfig+0x228>
            return HAL_TIMEOUT;
 8000d6c:	6828      	ldr	r0, [r5, #0]
 8000d6e:	f010 0f02 	tst.w	r0, #2
 8000d72:	d0f6      	beq.n	8000d62 <HAL_RCC_OscConfig+0x122>
        __HAL_RCC_HSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->HSICalibrationValue);
 8000d74:	6828      	ldr	r0, [r5, #0]
 8000d76:	6961      	ldr	r1, [r4, #20]
 8000d78:	f020 00f8 	bic.w	r0, r0, #248	; 0xf8
 8000d7c:	ea40 00c1 	orr.w	r0, r0, r1, lsl #3
 8000d80:	6028      	str	r0, [r5, #0]
 8000d82:	e012      	b.n	8000daa <HAL_RCC_OscConfig+0x16a>
        __HAL_RCC_HSI_DISABLE();
 8000d84:	f8c6 8000 	str.w	r8, [r6]
        tickstart = HAL_GetTick();
 8000d88:	f7ff fdac 	bl	80008e4 <HAL_GetTick>
 8000d8c:	4607      	mov	r7, r0
        while (__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET)
 8000d8e:	6828      	ldr	r0, [r5, #0]
 8000d90:	f010 0f02 	tst.w	r0, #2
 8000d94:	d009      	beq.n	8000daa <HAL_RCC_OscConfig+0x16a>
          if ((HAL_GetTick() - tickstart) > HSI_TIMEOUT_VALUE)
 8000d96:	bf00      	nop
 8000d98:	f7ff fda4 	bl	80008e4 <HAL_GetTick>
 8000d9c:	1bc0      	subs	r0, r0, r7
 8000d9e:	2802      	cmp	r0, #2
 8000da0:	d862      	bhi.n	8000e68 <HAL_RCC_OscConfig+0x228>
            return HAL_TIMEOUT;
 8000da2:	6828      	ldr	r0, [r5, #0]
 8000da4:	f010 0f02 	tst.w	r0, #2
 8000da8:	d1f6      	bne.n	8000d98 <HAL_RCC_OscConfig+0x158>
  if (((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSI) == RCC_OSCILLATORTYPE_LSI)
 8000daa:	7820      	ldrb	r0, [r4, #0]
 8000dac:	f010 0f08 	tst.w	r0, #8
 8000db0:	d035      	beq.n	8000e1e <HAL_RCC_OscConfig+0x1de>
      __HAL_RCC_LSI_ENABLE();
 8000db2:	4892      	ldr	r0, [pc, #584]	; (8000ffc <HAL_RCC_OscConfig+0x3bc>)
    if (RCC_OscInitStruct->LSIState != RCC_LSI_OFF)
 8000db4:	69a1      	ldr	r1, [r4, #24]
 8000db6:	b1f9      	cbz	r1, 8000df8 <HAL_RCC_OscConfig+0x1b8>
      __HAL_RCC_LSI_ENABLE();
 8000db8:	f8c0 b000 	str.w	fp, [r0]
      tickstart = HAL_GetTick();
 8000dbc:	f7ff fd92 	bl	80008e4 <HAL_GetTick>
 8000dc0:	4607      	mov	r7, r0
      while (__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) == RESET)
 8000dc2:	6a68      	ldr	r0, [r5, #36]	; 0x24
 8000dc4:	f010 0f02 	tst.w	r0, #2
 8000dc8:	d109      	bne.n	8000dde <HAL_RCC_OscConfig+0x19e>
        if ((HAL_GetTick() - tickstart) > LSI_TIMEOUT_VALUE)
 8000dca:	bf00      	nop
 8000dcc:	f7ff fd8a 	bl	80008e4 <HAL_GetTick>
 8000dd0:	1bc0      	subs	r0, r0, r7
 8000dd2:	2802      	cmp	r0, #2
 8000dd4:	d848      	bhi.n	8000e68 <HAL_RCC_OscConfig+0x228>
          return HAL_TIMEOUT;
 8000dd6:	6a68      	ldr	r0, [r5, #36]	; 0x24
 8000dd8:	f010 0f02 	tst.w	r0, #2
 8000ddc:	d0f6      	beq.n	8000dcc <HAL_RCC_OscConfig+0x18c>
  * @param  mdelay: specifies the delay time length, in milliseconds.
  * @retval None
  */
static void RCC_Delay(uint32_t mdelay)
{
  __IO uint32_t Delay = mdelay * (SystemCoreClock / 8U / 1000U);
 8000dde:	4888      	ldr	r0, [pc, #544]	; (8001000 <HAL_RCC_OscConfig+0x3c0>)
 8000de0:	6801      	ldr	r1, [r0, #0]
 8000de2:	f44f 50fa 	mov.w	r0, #8000	; 0x1f40
 8000de6:	fbb1 f0f0 	udiv	r0, r1, r0
 8000dea:	9000      	str	r0, [sp, #0]
  do
  {
    __NOP();
 8000dec:	bf00      	nop
  }
  while (Delay --);
 8000dee:	9800      	ldr	r0, [sp, #0]
 8000df0:	1e41      	subs	r1, r0, #1
 8000df2:	9100      	str	r1, [sp, #0]
 8000df4:	d2fa      	bcs.n	8000dec <HAL_RCC_OscConfig+0x1ac>
 8000df6:	e012      	b.n	8000e1e <HAL_RCC_OscConfig+0x1de>
      __HAL_RCC_LSI_DISABLE();
 8000df8:	f8c0 8000 	str.w	r8, [r0]
      tickstart = HAL_GetTick();
 8000dfc:	f7ff fd72 	bl	80008e4 <HAL_GetTick>
 8000e00:	4607      	mov	r7, r0
      while (__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) != RESET)
 8000e02:	6a68      	ldr	r0, [r5, #36]	; 0x24
 8000e04:	f010 0f02 	tst.w	r0, #2
 8000e08:	d009      	beq.n	8000e1e <HAL_RCC_OscConfig+0x1de>
        if ((HAL_GetTick() - tickstart) > LSI_TIMEOUT_VALUE)
 8000e0a:	bf00      	nop
 8000e0c:	f7ff fd6a 	bl	80008e4 <HAL_GetTick>
 8000e10:	1bc0      	subs	r0, r0, r7
 8000e12:	2802      	cmp	r0, #2
 8000e14:	d828      	bhi.n	8000e68 <HAL_RCC_OscConfig+0x228>
          return HAL_TIMEOUT;
 8000e16:	6a68      	ldr	r0, [r5, #36]	; 0x24
 8000e18:	f010 0f02 	tst.w	r0, #2
 8000e1c:	d1f6      	bne.n	8000e0c <HAL_RCC_OscConfig+0x1cc>
  if (((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSE) == RCC_OSCILLATORTYPE_LSE)
 8000e1e:	7820      	ldrb	r0, [r4, #0]
 8000e20:	f010 0f04 	tst.w	r0, #4
 8000e24:	d079      	beq.n	8000f1a <HAL_RCC_OscConfig+0x2da>
    if (__HAL_RCC_PWR_IS_CLK_DISABLED())
 8000e26:	69e8      	ldr	r0, [r5, #28]
    FlagStatus       pwrclkchanged = RESET;
 8000e28:	f04f 0a00 	mov.w	sl, #0
    if (__HAL_RCC_PWR_IS_CLK_DISABLED())
 8000e2c:	f010 5f80 	tst.w	r0, #268435456	; 0x10000000
 8000e30:	d109      	bne.n	8000e46 <HAL_RCC_OscConfig+0x206>
      __HAL_RCC_PWR_CLK_ENABLE();
 8000e32:	69e8      	ldr	r0, [r5, #28]
 8000e34:	f040 5080 	orr.w	r0, r0, #268435456	; 0x10000000
 8000e38:	61e8      	str	r0, [r5, #28]
 8000e3a:	69e8      	ldr	r0, [r5, #28]
      pwrclkchanged = SET;
 8000e3c:	f04f 0a01 	mov.w	sl, #1
      __HAL_RCC_PWR_CLK_ENABLE();
 8000e40:	f000 5080 	and.w	r0, r0, #268435456	; 0x10000000
      pwrclkchanged = SET;
 8000e44:	9000      	str	r0, [sp, #0]
    if (HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
 8000e46:	f8df 91bc 	ldr.w	r9, [pc, #444]	; 8001004 <HAL_RCC_OscConfig+0x3c4>
 8000e4a:	f8d9 0000 	ldr.w	r0, [r9]
 8000e4e:	f410 7f80 	tst.w	r0, #256	; 0x100
 8000e52:	d119      	bne.n	8000e88 <HAL_RCC_OscConfig+0x248>
      SET_BIT(PWR->CR, PWR_CR_DBP);
 8000e54:	f8d9 0000 	ldr.w	r0, [r9]
 8000e58:	f440 7080 	orr.w	r0, r0, #256	; 0x100
 8000e5c:	f8c9 0000 	str.w	r0, [r9]
      tickstart = HAL_GetTick();
 8000e60:	f7ff fd40 	bl	80008e4 <HAL_GetTick>
 8000e64:	4607      	mov	r7, r0
      while (HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
 8000e66:	e000      	b.n	8000e6a <HAL_RCC_OscConfig+0x22a>
 8000e68:	e06f      	b.n	8000f4a <HAL_RCC_OscConfig+0x30a>
 8000e6a:	f8d9 0000 	ldr.w	r0, [r9]
 8000e6e:	f410 7f80 	tst.w	r0, #256	; 0x100
 8000e72:	d109      	bne.n	8000e88 <HAL_RCC_OscConfig+0x248>
        if ((HAL_GetTick() - tickstart) > RCC_DBP_TIMEOUT_VALUE)
 8000e74:	f7ff fd36 	bl	80008e4 <HAL_GetTick>
 8000e78:	1bc0      	subs	r0, r0, r7
 8000e7a:	2864      	cmp	r0, #100	; 0x64
 8000e7c:	d865      	bhi.n	8000f4a <HAL_RCC_OscConfig+0x30a>
          return HAL_TIMEOUT;
 8000e7e:	f8d9 0000 	ldr.w	r0, [r9]
 8000e82:	f410 7f80 	tst.w	r0, #256	; 0x100
 8000e86:	d0f5      	beq.n	8000e74 <HAL_RCC_OscConfig+0x234>
    __HAL_RCC_LSE_CONFIG(RCC_OscInitStruct->LSEState);
 8000e88:	68e0      	ldr	r0, [r4, #12]
 8000e8a:	2801      	cmp	r0, #1
 8000e8c:	bf04      	itt	eq
 8000e8e:	6a28      	ldreq	r0, [r5, #32]
 8000e90:	f040 0001 	orreq.w	r0, r0, #1
 8000e94:	d009      	beq.n	8000eaa <HAL_RCC_OscConfig+0x26a>
 8000e96:	b108      	cbz	r0, 8000e9c <HAL_RCC_OscConfig+0x25c>
 8000e98:	2805      	cmp	r0, #5
 8000e9a:	d013      	beq.n	8000ec4 <HAL_RCC_OscConfig+0x284>
 8000e9c:	6a28      	ldr	r0, [r5, #32]
 8000e9e:	f020 0001 	bic.w	r0, r0, #1
 8000ea2:	6228      	str	r0, [r5, #32]
 8000ea4:	6a28      	ldr	r0, [r5, #32]
 8000ea6:	f020 0004 	bic.w	r0, r0, #4
 8000eaa:	6228      	str	r0, [r5, #32]
        if ((HAL_GetTick() - tickstart) > RCC_LSE_TIMEOUT_VALUE)
 8000eac:	68e0      	ldr	r0, [r4, #12]
 8000eae:	f241 3788 	movw	r7, #5000	; 0x1388
 8000eb2:	b1d0      	cbz	r0, 8000eea <HAL_RCC_OscConfig+0x2aa>
      tickstart = HAL_GetTick();
 8000eb4:	f7ff fd16 	bl	80008e4 <HAL_GetTick>
 8000eb8:	4681      	mov	r9, r0
      while (__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) == RESET)
 8000eba:	6a28      	ldr	r0, [r5, #32]
 8000ebc:	f010 0f02 	tst.w	r0, #2
 8000ec0:	d008      	beq.n	8000ed4 <HAL_RCC_OscConfig+0x294>
 8000ec2:	e023      	b.n	8000f0c <HAL_RCC_OscConfig+0x2cc>
    __HAL_RCC_LSE_CONFIG(RCC_OscInitStruct->LSEState);
 8000ec4:	6a28      	ldr	r0, [r5, #32]
 8000ec6:	f040 0004 	orr.w	r0, r0, #4
 8000eca:	6228      	str	r0, [r5, #32]
 8000ecc:	6a28      	ldr	r0, [r5, #32]
 8000ece:	f040 0001 	orr.w	r0, r0, #1
 8000ed2:	e7ea      	b.n	8000eaa <HAL_RCC_OscConfig+0x26a>
        if ((HAL_GetTick() - tickstart) > RCC_LSE_TIMEOUT_VALUE)
 8000ed4:	f7ff fd06 	bl	80008e4 <HAL_GetTick>
 8000ed8:	eba0 0009 	sub.w	r0, r0, r9
 8000edc:	42b8      	cmp	r0, r7
 8000ede:	d834      	bhi.n	8000f4a <HAL_RCC_OscConfig+0x30a>
          return HAL_TIMEOUT;
 8000ee0:	6a28      	ldr	r0, [r5, #32]
 8000ee2:	f010 0f02 	tst.w	r0, #2
 8000ee6:	d0f5      	beq.n	8000ed4 <HAL_RCC_OscConfig+0x294>
 8000ee8:	e010      	b.n	8000f0c <HAL_RCC_OscConfig+0x2cc>
      tickstart = HAL_GetTick();
 8000eea:	f7ff fcfb 	bl	80008e4 <HAL_GetTick>
 8000eee:	4681      	mov	r9, r0
      while (__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) != RESET)
 8000ef0:	6a28      	ldr	r0, [r5, #32]
 8000ef2:	f010 0f02 	tst.w	r0, #2
 8000ef6:	d009      	beq.n	8000f0c <HAL_RCC_OscConfig+0x2cc>
        if ((HAL_GetTick() - tickstart) > RCC_LSE_TIMEOUT_VALUE)
 8000ef8:	f7ff fcf4 	bl	80008e4 <HAL_GetTick>
 8000efc:	eba0 0009 	sub.w	r0, r0, r9
 8000f00:	42b8      	cmp	r0, r7
 8000f02:	d822      	bhi.n	8000f4a <HAL_RCC_OscConfig+0x30a>
          return HAL_TIMEOUT;
 8000f04:	6a28      	ldr	r0, [r5, #32]
 8000f06:	f010 0f02 	tst.w	r0, #2
 8000f0a:	d1f5      	bne.n	8000ef8 <HAL_RCC_OscConfig+0x2b8>
    if (pwrclkchanged == SET)
 8000f0c:	f1ba 0f00 	cmp.w	sl, #0
 8000f10:	d003      	beq.n	8000f1a <HAL_RCC_OscConfig+0x2da>
      __HAL_RCC_PWR_CLK_DISABLE();
 8000f12:	69e8      	ldr	r0, [r5, #28]
 8000f14:	f020 5080 	bic.w	r0, r0, #268435456	; 0x10000000
 8000f18:	61e8      	str	r0, [r5, #28]
  if ((RCC_OscInitStruct->PLL.PLLState) != RCC_PLL_NONE)
 8000f1a:	69e0      	ldr	r0, [r4, #28]
 8000f1c:	b3f0      	cbz	r0, 8000f9c <HAL_RCC_OscConfig+0x35c>
    if (__HAL_RCC_GET_SYSCLK_SOURCE() != RCC_SYSCLKSOURCE_STATUS_PLLCLK)
 8000f1e:	6869      	ldr	r1, [r5, #4]
 8000f20:	f001 010c 	and.w	r1, r1, #12
 8000f24:	2908      	cmp	r1, #8
 8000f26:	d050      	beq.n	8000fca <HAL_RCC_OscConfig+0x38a>
      if ((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_ON)
 8000f28:	2802      	cmp	r0, #2
        __HAL_RCC_PLL_DISABLE();
 8000f2a:	f8c6 8060 	str.w	r8, [r6, #96]	; 0x60
      if ((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_ON)
 8000f2e:	d00f      	beq.n	8000f50 <HAL_RCC_OscConfig+0x310>
        tickstart = HAL_GetTick();
 8000f30:	f7ff fcd8 	bl	80008e4 <HAL_GetTick>
 8000f34:	4604      	mov	r4, r0
        while (__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY)  != RESET)
 8000f36:	6828      	ldr	r0, [r5, #0]
 8000f38:	f010 7f00 	tst.w	r0, #33554432	; 0x2000000
 8000f3c:	d057      	beq.n	8000fee <HAL_RCC_OscConfig+0x3ae>
          if ((HAL_GetTick() - tickstart) > PLL_TIMEOUT_VALUE)
 8000f3e:	bf00      	nop
 8000f40:	f7ff fcd0 	bl	80008e4 <HAL_GetTick>
 8000f44:	1b00      	subs	r0, r0, r4
 8000f46:	2802      	cmp	r0, #2
 8000f48:	d93a      	bls.n	8000fc0 <HAL_RCC_OscConfig+0x380>
            return HAL_TIMEOUT;
 8000f4a:	2003      	movs	r0, #3
}
 8000f4c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
        tickstart = HAL_GetTick();
 8000f50:	f7ff fcc8 	bl	80008e4 <HAL_GetTick>
 8000f54:	4607      	mov	r7, r0
        while (__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY)  != RESET)
 8000f56:	6828      	ldr	r0, [r5, #0]
 8000f58:	f010 7f00 	tst.w	r0, #33554432	; 0x2000000
 8000f5c:	d009      	beq.n	8000f72 <HAL_RCC_OscConfig+0x332>
          if ((HAL_GetTick() - tickstart) > PLL_TIMEOUT_VALUE)
 8000f5e:	bf00      	nop
 8000f60:	f7ff fcc0 	bl	80008e4 <HAL_GetTick>
 8000f64:	1bc0      	subs	r0, r0, r7
 8000f66:	2802      	cmp	r0, #2
 8000f68:	d8ef      	bhi.n	8000f4a <HAL_RCC_OscConfig+0x30a>
            return HAL_TIMEOUT;
 8000f6a:	6828      	ldr	r0, [r5, #0]
 8000f6c:	f010 7f00 	tst.w	r0, #33554432	; 0x2000000
 8000f70:	d1f6      	bne.n	8000f60 <HAL_RCC_OscConfig+0x320>
        if (RCC_OscInitStruct->PLL.PLLSource == RCC_PLLSOURCE_HSE)
 8000f72:	6a20      	ldr	r0, [r4, #32]
 8000f74:	f5b0 3f80 	cmp.w	r0, #65536	; 0x10000
 8000f78:	d105      	bne.n	8000f86 <HAL_RCC_OscConfig+0x346>
          __HAL_RCC_HSE_PREDIV_CONFIG(RCC_OscInitStruct->HSEPredivValue);
 8000f7a:	6868      	ldr	r0, [r5, #4]
 8000f7c:	68a1      	ldr	r1, [r4, #8]
 8000f7e:	f420 3000 	bic.w	r0, r0, #131072	; 0x20000
 8000f82:	4308      	orrs	r0, r1
 8000f84:	6068      	str	r0, [r5, #4]
 8000f86:	e9d4 0108 	ldrd	r0, r1, [r4, #32]
        __HAL_RCC_PLL_CONFIG(RCC_OscInitStruct->PLL.PLLSource,
 8000f8a:	4308      	orrs	r0, r1
 8000f8c:	6869      	ldr	r1, [r5, #4]
 8000f8e:	f421 1174 	bic.w	r1, r1, #3997696	; 0x3d0000
 8000f92:	4308      	orrs	r0, r1
 8000f94:	6068      	str	r0, [r5, #4]
        __HAL_RCC_PLL_ENABLE();
 8000f96:	f8c6 b060 	str.w	fp, [r6, #96]	; 0x60
        tickstart = HAL_GetTick();
 8000f9a:	e000      	b.n	8000f9e <HAL_RCC_OscConfig+0x35e>
 8000f9c:	e027      	b.n	8000fee <HAL_RCC_OscConfig+0x3ae>
 8000f9e:	f7ff fca1 	bl	80008e4 <HAL_GetTick>
 8000fa2:	4604      	mov	r4, r0
        while (__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY)  == RESET)
 8000fa4:	6828      	ldr	r0, [r5, #0]
 8000fa6:	f010 7f00 	tst.w	r0, #33554432	; 0x2000000
 8000faa:	d120      	bne.n	8000fee <HAL_RCC_OscConfig+0x3ae>
          if ((HAL_GetTick() - tickstart) > PLL_TIMEOUT_VALUE)
 8000fac:	f7ff fc9a 	bl	80008e4 <HAL_GetTick>
 8000fb0:	1b00      	subs	r0, r0, r4
 8000fb2:	2802      	cmp	r0, #2
 8000fb4:	d8c9      	bhi.n	8000f4a <HAL_RCC_OscConfig+0x30a>
            return HAL_TIMEOUT;
 8000fb6:	6828      	ldr	r0, [r5, #0]
 8000fb8:	f010 7f00 	tst.w	r0, #33554432	; 0x2000000
 8000fbc:	d0f6      	beq.n	8000fac <HAL_RCC_OscConfig+0x36c>
 8000fbe:	e016      	b.n	8000fee <HAL_RCC_OscConfig+0x3ae>
            return HAL_TIMEOUT;
 8000fc0:	6828      	ldr	r0, [r5, #0]
 8000fc2:	f010 7f00 	tst.w	r0, #33554432	; 0x2000000
 8000fc6:	d1bb      	bne.n	8000f40 <HAL_RCC_OscConfig+0x300>
 8000fc8:	e011      	b.n	8000fee <HAL_RCC_OscConfig+0x3ae>
      if ((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_OFF)
 8000fca:	2801      	cmp	r0, #1
}
 8000fcc:	bf08      	it	eq
 8000fce:	e8bd 8ff8 	ldmiaeq.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
        pll_config = RCC->CFGR;
 8000fd2:	6868      	ldr	r0, [r5, #4]
        if ((READ_BIT(pll_config, RCC_CFGR_PLLSRC) != RCC_OscInitStruct->PLL.PLLSource) ||
 8000fd4:	6a22      	ldr	r2, [r4, #32]
 8000fd6:	f400 3180 	and.w	r1, r0, #65536	; 0x10000
 8000fda:	4291      	cmp	r1, r2
 8000fdc:	d104      	bne.n	8000fe8 <HAL_RCC_OscConfig+0x3a8>
 8000fde:	6a61      	ldr	r1, [r4, #36]	; 0x24
 8000fe0:	f400 1070 	and.w	r0, r0, #3932160	; 0x3c0000
 8000fe4:	4288      	cmp	r0, r1
 8000fe6:	d002      	beq.n	8000fee <HAL_RCC_OscConfig+0x3ae>
          return HAL_ERROR;
 8000fe8:	2001      	movs	r0, #1
}
 8000fea:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
  return HAL_OK;
 8000fee:	2000      	movs	r0, #0
}
 8000ff0:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000ff4:	40021000 	.word	0x40021000
 8000ff8:	42420000 	.word	0x42420000
 8000ffc:	42420480 	.word	0x42420480
 8001000:	20000024 	.word	0x20000024
 8001004:	40007000 	.word	0x40007000

08001008 <HAL_SYSTICK_Config>:
           function <b>SysTick_Config</b> is not included. In this case, the file <b><i>device</i>.h</b>
           must contain a vendor-specific implementation of this function.
 */
__STATIC_INLINE uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1UL) > SysTick_LOAD_RELOAD_Msk)
 8001008:	1e41      	subs	r1, r0, #1
 800100a:	f1b1 7f80 	cmp.w	r1, #16777216	; 0x1000000
  {
    return (1UL);                                                   /* Reload value impossible */
 800100e:	bf24      	itt	cs
 8001010:	2001      	movcs	r0, #1
  *                  - 1  Function failed.
  */
uint32_t HAL_SYSTICK_Config(uint32_t TicksNumb)
{
   return SysTick_Config(TicksNumb);
}
 8001012:	4770      	bxcs	lr
  }

  SysTick->LOAD  = (uint32_t)(ticks - 1UL);                         /* set reload register */
 8001014:	f04f 20e0 	mov.w	r0, #3758153728	; 0xe000e000
 8001018:	6141      	str	r1, [r0, #20]
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 800101a:	4a05      	ldr	r2, [pc, #20]	; (8001030 <HAL_SYSTICK_Config+0x28>)
 800101c:	21f0      	movs	r1, #240	; 0xf0
 800101e:	f882 1d14 	strb.w	r1, [r2, #3348]	; 0xd14
  NVIC_SetPriority (SysTick_IRQn, (1UL << __NVIC_PRIO_BITS) - 1UL); /* set Priority for Systick Interrupt */
  SysTick->VAL   = 0UL;                                             /* Load the SysTick Counter Value */
 8001022:	2100      	movs	r1, #0
 8001024:	6181      	str	r1, [r0, #24]
  SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk |
 8001026:	2107      	movs	r1, #7
 8001028:	6101      	str	r1, [r0, #16]
                   SysTick_CTRL_TICKINT_Msk   |
                   SysTick_CTRL_ENABLE_Msk;                         /* Enable SysTick IRQ and SysTick Timer */
  return (0UL);                                                     /* Function successful */
 800102a:	2000      	movs	r0, #0
 800102c:	4770      	bx	lr
 800102e:	0000      	.short	0x0000
 8001030:	e000e00f 	.word	0xe000e00f

08001034 <HAL_TIMEx_BreakCallback>:
  UNUSED(htim);

  /* NOTE : This function should not be modified, when the callback is needed,
            the HAL_TIMEx_BreakCallback could be implemented in the user file
   */
}
 8001034:	4770      	bx	lr

08001036 <HAL_TIMEx_CommutCallback>:
}
 8001036:	4770      	bx	lr

08001038 <HAL_TIMEx_MasterConfigSynchronization>:
  __HAL_LOCK(htim);
 8001038:	f890 203c 	ldrb.w	r2, [r0, #60]	; 0x3c
 800103c:	2a01      	cmp	r2, #1
 800103e:	bf04      	itt	eq
 8001040:	2002      	moveq	r0, #2
}
 8001042:	4770      	bxeq	lr
{
 8001044:	b430      	push	{r4, r5}
  __HAL_LOCK(htim);
 8001046:	2301      	movs	r3, #1
 8001048:	f880 303c 	strb.w	r3, [r0, #60]	; 0x3c
  htim->State = HAL_TIM_STATE_BUSY;
 800104c:	2202      	movs	r2, #2
 800104e:	f880 203d 	strb.w	r2, [r0, #61]	; 0x3d
  tmpcr2 = htim->Instance->CR2;
 8001052:	6802      	ldr	r2, [r0, #0]
 8001054:	6854      	ldr	r4, [r2, #4]
  tmpsmcr = htim->Instance->SMCR;
 8001056:	f8d2 c008 	ldr.w	ip, [r2, #8]
  tmpcr2 |=  sMasterConfig->MasterOutputTrigger;
 800105a:	680d      	ldr	r5, [r1, #0]
  tmpcr2 &= ~TIM_CR2_MMS;
 800105c:	f024 0470 	bic.w	r4, r4, #112	; 0x70
  tmpcr2 |=  sMasterConfig->MasterOutputTrigger;
 8001060:	432c      	orrs	r4, r5
  htim->Instance->CR2 = tmpcr2;
 8001062:	6054      	str	r4, [r2, #4]
  if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
 8001064:	6802      	ldr	r2, [r0, #0]
 8001066:	f1a2 4480 	sub.w	r4, r2, #1073741824	; 0x40000000
 800106a:	f5b4 3496 	subs.w	r4, r4, #76800	; 0x12c00
 800106e:	bf18      	it	ne
 8001070:	f1b2 4f80 	cmpne.w	r2, #1073741824	; 0x40000000
  __HAL_LOCK(htim);
 8001074:	d009      	beq.n	800108a <HAL_TIMEx_MasterConfigSynchronization+0x52>
  if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
 8001076:	f1a2 4480 	sub.w	r4, r2, #1073741824	; 0x40000000
 800107a:	f5b4 6480 	subs.w	r4, r4, #1024	; 0x400
 800107e:	bf1c      	itt	ne
 8001080:	f1a2 4480 	subne.w	r4, r2, #1073741824	; 0x40000000
 8001084:	f5b4 6400 	subsne.w	r4, r4, #2048	; 0x800
 8001088:	d105      	bne.n	8001096 <HAL_TIMEx_MasterConfigSynchronization+0x5e>
    tmpsmcr |= sMasterConfig->MasterSlaveMode;
 800108a:	6849      	ldr	r1, [r1, #4]
    tmpsmcr &= ~TIM_SMCR_MSM;
 800108c:	f02c 0c80 	bic.w	ip, ip, #128	; 0x80
    tmpsmcr |= sMasterConfig->MasterSlaveMode;
 8001090:	ea41 010c 	orr.w	r1, r1, ip
    htim->Instance->SMCR = tmpsmcr;
 8001094:	6091      	str	r1, [r2, #8]
  htim->State = HAL_TIM_STATE_READY;
 8001096:	f880 303d 	strb.w	r3, [r0, #61]	; 0x3d
  __HAL_UNLOCK(htim);
 800109a:	2100      	movs	r1, #0
 800109c:	f880 103c 	strb.w	r1, [r0, #60]	; 0x3c
}
 80010a0:	bc30      	pop	{r4, r5}
  return HAL_OK;
 80010a2:	4608      	mov	r0, r1
}
 80010a4:	4770      	bx	lr

080010a6 <HAL_TIM_Base_Init>:
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_TIM_Base_Init(TIM_HandleTypeDef *htim)
{
  /* Check the TIM handle allocation */
  if (htim == NULL)
 80010a6:	2800      	cmp	r0, #0
  {
    return HAL_ERROR;
 80010a8:	bf04      	itt	eq
 80010aa:	2001      	moveq	r0, #1

  /* Initialize the TIM state*/
  htim->State = HAL_TIM_STATE_READY;

  return HAL_OK;
}
 80010ac:	4770      	bxeq	lr
{
 80010ae:	b510      	push	{r4, lr}
 80010b0:	4604      	mov	r4, r0
  if (htim->State == HAL_TIM_STATE_RESET)
 80010b2:	f890 003d 	ldrb.w	r0, [r0, #61]	; 0x3d
    return HAL_ERROR;
 80010b6:	b928      	cbnz	r0, 80010c4 <HAL_TIM_Base_Init+0x1e>
    htim->Lock = HAL_UNLOCKED;
 80010b8:	2000      	movs	r0, #0
 80010ba:	f884 003c 	strb.w	r0, [r4, #60]	; 0x3c
    HAL_TIM_Base_MspInit(htim);
 80010be:	4620      	mov	r0, r4
 80010c0:	f000 f81e 	bl	8001100 <HAL_TIM_Base_MspInit>
  htim->State = HAL_TIM_STATE_BUSY;
 80010c4:	2002      	movs	r0, #2
 80010c6:	f884 003d 	strb.w	r0, [r4, #61]	; 0x3d
  TIM_Base_SetConfig(htim->Instance, &htim->Init);
 80010ca:	1d21      	adds	r1, r4, #4
 80010cc:	6820      	ldr	r0, [r4, #0]
 80010ce:	f000 fb7f 	bl	80017d0 <TIM_Base_SetConfig>
  htim->DMABurstState = HAL_DMA_BURST_STATE_READY;
 80010d2:	2001      	movs	r0, #1
 80010d4:	f884 0046 	strb.w	r0, [r4, #70]	; 0x46
  TIM_CHANNEL_STATE_SET_ALL(htim, HAL_TIM_CHANNEL_STATE_READY);
 80010d8:	f884 003e 	strb.w	r0, [r4, #62]	; 0x3e
 80010dc:	f884 003f 	strb.w	r0, [r4, #63]	; 0x3f
 80010e0:	f884 0040 	strb.w	r0, [r4, #64]	; 0x40
 80010e4:	f884 0041 	strb.w	r0, [r4, #65]	; 0x41
  TIM_CHANNEL_N_STATE_SET_ALL(htim, HAL_TIM_CHANNEL_STATE_READY);
 80010e8:	f884 0042 	strb.w	r0, [r4, #66]	; 0x42
 80010ec:	f884 0043 	strb.w	r0, [r4, #67]	; 0x43
 80010f0:	f884 0044 	strb.w	r0, [r4, #68]	; 0x44
 80010f4:	f884 0045 	strb.w	r0, [r4, #69]	; 0x45
  htim->State = HAL_TIM_STATE_READY;
 80010f8:	f884 003d 	strb.w	r0, [r4, #61]	; 0x3d
  return HAL_OK;
 80010fc:	2000      	movs	r0, #0
}
 80010fe:	bd10      	pop	{r4, pc}

08001100 <HAL_TIM_Base_MspInit>:
* This function configures the hardware resources used in this example
* @param htim_base: TIM_Base handle pointer
* @retval None
*/
void HAL_TIM_Base_MspInit(TIM_HandleTypeDef* htim_base)
{
 8001100:	b508      	push	{r3, lr}
  {
  /* USER CODE BEGIN TIM1_MspInit 0 */

  /* USER CODE END TIM1_MspInit 0 */
    /* Peripheral clock enable */
    __HAL_RCC_TIM1_CLK_ENABLE();
 8001102:	6801      	ldr	r1, [r0, #0]
 8001104:	481d      	ldr	r0, [pc, #116]	; (800117c <HAL_TIM_Base_MspInit+0x7c>)
  if(htim_base->Instance==TIM1)
 8001106:	f1a1 4280 	sub.w	r2, r1, #1073741824	; 0x40000000
 800110a:	f5b2 3296 	subs.w	r2, r2, #76800	; 0x12c00
{
 800110e:	d01a      	beq.n	8001146 <HAL_TIM_Base_MspInit+0x46>
  /* USER CODE BEGIN TIM1_MspInit 1 */

  /* USER CODE END TIM1_MspInit 1 */
  }
  else if(htim_base->Instance==TIM2)
 8001110:	f1b1 4f80 	cmp.w	r1, #1073741824	; 0x40000000
 8001114:	d020      	beq.n	8001158 <HAL_TIM_Base_MspInit+0x58>
    HAL_NVIC_EnableIRQ(TIM2_IRQn);
  /* USER CODE BEGIN TIM2_MspInit 1 */

  /* USER CODE END TIM2_MspInit 1 */
  }
  else if(htim_base->Instance==TIM3)
 8001116:	f1a1 4280 	sub.w	r2, r1, #1073741824	; 0x40000000
 800111a:	f5b2 6280 	subs.w	r2, r2, #1024	; 0x400
  /* USER CODE BEGIN TIM3_MspInit 1 */

  /* USER CODE END TIM3_MspInit 1 */
  }

}
 800111e:	bf18      	it	ne
 8001120:	bd08      	popne	{r3, pc}
    __HAL_RCC_TIM3_CLK_ENABLE();
 8001122:	69c1      	ldr	r1, [r0, #28]
 8001124:	f041 0102 	orr.w	r1, r1, #2
 8001128:	61c1      	str	r1, [r0, #28]
 800112a:	69c0      	ldr	r0, [r0, #28]
    HAL_NVIC_SetPriority(TIM3_IRQn, 5, 0);
 800112c:	2200      	movs	r2, #0
    __HAL_RCC_TIM3_CLK_ENABLE();
 800112e:	f000 0002 	and.w	r0, r0, #2
    HAL_NVIC_SetPriority(TIM3_IRQn, 5, 0);
 8001132:	9000      	str	r0, [sp, #0]
 8001134:	2105      	movs	r1, #5
 8001136:	201d      	movs	r0, #29
 8001138:	f7ff fc48 	bl	80009cc <HAL_NVIC_SetPriority>
    HAL_NVIC_EnableIRQ(TIM3_IRQn);
 800113c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001140:	201d      	movs	r0, #29
 8001142:	f7ff bc33 	b.w	80009ac <HAL_NVIC_EnableIRQ>
    __HAL_RCC_TIM1_CLK_ENABLE();
 8001146:	6981      	ldr	r1, [r0, #24]
 8001148:	f441 6100 	orr.w	r1, r1, #2048	; 0x800
 800114c:	6181      	str	r1, [r0, #24]
 800114e:	6980      	ldr	r0, [r0, #24]
 8001150:	f400 6000 	and.w	r0, r0, #2048	; 0x800
 8001154:	9000      	str	r0, [sp, #0]
}
 8001156:	bd08      	pop	{r3, pc}
    __HAL_RCC_TIM2_CLK_ENABLE();
 8001158:	69c1      	ldr	r1, [r0, #28]
 800115a:	f041 0101 	orr.w	r1, r1, #1
 800115e:	61c1      	str	r1, [r0, #28]
 8001160:	69c0      	ldr	r0, [r0, #28]
    HAL_NVIC_SetPriority(TIM2_IRQn, 5, 0);
 8001162:	2200      	movs	r2, #0
    __HAL_RCC_TIM2_CLK_ENABLE();
 8001164:	f000 0001 	and.w	r0, r0, #1
    HAL_NVIC_SetPriority(TIM2_IRQn, 5, 0);
 8001168:	9000      	str	r0, [sp, #0]
 800116a:	2105      	movs	r1, #5
 800116c:	201c      	movs	r0, #28
 800116e:	f7ff fc2d 	bl	80009cc <HAL_NVIC_SetPriority>
    HAL_NVIC_EnableIRQ(TIM2_IRQn);
 8001172:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001176:	201c      	movs	r0, #28
 8001178:	f7ff bc18 	b.w	80009ac <HAL_NVIC_EnableIRQ>
 800117c:	40021000 	.word	0x40021000

08001180 <HAL_TIM_Base_Start_IT>:

  /* Check the parameters */
  assert_param(IS_TIM_INSTANCE(htim->Instance));

  /* Check the TIM state */
  if (htim->State != HAL_TIM_STATE_READY)
 8001180:	f890 103d 	ldrb.w	r1, [r0, #61]	; 0x3d
 8001184:	2901      	cmp	r1, #1
  {
    return HAL_ERROR;
 8001186:	bf1c      	itt	ne
 8001188:	2001      	movne	r0, #1
    __HAL_TIM_ENABLE(htim);
  }

  /* Return function status */
  return HAL_OK;
}
 800118a:	4770      	bxne	lr
  htim->State = HAL_TIM_STATE_BUSY;
 800118c:	2102      	movs	r1, #2
 800118e:	f880 103d 	strb.w	r1, [r0, #61]	; 0x3d
  __HAL_TIM_ENABLE_IT(htim, TIM_IT_UPDATE);
 8001192:	6801      	ldr	r1, [r0, #0]
 8001194:	68ca      	ldr	r2, [r1, #12]
 8001196:	f042 0201 	orr.w	r2, r2, #1
 800119a:	60ca      	str	r2, [r1, #12]
  if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
 800119c:	6800      	ldr	r0, [r0, #0]
 800119e:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 80011a2:	f5b1 3196 	subs.w	r1, r1, #76800	; 0x12c00
 80011a6:	bf18      	it	ne
 80011a8:	f1b0 4f80 	cmpne.w	r0, #1073741824	; 0x40000000
 80011ac:	d009      	beq.n	80011c2 <HAL_TIM_Base_Start_IT+0x42>
 80011ae:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 80011b2:	f5b1 6180 	subs.w	r1, r1, #1024	; 0x400
 80011b6:	bf1c      	itt	ne
 80011b8:	f1a0 4180 	subne.w	r1, r0, #1073741824	; 0x40000000
 80011bc:	f5b1 6100 	subsne.w	r1, r1, #2048	; 0x800
 80011c0:	d104      	bne.n	80011cc <HAL_TIM_Base_Start_IT+0x4c>
    tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
 80011c2:	6881      	ldr	r1, [r0, #8]
 80011c4:	f001 0107 	and.w	r1, r1, #7
    if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 80011c8:	2906      	cmp	r1, #6
 80011ca:	d003      	beq.n	80011d4 <HAL_TIM_Base_Start_IT+0x54>
      __HAL_TIM_ENABLE(htim);
 80011cc:	6801      	ldr	r1, [r0, #0]
 80011ce:	f041 0101 	orr.w	r1, r1, #1
 80011d2:	6001      	str	r1, [r0, #0]
  return HAL_OK;
 80011d4:	2000      	movs	r0, #0
}
 80011d6:	4770      	bx	lr

080011d8 <HAL_TIM_ConfigClockSource>:
{
  HAL_StatusTypeDef status = HAL_OK;
  uint32_t tmpsmcr;

  /* Process Locked */
  __HAL_LOCK(htim);
 80011d8:	f890 203c 	ldrb.w	r2, [r0, #60]	; 0x3c
  HAL_StatusTypeDef status = HAL_OK;
 80011dc:	2300      	movs	r3, #0
  __HAL_LOCK(htim);
 80011de:	2a01      	cmp	r2, #1
 80011e0:	bf0d      	iteet	eq
 80011e2:	2002      	moveq	r0, #2
 80011e4:	f04f 0c01 	movne.w	ip, #1
 80011e8:	f880 c03c 	strbne.w	ip, [r0, #60]	; 0x3c
  htim->State = HAL_TIM_STATE_READY;

  __HAL_UNLOCK(htim);

  return status;
}
 80011ec:	4770      	bxeq	lr
{
 80011ee:	b470      	push	{r4, r5, r6}
  htim->State = HAL_TIM_STATE_BUSY;
 80011f0:	2202      	movs	r2, #2
 80011f2:	f880 203d 	strb.w	r2, [r0, #61]	; 0x3d
  tmpsmcr = htim->Instance->SMCR;
 80011f6:	6802      	ldr	r2, [r0, #0]
 80011f8:	6894      	ldr	r4, [r2, #8]
  tmpsmcr &= ~(TIM_SMCR_ETF | TIM_SMCR_ETPS | TIM_SMCR_ECE | TIM_SMCR_ETP);
 80011fa:	f024 0477 	bic.w	r4, r4, #119	; 0x77
 80011fe:	f424 447f 	bic.w	r4, r4, #65280	; 0xff00
  htim->Instance->SMCR = tmpsmcr;
 8001202:	6094      	str	r4, [r2, #8]
  switch (sClockSourceConfig->ClockSource)
 8001204:	680a      	ldr	r2, [r1, #0]
 8001206:	2a50      	cmp	r2, #80	; 0x50
 8001208:	d043      	beq.n	8001292 <HAL_TIM_ConfigClockSource+0xba>
 800120a:	dc0c      	bgt.n	8001226 <HAL_TIM_ConfigClockSource+0x4e>
 800120c:	2a20      	cmp	r2, #32
 800120e:	d075      	beq.n	80012fc <HAL_TIM_ConfigClockSource+0x124>
 8001210:	dc04      	bgt.n	800121c <HAL_TIM_ConfigClockSource+0x44>
 8001212:	2a00      	cmp	r2, #0
 8001214:	bf18      	it	ne
 8001216:	2a10      	cmpne	r2, #16
 8001218:	d10f      	bne.n	800123a <HAL_TIM_ConfigClockSource+0x62>
 800121a:	e08b      	b.n	8001334 <HAL_TIM_ConfigClockSource+0x15c>
 800121c:	2a30      	cmp	r2, #48	; 0x30
 800121e:	d06d      	beq.n	80012fc <HAL_TIM_ConfigClockSource+0x124>
 8001220:	2a40      	cmp	r2, #64	; 0x40
 8001222:	d06d      	beq.n	8001300 <HAL_TIM_ConfigClockSource+0x128>
 8001224:	e009      	b.n	800123a <HAL_TIM_ConfigClockSource+0x62>
 8001226:	2a60      	cmp	r2, #96	; 0x60
 8001228:	d04d      	beq.n	80012c6 <HAL_TIM_ConfigClockSource+0xee>
 800122a:	2a70      	cmp	r2, #112	; 0x70
 800122c:	d00e      	beq.n	800124c <HAL_TIM_ConfigClockSource+0x74>
 800122e:	f5b2 5f80 	cmp.w	r2, #4096	; 0x1000
 8001232:	d003      	beq.n	800123c <HAL_TIM_ConfigClockSource+0x64>
 8001234:	f5b2 5f00 	cmp.w	r2, #8192	; 0x2000
 8001238:	d019      	beq.n	800126e <HAL_TIM_ConfigClockSource+0x96>
      status = HAL_ERROR;
 800123a:	2301      	movs	r3, #1
  htim->State = HAL_TIM_STATE_READY;
 800123c:	f880 c03d 	strb.w	ip, [r0, #61]	; 0x3d
  __HAL_UNLOCK(htim);
 8001240:	2100      	movs	r1, #0
 8001242:	f880 103c 	strb.w	r1, [r0, #60]	; 0x3c
}
 8001246:	bc70      	pop	{r4, r5, r6}
  return status;
 8001248:	4618      	mov	r0, r3
}
 800124a:	4770      	bx	lr
      TIM_ETR_SetConfig(htim->Instance,
 800124c:	e9d1 4501 	ldrd	r4, r5, [r1, #4]
 8001250:	6802      	ldr	r2, [r0, #0]
 8001252:	68c9      	ldr	r1, [r1, #12]
void TIM_ETR_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ExtTRGPrescaler,
                       uint32_t TIM_ExtTRGPolarity, uint32_t ExtTRGFilter)
{
  uint32_t tmpsmcr;

  tmpsmcr = TIMx->SMCR;
 8001254:	6896      	ldr	r6, [r2, #8]

  /* Reset the ETR Bits */
  tmpsmcr &= ~(TIM_SMCR_ETF | TIM_SMCR_ETPS | TIM_SMCR_ECE | TIM_SMCR_ETP);

  /* Set the Prescaler, the Filter value and the Polarity */
  tmpsmcr |= (uint32_t)(TIM_ExtTRGPrescaler | (TIM_ExtTRGPolarity | (ExtTRGFilter << 8U)));
 8001256:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
  tmpsmcr &= ~(TIM_SMCR_ETF | TIM_SMCR_ETPS | TIM_SMCR_ECE | TIM_SMCR_ETP);
 800125a:	f426 467f 	bic.w	r6, r6, #65280	; 0xff00
  tmpsmcr |= (uint32_t)(TIM_ExtTRGPrescaler | (TIM_ExtTRGPolarity | (ExtTRGFilter << 8U)));
 800125e:	4329      	orrs	r1, r5
 8001260:	4331      	orrs	r1, r6

  /* Write to TIMx SMCR */
  TIMx->SMCR = tmpsmcr;
 8001262:	6091      	str	r1, [r2, #8]
      tmpsmcr = htim->Instance->SMCR;
 8001264:	6801      	ldr	r1, [r0, #0]
 8001266:	688a      	ldr	r2, [r1, #8]
      tmpsmcr |= (TIM_SLAVEMODE_EXTERNAL1 | TIM_CLOCKSOURCE_ETRMODE1);
 8001268:	f042 0277 	orr.w	r2, r2, #119	; 0x77
      break;
 800126c:	e00f      	b.n	800128e <HAL_TIM_ConfigClockSource+0xb6>
      TIM_ETR_SetConfig(htim->Instance,
 800126e:	e9d1 4501 	ldrd	r4, r5, [r1, #4]
 8001272:	6802      	ldr	r2, [r0, #0]
 8001274:	68c9      	ldr	r1, [r1, #12]
  tmpsmcr = TIMx->SMCR;
 8001276:	6896      	ldr	r6, [r2, #8]
  tmpsmcr |= (uint32_t)(TIM_ExtTRGPrescaler | (TIM_ExtTRGPolarity | (ExtTRGFilter << 8U)));
 8001278:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
  tmpsmcr &= ~(TIM_SMCR_ETF | TIM_SMCR_ETPS | TIM_SMCR_ECE | TIM_SMCR_ETP);
 800127c:	f426 467f 	bic.w	r6, r6, #65280	; 0xff00
  tmpsmcr |= (uint32_t)(TIM_ExtTRGPrescaler | (TIM_ExtTRGPolarity | (ExtTRGFilter << 8U)));
 8001280:	4329      	orrs	r1, r5
 8001282:	4331      	orrs	r1, r6
  TIMx->SMCR = tmpsmcr;
 8001284:	6091      	str	r1, [r2, #8]
      htim->Instance->SMCR |= TIM_SMCR_ECE;
 8001286:	6801      	ldr	r1, [r0, #0]
 8001288:	688a      	ldr	r2, [r1, #8]
 800128a:	f442 4280 	orr.w	r2, r2, #16384	; 0x4000
      htim->Instance->SMCR = tmpsmcr;
 800128e:	608a      	str	r2, [r1, #8]
 8001290:	e7d4      	b.n	800123c <HAL_TIM_ConfigClockSource+0x64>
      TIM_TI1_ConfigInputStage(htim->Instance,
 8001292:	6802      	ldr	r2, [r0, #0]
 8001294:	684c      	ldr	r4, [r1, #4]
 8001296:	68c9      	ldr	r1, [r1, #12]
  tmpccer = TIMx->CCER;
 8001298:	6a15      	ldr	r5, [r2, #32]
  TIMx->CCER &= ~TIM_CCER_CC1E;
 800129a:	6a16      	ldr	r6, [r2, #32]
 800129c:	f026 0601 	bic.w	r6, r6, #1
 80012a0:	6216      	str	r6, [r2, #32]
  tmpccmr1 = TIMx->CCMR1;
 80012a2:	6996      	ldr	r6, [r2, #24]
  tmpccer &= ~(TIM_CCER_CC1P | TIM_CCER_CC1NP);
 80012a4:	f025 050a 	bic.w	r5, r5, #10
  tmpccmr1 &= ~TIM_CCMR1_IC1F;
 80012a8:	f026 06f0 	bic.w	r6, r6, #240	; 0xf0
  tmpccmr1 |= (TIM_ICFilter << 4U);
 80012ac:	ea46 1101 	orr.w	r1, r6, r1, lsl #4
  tmpccer |= TIM_ICPolarity;
 80012b0:	432c      	orrs	r4, r5
  TIMx->CCMR1 = tmpccmr1;
 80012b2:	6191      	str	r1, [r2, #24]
  TIMx->CCER = tmpccer;
 80012b4:	6214      	str	r4, [r2, #32]
  tmpsmcr = TIMx->SMCR;
 80012b6:	6801      	ldr	r1, [r0, #0]
 80012b8:	688a      	ldr	r2, [r1, #8]
  tmpsmcr &= ~TIM_SMCR_TS;
 80012ba:	f022 0270 	bic.w	r2, r2, #112	; 0x70
  tmpsmcr |= (InputTriggerSource | TIM_SLAVEMODE_EXTERNAL1);
 80012be:	f042 0257 	orr.w	r2, r2, #87	; 0x57
  TIMx->SMCR = tmpsmcr;
 80012c2:	608a      	str	r2, [r1, #8]
      break;
 80012c4:	e7ba      	b.n	800123c <HAL_TIM_ConfigClockSource+0x64>
      TIM_TI2_ConfigInputStage(htim->Instance,
 80012c6:	6802      	ldr	r2, [r0, #0]
 80012c8:	684c      	ldr	r4, [r1, #4]
 80012ca:	68c9      	ldr	r1, [r1, #12]
  tmpccer = TIMx->CCER;
 80012cc:	6a15      	ldr	r5, [r2, #32]
  TIMx->CCER &= ~TIM_CCER_CC2E;
 80012ce:	6a16      	ldr	r6, [r2, #32]
 80012d0:	f026 0610 	bic.w	r6, r6, #16
 80012d4:	6216      	str	r6, [r2, #32]
  tmpccmr1 = TIMx->CCMR1;
 80012d6:	6996      	ldr	r6, [r2, #24]
  tmpccer &= ~(TIM_CCER_CC2P | TIM_CCER_CC2NP);
 80012d8:	f025 05a0 	bic.w	r5, r5, #160	; 0xa0
  tmpccmr1 &= ~TIM_CCMR1_IC2F;
 80012dc:	f426 4670 	bic.w	r6, r6, #61440	; 0xf000
  tmpccmr1 |= (TIM_ICFilter << 12U);
 80012e0:	ea46 3101 	orr.w	r1, r6, r1, lsl #12
  tmpccer |= (TIM_ICPolarity << 4U);
 80012e4:	ea45 1404 	orr.w	r4, r5, r4, lsl #4
  TIMx->CCMR1 = tmpccmr1 ;
 80012e8:	6191      	str	r1, [r2, #24]
  TIMx->CCER = tmpccer;
 80012ea:	6214      	str	r4, [r2, #32]
  tmpsmcr = TIMx->SMCR;
 80012ec:	6801      	ldr	r1, [r0, #0]
 80012ee:	688a      	ldr	r2, [r1, #8]
  tmpsmcr &= ~TIM_SMCR_TS;
 80012f0:	f022 0270 	bic.w	r2, r2, #112	; 0x70
  tmpsmcr |= (InputTriggerSource | TIM_SLAVEMODE_EXTERNAL1);
 80012f4:	f042 0267 	orr.w	r2, r2, #103	; 0x67
  TIMx->SMCR = tmpsmcr;
 80012f8:	608a      	str	r2, [r1, #8]
      break;
 80012fa:	e79f      	b.n	800123c <HAL_TIM_ConfigClockSource+0x64>
 80012fc:	e01a      	b.n	8001334 <HAL_TIM_ConfigClockSource+0x15c>
 80012fe:	e7ff      	b.n	8001300 <HAL_TIM_ConfigClockSource+0x128>
      TIM_TI1_ConfigInputStage(htim->Instance,
 8001300:	6802      	ldr	r2, [r0, #0]
 8001302:	684c      	ldr	r4, [r1, #4]
 8001304:	68c9      	ldr	r1, [r1, #12]
  tmpccer = TIMx->CCER;
 8001306:	6a15      	ldr	r5, [r2, #32]
  TIMx->CCER &= ~TIM_CCER_CC1E;
 8001308:	6a16      	ldr	r6, [r2, #32]
 800130a:	f026 0601 	bic.w	r6, r6, #1
 800130e:	6216      	str	r6, [r2, #32]
  tmpccmr1 = TIMx->CCMR1;
 8001310:	6996      	ldr	r6, [r2, #24]
  tmpccer &= ~(TIM_CCER_CC1P | TIM_CCER_CC1NP);
 8001312:	f025 050a 	bic.w	r5, r5, #10
  tmpccmr1 &= ~TIM_CCMR1_IC1F;
 8001316:	f026 06f0 	bic.w	r6, r6, #240	; 0xf0
  tmpccmr1 |= (TIM_ICFilter << 4U);
 800131a:	ea46 1101 	orr.w	r1, r6, r1, lsl #4
  tmpccer |= TIM_ICPolarity;
 800131e:	432c      	orrs	r4, r5
  TIMx->CCMR1 = tmpccmr1;
 8001320:	6191      	str	r1, [r2, #24]
  TIMx->CCER = tmpccer;
 8001322:	6214      	str	r4, [r2, #32]
  tmpsmcr = TIMx->SMCR;
 8001324:	6801      	ldr	r1, [r0, #0]
 8001326:	688a      	ldr	r2, [r1, #8]
  tmpsmcr &= ~TIM_SMCR_TS;
 8001328:	f022 0270 	bic.w	r2, r2, #112	; 0x70
  tmpsmcr |= (InputTriggerSource | TIM_SLAVEMODE_EXTERNAL1);
 800132c:	f042 0247 	orr.w	r2, r2, #71	; 0x47
  TIMx->SMCR = tmpsmcr;
 8001330:	608a      	str	r2, [r1, #8]
      break;
 8001332:	e783      	b.n	800123c <HAL_TIM_ConfigClockSource+0x64>
  tmpsmcr = TIMx->SMCR;
 8001334:	6801      	ldr	r1, [r0, #0]
 8001336:	688c      	ldr	r4, [r1, #8]
  tmpsmcr &= ~TIM_SMCR_TS;
 8001338:	f024 0470 	bic.w	r4, r4, #112	; 0x70
  tmpsmcr |= (InputTriggerSource | TIM_SLAVEMODE_EXTERNAL1);
 800133c:	4322      	orrs	r2, r4
 800133e:	f042 0207 	orr.w	r2, r2, #7
  TIMx->SMCR = tmpsmcr;
 8001342:	608a      	str	r2, [r1, #8]
      break;
 8001344:	e77a      	b.n	800123c <HAL_TIM_ConfigClockSource+0x64>

08001346 <HAL_TIM_IC_CaptureCallback>:
}
 8001346:	4770      	bx	lr

08001348 <HAL_TIM_IRQHandler>:
{
 8001348:	b570      	push	{r4, r5, r6, lr}
 800134a:	4604      	mov	r4, r0
  if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_CC1) != RESET)
 800134c:	6800      	ldr	r0, [r0, #0]
 800134e:	6901      	ldr	r1, [r0, #16]
 8001350:	f04f 0500 	mov.w	r5, #0
 8001354:	f011 0f02 	tst.w	r1, #2
    if (__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_CC1) != RESET)
 8001358:	bf1c      	itt	ne
 800135a:	68c1      	ldrne	r1, [r0, #12]
 800135c:	f011 0f02 	tstne.w	r1, #2
{
 8001360:	d013      	beq.n	800138a <HAL_TIM_IRQHandler+0x42>
        __HAL_TIM_CLEAR_IT(htim, TIM_IT_CC1);
 8001362:	f06f 0102 	mvn.w	r1, #2
 8001366:	6101      	str	r1, [r0, #16]
        htim->Channel = HAL_TIM_ACTIVE_CHANNEL_1;
 8001368:	2001      	movs	r0, #1
 800136a:	7720      	strb	r0, [r4, #28]
        if ((htim->Instance->CCMR1 & TIM_CCMR1_CC1S) != 0x00U)
 800136c:	6820      	ldr	r0, [r4, #0]
 800136e:	6980      	ldr	r0, [r0, #24]
 8001370:	f010 0f03 	tst.w	r0, #3
          HAL_TIM_OC_DelayElapsedCallback(htim);
 8001374:	4620      	mov	r0, r4
        if ((htim->Instance->CCMR1 & TIM_CCMR1_CC1S) != 0x00U)
 8001376:	d002      	beq.n	800137e <HAL_TIM_IRQHandler+0x36>
          HAL_TIM_IC_CaptureCallback(htim);
 8001378:	f7ff ffe5 	bl	8001346 <HAL_TIM_IC_CaptureCallback>
 800137c:	e004      	b.n	8001388 <HAL_TIM_IRQHandler+0x40>
          HAL_TIM_OC_DelayElapsedCallback(htim);
 800137e:	f000 f899 	bl	80014b4 <HAL_TIM_OC_DelayElapsedCallback>
          HAL_TIM_PWM_PulseFinishedCallback(htim);
 8001382:	4620      	mov	r0, r4
 8001384:	f000 f897 	bl	80014b6 <HAL_TIM_PWM_PulseFinishedCallback>
        htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
 8001388:	7725      	strb	r5, [r4, #28]
  if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_CC2) != RESET)
 800138a:	6820      	ldr	r0, [r4, #0]
 800138c:	6901      	ldr	r1, [r0, #16]
 800138e:	f011 0f04 	tst.w	r1, #4
    if (__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_CC2) != RESET)
 8001392:	bf1c      	itt	ne
 8001394:	68c1      	ldrne	r1, [r0, #12]
 8001396:	f011 0f04 	tstne.w	r1, #4
  if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_CC2) != RESET)
 800139a:	d013      	beq.n	80013c4 <HAL_TIM_IRQHandler+0x7c>
      __HAL_TIM_CLEAR_IT(htim, TIM_IT_CC2);
 800139c:	f06f 0104 	mvn.w	r1, #4
 80013a0:	6101      	str	r1, [r0, #16]
      htim->Channel = HAL_TIM_ACTIVE_CHANNEL_2;
 80013a2:	2002      	movs	r0, #2
 80013a4:	7720      	strb	r0, [r4, #28]
      if ((htim->Instance->CCMR1 & TIM_CCMR1_CC2S) != 0x00U)
 80013a6:	6820      	ldr	r0, [r4, #0]
 80013a8:	6980      	ldr	r0, [r0, #24]
 80013aa:	f410 7f40 	tst.w	r0, #768	; 0x300
        HAL_TIM_OC_DelayElapsedCallback(htim);
 80013ae:	4620      	mov	r0, r4
      if ((htim->Instance->CCMR1 & TIM_CCMR1_CC2S) != 0x00U)
 80013b0:	d002      	beq.n	80013b8 <HAL_TIM_IRQHandler+0x70>
        HAL_TIM_IC_CaptureCallback(htim);
 80013b2:	f7ff ffc8 	bl	8001346 <HAL_TIM_IC_CaptureCallback>
 80013b6:	e004      	b.n	80013c2 <HAL_TIM_IRQHandler+0x7a>
        HAL_TIM_OC_DelayElapsedCallback(htim);
 80013b8:	f000 f87c 	bl	80014b4 <HAL_TIM_OC_DelayElapsedCallback>
        HAL_TIM_PWM_PulseFinishedCallback(htim);
 80013bc:	4620      	mov	r0, r4
 80013be:	f000 f87a 	bl	80014b6 <HAL_TIM_PWM_PulseFinishedCallback>
      htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
 80013c2:	7725      	strb	r5, [r4, #28]
  if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_CC3) != RESET)
 80013c4:	6820      	ldr	r0, [r4, #0]
 80013c6:	6901      	ldr	r1, [r0, #16]
 80013c8:	f011 0f08 	tst.w	r1, #8
    if (__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_CC3) != RESET)
 80013cc:	bf1c      	itt	ne
 80013ce:	68c1      	ldrne	r1, [r0, #12]
 80013d0:	f011 0f08 	tstne.w	r1, #8
  if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_CC3) != RESET)
 80013d4:	d013      	beq.n	80013fe <HAL_TIM_IRQHandler+0xb6>
      __HAL_TIM_CLEAR_IT(htim, TIM_IT_CC3);
 80013d6:	f06f 0108 	mvn.w	r1, #8
 80013da:	6101      	str	r1, [r0, #16]
      htim->Channel = HAL_TIM_ACTIVE_CHANNEL_3;
 80013dc:	2004      	movs	r0, #4
 80013de:	7720      	strb	r0, [r4, #28]
      if ((htim->Instance->CCMR2 & TIM_CCMR2_CC3S) != 0x00U)
 80013e0:	6820      	ldr	r0, [r4, #0]
 80013e2:	69c0      	ldr	r0, [r0, #28]
 80013e4:	f010 0f03 	tst.w	r0, #3
        HAL_TIM_OC_DelayElapsedCallback(htim);
 80013e8:	4620      	mov	r0, r4
      if ((htim->Instance->CCMR2 & TIM_CCMR2_CC3S) != 0x00U)
 80013ea:	d002      	beq.n	80013f2 <HAL_TIM_IRQHandler+0xaa>
        HAL_TIM_IC_CaptureCallback(htim);
 80013ec:	f7ff ffab 	bl	8001346 <HAL_TIM_IC_CaptureCallback>
 80013f0:	e004      	b.n	80013fc <HAL_TIM_IRQHandler+0xb4>
        HAL_TIM_OC_DelayElapsedCallback(htim);
 80013f2:	f000 f85f 	bl	80014b4 <HAL_TIM_OC_DelayElapsedCallback>
        HAL_TIM_PWM_PulseFinishedCallback(htim);
 80013f6:	4620      	mov	r0, r4
 80013f8:	f000 f85d 	bl	80014b6 <HAL_TIM_PWM_PulseFinishedCallback>
      htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
 80013fc:	7725      	strb	r5, [r4, #28]
  if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_CC4) != RESET)
 80013fe:	6820      	ldr	r0, [r4, #0]
 8001400:	6901      	ldr	r1, [r0, #16]
 8001402:	f011 0f10 	tst.w	r1, #16
    if (__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_CC4) != RESET)
 8001406:	bf1c      	itt	ne
 8001408:	68c1      	ldrne	r1, [r0, #12]
 800140a:	f011 0f10 	tstne.w	r1, #16
  if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_CC4) != RESET)
 800140e:	d013      	beq.n	8001438 <HAL_TIM_IRQHandler+0xf0>
      __HAL_TIM_CLEAR_IT(htim, TIM_IT_CC4);
 8001410:	f06f 0110 	mvn.w	r1, #16
 8001414:	6101      	str	r1, [r0, #16]
      htim->Channel = HAL_TIM_ACTIVE_CHANNEL_4;
 8001416:	2008      	movs	r0, #8
 8001418:	7720      	strb	r0, [r4, #28]
      if ((htim->Instance->CCMR2 & TIM_CCMR2_CC4S) != 0x00U)
 800141a:	6820      	ldr	r0, [r4, #0]
 800141c:	69c0      	ldr	r0, [r0, #28]
 800141e:	f410 7f40 	tst.w	r0, #768	; 0x300
        HAL_TIM_OC_DelayElapsedCallback(htim);
 8001422:	4620      	mov	r0, r4
      if ((htim->Instance->CCMR2 & TIM_CCMR2_CC4S) != 0x00U)
 8001424:	d002      	beq.n	800142c <HAL_TIM_IRQHandler+0xe4>
        HAL_TIM_IC_CaptureCallback(htim);
 8001426:	f7ff ff8e 	bl	8001346 <HAL_TIM_IC_CaptureCallback>
 800142a:	e004      	b.n	8001436 <HAL_TIM_IRQHandler+0xee>
        HAL_TIM_OC_DelayElapsedCallback(htim);
 800142c:	f000 f842 	bl	80014b4 <HAL_TIM_OC_DelayElapsedCallback>
        HAL_TIM_PWM_PulseFinishedCallback(htim);
 8001430:	4620      	mov	r0, r4
 8001432:	f000 f840 	bl	80014b6 <HAL_TIM_PWM_PulseFinishedCallback>
      htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
 8001436:	7725      	strb	r5, [r4, #28]
  if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_UPDATE) != RESET)
 8001438:	6820      	ldr	r0, [r4, #0]
 800143a:	6901      	ldr	r1, [r0, #16]
 800143c:	f011 0f01 	tst.w	r1, #1
    if (__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_UPDATE) != RESET)
 8001440:	bf1c      	itt	ne
 8001442:	68c1      	ldrne	r1, [r0, #12]
 8001444:	f011 0f01 	tstne.w	r1, #1
  if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_UPDATE) != RESET)
 8001448:	d005      	beq.n	8001456 <HAL_TIM_IRQHandler+0x10e>
      __HAL_TIM_CLEAR_IT(htim, TIM_IT_UPDATE);
 800144a:	f06f 0101 	mvn.w	r1, #1
 800144e:	6101      	str	r1, [r0, #16]
      HAL_TIM_PeriodElapsedCallback(htim);
 8001450:	4620      	mov	r0, r4
 8001452:	f000 f831 	bl	80014b8 <HAL_TIM_PeriodElapsedCallback>
  if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_BREAK) != RESET)
 8001456:	6820      	ldr	r0, [r4, #0]
 8001458:	6901      	ldr	r1, [r0, #16]
 800145a:	f011 0f80 	tst.w	r1, #128	; 0x80
    if (__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_BREAK) != RESET)
 800145e:	bf1c      	itt	ne
 8001460:	68c1      	ldrne	r1, [r0, #12]
 8001462:	f011 0f80 	tstne.w	r1, #128	; 0x80
  if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_BREAK) != RESET)
 8001466:	d005      	beq.n	8001474 <HAL_TIM_IRQHandler+0x12c>
      __HAL_TIM_CLEAR_IT(htim, TIM_IT_BREAK);
 8001468:	f06f 0180 	mvn.w	r1, #128	; 0x80
 800146c:	6101      	str	r1, [r0, #16]
      HAL_TIMEx_BreakCallback(htim);
 800146e:	4620      	mov	r0, r4
 8001470:	f7ff fde0 	bl	8001034 <HAL_TIMEx_BreakCallback>
  if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_TRIGGER) != RESET)
 8001474:	6820      	ldr	r0, [r4, #0]
 8001476:	6901      	ldr	r1, [r0, #16]
 8001478:	f011 0f40 	tst.w	r1, #64	; 0x40
    if (__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_TRIGGER) != RESET)
 800147c:	bf1c      	itt	ne
 800147e:	68c1      	ldrne	r1, [r0, #12]
 8001480:	f011 0f40 	tstne.w	r1, #64	; 0x40
  if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_TRIGGER) != RESET)
 8001484:	d005      	beq.n	8001492 <HAL_TIM_IRQHandler+0x14a>
      __HAL_TIM_CLEAR_IT(htim, TIM_IT_TRIGGER);
 8001486:	f06f 0140 	mvn.w	r1, #64	; 0x40
 800148a:	6101      	str	r1, [r0, #16]
      HAL_TIM_TriggerCallback(htim);
 800148c:	4620      	mov	r0, r4
 800148e:	f000 f85a 	bl	8001546 <HAL_TIM_TriggerCallback>
  if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_COM) != RESET)
 8001492:	6820      	ldr	r0, [r4, #0]
 8001494:	6901      	ldr	r1, [r0, #16]
 8001496:	f011 0f20 	tst.w	r1, #32
    if (__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_COM) != RESET)
 800149a:	bf1a      	itte	ne
 800149c:	68c1      	ldrne	r1, [r0, #12]
 800149e:	f011 0f20 	tstne.w	r1, #32
}
 80014a2:	bd70      	popeq	{r4, r5, r6, pc}
      __HAL_TIM_CLEAR_IT(htim, TIM_FLAG_COM);
 80014a4:	f06f 0120 	mvn.w	r1, #32
 80014a8:	6101      	str	r1, [r0, #16]
      HAL_TIMEx_CommutCallback(htim);
 80014aa:	4620      	mov	r0, r4
 80014ac:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80014b0:	f7ff bdc1 	b.w	8001036 <HAL_TIMEx_CommutCallback>

080014b4 <HAL_TIM_OC_DelayElapsedCallback>:
}
 80014b4:	4770      	bx	lr

080014b6 <HAL_TIM_PWM_PulseFinishedCallback>:
}
 80014b6:	4770      	bx	lr

080014b8 <HAL_TIM_PeriodElapsedCallback>:
    return timer_50us;
}

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  if(htim->Instance == TIM1)
 80014b8:	6801      	ldr	r1, [r0, #0]
 80014ba:	f1a1 4080 	sub.w	r0, r1, #1073741824	; 0x40000000
 80014be:	f5b0 3096 	subs.w	r0, r0, #76800	; 0x12c00
  }
  else if(htim->Instance == TIM2)
  {
    timer_50us++;
  }
}
 80014c2:	bf08      	it	eq
 80014c4:	4770      	bxeq	lr
    timer1_loop++;
 80014c6:	4809      	ldr	r0, [pc, #36]	; (80014ec <HAL_TIM_PeriodElapsedCallback+0x34>)
  else if(htim->Instance == TIM3)
 80014c8:	f1a1 4280 	sub.w	r2, r1, #1073741824	; 0x40000000
 80014cc:	f5b2 6280 	subs.w	r2, r2, #1024	; 0x400
 80014d0:	d007      	beq.n	80014e2 <HAL_TIM_PeriodElapsedCallback+0x2a>
  else if(htim->Instance == TIM2)
 80014d2:	f1b1 4f80 	cmp.w	r1, #1073741824	; 0x40000000
}
 80014d6:	bf18      	it	ne
 80014d8:	4770      	bxne	lr
    timer_50us++;
 80014da:	6841      	ldr	r1, [r0, #4]
 80014dc:	1c49      	adds	r1, r1, #1
 80014de:	6041      	str	r1, [r0, #4]
}
 80014e0:	4770      	bx	lr
    timer1_loop++;
 80014e2:	6801      	ldr	r1, [r0, #0]
 80014e4:	1c49      	adds	r1, r1, #1
 80014e6:	6001      	str	r1, [r0, #0]
}
 80014e8:	4770      	bx	lr
 80014ea:	0000      	.short	0x0000
 80014ec:	20000004 	.word	0x20000004

080014f0 <HAL_TIM_SlaveConfigSynchro>:
{
 80014f0:	b570      	push	{r4, r5, r6, lr}
 80014f2:	4604      	mov	r4, r0
  __HAL_LOCK(htim);
 80014f4:	f890 003c 	ldrb.w	r0, [r0, #60]	; 0x3c
 80014f8:	2801      	cmp	r0, #1
 80014fa:	bf04      	itt	eq
 80014fc:	2002      	moveq	r0, #2
}
 80014fe:	bd70      	popeq	{r4, r5, r6, pc}
  __HAL_LOCK(htim);
 8001500:	2501      	movs	r5, #1
 8001502:	f884 503c 	strb.w	r5, [r4, #60]	; 0x3c
  htim->State = HAL_TIM_STATE_BUSY;
 8001506:	2002      	movs	r0, #2
 8001508:	f884 003d 	strb.w	r0, [r4, #61]	; 0x3d
  if (TIM_SlaveTimer_SetConfig(htim, sSlaveConfig) != HAL_OK)
 800150c:	4620      	mov	r0, r4
 800150e:	f000 f99b 	bl	8001848 <TIM_SlaveTimer_SetConfig>
 8001512:	0001      	movs	r1, r0
 8001514:	f04f 0000 	mov.w	r0, #0
  __HAL_LOCK(htim);
 8001518:	d005      	beq.n	8001526 <HAL_TIM_SlaveConfigSynchro+0x36>
    htim->State = HAL_TIM_STATE_READY;
 800151a:	f884 503d 	strb.w	r5, [r4, #61]	; 0x3d
    __HAL_UNLOCK(htim);
 800151e:	f884 003c 	strb.w	r0, [r4, #60]	; 0x3c
    return HAL_ERROR;
 8001522:	2001      	movs	r0, #1
}
 8001524:	bd70      	pop	{r4, r5, r6, pc}
  __HAL_TIM_DISABLE_IT(htim, TIM_IT_TRIGGER);
 8001526:	6821      	ldr	r1, [r4, #0]
 8001528:	68ca      	ldr	r2, [r1, #12]
 800152a:	f022 0240 	bic.w	r2, r2, #64	; 0x40
 800152e:	60ca      	str	r2, [r1, #12]
  __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_TRIGGER);
 8001530:	6821      	ldr	r1, [r4, #0]
 8001532:	68ca      	ldr	r2, [r1, #12]
 8001534:	f422 4280 	bic.w	r2, r2, #16384	; 0x4000
 8001538:	60ca      	str	r2, [r1, #12]
  htim->State = HAL_TIM_STATE_READY;
 800153a:	f884 503d 	strb.w	r5, [r4, #61]	; 0x3d
  __HAL_UNLOCK(htim);
 800153e:	f884 003c 	strb.w	r0, [r4, #60]	; 0x3c
  return HAL_OK;
 8001542:	2000      	movs	r0, #0
}
 8001544:	bd70      	pop	{r4, r5, r6, pc}

08001546 <HAL_TIM_TriggerCallback>:
}
 8001546:	4770      	bx	lr

08001548 <HAL_UART_Init>:
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_UART_Init(UART_HandleTypeDef *huart)
{
  /* Check the UART handle allocation */
  if (huart == NULL)
 8001548:	2800      	cmp	r0, #0
  {
    return HAL_ERROR;
 800154a:	bf04      	itt	eq
 800154c:	2001      	moveq	r0, #1
  huart->gState = HAL_UART_STATE_READY;
  huart->RxState = HAL_UART_STATE_READY;
  huart->RxEventType = HAL_UART_RXEVENT_TC;

  return HAL_OK;
}
 800154e:	4770      	bxeq	lr
{
 8001550:	b570      	push	{r4, r5, r6, lr}
 8001552:	4604      	mov	r4, r0
  if (huart->gState == HAL_UART_STATE_RESET)
 8001554:	f890 0041 	ldrb.w	r0, [r0, #65]	; 0x41
 8001558:	2500      	movs	r5, #0
    return HAL_ERROR;
 800155a:	b920      	cbnz	r0, 8001566 <HAL_UART_Init+0x1e>
    huart->Lock = HAL_UNLOCKED;
 800155c:	f884 5040 	strb.w	r5, [r4, #64]	; 0x40
    HAL_UART_MspInit(huart);
 8001560:	4620      	mov	r0, r4
 8001562:	f000 f823 	bl	80015ac <HAL_UART_MspInit>
  huart->gState = HAL_UART_STATE_BUSY;
 8001566:	2024      	movs	r0, #36	; 0x24
 8001568:	f884 0041 	strb.w	r0, [r4, #65]	; 0x41
  __HAL_UART_DISABLE(huart);
 800156c:	6820      	ldr	r0, [r4, #0]
 800156e:	68c1      	ldr	r1, [r0, #12]
 8001570:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8001574:	60c1      	str	r1, [r0, #12]
  UART_SetConfig(huart);
 8001576:	4620      	mov	r0, r4
 8001578:	f000 f9da 	bl	8001930 <UART_SetConfig>
  CLEAR_BIT(huart->Instance->CR2, (USART_CR2_LINEN | USART_CR2_CLKEN));
 800157c:	6820      	ldr	r0, [r4, #0]
 800157e:	6901      	ldr	r1, [r0, #16]
 8001580:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 8001584:	6101      	str	r1, [r0, #16]
  CLEAR_BIT(huart->Instance->CR3, (USART_CR3_SCEN | USART_CR3_HDSEL | USART_CR3_IREN));
 8001586:	6820      	ldr	r0, [r4, #0]
 8001588:	6941      	ldr	r1, [r0, #20]
 800158a:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 800158e:	6141      	str	r1, [r0, #20]
  __HAL_UART_ENABLE(huart);
 8001590:	6820      	ldr	r0, [r4, #0]
 8001592:	68c1      	ldr	r1, [r0, #12]
 8001594:	f441 5100 	orr.w	r1, r1, #8192	; 0x2000
 8001598:	60c1      	str	r1, [r0, #12]
  huart->ErrorCode = HAL_UART_ERROR_NONE;
 800159a:	6465      	str	r5, [r4, #68]	; 0x44
  huart->gState = HAL_UART_STATE_READY;
 800159c:	2020      	movs	r0, #32
 800159e:	f884 0041 	strb.w	r0, [r4, #65]	; 0x41
  huart->RxState = HAL_UART_STATE_READY;
 80015a2:	f884 0042 	strb.w	r0, [r4, #66]	; 0x42
  huart->RxEventType = HAL_UART_RXEVENT_TC;
 80015a6:	6365      	str	r5, [r4, #52]	; 0x34
  return HAL_OK;
 80015a8:	2000      	movs	r0, #0
}
 80015aa:	bd70      	pop	{r4, r5, r6, pc}

080015ac <HAL_UART_MspInit>:
* This function configures the hardware resources used in this example
* @param huart: UART handle pointer
* @retval None
*/
void HAL_UART_MspInit(UART_HandleTypeDef* huart)
{
 80015ac:	b530      	push	{r4, r5, lr}
 80015ae:	b085      	sub	sp, #20
  GPIO_InitTypeDef GPIO_InitStruct = {0};
 80015b0:	2400      	movs	r4, #0
 80015b2:	9400      	str	r4, [sp, #0]
 80015b4:	9401      	str	r4, [sp, #4]
 80015b6:	9402      	str	r4, [sp, #8]
  if(huart->Instance==USART1)
 80015b8:	9403      	str	r4, [sp, #12]
 80015ba:	6800      	ldr	r0, [r0, #0]
 80015bc:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 80015c0:	f5b1 319c 	subs.w	r1, r1, #79872	; 0x13800
  /* USER CODE BEGIN USART1_MspInit 1 */

  /* USER CODE END USART1_MspInit 1 */
  }

}
 80015c4:	bf1c      	itt	ne
 80015c6:	b005      	addne	sp, #20
 80015c8:	bd30      	popne	{r4, r5, pc}
    __HAL_RCC_USART1_CLK_ENABLE();
 80015ca:	4813      	ldr	r0, [pc, #76]	; (8001618 <HAL_UART_MspInit+0x6c>)
 80015cc:	6981      	ldr	r1, [r0, #24]
 80015ce:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 80015d2:	6181      	str	r1, [r0, #24]
 80015d4:	6981      	ldr	r1, [r0, #24]
 80015d6:	f401 4180 	and.w	r1, r1, #16384	; 0x4000
    __HAL_RCC_GPIOA_CLK_ENABLE();
 80015da:	9104      	str	r1, [sp, #16]
 80015dc:	6981      	ldr	r1, [r0, #24]
 80015de:	f041 0104 	orr.w	r1, r1, #4
 80015e2:	6181      	str	r1, [r0, #24]
 80015e4:	6980      	ldr	r0, [r0, #24]
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
 80015e6:	4d0d      	ldr	r5, [pc, #52]	; (800161c <HAL_UART_MspInit+0x70>)
    __HAL_RCC_GPIOA_CLK_ENABLE();
 80015e8:	f000 0004 	and.w	r0, r0, #4
    GPIO_InitStruct.Pin = GPIO_PIN_9;
 80015ec:	9004      	str	r0, [sp, #16]
 80015ee:	f44f 7000 	mov.w	r0, #512	; 0x200
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
 80015f2:	9000      	str	r0, [sp, #0]
 80015f4:	2002      	movs	r0, #2
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
 80015f6:	9001      	str	r0, [sp, #4]
 80015f8:	2003      	movs	r0, #3
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
 80015fa:	9003      	str	r0, [sp, #12]
 80015fc:	4669      	mov	r1, sp
 80015fe:	4628      	mov	r0, r5
 8001600:	f7ff f878 	bl	80006f4 <HAL_GPIO_Init>
    GPIO_InitStruct.Pin = GPIO_PIN_10;
 8001604:	1528      	asrs	r0, r5, #20
 8001606:	e9cd 0400 	strd	r0, r4, [sp]
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
 800160a:	4669      	mov	r1, sp
 800160c:	4628      	mov	r0, r5
 800160e:	9402      	str	r4, [sp, #8]
 8001610:	f7ff f870 	bl	80006f4 <HAL_GPIO_Init>
}
 8001614:	b005      	add	sp, #20
 8001616:	bd30      	pop	{r4, r5, pc}
 8001618:	40021000 	.word	0x40021000
 800161c:	40010800 	.word	0x40010800

08001620 <HAL_UART_Transmit>:
  * @param  Size  Amount of data elements (u8 or u16) to be sent
  * @param  Timeout Timeout duration
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_UART_Transmit(UART_HandleTypeDef *huart, const uint8_t *pData, uint16_t Size, uint32_t Timeout)
{
 8001620:	e92d 5ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
 8001624:	4604      	mov	r4, r0
  const uint8_t  *pdata8bits;
  const uint16_t *pdata16bits;
  uint32_t tickstart = 0U;

  /* Check that a Tx process is not already ongoing */
  if (huart->gState == HAL_UART_STATE_READY)
 8001626:	f890 0041 	ldrb.w	r0, [r0, #65]	; 0x41
{
 800162a:	461d      	mov	r5, r3
 800162c:	4616      	mov	r6, r2
 800162e:	4688      	mov	r8, r1
  if (huart->gState == HAL_UART_STATE_READY)
 8001630:	2820      	cmp	r0, #32

    return HAL_OK;
  }
  else
  {
    return HAL_BUSY;
 8001632:	bf1c      	itt	ne
 8001634:	2002      	movne	r0, #2
  }
}
 8001636:	e8bd 9ff0 	ldmiane.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}
    if ((pData == NULL) || (Size == 0U))
 800163a:	f1b8 0f00 	cmp.w	r8, #0
 800163e:	bf12      	itee	ne
 8001640:	2e00      	cmpne	r6, #0
      return  HAL_ERROR;
 8001642:	2001      	moveq	r0, #1
}
 8001644:	e8bd 9ff0 	ldmiaeq.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}
    huart->ErrorCode = HAL_UART_ERROR_NONE;
 8001648:	f04f 0b00 	mov.w	fp, #0
 800164c:	f8c4 b044 	str.w	fp, [r4, #68]	; 0x44
    huart->gState = HAL_UART_STATE_BUSY_TX;
 8001650:	f04f 0021 	mov.w	r0, #33	; 0x21
 8001654:	f884 0041 	strb.w	r0, [r4, #65]	; 0x41
    tickstart = HAL_GetTick();
 8001658:	f7ff f944 	bl	80008e4 <HAL_GetTick>
    huart->TxXferSize = Size;
 800165c:	84a6      	strh	r6, [r4, #36]	; 0x24
    tickstart = HAL_GetTick();
 800165e:	4681      	mov	r9, r0
    huart->TxXferCount = Size;
 8001660:	84e6      	strh	r6, [r4, #38]	; 0x26
    if ((huart->Init.WordLength == UART_WORDLENGTH_9B) && (huart->Init.Parity == UART_PARITY_NONE))
 8001662:	68a0      	ldr	r0, [r4, #8]
 8001664:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8001668:	bf07      	ittee	eq
 800166a:	6920      	ldreq	r0, [r4, #16]
 800166c:	2800      	cmpeq	r0, #0
      pdata8bits  = pData;
 800166e:	4646      	movne	r6, r8
      pdata16bits = NULL;
 8001670:	f04f 0800 	movne.w	r8, #0
      pdata8bits  = NULL;
 8001674:	bf08      	it	eq
 8001676:	2600      	moveq	r6, #0
    while (huart->TxXferCount > 0U)
 8001678:	8ce0      	ldrh	r0, [r4, #38]	; 0x26
      {
        /* Disable TXE, RXNE, PE and ERR (Frame error, noise error, overrun error) interrupts for the interrupt process */
        ATOMIC_CLEAR_BIT(huart->Instance->CR1, (USART_CR1_RXNEIE | USART_CR1_PEIE | USART_CR1_TXEIE));
        ATOMIC_CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);

        huart->gState  = HAL_UART_STATE_READY;
 800167a:	f04f 0a20 	mov.w	sl, #32
    while (huart->TxXferCount > 0U)
 800167e:	b3b0      	cbz	r0, 80016ee <HAL_UART_Transmit+0xce>
  while ((__HAL_UART_GET_FLAG(huart, Flag) ? SET : RESET) == Status)
 8001680:	6820      	ldr	r0, [r4, #0]
      if (UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_TXE, RESET, tickstart, Timeout) != HAL_OK)
 8001682:	f04f 0780 	mov.w	r7, #128	; 0x80
  while ((__HAL_UART_GET_FLAG(huart, Flag) ? SET : RESET) == Status)
 8001686:	6800      	ldr	r0, [r0, #0]
 8001688:	ea37 0000 	bics.w	r0, r7, r0
 800168c:	d024      	beq.n	80016d8 <HAL_UART_Transmit+0xb8>
    if (Timeout != HAL_MAX_DELAY)
 800168e:	bf00      	nop
 8001690:	f1b5 3fff 	cmp.w	r5, #4294967295
 8001694:	d01b      	beq.n	80016ce <HAL_UART_Transmit+0xae>
      if ((Timeout == 0U) || ((HAL_GetTick() - Tickstart) > Timeout))
 8001696:	b12d      	cbz	r5, 80016a4 <HAL_UART_Transmit+0x84>
 8001698:	f7ff f924 	bl	80008e4 <HAL_GetTick>
 800169c:	eba0 0109 	sub.w	r1, r0, r9
 80016a0:	42a9      	cmp	r1, r5
 80016a2:	d914      	bls.n	80016ce <HAL_UART_Transmit+0xae>
        ATOMIC_CLEAR_BIT(huart->Instance->CR1, (USART_CR1_RXNEIE | USART_CR1_PEIE | USART_CR1_TXEIE));
 80016a4:	6820      	ldr	r0, [r4, #0]
 80016a6:	300c      	adds	r0, #12
 80016a8:	e850 1f00 	ldrex	r1, [r0]
 80016ac:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 80016b0:	e840 1200 	strex	r2, r1, [r0]
 80016b4:	2a00      	cmp	r2, #0
 80016b6:	d1f5      	bne.n	80016a4 <HAL_UART_Transmit+0x84>
        ATOMIC_CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);
 80016b8:	6820      	ldr	r0, [r4, #0]
 80016ba:	3014      	adds	r0, #20
 80016bc:	e850 1f00 	ldrex	r1, [r0]
 80016c0:	f021 0101 	bic.w	r1, r1, #1
 80016c4:	e840 1200 	strex	r2, r1, [r0]
 80016c8:	2a00      	cmp	r2, #0
 80016ca:	d1f5      	bne.n	80016b8 <HAL_UART_Transmit+0x98>
 80016cc:	e035      	b.n	800173a <HAL_UART_Transmit+0x11a>
        huart->RxState = HAL_UART_STATE_READY;

        /* Process Unlocked */
        __HAL_UNLOCK(huart);

        return HAL_TIMEOUT;
 80016ce:	6820      	ldr	r0, [r4, #0]
 80016d0:	6800      	ldr	r0, [r0, #0]
 80016d2:	ea37 0000 	bics.w	r0, r7, r0
 80016d6:	d1db      	bne.n	8001690 <HAL_UART_Transmit+0x70>
      }
    }
  }
  return HAL_OK;
 80016d8:	b3c6      	cbz	r6, 800174c <HAL_UART_Transmit+0x12c>
        huart->Instance->DR = (uint8_t)(*pdata8bits & 0xFFU);
 80016da:	6820      	ldr	r0, [r4, #0]
 80016dc:	f816 1b01 	ldrb.w	r1, [r6], #1
 80016e0:	6041      	str	r1, [r0, #4]
      huart->TxXferCount--;
 80016e2:	8ce0      	ldrh	r0, [r4, #38]	; 0x26
 80016e4:	1e40      	subs	r0, r0, #1
 80016e6:	84e0      	strh	r0, [r4, #38]	; 0x26
    while (huart->TxXferCount > 0U)
 80016e8:	8ce0      	ldrh	r0, [r4, #38]	; 0x26
 80016ea:	2800      	cmp	r0, #0
 80016ec:	d1c8      	bne.n	8001680 <HAL_UART_Transmit+0x60>
  while ((__HAL_UART_GET_FLAG(huart, Flag) ? SET : RESET) == Status)
 80016ee:	6820      	ldr	r0, [r4, #0]
    if (UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_TC, RESET, tickstart, Timeout) != HAL_OK)
 80016f0:	2640      	movs	r6, #64	; 0x40
  while ((__HAL_UART_GET_FLAG(huart, Flag) ? SET : RESET) == Status)
 80016f2:	6800      	ldr	r0, [r0, #0]
 80016f4:	ea36 0000 	bics.w	r0, r6, r0
 80016f8:	d035      	beq.n	8001766 <HAL_UART_Transmit+0x146>
    if (Timeout != HAL_MAX_DELAY)
 80016fa:	bf00      	nop
 80016fc:	f1b5 3fff 	cmp.w	r5, #4294967295
 8001700:	d02c      	beq.n	800175c <HAL_UART_Transmit+0x13c>
      if ((Timeout == 0U) || ((HAL_GetTick() - Tickstart) > Timeout))
 8001702:	b12d      	cbz	r5, 8001710 <HAL_UART_Transmit+0xf0>
 8001704:	f7ff f8ee 	bl	80008e4 <HAL_GetTick>
 8001708:	eba0 0009 	sub.w	r0, r0, r9
 800170c:	42a8      	cmp	r0, r5
 800170e:	d925      	bls.n	800175c <HAL_UART_Transmit+0x13c>
        ATOMIC_CLEAR_BIT(huart->Instance->CR1, (USART_CR1_RXNEIE | USART_CR1_PEIE | USART_CR1_TXEIE));
 8001710:	6820      	ldr	r0, [r4, #0]
 8001712:	300c      	adds	r0, #12
 8001714:	e850 1f00 	ldrex	r1, [r0]
 8001718:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 800171c:	e840 1200 	strex	r2, r1, [r0]
 8001720:	2a00      	cmp	r2, #0
 8001722:	d1f5      	bne.n	8001710 <HAL_UART_Transmit+0xf0>
        ATOMIC_CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);
 8001724:	6820      	ldr	r0, [r4, #0]
 8001726:	f100 0114 	add.w	r1, r0, #20
 800172a:	e851 0f00 	ldrex	r0, [r1]
 800172e:	f020 0001 	bic.w	r0, r0, #1
 8001732:	e841 0200 	strex	r2, r0, [r1]
 8001736:	2a00      	cmp	r2, #0
 8001738:	d1f4      	bne.n	8001724 <HAL_UART_Transmit+0x104>
        huart->gState  = HAL_UART_STATE_READY;
 800173a:	f884 a041 	strb.w	sl, [r4, #65]	; 0x41
        huart->RxState = HAL_UART_STATE_READY;
 800173e:	f884 a042 	strb.w	sl, [r4, #66]	; 0x42
        __HAL_UNLOCK(huart);
 8001742:	f884 b040 	strb.w	fp, [r4, #64]	; 0x40
      return HAL_TIMEOUT;
 8001746:	2003      	movs	r0, #3
}
 8001748:	e8bd 9ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}
 800174c:	e7ff      	b.n	800174e <HAL_UART_Transmit+0x12e>
        huart->Instance->DR = (uint16_t)(*pdata16bits & 0x01FFU);
 800174e:	f838 0b02 	ldrh.w	r0, [r8], #2
 8001752:	6821      	ldr	r1, [r4, #0]
 8001754:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8001758:	6048      	str	r0, [r1, #4]
        pdata16bits++;
 800175a:	e7c2      	b.n	80016e2 <HAL_UART_Transmit+0xc2>
        return HAL_TIMEOUT;
 800175c:	6820      	ldr	r0, [r4, #0]
 800175e:	6800      	ldr	r0, [r0, #0]
 8001760:	ea36 0000 	bics.w	r0, r6, r0
 8001764:	d1ca      	bne.n	80016fc <HAL_UART_Transmit+0xdc>
    huart->gState = HAL_UART_STATE_READY;
 8001766:	f884 a041 	strb.w	sl, [r4, #65]	; 0x41
    return HAL_OK;
 800176a:	2000      	movs	r0, #0
}
 800176c:	e8bd 9ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}

08001770 <HardFault_Handler>:
  while (1)
 8001770:	e7fe      	b.n	8001770 <HardFault_Handler>

08001772 <MemManage_Handler>:
  while (1)
 8001772:	e7fe      	b.n	8001772 <MemManage_Handler>

08001774 <NMI_Handler>:
  while (1)
 8001774:	e7fe      	b.n	8001774 <NMI_Handler>

08001776 <StartDefaultTask>:
      }
    }
		osDelay(100);
  }
  /* USER CODE END 5 */
}
 8001776:	f640 74ff 	movw	r4, #4095	; 0xfff
    for(uint32_t i=0; i< 0xFFF;i++)
 800177a:	2100      	movs	r1, #0
      for(uint32_t j=0;j<0xFF;j++)
 800177c:	207f      	movs	r0, #127	; 0x7f
 800177e:	1e40      	subs	r0, r0, #1
}
 8001780:	d1fd      	bne.n	800177e <StartDefaultTask+0x8>
 8001782:	1c49      	adds	r1, r1, #1
 8001784:	42a1      	cmp	r1, r4
 8001786:	d3f9      	bcc.n	800177c <StartDefaultTask+0x6>
		osDelay(100);
 8001788:	2064      	movs	r0, #100	; 0x64
 800178a:	f000 fc93 	bl	80020b4 <osDelay>
  }
 800178e:	e7f4      	b.n	800177a <StartDefaultTask+0x4>

08001790 <StartTask02>:
{
  /* USER CODE BEGIN StartTask02 */
  /* Infinite loop */
  for(;;)
  {
    log_buffer_flush();
 8001790:	f000 fb3c 	bl	8001e0c <log_buffer_flush>
    osDelay(500);
 8001794:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
 8001798:	f000 fc8c 	bl	80020b4 <osDelay>
 800179c:	e7f8      	b.n	8001790 <StartTask02>

0800179e <SysTick_Handler>:

/**
  * @brief This function handles System tick timer.
  */
void SysTick_Handler(void)
{
 800179e:	b510      	push	{r4, lr}
  /* USER CODE BEGIN SysTick_IRQn 0 */

  /* USER CODE END SysTick_IRQn 0 */
  HAL_IncTick();
 80017a0:	f7ff f8a6 	bl	80008f0 <HAL_IncTick>
#if (INCLUDE_xTaskGetSchedulerState == 1 )
  if (xTaskGetSchedulerState() != taskSCHEDULER_NOT_STARTED)
 80017a4:	f002 f8b0 	bl	8003908 <xTaskGetSchedulerState>
 80017a8:	2801      	cmp	r0, #1
  }
#endif /* INCLUDE_xTaskGetSchedulerState */
  /* USER CODE BEGIN SysTick_IRQn 1 */

  /* USER CODE END SysTick_IRQn 1 */
}
 80017aa:	bf08      	it	eq
 80017ac:	bd10      	popeq	{r4, pc}
  xPortSysTickHandler();
 80017ae:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80017b2:	f001 bdb3 	b.w	800331c <xPortSysTickHandler>

080017b6 <SystemInit>:

  /* Configure the Vector Table location -------------------------------------*/
#if defined(USER_VECT_TAB_ADDRESS)
  SCB->VTOR = VECT_TAB_BASE_ADDRESS | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal SRAM. */
#endif /* USER_VECT_TAB_ADDRESS */
}
 80017b6:	4770      	bx	lr

080017b8 <TIM2_IRQHandler>:
void TIM2_IRQHandler(void)
{
  /* USER CODE BEGIN TIM2_IRQn 0 */

  /* USER CODE END TIM2_IRQn 0 */
  HAL_TIM_IRQHandler(&htim2);
 80017b8:	4801      	ldr	r0, [pc, #4]	; (80017c0 <TIM2_IRQHandler+0x8>)
 80017ba:	f7ff bdc5 	b.w	8001348 <HAL_TIM_IRQHandler>
 80017be:	0000      	.short	0x0000
 80017c0:	200004f4 	.word	0x200004f4

080017c4 <TIM3_IRQHandler>:
void TIM3_IRQHandler(void)
{
  /* USER CODE BEGIN TIM3_IRQn 0 */

  /* USER CODE END TIM3_IRQn 0 */
  HAL_TIM_IRQHandler(&htim3);
 80017c4:	4801      	ldr	r0, [pc, #4]	; (80017cc <TIM3_IRQHandler+0x8>)
 80017c6:	f7ff bdbf 	b.w	8001348 <HAL_TIM_IRQHandler>
 80017ca:	0000      	.short	0x0000
 80017cc:	2000053c 	.word	0x2000053c

080017d0 <TIM_Base_SetConfig>:
{
 80017d0:	b430      	push	{r4, r5}
  tmpcr1 = TIMx->CR1;
 80017d2:	6802      	ldr	r2, [r0, #0]
  if (IS_TIM_COUNTER_MODE_SELECT_INSTANCE(TIMx))
 80017d4:	4b19      	ldr	r3, [pc, #100]	; (800183c <TIM_Base_SetConfig+0x6c>)
 80017d6:	f8df c068 	ldr.w	ip, [pc, #104]	; 8001840 <TIM_Base_SetConfig+0x70>
 80017da:	4c1a      	ldr	r4, [pc, #104]	; (8001844 <TIM_Base_SetConfig+0x74>)
 80017dc:	4298      	cmp	r0, r3
 80017de:	bf18      	it	ne
 80017e0:	f1b0 4f80 	cmpne.w	r0, #1073741824	; 0x40000000
{
 80017e4:	d003      	beq.n	80017ee <TIM_Base_SetConfig+0x1e>
  if (IS_TIM_COUNTER_MODE_SELECT_INSTANCE(TIMx))
 80017e6:	4560      	cmp	r0, ip
 80017e8:	bf18      	it	ne
 80017ea:	42a0      	cmpne	r0, r4
 80017ec:	d104      	bne.n	80017f8 <TIM_Base_SetConfig+0x28>
    tmpcr1 |= Structure->CounterMode;
 80017ee:	684d      	ldr	r5, [r1, #4]
    tmpcr1 &= ~(TIM_CR1_DIR | TIM_CR1_CMS);
 80017f0:	f022 0270 	bic.w	r2, r2, #112	; 0x70
    tmpcr1 |= Structure->CounterMode;
 80017f4:	ea45 0202 	orr.w	r2, r5, r2
  if (IS_TIM_CLOCK_DIVISION_INSTANCE(TIMx))
 80017f8:	4298      	cmp	r0, r3
 80017fa:	bf18      	it	ne
 80017fc:	f1b0 4f80 	cmpne.w	r0, #1073741824	; 0x40000000
 8001800:	d003      	beq.n	800180a <TIM_Base_SetConfig+0x3a>
 8001802:	4560      	cmp	r0, ip
 8001804:	bf18      	it	ne
 8001806:	42a0      	cmpne	r0, r4
 8001808:	d105      	bne.n	8001816 <TIM_Base_SetConfig+0x46>
    tmpcr1 |= (uint32_t)Structure->ClockDivision;
 800180a:	f8d1 c00c 	ldr.w	ip, [r1, #12]
    tmpcr1 &= ~TIM_CR1_CKD;
 800180e:	f422 7240 	bic.w	r2, r2, #768	; 0x300
    tmpcr1 |= (uint32_t)Structure->ClockDivision;
 8001812:	ea4c 0202 	orr.w	r2, ip, r2
  MODIFY_REG(tmpcr1, TIM_CR1_ARPE, Structure->AutoReloadPreload);
 8001816:	f8d1 c014 	ldr.w	ip, [r1, #20]
 800181a:	f022 0280 	bic.w	r2, r2, #128	; 0x80
 800181e:	ea42 020c 	orr.w	r2, r2, ip
  TIMx->CR1 = tmpcr1;
 8001822:	6002      	str	r2, [r0, #0]
  TIMx->ARR = (uint32_t)Structure->Period ;
 8001824:	688a      	ldr	r2, [r1, #8]
 8001826:	62c2      	str	r2, [r0, #44]	; 0x2c
  TIMx->PSC = Structure->Prescaler;
 8001828:	680a      	ldr	r2, [r1, #0]
 800182a:	6282      	str	r2, [r0, #40]	; 0x28
  if (IS_TIM_REPETITION_COUNTER_INSTANCE(TIMx))
 800182c:	4298      	cmp	r0, r3
    TIMx->RCR = Structure->RepetitionCounter;
 800182e:	bf04      	itt	eq
 8001830:	6909      	ldreq	r1, [r1, #16]
 8001832:	6301      	streq	r1, [r0, #48]	; 0x30
  TIMx->EGR = TIM_EGR_UG;
 8001834:	2101      	movs	r1, #1
 8001836:	6141      	str	r1, [r0, #20]
}
 8001838:	bc30      	pop	{r4, r5}
 800183a:	4770      	bx	lr
 800183c:	40012c00 	.word	0x40012c00
 8001840:	40000400 	.word	0x40000400
 8001844:	40000800 	.word	0x40000800

08001848 <TIM_SlaveTimer_SetConfig>:
{
 8001848:	b410      	push	{r4}
  tmpsmcr = htim->Instance->SMCR;
 800184a:	6803      	ldr	r3, [r0, #0]
  HAL_StatusTypeDef status = HAL_OK;
 800184c:	2200      	movs	r2, #0
  tmpsmcr = htim->Instance->SMCR;
 800184e:	f8d3 c008 	ldr.w	ip, [r3, #8]
  tmpsmcr |= sSlaveConfig->InputTrigger;
 8001852:	684c      	ldr	r4, [r1, #4]
  tmpsmcr &= ~TIM_SMCR_TS;
 8001854:	f02c 0c70 	bic.w	ip, ip, #112	; 0x70
  tmpsmcr |= sSlaveConfig->InputTrigger;
 8001858:	ea44 0c0c 	orr.w	ip, r4, ip
  tmpsmcr |= sSlaveConfig->SlaveMode;
 800185c:	680c      	ldr	r4, [r1, #0]
  tmpsmcr &= ~TIM_SMCR_SMS;
 800185e:	f02c 0c07 	bic.w	ip, ip, #7
  tmpsmcr |= sSlaveConfig->SlaveMode;
 8001862:	ea44 0c0c 	orr.w	ip, r4, ip
  htim->Instance->SMCR = tmpsmcr;
 8001866:	f8c3 c008 	str.w	ip, [r3, #8]
  switch (sSlaveConfig->InputTrigger)
 800186a:	684b      	ldr	r3, [r1, #4]
 800186c:	f013 0f0f 	tst.w	r3, #15
{
 8001870:	d159      	bne.n	8001926 <TIM_SlaveTimer_SetConfig+0xde>
  switch (sSlaveConfig->InputTrigger)
 8001872:	111b      	asrs	r3, r3, #4
 8001874:	2b08      	cmp	r3, #8
 8001876:	d256      	bcs.n	8001926 <TIM_SlaveTimer_SetConfig+0xde>
 8001878:	e8df f003 	tbb	[pc, r3]
 800187c:	56565656 	.word	0x56565656
 8001880:	04402b12 	.word	0x04402b12
      TIM_ETR_SetConfig(htim->Instance,
 8001884:	6800      	ldr	r0, [r0, #0]
 8001886:	f8d1 c008 	ldr.w	ip, [r1, #8]
 800188a:	68cb      	ldr	r3, [r1, #12]
 800188c:	6909      	ldr	r1, [r1, #16]
  tmpsmcr = TIMx->SMCR;
 800188e:	6884      	ldr	r4, [r0, #8]
  tmpsmcr |= (uint32_t)(TIM_ExtTRGPrescaler | (TIM_ExtTRGPolarity | (ExtTRGFilter << 8U)));
 8001890:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
  tmpsmcr &= ~(TIM_SMCR_ETF | TIM_SMCR_ETPS | TIM_SMCR_ECE | TIM_SMCR_ETP);
 8001894:	f424 447f 	bic.w	r4, r4, #65280	; 0xff00
  tmpsmcr |= (uint32_t)(TIM_ExtTRGPrescaler | (TIM_ExtTRGPolarity | (ExtTRGFilter << 8U)));
 8001898:	4319      	orrs	r1, r3
 800189a:	4321      	orrs	r1, r4
  TIMx->SMCR = tmpsmcr;
 800189c:	6081      	str	r1, [r0, #8]
      break;
 800189e:	e043      	b.n	8001928 <TIM_SlaveTimer_SetConfig+0xe0>
      if (sSlaveConfig->SlaveMode == TIM_SLAVEMODE_GATED)
 80018a0:	680b      	ldr	r3, [r1, #0]
 80018a2:	2b05      	cmp	r3, #5
        return HAL_ERROR;
 80018a4:	bf02      	ittt	eq
 80018a6:	2001      	moveq	r0, #1
}
 80018a8:	bc10      	popeq	{r4}
 80018aa:	4770      	bxeq	lr
      tmpccer = htim->Instance->CCER;
 80018ac:	6803      	ldr	r3, [r0, #0]
 80018ae:	f8d3 c020 	ldr.w	ip, [r3, #32]
      htim->Instance->CCER &= ~TIM_CCER_CC1E;
 80018b2:	6a1c      	ldr	r4, [r3, #32]
 80018b4:	f024 0401 	bic.w	r4, r4, #1
 80018b8:	621c      	str	r4, [r3, #32]
      tmpccmr1 = htim->Instance->CCMR1;
 80018ba:	6803      	ldr	r3, [r0, #0]
 80018bc:	699c      	ldr	r4, [r3, #24]
      tmpccmr1 |= ((sSlaveConfig->TriggerFilter) << 4U);
 80018be:	6909      	ldr	r1, [r1, #16]
      tmpccmr1 &= ~TIM_CCMR1_IC1F;
 80018c0:	f024 04f0 	bic.w	r4, r4, #240	; 0xf0
      tmpccmr1 |= ((sSlaveConfig->TriggerFilter) << 4U);
 80018c4:	ea44 1101 	orr.w	r1, r4, r1, lsl #4
      htim->Instance->CCMR1 = tmpccmr1;
 80018c8:	6199      	str	r1, [r3, #24]
      htim->Instance->CCER = tmpccer;
 80018ca:	6800      	ldr	r0, [r0, #0]
 80018cc:	f8c0 c020 	str.w	ip, [r0, #32]
      break;
 80018d0:	e02a      	b.n	8001928 <TIM_SlaveTimer_SetConfig+0xe0>
      TIM_TI1_ConfigInputStage(htim->Instance,
 80018d2:	6800      	ldr	r0, [r0, #0]
 80018d4:	688b      	ldr	r3, [r1, #8]
 80018d6:	6909      	ldr	r1, [r1, #16]
  tmpccer = TIMx->CCER;
 80018d8:	f8d0 c020 	ldr.w	ip, [r0, #32]
  TIMx->CCER &= ~TIM_CCER_CC1E;
 80018dc:	6a04      	ldr	r4, [r0, #32]
 80018de:	f024 0401 	bic.w	r4, r4, #1
 80018e2:	6204      	str	r4, [r0, #32]
  tmpccmr1 = TIMx->CCMR1;
 80018e4:	6984      	ldr	r4, [r0, #24]
  tmpccer &= ~(TIM_CCER_CC1P | TIM_CCER_CC1NP);
 80018e6:	f02c 0c0a 	bic.w	ip, ip, #10
  tmpccmr1 &= ~TIM_CCMR1_IC1F;
 80018ea:	f024 04f0 	bic.w	r4, r4, #240	; 0xf0
  tmpccmr1 |= (TIM_ICFilter << 4U);
 80018ee:	ea44 1101 	orr.w	r1, r4, r1, lsl #4
  tmpccer |= TIM_ICPolarity;
 80018f2:	ea4c 0303 	orr.w	r3, ip, r3
  TIMx->CCMR1 = tmpccmr1;
 80018f6:	6181      	str	r1, [r0, #24]
  TIMx->CCER = tmpccer;
 80018f8:	6203      	str	r3, [r0, #32]
      break;
 80018fa:	e015      	b.n	8001928 <TIM_SlaveTimer_SetConfig+0xe0>
      TIM_TI2_ConfigInputStage(htim->Instance,
 80018fc:	6800      	ldr	r0, [r0, #0]
 80018fe:	688b      	ldr	r3, [r1, #8]
 8001900:	6909      	ldr	r1, [r1, #16]
  tmpccer = TIMx->CCER;
 8001902:	f8d0 c020 	ldr.w	ip, [r0, #32]
  TIMx->CCER &= ~TIM_CCER_CC2E;
 8001906:	6a04      	ldr	r4, [r0, #32]
 8001908:	f024 0410 	bic.w	r4, r4, #16
 800190c:	6204      	str	r4, [r0, #32]
  tmpccmr1 = TIMx->CCMR1;
 800190e:	6984      	ldr	r4, [r0, #24]
  tmpccer &= ~(TIM_CCER_CC2P | TIM_CCER_CC2NP);
 8001910:	f02c 0ca0 	bic.w	ip, ip, #160	; 0xa0
  tmpccmr1 &= ~TIM_CCMR1_IC2F;
 8001914:	f424 4470 	bic.w	r4, r4, #61440	; 0xf000
  tmpccmr1 |= (TIM_ICFilter << 12U);
 8001918:	ea44 3101 	orr.w	r1, r4, r1, lsl #12
  tmpccer |= (TIM_ICPolarity << 4U);
 800191c:	ea4c 1303 	orr.w	r3, ip, r3, lsl #4
  TIMx->CCMR1 = tmpccmr1 ;
 8001920:	6181      	str	r1, [r0, #24]
  TIMx->CCER = tmpccer;
 8001922:	6203      	str	r3, [r0, #32]
      break;
 8001924:	e000      	b.n	8001928 <TIM_SlaveTimer_SetConfig+0xe0>
      status = HAL_ERROR;
 8001926:	2201      	movs	r2, #1
}
 8001928:	bc10      	pop	{r4}
  return status;
 800192a:	4610      	mov	r0, r2
}
 800192c:	4770      	bx	lr
	...

08001930 <UART_SetConfig>:
  * @param  huart  Pointer to a UART_HandleTypeDef structure that contains
  *                the configuration information for the specified UART module.
  * @retval None
  */
static void UART_SetConfig(UART_HandleTypeDef *huart)
{
 8001930:	b570      	push	{r4, r5, r6, lr}
 8001932:	4604      	mov	r4, r0
  assert_param(IS_UART_MODE(huart->Init.Mode));

  /*-------------------------- USART CR2 Configuration -----------------------*/
  /* Configure the UART Stop Bits: Set STOP[13:12] bits
     according to huart->Init.StopBits value */
  MODIFY_REG(huart->Instance->CR2, USART_CR2_STOP, huart->Init.StopBits);
 8001934:	6800      	ldr	r0, [r0, #0]
 8001936:	6901      	ldr	r1, [r0, #16]
 8001938:	68e2      	ldr	r2, [r4, #12]
 800193a:	f421 5140 	bic.w	r1, r1, #12288	; 0x3000
 800193e:	4311      	orrs	r1, r2
 8001940:	6101      	str	r1, [r0, #16]
  tmpreg = (uint32_t)huart->Init.WordLength | huart->Init.Parity | huart->Init.Mode | huart->Init.OverSampling;
  MODIFY_REG(huart->Instance->CR1,
             (uint32_t)(USART_CR1_M | USART_CR1_PCE | USART_CR1_PS | USART_CR1_TE | USART_CR1_RE | USART_CR1_OVER8),
             tmpreg);
#else
  tmpreg = (uint32_t)huart->Init.WordLength | huart->Init.Parity | huart->Init.Mode;
 8001942:	6921      	ldr	r1, [r4, #16]
 8001944:	68a0      	ldr	r0, [r4, #8]
 8001946:	4308      	orrs	r0, r1
 8001948:	6961      	ldr	r1, [r4, #20]
 800194a:	4301      	orrs	r1, r0
  MODIFY_REG(huart->Instance->CR1,
 800194c:	6820      	ldr	r0, [r4, #0]
 800194e:	68c2      	ldr	r2, [r0, #12]
 8001950:	f422 7203 	bic.w	r2, r2, #524	; 0x20c
 8001954:	f422 52a0 	bic.w	r2, r2, #5120	; 0x1400
 8001958:	4311      	orrs	r1, r2
 800195a:	60c1      	str	r1, [r0, #12]
             tmpreg);
#endif /* USART_CR1_OVER8 */

  /*-------------------------- USART CR3 Configuration -----------------------*/
  /* Configure the UART HFC: Set CTSE and RTSE bits according to huart->Init.HwFlowCtl value */
  MODIFY_REG(huart->Instance->CR3, (USART_CR3_RTSE | USART_CR3_CTSE), huart->Init.HwFlowCtl);
 800195c:	6820      	ldr	r0, [r4, #0]
 800195e:	6941      	ldr	r1, [r0, #20]
 8001960:	69a2      	ldr	r2, [r4, #24]
 8001962:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 8001966:	4311      	orrs	r1, r2
 8001968:	6141      	str	r1, [r0, #20]


  if(huart->Instance == USART1)
 800196a:	6820      	ldr	r0, [r4, #0]
 800196c:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 8001970:	f5b1 319c 	subs.w	r1, r1, #79872	; 0x13800
{
 8001974:	d03c      	beq.n	80019f0 <UART_SetConfig+0xc0>
  {
    pclk = HAL_RCC_GetPCLK2Freq();
  }
  else
  {
    pclk = HAL_RCC_GetPCLK1Freq();
 8001976:	f7ff f943 	bl	8000c00 <HAL_RCC_GetPCLK1Freq>
  else
  {
    huart->Instance->BRR = UART_BRR_SAMPLING16(pclk, huart->Init.BaudRate);
  }
#else
  huart->Instance->BRR = UART_BRR_SAMPLING16(pclk, huart->Init.BaudRate);
 800197a:	bf00      	nop
 800197c:	eb00 01c0 	add.w	r1, r0, r0, lsl #3
 8001980:	eb01 1200 	add.w	r2, r1, r0, lsl #4
 8001984:	6860      	ldr	r0, [r4, #4]
 8001986:	491c      	ldr	r1, [pc, #112]	; (80019f8 <UART_SetConfig+0xc8>)
 8001988:	0080      	lsls	r0, r0, #2
 800198a:	fbb2 f3f0 	udiv	r3, r2, r0
 800198e:	fba1 5303 	umull	r5, r3, r1, r3
 8001992:	fbb2 fcf0 	udiv	ip, r2, r0
 8001996:	095b      	lsrs	r3, r3, #5
 8001998:	f06f 0518 	mvn.w	r5, #24
 800199c:	436b      	muls	r3, r5
 800199e:	eb0c 0c83 	add.w	ip, ip, r3, lsl #2
 80019a2:	2332      	movs	r3, #50	; 0x32
 80019a4:	eb03 1c0c 	add.w	ip, r3, ip, lsl #4
 80019a8:	fba1 5c0c 	umull	r5, ip, r1, ip
 80019ac:	ea4f 1c5c 	mov.w	ip, ip, lsr #5
 80019b0:	f00c 05f0 	and.w	r5, ip, #240	; 0xf0
 80019b4:	fbb2 fcf0 	udiv	ip, r2, r0
 80019b8:	fba1 6c0c 	umull	r6, ip, r1, ip
 80019bc:	ea4f 1c5c 	mov.w	ip, ip, lsr #5
 80019c0:	eb05 1c0c 	add.w	ip, r5, ip, lsl #4
 80019c4:	fbb2 f5f0 	udiv	r5, r2, r0
 80019c8:	fbb2 f0f0 	udiv	r0, r2, r0
 80019cc:	fba1 2000 	umull	r2, r0, r1, r0
 80019d0:	0940      	lsrs	r0, r0, #5
 80019d2:	f06f 0218 	mvn.w	r2, #24
 80019d6:	4350      	muls	r0, r2
 80019d8:	eb05 0080 	add.w	r0, r5, r0, lsl #2
 80019dc:	eb03 1000 	add.w	r0, r3, r0, lsl #4
 80019e0:	fba1 1000 	umull	r1, r0, r1, r0
 80019e4:	6821      	ldr	r1, [r4, #0]
 80019e6:	f3c0 1043 	ubfx	r0, r0, #5, #4
 80019ea:	4460      	add	r0, ip
 80019ec:	6088      	str	r0, [r1, #8]
#endif /* USART_CR1_OVER8 */
}
 80019ee:	bd70      	pop	{r4, r5, r6, pc}
    pclk = HAL_RCC_GetPCLK2Freq();
 80019f0:	f7ff f916 	bl	8000c20 <HAL_RCC_GetPCLK2Freq>
 80019f4:	e7c2      	b.n	800197c <UART_SetConfig+0x4c>
 80019f6:	0000      	.short	0x0000
 80019f8:	51eb851f 	.word	0x51eb851f

080019fc <UART_dataWrite>:
        }
    }
}

int32_t UART_dataWrite(const char *pcBuf, uint32_t ulLen)
{
 80019fc:	4684      	mov	ip, r0
 80019fe:	b430      	push	{r4, r5}
    uint32_t uIdx;

    /* Send the characters */
    for (uIdx = 0; uIdx < ulLen; uIdx++)
 8001a00:	2000      	movs	r0, #0
 8001a02:	2900      	cmp	r1, #0
 8001a04:	bf87      	ittee	hi
 8001a06:	2400      	movhi	r4, #0
    log_buff.data[log_buff.write_pos++] = data;
 8001a08:	4a15      	ldrhi	r2, [pc, #84]	; (8001a60 <UART_dataWrite+0x64>)
        UART_putc((uint8_t)pcBuf[uIdx]);
    }

    /* Return the number of characters written. */
    return ((int32_t)uIdx);
}
 8001a0a:	bc30      	popls	{r4, r5}
 8001a0c:	4770      	bxls	lr
        if (pcBuf[uIdx] == (char) '\n')
 8001a0e:	bf00      	nop
 8001a10:	f81c 3000 	ldrb.w	r3, [ip, r0]
 8001a14:	2b0a      	cmp	r3, #10
 8001a16:	d10e      	bne.n	8001a36 <UART_dataWrite+0x3a>
    log_buff.data[log_buff.write_pos++] = data;
 8001a18:	f8b2 5400 	ldrh.w	r5, [r2, #1024]	; 0x400
            UART_putc(((uint8_t)('\r')));
 8001a1c:	230d      	movs	r3, #13
    log_buff.data[log_buff.write_pos++] = data;
 8001a1e:	5553      	strb	r3, [r2, r5]
 8001a20:	f8b2 3400 	ldrh.w	r3, [r2, #1024]	; 0x400
 8001a24:	1c5b      	adds	r3, r3, #1
 8001a26:	b29b      	uxth	r3, r3
 8001a28:	f8a2 3400 	strh.w	r3, [r2, #1024]	; 0x400
    if(log_buff.write_pos >= LOG_BUFF_SIZE)
 8001a2c:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
        log_buff.write_pos= 0;
 8001a30:	bf28      	it	cs
 8001a32:	f8a2 4400 	strhcs.w	r4, [r2, #1024]	; 0x400
        UART_putc((uint8_t)pcBuf[uIdx]);
 8001a36:	f81c 3000 	ldrb.w	r3, [ip, r0]
    log_buff.data[log_buff.write_pos++] = data;
 8001a3a:	f8b2 5400 	ldrh.w	r5, [r2, #1024]	; 0x400
 8001a3e:	5553      	strb	r3, [r2, r5]
 8001a40:	f8b2 3400 	ldrh.w	r3, [r2, #1024]	; 0x400
 8001a44:	1c5b      	adds	r3, r3, #1
 8001a46:	b29b      	uxth	r3, r3
 8001a48:	f8a2 3400 	strh.w	r3, [r2, #1024]	; 0x400
    if(log_buff.write_pos >= LOG_BUFF_SIZE)
 8001a4c:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
        log_buff.write_pos= 0;
 8001a50:	bf28      	it	cs
 8001a52:	f8a2 4400 	strhcs.w	r4, [r2, #1024]	; 0x400
 8001a56:	1c40      	adds	r0, r0, #1
    for (uIdx = 0; uIdx < ulLen; uIdx++)
 8001a58:	4288      	cmp	r0, r1
    if(log_buff.write_pos >= LOG_BUFF_SIZE)
 8001a5a:	d3d9      	bcc.n	8001a10 <UART_dataWrite+0x14>
}
 8001a5c:	bc30      	pop	{r4, r5}
 8001a5e:	4770      	bx	lr
 8001a60:	200000a8 	.word	0x200000a8

08001a64 <UART_printf>:

    return 0;
}

void UART_printf(const char *pcString, ...)
{
 8001a64:	b40f      	push	{r0, r1, r2, r3}
 8001a66:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8001a6a:	b091      	sub	sp, #68	; 0x44
    va_list  vaArgP;
    int32_t temp_var = 0;
    const char *pStr = pcString;

    /* Start the varargs processing. */
    (void)va_start(vaArgP, pcString);
 8001a6c:	ae1b      	add	r6, sp, #108	; 0x6c

    /* Loop while there are more characters in the string. */
    while (*pStr != (char)0U)
 8001a6e:	9d1a      	ldr	r5, [sp, #104]	; 0x68
 8001a70:	7828      	ldrb	r0, [r5, #0]
 8001a72:	2800      	cmp	r0, #0
        pcBuf[pos] = (char) '-';
 8001a74:	bf19      	ittee	ne
 8001a76:	f04f 082d 	movne.w	r8, #45	; 0x2d
        pcBuf[pos] = g_pcHex[(ulValue / ulIdx) % ulBase];
 8001a7a:	4f96      	ldrne	r7, [pc, #600]	; (8001cd4 <UART_printf+0x270>)
    }

    /* End the varargs processing. */
    va_end(vaArgP);

}
 8001a7c:	b011      	addeq	sp, #68	; 0x44
 8001a7e:	e8bd 0ff0 	ldmiaeq.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8001a82:	bf08      	it	eq
 8001a84:	f85d fb14 	ldreq.w	pc, [sp], #20
        for (ulIdx = 0;
 8001a88:	2400      	movs	r4, #0
             (pStr[ulIdx] != (char) '%') &&
 8001a8a:	5d28      	ldrb	r0, [r5, r4]
 8001a8c:	2825      	cmp	r0, #37	; 0x25
             (pStr[ulIdx] != (char) '\0');
 8001a8e:	bf1c      	itt	ne
 8001a90:	2800      	cmpne	r0, #0
 8001a92:	1c64      	addne	r4, r4, #1
             (pStr[ulIdx] != (char) '%') &&
 8001a94:	d1f9      	bne.n	8001a8a <UART_printf+0x26>
        (void)UART_dataWrite(pStr, ulIdx);
 8001a96:	4621      	mov	r1, r4
 8001a98:	4628      	mov	r0, r5
 8001a9a:	f7ff ffaf 	bl	80019fc <UART_dataWrite>
        pStr += ulIdx;
 8001a9e:	4425      	add	r5, r4
        if (*pStr == (char) '%')
 8001aa0:	7828      	ldrb	r0, [r5, #0]
 8001aa2:	2825      	cmp	r0, #37	; 0x25
 8001aa4:	d137      	bne.n	8001b16 <UART_printf+0xb2>
            while((*pStr >= (char)'0') && (*pStr <= (char)'9'))
 8001aa6:	f815 0f01 	ldrb.w	r0, [r5, #1]!
            ulCount = 0;
 8001aaa:	2400      	movs	r4, #0
            cFill   = (char) ' ';
 8001aac:	2320      	movs	r3, #32
            while((*pStr >= (char)'0') && (*pStr <= (char)'9'))
 8001aae:	3830      	subs	r0, #48	; 0x30
 8001ab0:	2809      	cmp	r0, #9
 8001ab2:	d814      	bhi.n	8001ade <UART_printf+0x7a>
                if ((pStr[-1] == (char) '0') && (ulCount == 0U))
 8001ab4:	f815 0c01 	ldrb.w	r0, [r5, #-1]
 8001ab8:	2830      	cmp	r0, #48	; 0x30
 8001aba:	bf04      	itt	eq
 8001abc:	2c00      	cmpeq	r4, #0
                    cFill = (char) '0';
 8001abe:	2330      	moveq	r3, #48	; 0x30
                ulCount *= 10u;
 8001ac0:	eb04 0084 	add.w	r0, r4, r4, lsl #2
 8001ac4:	ea4f 0040 	mov.w	r0, r0, lsl #1
                ulCount += ((uint32_t)(*pStr)) - (uint32_t) '0';
 8001ac8:	f815 1b01 	ldrb.w	r1, [r5], #1
 8001acc:	f1a0 0030 	sub.w	r0, r0, #48	; 0x30
 8001ad0:	eb01 0400 	add.w	r4, r1, r0
            while((*pStr >= (char)'0') && (*pStr <= (char)'9'))
 8001ad4:	7828      	ldrb	r0, [r5, #0]
 8001ad6:	f1a0 0030 	sub.w	r0, r0, #48	; 0x30
 8001ada:	2809      	cmp	r0, #9
                if ((pStr[-1] == (char) '0') && (ulCount == 0U))
 8001adc:	d9ea      	bls.n	8001ab4 <UART_printf+0x50>
            switch (*pStr)
 8001ade:	7828      	ldrb	r0, [r5, #0]
 8001ae0:	2870      	cmp	r0, #112	; 0x70
 8001ae2:	d073      	beq.n	8001bcc <UART_printf+0x168>
 8001ae4:	dc0c      	bgt.n	8001b00 <UART_printf+0x9c>
 8001ae6:	2825      	cmp	r0, #37	; 0x25
                    (void)UART_dataWrite(pStr - 1u, 1u);
 8001ae8:	bf04      	itt	eq
 8001aea:	2101      	moveq	r1, #1
 8001aec:	1e68      	subeq	r0, r5, #1
            switch (*pStr)
 8001aee:	f000 80ee 	beq.w	8001cce <UART_printf+0x26a>
 8001af2:	2858      	cmp	r0, #88	; 0x58
 8001af4:	d06a      	beq.n	8001bcc <UART_printf+0x168>
 8001af6:	2863      	cmp	r0, #99	; 0x63
 8001af8:	d015      	beq.n	8001b26 <UART_printf+0xc2>
 8001afa:	2864      	cmp	r0, #100	; 0x64
 8001afc:	d019      	beq.n	8001b32 <UART_printf+0xce>
 8001afe:	e005      	b.n	8001b0c <UART_printf+0xa8>
 8001b00:	2873      	cmp	r0, #115	; 0x73
 8001b02:	d064      	beq.n	8001bce <UART_printf+0x16a>
 8001b04:	2875      	cmp	r0, #117	; 0x75
 8001b06:	d07d      	beq.n	8001c04 <UART_printf+0x1a0>
 8001b08:	2878      	cmp	r0, #120	; 0x78
 8001b0a:	d05f      	beq.n	8001bcc <UART_printf+0x168>
                    (void)UART_dataWrite("ERROR", 5u);
 8001b0c:	2105      	movs	r1, #5
 8001b0e:	a072      	add	r0, pc, #456	; (adr r0, 8001cd8 <UART_printf+0x274>)
 8001b10:	f7ff ff74 	bl	80019fc <UART_dataWrite>
 8001b14:	1c6d      	adds	r5, r5, #1
    while (*pStr != (char)0U)
 8001b16:	7828      	ldrb	r0, [r5, #0]
 8001b18:	2800      	cmp	r0, #0
 8001b1a:	d1b5      	bne.n	8001a88 <UART_printf+0x24>
}
 8001b1c:	b011      	add	sp, #68	; 0x44
 8001b1e:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8001b22:	f85d fb14 	ldr.w	pc, [sp], #20
                    ulValue = (uint32_t)va_arg(vaArgP, uint32_t);
 8001b26:	f856 0b04 	ldr.w	r0, [r6], #4
                    (void)UART_dataWrite((const char *) &ulValue, 1u);
 8001b2a:	9003      	str	r0, [sp, #12]
 8001b2c:	2101      	movs	r1, #1
 8001b2e:	a803      	add	r0, sp, #12
                    break;
 8001b30:	e0cd      	b.n	8001cce <UART_printf+0x26a>
                    ulValue = (uint32_t)va_arg(vaArgP, uint32_t);
 8001b32:	f856 0b04 	ldr.w	r0, [r6], #4
                    ulPos = 0;
 8001b36:	2100      	movs	r1, #0
                    if ((int32_t) ulValue < 0)
 8001b38:	9003      	str	r0, [sp, #12]
 8001b3a:	2800      	cmp	r0, #0
                        temp_var = (0 - ((int32_t)ulValue));
 8001b3c:	bfbd      	ittte	lt
 8001b3e:	4240      	neglt	r0, r0
                        ulValue = (uint32_t)temp_var;
 8001b40:	9003      	strlt	r0, [sp, #12]
                        ulNeg = 1u;
 8001b42:	f04f 0a01 	movlt.w	sl, #1
                        ulNeg = 0;
 8001b46:	f04f 0a00 	movge.w	sl, #0
                    ulBase = 10u;
 8001b4a:	f04f 0c0a 	mov.w	ip, #10
                    (void)UART_convertVal(ulValue, ulPos, ulBase, ulNeg, ulCount, cFill, pcBuf);
 8001b4e:	4681      	mov	r9, r0
 8001b50:	a80a      	add	r0, sp, #40	; 0x28
    for (ulIdx = 1u;
 8001b52:	2201      	movs	r2, #1
         (((ulIdx * ulBase) <= ulValue) &&
 8001b54:	fb02 fb0c 	mul.w	fp, r2, ip
 8001b58:	45cb      	cmp	fp, r9
          (((ulIdx * ulBase) / ulBase) == ulIdx));
 8001b5a:	bf9c      	itt	ls
 8001b5c:	fbbb fefc 	udivls	lr, fp, ip
 8001b60:	4596      	cmpls	lr, r2
 8001b62:	bf04      	itt	eq
 8001b64:	465a      	moveq	r2, fp
 8001b66:	1e64      	subeq	r4, r4, #1
         (((ulIdx * ulBase) <= ulValue) &&
 8001b68:	d0f4      	beq.n	8001b54 <UART_printf+0xf0>
    if (neg != 0U)
 8001b6a:	f1ba 0f00 	cmp.w	sl, #0
 8001b6e:	d00a      	beq.n	8001b86 <UART_printf+0x122>
    if ((neg != 0U) && ((int8_t)cFill == (int8_t) '0'))
 8001b70:	fa4f fb83 	sxtb.w	fp, r3
 8001b74:	1e64      	subs	r4, r4, #1
 8001b76:	f1bb 0f30 	cmp.w	fp, #48	; 0x30
        count--;
 8001b7a:	d104      	bne.n	8001b86 <UART_printf+0x122>
        pcBuf[pos] = (char) '-';
 8001b7c:	f800 8001 	strb.w	r8, [r0, r1]
        neg = 0;
 8001b80:	f04f 0a00 	mov.w	sl, #0
 8001b84:	1c49      	adds	r1, r1, #1
    if ((count > 1u) && (count < 16u))
 8001b86:	f1a4 0b02 	sub.w	fp, r4, #2
 8001b8a:	f1bb 0f0e 	cmp.w	fp, #14
 8001b8e:	d205      	bcs.n	8001b9c <UART_printf+0x138>
 8001b90:	1e64      	subs	r4, r4, #1
        for (count--; count != 0U; count--)
 8001b92:	d003      	beq.n	8001b9c <UART_printf+0x138>
            pcBuf[pos] = cFill;
 8001b94:	5443      	strb	r3, [r0, r1]
 8001b96:	1c49      	adds	r1, r1, #1
 8001b98:	1e64      	subs	r4, r4, #1
        for (count--; count != 0U; count--)
 8001b9a:	d1fb      	bne.n	8001b94 <UART_printf+0x130>
    if (neg != 0U)
 8001b9c:	f1ba 0f00 	cmp.w	sl, #0
        pcBuf[pos] = (char) '-';
 8001ba0:	bf1c      	itt	ne
 8001ba2:	f800 8001 	strbne.w	r8, [r0, r1]
 8001ba6:	1c49      	addne	r1, r1, #1
    for (; ulIdx != 0U; ulIdx /= ulBase)
 8001ba8:	2a00      	cmp	r2, #0
        pcBuf[pos] = g_pcHex[(ulValue / ulIdx) % ulBase];
 8001baa:	bf18      	it	ne
 8001bac:	683b      	ldrne	r3, [r7, #0]
    if (neg != 0U)
 8001bae:	d05c      	beq.n	8001c6a <UART_printf+0x206>
        pcBuf[pos] = g_pcHex[(ulValue / ulIdx) % ulBase];
 8001bb0:	fbb9 f4f2 	udiv	r4, r9, r2
 8001bb4:	fbb4 fafc 	udiv	sl, r4, ip
 8001bb8:	fb0c 441a 	mls	r4, ip, sl, r4
    for (; ulIdx != 0U; ulIdx /= ulBase)
 8001bbc:	fbb2 f2fc 	udiv	r2, r2, ip
        pcBuf[pos] = g_pcHex[(ulValue / ulIdx) % ulBase];
 8001bc0:	5d1c      	ldrb	r4, [r3, r4]
 8001bc2:	5444      	strb	r4, [r0, r1]
    for (; ulIdx != 0U; ulIdx /= ulBase)
 8001bc4:	1c49      	adds	r1, r1, #1
 8001bc6:	2a00      	cmp	r2, #0
 8001bc8:	d1f2      	bne.n	8001bb0 <UART_printf+0x14c>
 8001bca:	e080      	b.n	8001cce <UART_printf+0x26a>
 8001bcc:	e04e      	b.n	8001c6c <UART_printf+0x208>
                    pcStr = va_arg(vaArgP, char *);
 8001bce:	f856 0b04 	ldr.w	r0, [r6], #4
                    for (ulIdx = 0; pcStr[ulIdx] != (char) '\0'; ulIdx++)
 8001bd2:	f04f 0900 	mov.w	r9, #0
 8001bd6:	bf00      	nop
 8001bd8:	f810 1009 	ldrb.w	r1, [r0, r9]
 8001bdc:	2900      	cmp	r1, #0
 8001bde:	bf18      	it	ne
 8001be0:	f109 0901 	addne.w	r9, r9, #1
 8001be4:	d1f8      	bne.n	8001bd8 <UART_printf+0x174>
                    (void)UART_dataWrite(pcStr, ulIdx);
 8001be6:	4649      	mov	r1, r9
 8001be8:	f7ff ff08 	bl	80019fc <UART_dataWrite>
                    if (ulCount > ulIdx)
 8001bec:	45a1      	cmp	r9, r4
 8001bee:	d291      	bcs.n	8001b14 <UART_printf+0xb0>
                        ulCount -= ulIdx;
 8001bf0:	eba4 0009 	sub.w	r0, r4, r9
                        while ((ulCount--)  != 0U)
 8001bf4:	1e44      	subs	r4, r0, #1
 8001bf6:	d38d      	bcc.n	8001b14 <UART_printf+0xb0>
                            (void)UART_dataWrite(" ", 1u);
 8001bf8:	2101      	movs	r1, #1
 8001bfa:	a039      	add	r0, pc, #228	; (adr r0, 8001ce0 <UART_printf+0x27c>)
 8001bfc:	f7ff fefe 	bl	80019fc <UART_dataWrite>
 8001c00:	1e64      	subs	r4, r4, #1
                        while ((ulCount--)  != 0U)
 8001c02:	e000      	b.n	8001c06 <UART_printf+0x1a2>
 8001c04:	e001      	b.n	8001c0a <UART_printf+0x1a6>
 8001c06:	d2f7      	bcs.n	8001bf8 <UART_printf+0x194>
 8001c08:	e784      	b.n	8001b14 <UART_printf+0xb0>
                    ulValue = (uint32_t)va_arg(vaArgP, uint32_t);
 8001c0a:	f856 9b04 	ldr.w	r9, [r6], #4
                    ulPos = 0;
 8001c0e:	2100      	movs	r1, #0
                    ulBase = 10u;
 8001c10:	f04f 0c0a 	mov.w	ip, #10
                    (void)UART_convertVal(ulValue, ulPos, ulBase, ulNeg, ulCount, cFill, pcBuf);
 8001c14:	a80a      	add	r0, sp, #40	; 0x28
    for (ulIdx = 1u;
 8001c16:	2201      	movs	r2, #1
 8001c18:	f8cd 900c 	str.w	r9, [sp, #12]
         (((ulIdx * ulBase) <= ulValue) &&
 8001c1c:	fb02 fa0c 	mul.w	sl, r2, ip
 8001c20:	45ca      	cmp	sl, r9
          (((ulIdx * ulBase) / ulBase) == ulIdx));
 8001c22:	bf9c      	itt	ls
 8001c24:	fbba fbfc 	udivls	fp, sl, ip
 8001c28:	4593      	cmpls	fp, r2
 8001c2a:	bf04      	itt	eq
 8001c2c:	4652      	moveq	r2, sl
 8001c2e:	1e64      	subeq	r4, r4, #1
         (((ulIdx * ulBase) <= ulValue) &&
 8001c30:	d0f4      	beq.n	8001c1c <UART_printf+0x1b8>
    if ((count > 1u) && (count < 16u))
 8001c32:	f1a4 0a02 	sub.w	sl, r4, #2
 8001c36:	f1ba 0f0e 	cmp.w	sl, #14
    if (neg != 0U)
 8001c3a:	d205      	bcs.n	8001c48 <UART_printf+0x1e4>
 8001c3c:	1e64      	subs	r4, r4, #1
        for (count--; count != 0U; count--)
 8001c3e:	d003      	beq.n	8001c48 <UART_printf+0x1e4>
            pcBuf[pos] = cFill;
 8001c40:	5443      	strb	r3, [r0, r1]
 8001c42:	1c49      	adds	r1, r1, #1
 8001c44:	1e64      	subs	r4, r4, #1
        for (count--; count != 0U; count--)
 8001c46:	d1fb      	bne.n	8001c40 <UART_printf+0x1dc>
    for (; ulIdx != 0U; ulIdx /= ulBase)
 8001c48:	2a00      	cmp	r2, #0
        pcBuf[pos] = g_pcHex[(ulValue / ulIdx) % ulBase];
 8001c4a:	bf18      	it	ne
 8001c4c:	683b      	ldrne	r3, [r7, #0]
    if (neg != 0U)
 8001c4e:	d03e      	beq.n	8001cce <UART_printf+0x26a>
        pcBuf[pos] = g_pcHex[(ulValue / ulIdx) % ulBase];
 8001c50:	fbb9 f4f2 	udiv	r4, r9, r2
 8001c54:	fbb4 fafc 	udiv	sl, r4, ip
 8001c58:	fb0c 441a 	mls	r4, ip, sl, r4
    for (; ulIdx != 0U; ulIdx /= ulBase)
 8001c5c:	fbb2 f2fc 	udiv	r2, r2, ip
        pcBuf[pos] = g_pcHex[(ulValue / ulIdx) % ulBase];
 8001c60:	5d1c      	ldrb	r4, [r3, r4]
 8001c62:	5444      	strb	r4, [r0, r1]
    for (; ulIdx != 0U; ulIdx /= ulBase)
 8001c64:	1c49      	adds	r1, r1, #1
 8001c66:	2a00      	cmp	r2, #0
 8001c68:	d1f2      	bne.n	8001c50 <UART_printf+0x1ec>
 8001c6a:	e030      	b.n	8001cce <UART_printf+0x26a>
                    ulValue = (uint32_t)va_arg(vaArgP, uint32_t);
 8001c6c:	f856 9b04 	ldr.w	r9, [r6], #4
                    ulPos = 0;
 8001c70:	2100      	movs	r1, #0
                    ulBase = 16u;
 8001c72:	f04f 0c10 	mov.w	ip, #16
                    (void)UART_convertVal(ulValue, ulPos, ulBase, ulNeg, ulCount, cFill, pcBuf);
 8001c76:	a80a      	add	r0, sp, #40	; 0x28
    for (ulIdx = 1u;
 8001c78:	2201      	movs	r2, #1
 8001c7a:	f8cd 900c 	str.w	r9, [sp, #12]
         (((ulIdx * ulBase) <= ulValue) &&
 8001c7e:	bf00      	nop
 8001c80:	fb02 fa0c 	mul.w	sl, r2, ip
 8001c84:	45ca      	cmp	sl, r9
          (((ulIdx * ulBase) / ulBase) == ulIdx));
 8001c86:	bf9c      	itt	ls
 8001c88:	fbba fbfc 	udivls	fp, sl, ip
 8001c8c:	4593      	cmpls	fp, r2
 8001c8e:	bf04      	itt	eq
 8001c90:	4652      	moveq	r2, sl
 8001c92:	1e64      	subeq	r4, r4, #1
         (((ulIdx * ulBase) <= ulValue) &&
 8001c94:	d0f4      	beq.n	8001c80 <UART_printf+0x21c>
    if ((count > 1u) && (count < 16u))
 8001c96:	f1a4 0a02 	sub.w	sl, r4, #2
 8001c9a:	f1ba 0f0e 	cmp.w	sl, #14
    if (neg != 0U)
 8001c9e:	d205      	bcs.n	8001cac <UART_printf+0x248>
 8001ca0:	1e64      	subs	r4, r4, #1
        for (count--; count != 0U; count--)
 8001ca2:	d003      	beq.n	8001cac <UART_printf+0x248>
            pcBuf[pos] = cFill;
 8001ca4:	5443      	strb	r3, [r0, r1]
 8001ca6:	1c49      	adds	r1, r1, #1
 8001ca8:	1e64      	subs	r4, r4, #1
        for (count--; count != 0U; count--)
 8001caa:	d1fb      	bne.n	8001ca4 <UART_printf+0x240>
    for (; ulIdx != 0U; ulIdx /= ulBase)
 8001cac:	2a00      	cmp	r2, #0
        pcBuf[pos] = g_pcHex[(ulValue / ulIdx) % ulBase];
 8001cae:	bf18      	it	ne
 8001cb0:	683b      	ldrne	r3, [r7, #0]
    if (neg != 0U)
 8001cb2:	d00c      	beq.n	8001cce <UART_printf+0x26a>
        pcBuf[pos] = g_pcHex[(ulValue / ulIdx) % ulBase];
 8001cb4:	fbb9 f4f2 	udiv	r4, r9, r2
 8001cb8:	fbb4 fafc 	udiv	sl, r4, ip
 8001cbc:	fb0c 441a 	mls	r4, ip, sl, r4
    for (; ulIdx != 0U; ulIdx /= ulBase)
 8001cc0:	fbb2 f2fc 	udiv	r2, r2, ip
        pcBuf[pos] = g_pcHex[(ulValue / ulIdx) % ulBase];
 8001cc4:	5d1c      	ldrb	r4, [r3, r4]
 8001cc6:	5444      	strb	r4, [r0, r1]
    for (; ulIdx != 0U; ulIdx /= ulBase)
 8001cc8:	1c49      	adds	r1, r1, #1
 8001cca:	2a00      	cmp	r2, #0
 8001ccc:	d1f2      	bne.n	8001cb4 <UART_printf+0x250>
                    (void)UART_dataWrite((const char *) &ulValue, 1u);
 8001cce:	f7ff fe95 	bl	80019fc <UART_dataWrite>
 8001cd2:	e71f      	b.n	8001b14 <UART_printf+0xb0>
 8001cd4:	08003c9c 	.word	0x08003c9c
 8001cd8:	4f525245 	.word	0x4f525245
 8001cdc:	00000052 	.word	0x00000052
 8001ce0:	00000020 	.word	0x00000020

08001ce4 <UsageFault_Handler>:
  while (1)
 8001ce4:	e7fe      	b.n	8001ce4 <UsageFault_Handler>

08001ce6 <configureTimerForRunTimeStats>:
/* USER CODE BEGIN 1 */
/* Functions needed when configGENERATE_RUN_TIME_STATS is on */
__weak void configureTimerForRunTimeStats(void)
{

}
 8001ce6:	4770      	bx	lr

08001ce8 <cpu_load>:
*/
/* USER CODE END Header_cpu_load */
void cpu_load(void *argument)
{
  /* USER CODE BEGIN cpu_load */
  uint32_t time =0;
 8001ce8:	2600      	movs	r6, #0
  uint8_t cpu_info[256];
	uint8_t pin = GPIO_PIN_SET;
  /* Infinite loop */
  for(;;)
  {
    UART_printf("timer2 %d\r\n",timer_50us);
 8001cea:	4d18      	ldr	r5, [pc, #96]	; (8001d4c <cpu_load+0x64>)
		UART_printf("hello world %d\r\n",timer1_loop-time);
		time = timer1_loop;
		HAL_GPIO_WritePin(GPIOC,GPIO_PIN_13,pin);
 8001cec:	4f18      	ldr	r7, [pc, #96]	; (8001d50 <cpu_load+0x68>)
{
 8001cee:	b0c0      	sub	sp, #256	; 0x100
	uint8_t pin = GPIO_PIN_SET;
 8001cf0:	2401      	movs	r4, #1
    UART_printf("timer2 %d\r\n",timer_50us);
 8001cf2:	a018      	add	r0, pc, #96	; (adr r0, 8001d54 <cpu_load+0x6c>)
 8001cf4:	6869      	ldr	r1, [r5, #4]
 8001cf6:	f7ff feb5 	bl	8001a64 <UART_printf>
		UART_printf("hello world %d\r\n",timer1_loop-time);
 8001cfa:	6828      	ldr	r0, [r5, #0]
 8001cfc:	1b81      	subs	r1, r0, r6
 8001cfe:	a018      	add	r0, pc, #96	; (adr r0, 8001d60 <cpu_load+0x78>)
 8001d00:	f7ff feb0 	bl	8001a64 <UART_printf>
		HAL_GPIO_WritePin(GPIOC,GPIO_PIN_13,pin);
 8001d04:	4622      	mov	r2, r4
 8001d06:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8001d0a:	4638      	mov	r0, r7
 8001d0c:	682e      	ldr	r6, [r5, #0]
 8001d0e:	f7fe fde3 	bl	80008d8 <HAL_GPIO_WritePin>
    pin = !pin;
 8001d12:	2c00      	cmp	r4, #0
 8001d14:	bf0c      	ite	eq
 8001d16:	2401      	moveq	r4, #1
 8001d18:	2400      	movne	r4, #0
    memset(&cpu_info,0,sizeof(cpu_info));
 8001d1a:	f44f 7180 	mov.w	r1, #256	; 0x100
 8001d1e:	4668      	mov	r0, sp
 8001d20:	f7fe fbb6 	bl	8000490 <__rt_memclr_w>
    // UART_printf("#######cpuinfo########\r\n");
    // // vTaskList(&cpu_info);
    // // UART_printf("%s",cpu_info);
    UART_printf("#######cpuload########\r\n");
 8001d24:	a013      	add	r0, pc, #76	; (adr r0, 8001d74 <cpu_load+0x8c>)
 8001d26:	f7ff fe9d 	bl	8001a64 <UART_printf>
    memset(&cpu_info,0,sizeof(cpu_info));
 8001d2a:	f44f 7180 	mov.w	r1, #256	; 0x100
 8001d2e:	4668      	mov	r0, sp
 8001d30:	f7fe fbae 	bl	8000490 <__rt_memclr_w>
    vTaskGetRunTimeStats(&cpu_info);
 8001d34:	4668      	mov	r0, sp
 8001d36:	f001 f953 	bl	8002fe0 <vTaskGetRunTimeStats>
    UART_printf("%s",cpu_info);
 8001d3a:	4669      	mov	r1, sp
 8001d3c:	a014      	add	r0, pc, #80	; (adr r0, 8001d90 <cpu_load+0xa8>)
 8001d3e:	f7ff fe91 	bl	8001a64 <UART_printf>

    osDelay(1000);
 8001d42:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8001d46:	f000 f9b5 	bl	80020b4 <osDelay>
    pin = !pin;
 8001d4a:	e7d2      	b.n	8001cf2 <cpu_load+0xa>
 8001d4c:	20000004 	.word	0x20000004
 8001d50:	40011000 	.word	0x40011000
 8001d54:	656d6974 	.word	0x656d6974
 8001d58:	25203272 	.word	0x25203272
 8001d5c:	000a0d64 	.word	0x000a0d64
 8001d60:	6c6c6568 	.word	0x6c6c6568
 8001d64:	6f77206f 	.word	0x6f77206f
 8001d68:	20646c72 	.word	0x20646c72
 8001d6c:	0a0d6425 	.word	0x0a0d6425
 8001d70:	00000000 	.word	0x00000000
 8001d74:	23232323 	.word	0x23232323
 8001d78:	63232323 	.word	0x63232323
 8001d7c:	6f6c7570 	.word	0x6f6c7570
 8001d80:	23236461 	.word	0x23236461
 8001d84:	23232323 	.word	0x23232323
 8001d88:	0a0d2323 	.word	0x0a0d2323
 8001d8c:	00000000 	.word	0x00000000
 8001d90:	00007325 	.word	0x00007325

08001d94 <eTaskGetState>:
/*-----------------------------------------------------------*/

#if( ( INCLUDE_eTaskGetState == 1 ) || ( configUSE_TRACE_FACILITY == 1 ) )

	eTaskState eTaskGetState( TaskHandle_t xTask )
	{
 8001d94:	b570      	push	{r4, r5, r6, lr}
 8001d96:	4605      	mov	r5, r0
	eTaskState eReturn;
	List_t *pxStateList;
	const TCB_t * const pxTCB = ( TCB_t * ) xTask;

		configASSERT( pxTCB );
 8001d98:	2d00      	cmp	r5, #0
	{
 8001d9a:	d005      	beq.n	8001da8 <eTaskGetState+0x14>

		if( pxTCB == pxCurrentTCB )
 8001d9c:	4e15      	ldr	r6, [pc, #84]	; (8001df4 <eTaskGetState+0x60>)
 8001d9e:	6830      	ldr	r0, [r6, #0]
 8001da0:	4285      	cmp	r5, r0
 8001da2:	d109      	bne.n	8001db8 <eTaskGetState+0x24>
		{
			/* The task calling this function is querying its own state. */
			eReturn = eRunning;
 8001da4:	2000      	movs	r0, #0
				eReturn = eReady;
			}
		}

		return eReturn;
	} /*lint !e818 xTask cannot be a pointer to const because it is a typedef. */
 8001da6:	bd70      	pop	{r4, r5, r6, pc}
}
/*-----------------------------------------------------------*/

static portFORCE_INLINE void vPortRaiseBASEPRI( void )
{
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8001da8:	2050      	movs	r0, #80	; 0x50

	__asm
	{
		/* Set BASEPRI to the max syscall priority to effect a critical
		section. */
		msr basepri, ulNewBASEPRI
 8001daa:	f380 8811 	msr	BASEPRI, r0
		dsb
 8001dae:	f3bf 8f4f 	dsb	sy
		isb
 8001db2:	f3bf 8f6f 	isb	sy
		configASSERT( pxTCB );
 8001db6:	e7fe      	b.n	8001db6 <eTaskGetState+0x22>
			taskENTER_CRITICAL();
 8001db8:	f000 ffd4 	bl	8002d64 <vPortEnterCritical>
				pxStateList = ( List_t * ) listLIST_ITEM_CONTAINER( &( pxTCB->xStateListItem ) );
 8001dbc:	696c      	ldr	r4, [r5, #20]
			taskEXIT_CRITICAL();
 8001dbe:	f000 fff1 	bl	8002da4 <vPortExitCritical>
			if( ( pxStateList == pxDelayedTaskList ) || ( pxStateList == pxOverflowDelayedTaskList ) )
 8001dc2:	6870      	ldr	r0, [r6, #4]
 8001dc4:	4284      	cmp	r4, r0
 8001dc6:	d002      	beq.n	8001dce <eTaskGetState+0x3a>
 8001dc8:	68b0      	ldr	r0, [r6, #8]
 8001dca:	4284      	cmp	r4, r0
 8001dcc:	d101      	bne.n	8001dd2 <eTaskGetState+0x3e>
				eReturn = eBlocked;
 8001dce:	2002      	movs	r0, #2
	} /*lint !e818 xTask cannot be a pointer to const because it is a typedef. */
 8001dd0:	bd70      	pop	{r4, r5, r6, pc}
				else if( pxStateList == &xSuspendedTaskList )
 8001dd2:	4809      	ldr	r0, [pc, #36]	; (8001df8 <eTaskGetState+0x64>)
 8001dd4:	4284      	cmp	r4, r0
 8001dd6:	d105      	bne.n	8001de4 <eTaskGetState+0x50>
					if( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) == NULL )
 8001dd8:	6aa8      	ldr	r0, [r5, #40]	; 0x28
 8001dda:	b108      	cbz	r0, 8001de0 <eTaskGetState+0x4c>
						eReturn = eBlocked;
 8001ddc:	2002      	movs	r0, #2
	} /*lint !e818 xTask cannot be a pointer to const because it is a typedef. */
 8001dde:	bd70      	pop	{r4, r5, r6, pc}
						eReturn = eSuspended;
 8001de0:	2003      	movs	r0, #3
	} /*lint !e818 xTask cannot be a pointer to const because it is a typedef. */
 8001de2:	bd70      	pop	{r4, r5, r6, pc}
				else if( ( pxStateList == &xTasksWaitingTermination ) || ( pxStateList == NULL ) )
 8001de4:	4805      	ldr	r0, [pc, #20]	; (8001dfc <eTaskGetState+0x68>)
 8001de6:	4284      	cmp	r4, r0
 8001de8:	d002      	beq.n	8001df0 <eTaskGetState+0x5c>
 8001dea:	b10c      	cbz	r4, 8001df0 <eTaskGetState+0x5c>
				eReturn = eReady;
 8001dec:	2001      	movs	r0, #1
	} /*lint !e818 xTask cannot be a pointer to const because it is a typedef. */
 8001dee:	bd70      	pop	{r4, r5, r6, pc}
					eReturn = eDeleted;
 8001df0:	2004      	movs	r0, #4
	} /*lint !e818 xTask cannot be a pointer to const because it is a typedef. */
 8001df2:	bd70      	pop	{r4, r5, r6, pc}
 8001df4:	20000028 	.word	0x20000028
 8001df8:	20000abc 	.word	0x20000abc
 8001dfc:	20000aa8 	.word	0x20000aa8

08001e00 <getRunTimeCounterValue>:
    return timer_50us;
 8001e00:	4801      	ldr	r0, [pc, #4]	; (8001e08 <getRunTimeCounterValue+0x8>)
 8001e02:	6840      	ldr	r0, [r0, #4]
}
 8001e04:	4770      	bx	lr
 8001e06:	0000      	.short	0x0000
 8001e08:	20000004 	.word	0x20000004

08001e0c <log_buffer_flush>:
{
 8001e0c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    while(log_buff.read_pos != log_buff.write_pos)
 8001e0e:	4c13      	ldr	r4, [pc, #76]	; (8001e5c <log_buffer_flush+0x50>)
    uint8_t data = 0;
 8001e10:	2600      	movs	r6, #0
 8001e12:	f88d 6000 	strb.w	r6, [sp]
    while(log_buff.read_pos != log_buff.write_pos)
 8001e16:	f8b4 0402 	ldrh.w	r0, [r4, #1026]	; 0x402
 8001e1a:	f8b4 1400 	ldrh.w	r1, [r4, #1024]	; 0x400
 8001e1e:	4288      	cmp	r0, r1
        HAL_UART_Transmit(s_uart_handle,&data,sizeof(data),0xff);
 8001e20:	bf14      	ite	ne
 8001e22:	4d0f      	ldrne	r5, [pc, #60]	; (8001e60 <log_buffer_flush+0x54>)
}
 8001e24:	bdf8      	popeq	{r3, r4, r5, r6, r7, pc}
        data = log_buff.data[log_buff.read_pos++];
 8001e26:	b280      	uxth	r0, r0
        HAL_UART_Transmit(s_uart_handle,&data,sizeof(data),0xff);
 8001e28:	23ff      	movs	r3, #255	; 0xff
        data = log_buff.data[log_buff.read_pos++];
 8001e2a:	5c21      	ldrb	r1, [r4, r0]
 8001e2c:	f88d 1000 	strb.w	r1, [sp]
 8001e30:	1c40      	adds	r0, r0, #1
 8001e32:	f8a4 0402 	strh.w	r0, [r4, #1026]	; 0x402
        HAL_UART_Transmit(s_uart_handle,&data,sizeof(data),0xff);
 8001e36:	2201      	movs	r2, #1
 8001e38:	4669      	mov	r1, sp
 8001e3a:	6828      	ldr	r0, [r5, #0]
 8001e3c:	f7ff fbf0 	bl	8001620 <HAL_UART_Transmit>
        if(log_buff.read_pos>=LOG_BUFF_SIZE)
 8001e40:	f8b4 0402 	ldrh.w	r0, [r4, #1026]	; 0x402
 8001e44:	f5b0 6f80 	cmp.w	r0, #1024	; 0x400
            log_buff.read_pos= 0;
 8001e48:	bf28      	it	cs
 8001e4a:	f8a4 6402 	strhcs.w	r6, [r4, #1026]	; 0x402
    while(log_buff.read_pos != log_buff.write_pos)
 8001e4e:	f8b4 0402 	ldrh.w	r0, [r4, #1026]	; 0x402
 8001e52:	f8b4 1400 	ldrh.w	r1, [r4, #1024]	; 0x400
 8001e56:	4288      	cmp	r0, r1
 8001e58:	d1e5      	bne.n	8001e26 <log_buffer_flush+0x1a>
}
 8001e5a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8001e5c:	200000a8 	.word	0x200000a8
 8001e60:	20000000 	.word	0x20000000

08001e64 <main>:
{
 8001e64:	b090      	sub	sp, #64	; 0x40
  HAL_Init();
 8001e66:	f7fe fd4b 	bl	8000900 <HAL_Init>
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
 8001e6a:	2400      	movs	r4, #0
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
 8001e6c:	2601      	movs	r6, #1
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
 8001e6e:	9405      	str	r4, [sp, #20]
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
 8001e70:	9406      	str	r4, [sp, #24]
 8001e72:	940a      	str	r4, [sp, #40]	; 0x28
 8001e74:	940b      	str	r4, [sp, #44]	; 0x2c
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
 8001e76:	0430      	lsls	r0, r6, #16
 8001e78:	e9cd 6000 	strd	r6, r0, [sp]
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
 8001e7c:	9402      	str	r4, [sp, #8]
 8001e7e:	9403      	str	r4, [sp, #12]
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
 8001e80:	940e      	str	r4, [sp, #56]	; 0x38
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
 8001e82:	940c      	str	r4, [sp, #48]	; 0x30
 8001e84:	940d      	str	r4, [sp, #52]	; 0x34
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
 8001e86:	2502      	movs	r5, #2
 8001e88:	9604      	str	r6, [sp, #16]
 8001e8a:	e9cd 5007 	strd	r5, r0, [sp, #28]
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL9;
 8001e8e:	f44f 10e0 	mov.w	r0, #1835008	; 0x1c0000
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
 8001e92:	9009      	str	r0, [sp, #36]	; 0x24
 8001e94:	4668      	mov	r0, sp
 8001e96:	f7fe fed3 	bl	8000c40 <HAL_RCC_OscConfig>
 8001e9a:	b108      	cbz	r0, 8001ea0 <main+0x3c>
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
 8001e9c:	b672      	cpsid	i
  while (1)
 8001e9e:	e7fe      	b.n	8001e9e <main+0x3a>
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
 8001ea0:	200f      	movs	r0, #15
 8001ea2:	e9cd 050a 	strd	r0, r5, [sp, #40]	; 0x28
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
 8001ea6:	f44f 6080 	mov.w	r0, #1024	; 0x400
 8001eaa:	e9cd 400c 	strd	r4, r0, [sp, #48]	; 0x30
  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
 8001eae:	2102      	movs	r1, #2
 8001eb0:	a80a      	add	r0, sp, #40	; 0x28
 8001eb2:	940e      	str	r4, [sp, #56]	; 0x38
 8001eb4:	f7fe fdce 	bl	8000a54 <HAL_RCC_ClockConfig>
 8001eb8:	b108      	cbz	r0, 8001ebe <main+0x5a>
  __disable_irq();
 8001eba:	b672      	cpsid	i
  while (1)
 8001ebc:	e7fe      	b.n	8001ebc <main+0x58>
  __HAL_RCC_GPIOC_CLK_ENABLE();
 8001ebe:	486d      	ldr	r0, [pc, #436]	; (8002074 <main+0x210>)
  GPIO_InitTypeDef GPIO_InitStruct = {0};
 8001ec0:	9400      	str	r4, [sp, #0]
 8001ec2:	9401      	str	r4, [sp, #4]
 8001ec4:	9402      	str	r4, [sp, #8]
  __HAL_RCC_GPIOC_CLK_ENABLE();
 8001ec6:	9403      	str	r4, [sp, #12]
 8001ec8:	6981      	ldr	r1, [r0, #24]
 8001eca:	f041 0110 	orr.w	r1, r1, #16
 8001ece:	6181      	str	r1, [r0, #24]
 8001ed0:	6981      	ldr	r1, [r0, #24]
 8001ed2:	f001 0110 	and.w	r1, r1, #16
  __HAL_RCC_GPIOD_CLK_ENABLE();
 8001ed6:	9104      	str	r1, [sp, #16]
 8001ed8:	6981      	ldr	r1, [r0, #24]
 8001eda:	f041 0120 	orr.w	r1, r1, #32
 8001ede:	6181      	str	r1, [r0, #24]
 8001ee0:	6981      	ldr	r1, [r0, #24]
 8001ee2:	f001 0120 	and.w	r1, r1, #32
  __HAL_RCC_GPIOA_CLK_ENABLE();
 8001ee6:	9104      	str	r1, [sp, #16]
 8001ee8:	6981      	ldr	r1, [r0, #24]
 8001eea:	f041 0104 	orr.w	r1, r1, #4
 8001eee:	6181      	str	r1, [r0, #24]
 8001ef0:	6980      	ldr	r0, [r0, #24]
  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_RESET);
 8001ef2:	4f61      	ldr	r7, [pc, #388]	; (8002078 <main+0x214>)
  __HAL_RCC_GPIOA_CLK_ENABLE();
 8001ef4:	f000 0004 	and.w	r0, r0, #4
  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_RESET);
 8001ef8:	9004      	str	r0, [sp, #16]
 8001efa:	2200      	movs	r2, #0
 8001efc:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8001f00:	4638      	mov	r0, r7
 8001f02:	f7fe fce9 	bl	80008d8 <HAL_GPIO_WritePin>
  GPIO_InitStruct.Pin = GPIO_PIN_13;
 8001f06:	1478      	asrs	r0, r7, #17
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);
 8001f08:	e9cd 0600 	strd	r0, r6, [sp]
 8001f0c:	4669      	mov	r1, sp
 8001f0e:	4638      	mov	r0, r7
 8001f10:	e9cd 4502 	strd	r4, r5, [sp, #8]
 8001f14:	f7fe fbee 	bl	80006f4 <HAL_GPIO_Init>
  htim1.Instance = TIM1;
 8001f18:	4859      	ldr	r0, [pc, #356]	; (8002080 <main+0x21c>)
  TIM_SlaveConfigTypeDef sSlaveConfig = {0};
 8001f1a:	9401      	str	r4, [sp, #4]
 8001f1c:	9402      	str	r4, [sp, #8]
 8001f1e:	9400      	str	r4, [sp, #0]
 8001f20:	9403      	str	r4, [sp, #12]
  TIM_MasterConfigTypeDef sMasterConfig = {0};
 8001f22:	9404      	str	r4, [sp, #16]
 8001f24:	9406      	str	r4, [sp, #24]
  htim1.Instance = TIM1;
 8001f26:	4955      	ldr	r1, [pc, #340]	; (800207c <main+0x218>)
 8001f28:	9407      	str	r4, [sp, #28]
 8001f2a:	e9c0 1400 	strd	r1, r4, [r0]
  htim1.Init.Period = 65535;
 8001f2e:	f64f 71ff 	movw	r1, #65535	; 0xffff
 8001f32:	e9c0 4102 	strd	r4, r1, [r0, #8]
  htim1.Init.RepetitionCounter = 0;
 8001f36:	6104      	str	r4, [r0, #16]
  htim1.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
 8001f38:	6144      	str	r4, [r0, #20]
  if (HAL_TIM_Base_Init(&htim1) != HAL_OK)
 8001f3a:	6184      	str	r4, [r0, #24]
 8001f3c:	f7ff f8b3 	bl	80010a6 <HAL_TIM_Base_Init>
 8001f40:	b108      	cbz	r0, 8001f46 <main+0xe2>
  __disable_irq();
 8001f42:	b672      	cpsid	i
  while (1)
 8001f44:	e7fe      	b.n	8001f44 <main+0xe0>
  sSlaveConfig.SlaveMode = TIM_SLAVEMODE_TRIGGER;
 8001f46:	2006      	movs	r0, #6
  if (HAL_TIM_SlaveConfigSynchro(&htim1, &sSlaveConfig) != HAL_OK)
 8001f48:	e9cd 0400 	strd	r0, r4, [sp]
 8001f4c:	4669      	mov	r1, sp
 8001f4e:	484c      	ldr	r0, [pc, #304]	; (8002080 <main+0x21c>)
 8001f50:	f7ff face 	bl	80014f0 <HAL_TIM_SlaveConfigSynchro>
 8001f54:	b108      	cbz	r0, 8001f5a <main+0xf6>
  __disable_irq();
 8001f56:	b672      	cpsid	i
  while (1)
 8001f58:	e7fe      	b.n	8001f58 <main+0xf4>
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
 8001f5a:	9406      	str	r4, [sp, #24]
  if (HAL_TIMEx_MasterConfigSynchronization(&htim1, &sMasterConfig) != HAL_OK)
 8001f5c:	a906      	add	r1, sp, #24
 8001f5e:	4848      	ldr	r0, [pc, #288]	; (8002080 <main+0x21c>)
 8001f60:	9407      	str	r4, [sp, #28]
 8001f62:	f7ff f869 	bl	8001038 <HAL_TIMEx_MasterConfigSynchronization>
 8001f66:	b108      	cbz	r0, 8001f6c <main+0x108>
  __disable_irq();
 8001f68:	b672      	cpsid	i
  while (1)
 8001f6a:	e7fe      	b.n	8001f6a <main+0x106>
  huart1.Instance = USART1;
 8001f6c:	4846      	ldr	r0, [pc, #280]	; (8002088 <main+0x224>)
 8001f6e:	4945      	ldr	r1, [pc, #276]	; (8002084 <main+0x220>)
  huart1.Init.BaudRate = 115200;
 8001f70:	6001      	str	r1, [r0, #0]
 8001f72:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
 8001f76:	e9c0 1401 	strd	r1, r4, [r0, #4]
  huart1.Init.Mode = UART_MODE_TX_RX;
 8001f7a:	210c      	movs	r1, #12
 8001f7c:	60c4      	str	r4, [r0, #12]
 8001f7e:	e9c0 4104 	strd	r4, r1, [r0, #16]
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
 8001f82:	6184      	str	r4, [r0, #24]
  if (HAL_UART_Init(&huart1) != HAL_OK)
 8001f84:	61c4      	str	r4, [r0, #28]
 8001f86:	f7ff fadf 	bl	8001548 <HAL_UART_Init>
 8001f8a:	b108      	cbz	r0, 8001f90 <main+0x12c>
  __disable_irq();
 8001f8c:	b672      	cpsid	i
  while (1)
 8001f8e:	e7fe      	b.n	8001f8e <main+0x12a>
  htim3.Instance = TIM3;
 8001f90:	483f      	ldr	r0, [pc, #252]	; (8002090 <main+0x22c>)
  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
 8001f92:	9400      	str	r4, [sp, #0]
 8001f94:	9401      	str	r4, [sp, #4]
 8001f96:	9402      	str	r4, [sp, #8]
  TIM_MasterConfigTypeDef sMasterConfig = {0};
 8001f98:	9403      	str	r4, [sp, #12]
 8001f9a:	9404      	str	r4, [sp, #16]
  htim3.Instance = TIM3;
 8001f9c:	493b      	ldr	r1, [pc, #236]	; (800208c <main+0x228>)
  htim3.Init.Prescaler = 72-1;
 8001f9e:	2547      	movs	r5, #71	; 0x47
 8001fa0:	9405      	str	r4, [sp, #20]
 8001fa2:	e9c0 1500 	strd	r1, r5, [r0]
  htim3.Init.Period = 1000-1;
 8001fa6:	f240 31e7 	movw	r1, #999	; 0x3e7
 8001faa:	e9c0 4102 	strd	r4, r1, [r0, #8]
  htim3.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_ENABLE;
 8001fae:	2680      	movs	r6, #128	; 0x80
  if (HAL_TIM_Base_Init(&htim3) != HAL_OK)
 8001fb0:	6186      	str	r6, [r0, #24]
 8001fb2:	6104      	str	r4, [r0, #16]
 8001fb4:	f7ff f877 	bl	80010a6 <HAL_TIM_Base_Init>
 8001fb8:	b108      	cbz	r0, 8001fbe <main+0x15a>
  __disable_irq();
 8001fba:	b672      	cpsid	i
  while (1)
 8001fbc:	e7fe      	b.n	8001fbc <main+0x158>
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
 8001fbe:	f44f 5780 	mov.w	r7, #4096	; 0x1000
  if (HAL_TIM_ConfigClockSource(&htim3, &sClockSourceConfig) != HAL_OK)
 8001fc2:	4669      	mov	r1, sp
 8001fc4:	4832      	ldr	r0, [pc, #200]	; (8002090 <main+0x22c>)
 8001fc6:	9700      	str	r7, [sp, #0]
 8001fc8:	f7ff f906 	bl	80011d8 <HAL_TIM_ConfigClockSource>
 8001fcc:	b108      	cbz	r0, 8001fd2 <main+0x16e>
  __disable_irq();
 8001fce:	b672      	cpsid	i
  while (1)
 8001fd0:	e7fe      	b.n	8001fd0 <main+0x16c>
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
 8001fd2:	9404      	str	r4, [sp, #16]
  if (HAL_TIMEx_MasterConfigSynchronization(&htim3, &sMasterConfig) != HAL_OK)
 8001fd4:	a904      	add	r1, sp, #16
 8001fd6:	482e      	ldr	r0, [pc, #184]	; (8002090 <main+0x22c>)
 8001fd8:	9405      	str	r4, [sp, #20]
 8001fda:	f7ff f82d 	bl	8001038 <HAL_TIMEx_MasterConfigSynchronization>
 8001fde:	b108      	cbz	r0, 8001fe4 <main+0x180>
  __disable_irq();
 8001fe0:	b672      	cpsid	i
  while (1)
 8001fe2:	e7fe      	b.n	8001fe2 <main+0x17e>
  htim2.Instance = TIM2;
 8001fe4:	482b      	ldr	r0, [pc, #172]	; (8002094 <main+0x230>)
  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
 8001fe6:	9400      	str	r4, [sp, #0]
 8001fe8:	9401      	str	r4, [sp, #4]
 8001fea:	9402      	str	r4, [sp, #8]
  TIM_MasterConfigTypeDef sMasterConfig = {0};
 8001fec:	9403      	str	r4, [sp, #12]
 8001fee:	9404      	str	r4, [sp, #16]
  htim2.Instance = TIM2;
 8001ff0:	f04f 4180 	mov.w	r1, #1073741824	; 0x40000000
 8001ff4:	9405      	str	r4, [sp, #20]
 8001ff6:	e9c0 1500 	strd	r1, r5, [r0]
  htim2.Init.Period = 50-1;
 8001ffa:	2131      	movs	r1, #49	; 0x31
 8001ffc:	e9c0 4102 	strd	r4, r1, [r0, #8]
  if (HAL_TIM_Base_Init(&htim2) != HAL_OK)
 8002000:	6186      	str	r6, [r0, #24]
 8002002:	6104      	str	r4, [r0, #16]
 8002004:	f7ff f84f 	bl	80010a6 <HAL_TIM_Base_Init>
 8002008:	b108      	cbz	r0, 800200e <main+0x1aa>
  __disable_irq();
 800200a:	b672      	cpsid	i
  while (1)
 800200c:	e7fe      	b.n	800200c <main+0x1a8>
  if (HAL_TIM_ConfigClockSource(&htim2, &sClockSourceConfig) != HAL_OK)
 800200e:	4669      	mov	r1, sp
 8002010:	4820      	ldr	r0, [pc, #128]	; (8002094 <main+0x230>)
 8002012:	9700      	str	r7, [sp, #0]
 8002014:	f7ff f8e0 	bl	80011d8 <HAL_TIM_ConfigClockSource>
 8002018:	b108      	cbz	r0, 800201e <main+0x1ba>
  __disable_irq();
 800201a:	b672      	cpsid	i
  while (1)
 800201c:	e7fe      	b.n	800201c <main+0x1b8>
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
 800201e:	9404      	str	r4, [sp, #16]
  if (HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig) != HAL_OK)
 8002020:	a904      	add	r1, sp, #16
 8002022:	481c      	ldr	r0, [pc, #112]	; (8002094 <main+0x230>)
 8002024:	9405      	str	r4, [sp, #20]
 8002026:	f7ff f807 	bl	8001038 <HAL_TIMEx_MasterConfigSynchronization>
 800202a:	b108      	cbz	r0, 8002030 <main+0x1cc>
  __disable_irq();
 800202c:	b672      	cpsid	i
  while (1)
 800202e:	e7fe      	b.n	800202e <main+0x1ca>
  osKernelInitialize();
 8002030:	f000 f85c 	bl	80020ec <osKernelInitialize>
  defaultTaskHandle = osThreadNew(StartDefaultTask, NULL, &defaultTask_attributes);
 8002034:	4a18      	ldr	r2, [pc, #96]	; (8002098 <main+0x234>)
 8002036:	2100      	movs	r1, #0
 8002038:	4818      	ldr	r0, [pc, #96]	; (800209c <main+0x238>)
 800203a:	f000 f893 	bl	8002164 <osThreadNew>
 800203e:	4c18      	ldr	r4, [pc, #96]	; (80020a0 <main+0x23c>)
  mylogTaskHandle = osThreadNew(StartTask02, NULL, &mylogTask_attributes);
 8002040:	4a18      	ldr	r2, [pc, #96]	; (80020a4 <main+0x240>)
 8002042:	2100      	movs	r1, #0
 8002044:	60a0      	str	r0, [r4, #8]
 8002046:	4818      	ldr	r0, [pc, #96]	; (80020a8 <main+0x244>)
 8002048:	f000 f88c 	bl	8002164 <osThreadNew>
  myTask03Handle = osThreadNew(cpu_load, NULL, &myTask03_attributes);
 800204c:	60e0      	str	r0, [r4, #12]
 800204e:	4a17      	ldr	r2, [pc, #92]	; (80020ac <main+0x248>)
 8002050:	2100      	movs	r1, #0
 8002052:	4817      	ldr	r0, [pc, #92]	; (80020b0 <main+0x24c>)
 8002054:	f000 f886 	bl	8002164 <osThreadNew>
	HAL_TIM_Base_Start_IT(&htim3);
 8002058:	6120      	str	r0, [r4, #16]
 800205a:	480d      	ldr	r0, [pc, #52]	; (8002090 <main+0x22c>)
 800205c:	f7ff f890 	bl	8001180 <HAL_TIM_Base_Start_IT>
	HAL_TIM_Base_Start_IT(&htim2); 
 8002060:	480c      	ldr	r0, [pc, #48]	; (8002094 <main+0x230>)
 8002062:	f7ff f88d 	bl	8001180 <HAL_TIM_Base_Start_IT>
	uart_printf_init(&huart1);
 8002066:	4808      	ldr	r0, [pc, #32]	; (8002088 <main+0x224>)
 8002068:	f000 fdbc 	bl	8002be4 <uart_printf_init>
  osKernelStart();
 800206c:	f000 f85a 	bl	8002124 <osKernelStart>
  while (1)
 8002070:	e7fe      	b.n	8002070 <main+0x20c>
 8002072:	0000      	.short	0x0000
 8002074:	40021000 	.word	0x40021000
 8002078:	40011000 	.word	0x40011000
 800207c:	40012c00 	.word	0x40012c00
 8002080:	200004ac 	.word	0x200004ac
 8002084:	40013800 	.word	0x40013800
 8002088:	20000584 	.word	0x20000584
 800208c:	40000400 	.word	0x40000400
 8002090:	2000053c 	.word	0x2000053c
 8002094:	200004f4 	.word	0x200004f4
 8002098:	08003ca0 	.word	0x08003ca0
 800209c:	08001777 	.word	0x08001777
 80020a0:	20000004 	.word	0x20000004
 80020a4:	08003cc4 	.word	0x08003cc4
 80020a8:	08001791 	.word	0x08001791
 80020ac:	08003ce8 	.word	0x08003ce8
 80020b0:	08001ce9 	.word	0x08001ce9

080020b4 <osDelay>:

  /* Return flags before clearing */
  return (rflags);
}

osStatus_t osDelay (uint32_t ticks) {
 80020b4:	b510      	push	{r4, lr}
 80020b6:	4601      	mov	r1, r0
  \return               IPSR Register value
 */
__STATIC_INLINE uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __ASM("ipsr");
  return(__regIPSR);
 80020b8:	f3ef 8005 	mrs	r0, IPSR
  osStatus_t stat;

  if (IS_IRQ()) {
 80020bc:	b948      	cbnz	r0, 80020d2 <osDelay+0x1e>
  \return               Priority Mask value
 */
__STATIC_INLINE uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __ASM("primask");
  return(__regPriMask);
 80020be:	f3ef 8010 	mrs	r0, PRIMASK
 80020c2:	b930      	cbnz	r0, 80020d2 <osDelay+0x1e>
 80020c4:	4808      	ldr	r0, [pc, #32]	; (80020e8 <osDelay+0x34>)
 80020c6:	6800      	ldr	r0, [r0, #0]
 80020c8:	2802      	cmp	r0, #2
 80020ca:	d105      	bne.n	80020d8 <osDelay+0x24>
  \return               Base Priority register value
 */
__STATIC_INLINE uint32_t  __get_BASEPRI(void)
{
  register uint32_t __regBasePri         __ASM("basepri");
  return(__regBasePri);
 80020cc:	f3ef 8011 	mrs	r0, BASEPRI
 80020d0:	b110      	cbz	r0, 80020d8 <osDelay+0x24>
    stat = osErrorISR;
 80020d2:	f06f 0405 	mvn.w	r4, #5
 80020d6:	e004      	b.n	80020e2 <osDelay+0x2e>
  }
  else {
    stat = osOK;
 80020d8:	2400      	movs	r4, #0

    if (ticks != 0U) {
 80020da:	b111      	cbz	r1, 80020e2 <osDelay+0x2e>
      vTaskDelay(ticks);
 80020dc:	4608      	mov	r0, r1
 80020de:	f000 ff1b 	bl	8002f18 <vTaskDelay>
    }
  }

  return (stat);
 80020e2:	4620      	mov	r0, r4
}
 80020e4:	bd10      	pop	{r4, pc}
 80020e6:	0000      	.short	0x0000
 80020e8:	20000080 	.word	0x20000080

080020ec <osKernelInitialize>:
  return(__regIPSR);
 80020ec:	f3ef 8005 	mrs	r0, IPSR
  if (IS_IRQ()) {
 80020f0:	2800      	cmp	r0, #0
osStatus_t osKernelInitialize (void) {
 80020f2:	d109      	bne.n	8002108 <osKernelInitialize+0x1c>
  return(__regPriMask);
 80020f4:	f3ef 8010 	mrs	r0, PRIMASK
  if (IS_IRQ()) {
 80020f8:	b930      	cbnz	r0, 8002108 <osKernelInitialize+0x1c>
 80020fa:	4a09      	ldr	r2, [pc, #36]	; (8002120 <osKernelInitialize+0x34>)
 80020fc:	6810      	ldr	r0, [r2, #0]
 80020fe:	2802      	cmp	r0, #2
 8002100:	d105      	bne.n	800210e <osKernelInitialize+0x22>
  return(__regBasePri);
 8002102:	f3ef 8111 	mrs	r1, BASEPRI
 8002106:	b111      	cbz	r1, 800210e <osKernelInitialize+0x22>
    stat = osErrorISR;
 8002108:	f06f 0005 	mvn.w	r0, #5
}
 800210c:	4770      	bx	lr
    if (KernelState == osKernelInactive) {
 800210e:	b110      	cbz	r0, 8002116 <osKernelInitialize+0x2a>
      stat = osError;
 8002110:	f04f 30ff 	mov.w	r0, #4294967295
}
 8002114:	4770      	bx	lr
      KernelState = osKernelReady;
 8002116:	2001      	movs	r0, #1
 8002118:	6010      	str	r0, [r2, #0]
      stat = osOK;
 800211a:	2000      	movs	r0, #0
}
 800211c:	4770      	bx	lr
 800211e:	0000      	.short	0x0000
 8002120:	20000080 	.word	0x20000080

08002124 <osKernelStart>:
osStatus_t osKernelStart (void) {
 8002124:	b510      	push	{r4, lr}
  return(__regIPSR);
 8002126:	f3ef 8005 	mrs	r0, IPSR
  if (IS_IRQ()) {
 800212a:	2800      	cmp	r0, #0
osStatus_t osKernelStart (void) {
 800212c:	d109      	bne.n	8002142 <osKernelStart+0x1e>
  return(__regPriMask);
 800212e:	f3ef 8010 	mrs	r0, PRIMASK
  if (IS_IRQ()) {
 8002132:	b930      	cbnz	r0, 8002142 <osKernelStart+0x1e>
 8002134:	4a0a      	ldr	r2, [pc, #40]	; (8002160 <osKernelStart+0x3c>)
 8002136:	6810      	ldr	r0, [r2, #0]
 8002138:	2802      	cmp	r0, #2
 800213a:	d105      	bne.n	8002148 <osKernelStart+0x24>
  return(__regBasePri);
 800213c:	f3ef 8111 	mrs	r1, BASEPRI
 8002140:	b111      	cbz	r1, 8002148 <osKernelStart+0x24>
    stat = osErrorISR;
 8002142:	f06f 0005 	mvn.w	r0, #5
}
 8002146:	bd10      	pop	{r4, pc}
    if (KernelState == osKernelReady) {
 8002148:	2801      	cmp	r0, #1
 800214a:	d002      	beq.n	8002152 <osKernelStart+0x2e>
      stat = osError;
 800214c:	f04f 30ff 	mov.w	r0, #4294967295
}
 8002150:	bd10      	pop	{r4, pc}
      KernelState = osKernelRunning;
 8002152:	2002      	movs	r0, #2
 8002154:	6010      	str	r0, [r2, #0]
      vTaskStartScheduler();
 8002156:	f000 fff1 	bl	800313c <vTaskStartScheduler>
      stat = osOK;
 800215a:	2000      	movs	r0, #0
}
 800215c:	bd10      	pop	{r4, pc}
 800215e:	0000      	.short	0x0000
 8002160:	20000080 	.word	0x20000080

08002164 <osThreadNew>:
osThreadId_t osThreadNew (osThreadFunc_t func, void *argument, const osThreadAttr_t *attr) {
 8002164:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8002168:	b085      	sub	sp, #20
 800216a:	460b      	mov	r3, r1
 800216c:	f04f 0700 	mov.w	r7, #0
  hTask = NULL;
 8002170:	9703      	str	r7, [sp, #12]
  return(__regIPSR);
 8002172:	f3ef 8105 	mrs	r1, IPSR
  if (!IS_IRQ() && (func != NULL)) {
 8002176:	2900      	cmp	r1, #0
 8002178:	d15d      	bne.n	8002236 <osThreadNew+0xd2>
  return(__regPriMask);
 800217a:	f3ef 8110 	mrs	r1, PRIMASK
 800217e:	2900      	cmp	r1, #0
 8002180:	d159      	bne.n	8002236 <osThreadNew+0xd2>
 8002182:	492f      	ldr	r1, [pc, #188]	; (8002240 <osThreadNew+0xdc>)
 8002184:	6809      	ldr	r1, [r1, #0]
 8002186:	2902      	cmp	r1, #2
 8002188:	d103      	bne.n	8002192 <osThreadNew+0x2e>
  return(__regBasePri);
 800218a:	f3ef 8111 	mrs	r1, BASEPRI
 800218e:	2900      	cmp	r1, #0
 8002190:	d151      	bne.n	8002236 <osThreadNew+0xd2>
 8002192:	2800      	cmp	r0, #0
 8002194:	d04f      	beq.n	8002236 <osThreadNew+0xd2>
    stack = configMINIMAL_STACK_SIZE;
 8002196:	2480      	movs	r4, #128	; 0x80
    prio  = (UBaseType_t)osPriorityNormal;
 8002198:	f04f 0c18 	mov.w	ip, #24
    empty = '\0';
 800219c:	9704      	str	r7, [sp, #16]
    name  = &empty;
 800219e:	f10d 0910 	add.w	r9, sp, #16
    mem   = -1;
 80021a2:	f04f 31ff 	mov.w	r1, #4294967295
    if (attr != NULL) {
 80021a6:	b352      	cbz	r2, 80021fe <osThreadNew+0x9a>
      if (attr->name != NULL) {
 80021a8:	6816      	ldr	r6, [r2, #0]
 80021aa:	b106      	cbz	r6, 80021ae <osThreadNew+0x4a>
        name = attr->name;
 80021ac:	46b1      	mov	r9, r6
      if (attr->priority != osPriorityNone) {
 80021ae:	6995      	ldr	r5, [r2, #24]
 80021b0:	b105      	cbz	r5, 80021b4 <osThreadNew+0x50>
        prio = (UBaseType_t)attr->priority;
 80021b2:	46ac      	mov	ip, r5
      if ((prio < osPriorityIdle) || (prio > osPriorityISR) || ((attr->attr_bits & osThreadJoinable) == osThreadJoinable)) {
 80021b4:	f1ac 0501 	sub.w	r5, ip, #1
 80021b8:	2d38      	cmp	r5, #56	; 0x38
 80021ba:	d203      	bcs.n	80021c4 <osThreadNew+0x60>
 80021bc:	7915      	ldrb	r5, [r2, #4]
 80021be:	f015 0f01 	tst.w	r5, #1
 80021c2:	d003      	beq.n	80021cc <osThreadNew+0x68>
}
 80021c4:	b005      	add	sp, #20
        return (NULL);
 80021c6:	2000      	movs	r0, #0
}
 80021c8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
      if (attr->stack_size > 0U) {
 80021cc:	6955      	ldr	r5, [r2, #20]
 80021ce:	b105      	cbz	r5, 80021d2 <osThreadNew+0x6e>
        stack = attr->stack_size / sizeof(StackType_t);
 80021d0:	08ac      	lsrs	r4, r5, #2
      if ((attr->cb_mem    != NULL) && (attr->cb_size    >= sizeof(StaticTask_t)) &&
 80021d2:	f8d2 8008 	ldr.w	r8, [r2, #8]
 80021d6:	f1b8 0f00 	cmp.w	r8, #0
 80021da:	d007      	beq.n	80021ec <osThreadNew+0x88>
 80021dc:	68d6      	ldr	r6, [r2, #12]
 80021de:	2e60      	cmp	r6, #96	; 0x60
 80021e0:	d304      	bcc.n	80021ec <osThreadNew+0x88>
          (attr->stack_mem != NULL) && (attr->stack_size >  0U)) {
 80021e2:	6916      	ldr	r6, [r2, #16]
 80021e4:	b116      	cbz	r6, 80021ec <osThreadNew+0x88>
 80021e6:	b10d      	cbz	r5, 80021ec <osThreadNew+0x88>
        mem = 1;
 80021e8:	2101      	movs	r1, #1
 80021ea:	e009      	b.n	8002200 <osThreadNew+0x9c>
        if ((attr->cb_mem == NULL) && (attr->cb_size == 0U) && (attr->stack_mem == NULL)) {
 80021ec:	f1b8 0f00 	cmp.w	r8, #0
 80021f0:	d106      	bne.n	8002200 <osThreadNew+0x9c>
 80021f2:	68d5      	ldr	r5, [r2, #12]
 80021f4:	b925      	cbnz	r5, 8002200 <osThreadNew+0x9c>
 80021f6:	6915      	ldr	r5, [r2, #16]
 80021f8:	b915      	cbnz	r5, 8002200 <osThreadNew+0x9c>
          mem = 0;
 80021fa:	2100      	movs	r1, #0
 80021fc:	e000      	b.n	8002200 <osThreadNew+0x9c>
      mem = 0;
 80021fe:	2100      	movs	r1, #0
    if (mem == 1) {
 8002200:	2901      	cmp	r1, #1
 8002202:	d001      	beq.n	8002208 <osThreadNew+0xa4>
      if (mem == 0) {
 8002204:	b161      	cbz	r1, 8002220 <osThreadNew+0xbc>
 8002206:	e016      	b.n	8002236 <osThreadNew+0xd2>
      hTask = xTaskCreateStatic ((TaskFunction_t)func, name, stack, argument, prio, (StackType_t  *)attr->stack_mem,
 8002208:	6891      	ldr	r1, [r2, #8]
 800220a:	6912      	ldr	r2, [r2, #16]
 800220c:	9201      	str	r2, [sp, #4]
 800220e:	9102      	str	r1, [sp, #8]
 8002210:	f8cd c000 	str.w	ip, [sp]
 8002214:	4622      	mov	r2, r4
 8002216:	4649      	mov	r1, r9
 8002218:	f001 fb46 	bl	80038a8 <xTaskCreateStatic>
 800221c:	9003      	str	r0, [sp, #12]
 800221e:	e00a      	b.n	8002236 <osThreadNew+0xd2>
        if (xTaskCreate ((TaskFunction_t)func, name, (uint16_t)stack, argument, prio, &hTask) != pdPASS) {
 8002220:	a903      	add	r1, sp, #12
 8002222:	9101      	str	r1, [sp, #4]
 8002224:	b2a2      	uxth	r2, r4
 8002226:	f8cd c000 	str.w	ip, [sp]
 800222a:	4649      	mov	r1, r9
 800222c:	f001 fb06 	bl	800383c <xTaskCreate>
 8002230:	2801      	cmp	r0, #1
 8002232:	d000      	beq.n	8002236 <osThreadNew+0xd2>
          hTask = NULL;
 8002234:	9703      	str	r7, [sp, #12]
  return ((osThreadId_t)hTask);
 8002236:	9803      	ldr	r0, [sp, #12]
}
 8002238:	b005      	add	sp, #20
 800223a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800223e:	0000      	.short	0x0000
 8002240:	20000080 	.word	0x20000080

08002244 <prvAddCurrentTaskToDelayedList>:
#endif /* configUSE_TASK_NOTIFICATIONS */
/*-----------------------------------------------------------*/


static void prvAddCurrentTaskToDelayedList( TickType_t xTicksToWait, const BaseType_t xCanBlockIndefinitely )
{
 8002244:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002248:	4604      	mov	r4, r0
 800224a:	460f      	mov	r7, r1
TickType_t xTimeToWake;
const TickType_t xConstTickCount = xTickCount;
 800224c:	4e13      	ldr	r6, [pc, #76]	; (800229c <prvAddCurrentTaskToDelayedList+0x58>)
 800224e:	6975      	ldr	r5, [r6, #20]
	}
	#endif

	/* Remove the task from the ready list before adding it to the blocked list
	as the same list item is used for both lists. */
	if( uxListRemove( &( pxCurrentTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
 8002250:	6830      	ldr	r0, [r6, #0]
 8002252:	1d00      	adds	r0, r0, #4
 8002254:	f000 fcce 	bl	8002bf4 <uxListRemove>
		mtCOVERAGE_TEST_MARKER();
	}

	#if ( INCLUDE_vTaskSuspend == 1 )
	{
		if( ( xTicksToWait == portMAX_DELAY ) && ( xCanBlockIndefinitely != pdFALSE ) )
 8002258:	f1b4 3fff 	cmp.w	r4, #4294967295
 800225c:	d107      	bne.n	800226e <prvAddCurrentTaskToDelayedList+0x2a>
 800225e:	b137      	cbz	r7, 800226e <prvAddCurrentTaskToDelayedList+0x2a>
		{
			/* Add the task to the suspended task list instead of a delayed task
			list to ensure it is not woken by a timing event.  It will block
			indefinitely. */
			vListInsertEnd( &xSuspendedTaskList, &( pxCurrentTCB->xStateListItem ) );
 8002260:	6830      	ldr	r0, [r6, #0]
 8002262:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8002266:	1d01      	adds	r1, r0, #4
 8002268:	480d      	ldr	r0, [pc, #52]	; (80022a0 <prvAddCurrentTaskToDelayedList+0x5c>)
 800226a:	f000 bd6f 	b.w	8002d4c <vListInsertEnd>
		else
		{
			/* Calculate the time at which the task should be woken if the event
			does not occur.  This may overflow but this doesn't matter, the
			kernel will manage it correctly. */
			xTimeToWake = xConstTickCount + xTicksToWait;
 800226e:	442c      	add	r4, r5

			/* The list item will be inserted in wake time order. */
			listSET_LIST_ITEM_VALUE( &( pxCurrentTCB->xStateListItem ), xTimeToWake );
 8002270:	6830      	ldr	r0, [r6, #0]
 8002272:	6044      	str	r4, [r0, #4]

			if( xTimeToWake < xConstTickCount )
 8002274:	42ac      	cmp	r4, r5
 8002276:	d206      	bcs.n	8002286 <prvAddCurrentTaskToDelayedList+0x42>
			{
				/* Wake time has overflowed.  Place this item in the overflow
				list. */
				vListInsert( pxOverflowDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
 8002278:	6830      	ldr	r0, [r6, #0]
 800227a:	1d01      	adds	r1, r0, #4
 800227c:	68b0      	ldr	r0, [r6, #8]
 800227e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8002282:	f000 bd48 	b.w	8002d16 <vListInsert>
			}
			else
			{
				/* The wake time has not overflowed, so the current block list
				is used. */
				vListInsert( pxDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
 8002286:	6830      	ldr	r0, [r6, #0]
 8002288:	1d01      	adds	r1, r0, #4
 800228a:	6870      	ldr	r0, [r6, #4]
 800228c:	f000 fd43 	bl	8002d16 <vListInsert>

				/* If the task entering the blocked state was placed at the
				head of the list of blocked tasks then xNextTaskUnblockTime
				needs to be updated too. */
				if( xTimeToWake < xNextTaskUnblockTime )
 8002290:	6b30      	ldr	r0, [r6, #48]	; 0x30
 8002292:	4284      	cmp	r4, r0
 8002294:	d200      	bcs.n	8002298 <prvAddCurrentTaskToDelayedList+0x54>
				{
					xNextTaskUnblockTime = xTimeToWake;
 8002296:	6334      	str	r4, [r6, #48]	; 0x30

		/* Avoid compiler warning when INCLUDE_vTaskSuspend is not 1. */
		( void ) xCanBlockIndefinitely;
	}
	#endif /* INCLUDE_vTaskSuspend */
}
 8002298:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800229c:	20000028 	.word	0x20000028
 80022a0:	20000abc 	.word	0x20000abc

080022a4 <prvAddNewTaskToReadyList>:
{
 80022a4:	b570      	push	{r4, r5, r6, lr}
 80022a6:	4604      	mov	r4, r0
	taskENTER_CRITICAL();
 80022a8:	f000 fd5c 	bl	8002d64 <vPortEnterCritical>
		uxCurrentNumberOfTasks++;
 80022ac:	4d1c      	ldr	r5, [pc, #112]	; (8002320 <prvAddNewTaskToReadyList+0x7c>)
 80022ae:	6928      	ldr	r0, [r5, #16]
 80022b0:	1c40      	adds	r0, r0, #1
 80022b2:	6128      	str	r0, [r5, #16]
		if( pxCurrentTCB == NULL )
 80022b4:	6828      	ldr	r0, [r5, #0]
 80022b6:	b110      	cbz	r0, 80022be <prvAddNewTaskToReadyList+0x1a>
			if( xSchedulerRunning == pdFALSE )
 80022b8:	69e8      	ldr	r0, [r5, #28]
 80022ba:	b138      	cbz	r0, 80022cc <prvAddNewTaskToReadyList+0x28>
 80022bc:	e00c      	b.n	80022d8 <prvAddNewTaskToReadyList+0x34>
			pxCurrentTCB = pxNewTCB;
 80022be:	602c      	str	r4, [r5, #0]
			if( uxCurrentNumberOfTasks == ( UBaseType_t ) 1 )
 80022c0:	6928      	ldr	r0, [r5, #16]
 80022c2:	2801      	cmp	r0, #1
 80022c4:	d108      	bne.n	80022d8 <prvAddNewTaskToReadyList+0x34>
				prvInitialiseTaskLists();
 80022c6:	f000 f993 	bl	80025f0 <prvInitialiseTaskLists>
 80022ca:	e005      	b.n	80022d8 <prvAddNewTaskToReadyList+0x34>
				if( pxCurrentTCB->uxPriority <= pxNewTCB->uxPriority )
 80022cc:	6828      	ldr	r0, [r5, #0]
 80022ce:	6ae1      	ldr	r1, [r4, #44]	; 0x2c
 80022d0:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
 80022d2:	4288      	cmp	r0, r1
 80022d4:	d800      	bhi.n	80022d8 <prvAddNewTaskToReadyList+0x34>
					pxCurrentTCB = pxNewTCB;
 80022d6:	602c      	str	r4, [r5, #0]
		uxTaskNumber++;
 80022d8:	6ae8      	ldr	r0, [r5, #44]	; 0x2c
 80022da:	1c40      	adds	r0, r0, #1
 80022dc:	62e8      	str	r0, [r5, #44]	; 0x2c
			pxNewTCB->uxTCBNumber = uxTaskNumber;
 80022de:	6460      	str	r0, [r4, #68]	; 0x44
		prvAddTaskToReadyList( pxNewTCB );
 80022e0:	6ae0      	ldr	r0, [r4, #44]	; 0x2c
 80022e2:	69a9      	ldr	r1, [r5, #24]
 80022e4:	4288      	cmp	r0, r1
 80022e6:	d900      	bls.n	80022ea <prvAddNewTaskToReadyList+0x46>
 80022e8:	61a8      	str	r0, [r5, #24]
 80022ea:	490e      	ldr	r1, [pc, #56]	; (8002324 <prvAddNewTaskToReadyList+0x80>)
 80022ec:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 80022f0:	eb01 0080 	add.w	r0, r1, r0, lsl #2
 80022f4:	1d21      	adds	r1, r4, #4
 80022f6:	f000 fd29 	bl	8002d4c <vListInsertEnd>
	taskEXIT_CRITICAL();
 80022fa:	f000 fd53 	bl	8002da4 <vPortExitCritical>
	if( xSchedulerRunning != pdFALSE )
 80022fe:	69e8      	ldr	r0, [r5, #28]
 8002300:	2800      	cmp	r0, #0
 8002302:	d00c      	beq.n	800231e <prvAddNewTaskToReadyList+0x7a>
		if( pxCurrentTCB->uxPriority < pxNewTCB->uxPriority )
 8002304:	6828      	ldr	r0, [r5, #0]
 8002306:	6ae1      	ldr	r1, [r4, #44]	; 0x2c
 8002308:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
 800230a:	4288      	cmp	r0, r1
 800230c:	d207      	bcs.n	800231e <prvAddNewTaskToReadyList+0x7a>
			taskYIELD_IF_USING_PREEMPTION();
 800230e:	4906      	ldr	r1, [pc, #24]	; (8002328 <prvAddNewTaskToReadyList+0x84>)
 8002310:	f04f 5080 	mov.w	r0, #268435456	; 0x10000000
 8002314:	6008      	str	r0, [r1, #0]
 8002316:	f3bf 8f4f 	dsb	sy
 800231a:	f3bf 8f6f 	isb	sy
}
 800231e:	bd70      	pop	{r4, r5, r6, pc}
 8002320:	20000028 	.word	0x20000028
 8002324:	2000060c 	.word	0x2000060c
 8002328:	e000ed04 	.word	0xe000ed04

0800232c <prvCheckForValidListAndQueue>:
	pxOverflowTimerList = pxTemp;
}
/*-----------------------------------------------------------*/

static void prvCheckForValidListAndQueue( void )
{
 800232c:	b538      	push	{r3, r4, r5, lr}
	/* Check that the list from which active timers are referenced, and the
	queue used to communicate with the timer service, have been
	initialised. */
	taskENTER_CRITICAL();
 800232e:	f000 fd19 	bl	8002d64 <vPortEnterCritical>
	{
		if( xTimerQueue == NULL )
 8002332:	4c0f      	ldr	r4, [pc, #60]	; (8002370 <prvCheckForValidListAndQueue+0x44>)
 8002334:	68a0      	ldr	r0, [r4, #8]
 8002336:	b9b8      	cbnz	r0, 8002368 <prvCheckForValidListAndQueue+0x3c>
		{
			vListInitialise( &xActiveTimerList1 );
 8002338:	480e      	ldr	r0, [pc, #56]	; (8002374 <prvCheckForValidListAndQueue+0x48>)
 800233a:	f000 fcde 	bl	8002cfa <vListInitialise>
			vListInitialise( &xActiveTimerList2 );
 800233e:	480e      	ldr	r0, [pc, #56]	; (8002378 <prvCheckForValidListAndQueue+0x4c>)
 8002340:	f000 fcdb 	bl	8002cfa <vListInitialise>
			pxCurrentTimerList = &xActiveTimerList1;
 8002344:	480b      	ldr	r0, [pc, #44]	; (8002374 <prvCheckForValidListAndQueue+0x48>)
 8002346:	6020      	str	r0, [r4, #0]
			pxOverflowTimerList = &xActiveTimerList2;
 8002348:	3014      	adds	r0, #20
 800234a:	6060      	str	r0, [r4, #4]
				/* The timer queue is allocated statically in case
				configSUPPORT_DYNAMIC_ALLOCATION is 0. */
				static StaticQueue_t xStaticTimerQueue; /*lint !e956 Ok to declare in this manner to prevent additional conditional compilation guards in other locations. */
				static uint8_t ucStaticTimerQueueStorage[ ( size_t ) configTIMER_QUEUE_LENGTH * sizeof( DaemonTaskMessage_t ) ]; /*lint !e956 Ok to declare in this manner to prevent additional conditional compilation guards in other locations. */

				xTimerQueue = xQueueCreateStatic( ( UBaseType_t ) configTIMER_QUEUE_LENGTH, ( UBaseType_t ) sizeof( DaemonTaskMessage_t ), &( ucStaticTimerQueueStorage[ 0 ] ), &xStaticTimerQueue );
 800234c:	2000      	movs	r0, #0
 800234e:	4b0b      	ldr	r3, [pc, #44]	; (800237c <prvCheckForValidListAndQueue+0x50>)
 8002350:	9000      	str	r0, [sp, #0]
 8002352:	f103 0250 	add.w	r2, r3, #80	; 0x50
 8002356:	2110      	movs	r1, #16
 8002358:	200a      	movs	r0, #10
 800235a:	f000 fff5 	bl	8003348 <xQueueGenericCreateStatic>
 800235e:	60a0      	str	r0, [r4, #8]
			}
			#endif

			#if ( configQUEUE_REGISTRY_SIZE > 0 )
			{
				if( xTimerQueue != NULL )
 8002360:	b110      	cbz	r0, 8002368 <prvCheckForValidListAndQueue+0x3c>
				{
					vQueueAddToRegistry( xTimerQueue, "TmrQ" );
 8002362:	a107      	add	r1, pc, #28	; (adr r1, 8002380 <prvCheckForValidListAndQueue+0x54>)
 8002364:	f000 fd9e 	bl	8002ea4 <vQueueAddToRegistry>
		else
		{
			mtCOVERAGE_TEST_MARKER();
		}
	}
	taskEXIT_CRITICAL();
 8002368:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800236c:	f000 bd1a 	b.w	8002da4 <vPortExitCritical>
 8002370:	2000006c 	.word	0x2000006c
 8002374:	20000ad0 	.word	0x20000ad0
 8002378:	20000ae4 	.word	0x20000ae4
 800237c:	20000af8 	.word	0x20000af8
 8002380:	51726d54 	.word	0x51726d54
 8002384:	00000000 	.word	0x00000000

08002388 <prvCheckTasksWaitingTermination>:
{
 8002388:	b570      	push	{r4, r5, r6, lr}
		while( uxDeletedTasksWaitingCleanUp > ( UBaseType_t ) 0U )
 800238a:	4c0d      	ldr	r4, [pc, #52]	; (80023c0 <prvCheckTasksWaitingTermination+0x38>)
 800238c:	68e0      	ldr	r0, [r4, #12]
 800238e:	2800      	cmp	r0, #0
{
 8002390:	d015      	beq.n	80023be <prvCheckTasksWaitingTermination+0x36>
				pxTCB = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( ( &xTasksWaitingTermination ) );
 8002392:	4e0c      	ldr	r6, [pc, #48]	; (80023c4 <prvCheckTasksWaitingTermination+0x3c>)
			taskENTER_CRITICAL();
 8002394:	f000 fce6 	bl	8002d64 <vPortEnterCritical>
				pxTCB = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( ( &xTasksWaitingTermination ) );
 8002398:	68f0      	ldr	r0, [r6, #12]
 800239a:	68c5      	ldr	r5, [r0, #12]
				( void ) uxListRemove( &( pxTCB->xStateListItem ) );
 800239c:	1d28      	adds	r0, r5, #4
 800239e:	f000 fc29 	bl	8002bf4 <uxListRemove>
				--uxCurrentNumberOfTasks;
 80023a2:	6920      	ldr	r0, [r4, #16]
 80023a4:	1e40      	subs	r0, r0, #1
 80023a6:	6120      	str	r0, [r4, #16]
				--uxDeletedTasksWaitingCleanUp;
 80023a8:	68e0      	ldr	r0, [r4, #12]
 80023aa:	1e40      	subs	r0, r0, #1
 80023ac:	60e0      	str	r0, [r4, #12]
			taskEXIT_CRITICAL();
 80023ae:	f000 fcf9 	bl	8002da4 <vPortExitCritical>
			prvDeleteTCB( pxTCB );
 80023b2:	4628      	mov	r0, r5
 80023b4:	f000 f851 	bl	800245a <prvDeleteTCB>
		while( uxDeletedTasksWaitingCleanUp > ( UBaseType_t ) 0U )
 80023b8:	68e0      	ldr	r0, [r4, #12]
 80023ba:	2800      	cmp	r0, #0
 80023bc:	d1ea      	bne.n	8002394 <prvCheckTasksWaitingTermination+0xc>
}
 80023be:	bd70      	pop	{r4, r5, r6, pc}
 80023c0:	20000028 	.word	0x20000028
 80023c4:	20000aa8 	.word	0x20000aa8

080023c8 <prvCopyDataFromQueue>:
	return xReturn;
}
/*-----------------------------------------------------------*/

static void prvCopyDataFromQueue( Queue_t * const pxQueue, void * const pvBuffer )
{
 80023c8:	460b      	mov	r3, r1
	if( pxQueue->uxItemSize != ( UBaseType_t ) 0 )
 80023ca:	6c02      	ldr	r2, [r0, #64]	; 0x40
 80023cc:	2a00      	cmp	r2, #0
{
 80023ce:	d00c      	beq.n	80023ea <prvCopyDataFromQueue+0x22>
	{
		pxQueue->u.pcReadFrom += pxQueue->uxItemSize;
 80023d0:	68c1      	ldr	r1, [r0, #12]
 80023d2:	4411      	add	r1, r2
 80023d4:	60c1      	str	r1, [r0, #12]
		if( pxQueue->u.pcReadFrom >= pxQueue->pcTail ) /*lint !e946 MISRA exception justified as use of the relational operator is the cleanest solutions. */
 80023d6:	f8d0 c004 	ldr.w	ip, [r0, #4]
 80023da:	4561      	cmp	r1, ip
 80023dc:	d301      	bcc.n	80023e2 <prvCopyDataFromQueue+0x1a>
		{
			pxQueue->u.pcReadFrom = pxQueue->pcHead;
 80023de:	6801      	ldr	r1, [r0, #0]
 80023e0:	60c1      	str	r1, [r0, #12]
		}
		else
		{
			mtCOVERAGE_TEST_MARKER();
		}
		( void ) memcpy( ( void * ) pvBuffer, ( void * ) pxQueue->u.pcReadFrom, ( size_t ) pxQueue->uxItemSize ); /*lint !e961 !e418 MISRA exception as the casts are only redundant for some ports.  Also previous logic ensures a null pointer can only be passed to memcpy() when the count is 0. */
 80023e2:	68c1      	ldr	r1, [r0, #12]
 80023e4:	4618      	mov	r0, r3
 80023e6:	f7fe b806 	b.w	80003f6 <__rt_memcpy>
	}
}
 80023ea:	4770      	bx	lr

080023ec <prvCopyDataToQueue>:
{
 80023ec:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80023f0:	4604      	mov	r4, r0
 80023f2:	4616      	mov	r6, r2
BaseType_t xReturn = pdFALSE;
 80023f4:	2700      	movs	r7, #0
	uxMessagesWaiting = pxQueue->uxMessagesWaiting;
 80023f6:	6ba5      	ldr	r5, [r4, #56]	; 0x38
	if( pxQueue->uxItemSize == ( UBaseType_t ) 0 )
 80023f8:	6c22      	ldr	r2, [r4, #64]	; 0x40
 80023fa:	2a00      	cmp	r2, #0
{
 80023fc:	d010      	beq.n	8002420 <prvCopyDataToQueue+0x34>
	else if( xPosition == queueSEND_TO_BACK )
 80023fe:	b1c6      	cbz	r6, 8002432 <prvCopyDataToQueue+0x46>
		( void ) memcpy( ( void * ) pxQueue->u.pcReadFrom, pvItemToQueue, ( size_t ) pxQueue->uxItemSize ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
 8002400:	68e0      	ldr	r0, [r4, #12]
 8002402:	f7fd fff8 	bl	80003f6 <__rt_memcpy>
		pxQueue->u.pcReadFrom -= pxQueue->uxItemSize;
 8002406:	68e1      	ldr	r1, [r4, #12]
 8002408:	6c20      	ldr	r0, [r4, #64]	; 0x40
 800240a:	1a09      	subs	r1, r1, r0
 800240c:	60e1      	str	r1, [r4, #12]
		if( pxQueue->u.pcReadFrom < pxQueue->pcHead ) /*lint !e946 MISRA exception justified as comparison of pointers is the cleanest solution. */
 800240e:	6822      	ldr	r2, [r4, #0]
 8002410:	4291      	cmp	r1, r2
 8002412:	d202      	bcs.n	800241a <prvCopyDataToQueue+0x2e>
			pxQueue->u.pcReadFrom = ( pxQueue->pcTail - pxQueue->uxItemSize );
 8002414:	6861      	ldr	r1, [r4, #4]
 8002416:	1a08      	subs	r0, r1, r0
 8002418:	60e0      	str	r0, [r4, #12]
		if( xPosition == queueOVERWRITE )
 800241a:	2e02      	cmp	r6, #2
 800241c:	d016      	beq.n	800244c <prvCopyDataToQueue+0x60>
 800241e:	e017      	b.n	8002450 <prvCopyDataToQueue+0x64>
			if( pxQueue->uxQueueType == queueQUEUE_IS_MUTEX )
 8002420:	6820      	ldr	r0, [r4, #0]
 8002422:	b9a8      	cbnz	r0, 8002450 <prvCopyDataToQueue+0x64>
				xReturn = xTaskPriorityDisinherit( ( void * ) pxQueue->pxMutexHolder );
 8002424:	6860      	ldr	r0, [r4, #4]
 8002426:	f001 fae9 	bl	80039fc <xTaskPriorityDisinherit>
 800242a:	4607      	mov	r7, r0
				pxQueue->pxMutexHolder = NULL;
 800242c:	2000      	movs	r0, #0
 800242e:	6060      	str	r0, [r4, #4]
 8002430:	e00e      	b.n	8002450 <prvCopyDataToQueue+0x64>
		( void ) memcpy( ( void * ) pxQueue->pcWriteTo, pvItemToQueue, ( size_t ) pxQueue->uxItemSize ); /*lint !e961 !e418 MISRA exception as the casts are only redundant for some ports, plus previous logic ensures a null pointer can only be passed to memcpy() if the copy size is 0. */
 8002432:	68a0      	ldr	r0, [r4, #8]
 8002434:	f7fd ffdf 	bl	80003f6 <__rt_memcpy>
		pxQueue->pcWriteTo += pxQueue->uxItemSize;
 8002438:	6c21      	ldr	r1, [r4, #64]	; 0x40
 800243a:	68a0      	ldr	r0, [r4, #8]
 800243c:	4408      	add	r0, r1
 800243e:	60a0      	str	r0, [r4, #8]
		if( pxQueue->pcWriteTo >= pxQueue->pcTail ) /*lint !e946 MISRA exception justified as comparison of pointers is the cleanest solution. */
 8002440:	6861      	ldr	r1, [r4, #4]
 8002442:	4288      	cmp	r0, r1
 8002444:	d304      	bcc.n	8002450 <prvCopyDataToQueue+0x64>
			pxQueue->pcWriteTo = pxQueue->pcHead;
 8002446:	6820      	ldr	r0, [r4, #0]
 8002448:	60a0      	str	r0, [r4, #8]
 800244a:	e001      	b.n	8002450 <prvCopyDataToQueue+0x64>
			if( uxMessagesWaiting > ( UBaseType_t ) 0 )
 800244c:	b105      	cbz	r5, 8002450 <prvCopyDataToQueue+0x64>
				--uxMessagesWaiting;
 800244e:	1e6d      	subs	r5, r5, #1
	pxQueue->uxMessagesWaiting = uxMessagesWaiting + ( UBaseType_t ) 1;
 8002450:	1c68      	adds	r0, r5, #1
 8002452:	63a0      	str	r0, [r4, #56]	; 0x38
	return xReturn;
 8002454:	4638      	mov	r0, r7
}
 8002456:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

0800245a <prvDeleteTCB>:
	{
 800245a:	b510      	push	{r4, lr}
 800245c:	4604      	mov	r4, r0
			if( pxTCB->ucStaticallyAllocated == tskDYNAMICALLY_ALLOCATED_STACK_AND_TCB )
 800245e:	f894 105d 	ldrb.w	r1, [r4, #93]	; 0x5d
 8002462:	2900      	cmp	r1, #0
	{
 8002464:	d00b      	beq.n	800247e <prvDeleteTCB+0x24>
			else if( pxTCB->ucStaticallyAllocated == tskSTATICALLY_ALLOCATED_STACK_ONLY )
 8002466:	2901      	cmp	r1, #1
 8002468:	d011      	beq.n	800248e <prvDeleteTCB+0x34>
				configASSERT( pxTCB->ucStaticallyAllocated == tskSTATICALLY_ALLOCATED_STACK_AND_TCB	);
 800246a:	2902      	cmp	r1, #2
 800246c:	d014      	beq.n	8002498 <prvDeleteTCB+0x3e>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800246e:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002470:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002474:	f3bf 8f4f 	dsb	sy
		isb
 8002478:	f3bf 8f6f 	isb	sy
 800247c:	e7fe      	b.n	800247c <prvDeleteTCB+0x22>
				vPortFree( pxTCB->pxStack );
 800247e:	6b20      	ldr	r0, [r4, #48]	; 0x30
 8002480:	f000 fca6 	bl	8002dd0 <vPortFree>
				vPortFree( pxTCB );
 8002484:	4620      	mov	r0, r4
 8002486:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800248a:	f000 bca1 	b.w	8002dd0 <vPortFree>
				vPortFree( pxTCB );
 800248e:	4620      	mov	r0, r4
 8002490:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8002494:	f000 bc9c 	b.w	8002dd0 <vPortFree>
	}
 8002498:	bd10      	pop	{r4, pc}
	...

0800249c <prvGetNextExpireTime>:
	*pxListWasEmpty = listLIST_IS_EMPTY( pxCurrentTimerList );
 800249c:	4907      	ldr	r1, [pc, #28]	; (80024bc <prvGetNextExpireTime+0x20>)
 800249e:	680a      	ldr	r2, [r1, #0]
 80024a0:	6811      	ldr	r1, [r2, #0]
 80024a2:	2900      	cmp	r1, #0
{
 80024a4:	d004      	beq.n	80024b0 <prvGetNextExpireTime+0x14>
	*pxListWasEmpty = listLIST_IS_EMPTY( pxCurrentTimerList );
 80024a6:	2100      	movs	r1, #0
 80024a8:	6001      	str	r1, [r0, #0]
	if( *pxListWasEmpty == pdFALSE )
 80024aa:	b119      	cbz	r1, 80024b4 <prvGetNextExpireTime+0x18>
		xNextExpireTime = ( TickType_t ) 0U;
 80024ac:	2000      	movs	r0, #0
}
 80024ae:	4770      	bx	lr
	*pxListWasEmpty = listLIST_IS_EMPTY( pxCurrentTimerList );
 80024b0:	2101      	movs	r1, #1
 80024b2:	e7f9      	b.n	80024a8 <prvGetNextExpireTime+0xc>
		xNextExpireTime = listGET_ITEM_VALUE_OF_HEAD_ENTRY( pxCurrentTimerList );
 80024b4:	68d0      	ldr	r0, [r2, #12]
 80024b6:	6800      	ldr	r0, [r0, #0]
}
 80024b8:	4770      	bx	lr
 80024ba:	0000      	.short	0x0000
 80024bc:	2000006c 	.word	0x2000006c

080024c0 <prvHeapInit>:
static void prvHeapInit( void )
{
BlockLink_t *pxFirstFreeBlock;
uint8_t *pucAlignedHeap;
size_t uxAddress;
size_t xTotalHeapSize = configTOTAL_HEAP_SIZE;
 80024c0:	f44f 6140 	mov.w	r1, #3072	; 0xc00

	/* Ensure the heap starts on a correctly aligned boundary. */
	uxAddress = ( size_t ) ucHeap;
 80024c4:	4810      	ldr	r0, [pc, #64]	; (8002508 <prvHeapInit+0x48>)

	if( ( uxAddress & portBYTE_ALIGNMENT_MASK ) != 0 )
 80024c6:	f010 0f07 	tst.w	r0, #7
{
 80024ca:	d006      	beq.n	80024da <prvHeapInit+0x1a>
	{
		uxAddress += ( portBYTE_ALIGNMENT - 1 );
 80024cc:	1dc0      	adds	r0, r0, #7
		uxAddress &= ~( ( size_t ) portBYTE_ALIGNMENT_MASK );
 80024ce:	f020 0007 	bic.w	r0, r0, #7
		xTotalHeapSize -= uxAddress - ( size_t ) ucHeap;
 80024d2:	490d      	ldr	r1, [pc, #52]	; (8002508 <prvHeapInit+0x48>)
 80024d4:	1a41      	subs	r1, r0, r1
 80024d6:	f5c1 6140 	rsb	r1, r1, #3072	; 0xc00

	pucAlignedHeap = ( uint8_t * ) uxAddress;

	/* xStart is used to hold a pointer to the first item in the list of free
	blocks.  The void cast is used to prevent compiler warnings. */
	xStart.pxNextFreeBlock = ( void * ) pucAlignedHeap;
 80024da:	4a0c      	ldr	r2, [pc, #48]	; (800250c <prvHeapInit+0x4c>)
 80024dc:	6010      	str	r0, [r2, #0]
	xStart.xBlockSize = ( size_t ) 0;
 80024de:	2300      	movs	r3, #0
 80024e0:	6053      	str	r3, [r2, #4]

	/* pxEnd is used to mark the end of the list of free blocks and is inserted
	at the end of the heap space. */
	uxAddress = ( ( size_t ) pucAlignedHeap ) + xTotalHeapSize;
 80024e2:	4401      	add	r1, r0
	uxAddress -= xHeapStructSize;
 80024e4:	3908      	subs	r1, #8
	uxAddress &= ~( ( size_t ) portBYTE_ALIGNMENT_MASK );
 80024e6:	f021 0107 	bic.w	r1, r1, #7
	pxEnd = ( void * ) uxAddress;
 80024ea:	3a10      	subs	r2, #16
 80024ec:	6011      	str	r1, [r2, #0]
	pxEnd->xBlockSize = 0;
 80024ee:	604b      	str	r3, [r1, #4]
	pxEnd->pxNextFreeBlock = NULL;
 80024f0:	600b      	str	r3, [r1, #0]

	/* To start with there is a single free block that is sized to take up the
	entire heap space, minus the space taken by pxEnd. */
	pxFirstFreeBlock = ( void * ) pucAlignedHeap;
	pxFirstFreeBlock->xBlockSize = uxAddress - ( size_t ) pxFirstFreeBlock;
 80024f2:	1a0b      	subs	r3, r1, r0
 80024f4:	6043      	str	r3, [r0, #4]
	pxFirstFreeBlock->pxNextFreeBlock = pxEnd;
 80024f6:	6001      	str	r1, [r0, #0]

	/* Only one block exists - and it covers the entire usable heap space. */
	xMinimumEverFreeBytesRemaining = pxFirstFreeBlock->xBlockSize;
 80024f8:	6840      	ldr	r0, [r0, #4]
 80024fa:	6090      	str	r0, [r2, #8]
	xFreeBytesRemaining = pxFirstFreeBlock->xBlockSize;
 80024fc:	6050      	str	r0, [r2, #4]

	/* Work out the position of the top bit in a size_t variable. */
	xBlockAllocatedBit = ( ( size_t ) 1 ) << ( ( sizeof( size_t ) * heapBITS_PER_BYTE ) - 1 );
 80024fe:	f04f 4000 	mov.w	r0, #2147483648	; 0x80000000
 8002502:	60d0      	str	r0, [r2, #12]
}
 8002504:	4770      	bx	lr
 8002506:	0000      	.short	0x0000
 8002508:	200012a8 	.word	0x200012a8
 800250c:	20000094 	.word	0x20000094

08002510 <prvIdleTask>:
			if( listCURRENT_LIST_LENGTH( &( pxReadyTasksLists[ tskIDLE_PRIORITY ] ) ) > ( UBaseType_t ) 1 )
 8002510:	4e08      	ldr	r6, [pc, #32]	; (8002534 <prvIdleTask+0x24>)
				taskYIELD();
 8002512:	f04f 5480 	mov.w	r4, #268435456	; 0x10000000
 8002516:	4d08      	ldr	r5, [pc, #32]	; (8002538 <prvIdleTask+0x28>)
		prvCheckTasksWaitingTermination();
 8002518:	f7ff ff36 	bl	8002388 <prvCheckTasksWaitingTermination>
			if( listCURRENT_LIST_LENGTH( &( pxReadyTasksLists[ tskIDLE_PRIORITY ] ) ) > ( UBaseType_t ) 1 )
 800251c:	6830      	ldr	r0, [r6, #0]
 800251e:	2801      	cmp	r0, #1
 8002520:	d904      	bls.n	800252c <prvIdleTask+0x1c>
				taskYIELD();
 8002522:	602c      	str	r4, [r5, #0]
 8002524:	f3bf 8f4f 	dsb	sy
 8002528:	f3bf 8f6f 	isb	sy
			vApplicationIdleHook();
 800252c:	f000 fbe4 	bl	8002cf8 <vApplicationIdleHook>
 8002530:	e7f2      	b.n	8002518 <prvIdleTask+0x8>
 8002532:	0000      	.short	0x0000
 8002534:	2000060c 	.word	0x2000060c
 8002538:	e000ed04 	.word	0xe000ed04

0800253c <prvInitialiseNewQueue>:
{
 800253c:	b570      	push	{r4, r5, r6, lr}
 800253e:	461d      	mov	r5, r3
 8002540:	9c04      	ldr	r4, [sp, #16]
	if( uxItemSize == ( UBaseType_t ) 0 )
 8002542:	2900      	cmp	r1, #0
{
 8002544:	d009      	beq.n	800255a <prvInitialiseNewQueue+0x1e>
		pxNewQueue->pcHead = ( int8_t * ) pucQueueStorage;
 8002546:	6022      	str	r2, [r4, #0]
	pxNewQueue->uxLength = uxQueueLength;
 8002548:	63e0      	str	r0, [r4, #60]	; 0x3c
	pxNewQueue->uxItemSize = uxItemSize;
 800254a:	6421      	str	r1, [r4, #64]	; 0x40
	( void ) xQueueGenericReset( pxNewQueue, pdTRUE );
 800254c:	2101      	movs	r1, #1
 800254e:	4620      	mov	r0, r4
 8002550:	f000 ff32 	bl	80033b8 <xQueueGenericReset>
		pxNewQueue->ucQueueType = ucQueueType;
 8002554:	f884 504c 	strb.w	r5, [r4, #76]	; 0x4c
}
 8002558:	bd70      	pop	{r4, r5, r6, pc}
		pxNewQueue->pcHead = ( int8_t * ) pxNewQueue;
 800255a:	6024      	str	r4, [r4, #0]
 800255c:	e7f4      	b.n	8002548 <prvInitialiseNewQueue+0xc>

0800255e <prvInitialiseNewTask>:
{
 800255e:	e92d 5ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
 8002562:	4682      	mov	sl, r0
 8002564:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8002566:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8002568:	9c0c      	ldr	r4, [sp, #48]	; 0x30
 800256a:	460e      	mov	r6, r1
 800256c:	4690      	mov	r8, r2
 800256e:	469b      	mov	fp, r3
		( void ) memset( pxNewTCB->pxStack, ( int ) tskSTACK_FILL_BYTE, ( size_t ) ulStackDepth * sizeof( StackType_t ) );
 8002570:	ea4f 0188 	mov.w	r1, r8, lsl #2
 8002574:	22a5      	movs	r2, #165	; 0xa5
 8002576:	6b20      	ldr	r0, [r4, #48]	; 0x30
 8002578:	f7fd ff82 	bl	8000480 <__aeabi_memset>
		pxTopOfStack = pxNewTCB->pxStack + ( ulStackDepth - ( uint32_t ) 1 );
 800257c:	6b20      	ldr	r0, [r4, #48]	; 0x30
 800257e:	f1a8 0101 	sub.w	r1, r8, #1
 8002582:	eb00 0081 	add.w	r0, r0, r1, lsl #2
		pxTopOfStack = ( StackType_t * ) ( ( ( portPOINTER_SIZE_TYPE ) pxTopOfStack ) & ( ~( ( portPOINTER_SIZE_TYPE ) portBYTE_ALIGNMENT_MASK ) ) ); /*lint !e923 MISRA exception.  Avoiding casts between pointers and integers is not practical.  Size differences accounted for using portPOINTER_SIZE_TYPE type. */
 8002586:	f020 0907 	bic.w	r9, r0, #7
		configASSERT( ( ( ( portPOINTER_SIZE_TYPE ) pxTopOfStack & ( portPOINTER_SIZE_TYPE ) portBYTE_ALIGNMENT_MASK ) == 0UL ) );
 800258a:	f04f 0800 	mov.w	r8, #0
	for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) configMAX_TASK_NAME_LEN; x++ )
 800258e:	2000      	movs	r0, #0
		pxNewTCB->pcTaskName[ x ] = pcName[ x ];
 8002590:	1822      	adds	r2, r4, r0
 8002592:	5c31      	ldrb	r1, [r6, r0]
 8002594:	f882 1034 	strb.w	r1, [r2, #52]	; 0x34
		if( pcName[ x ] == 0x00 )
 8002598:	5c31      	ldrb	r1, [r6, r0]
 800259a:	b111      	cbz	r1, 80025a2 <prvInitialiseNewTask+0x44>
	for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) configMAX_TASK_NAME_LEN; x++ )
 800259c:	1c40      	adds	r0, r0, #1
 800259e:	2810      	cmp	r0, #16
 80025a0:	d3f6      	bcc.n	8002590 <prvInitialiseNewTask+0x32>
	pxNewTCB->pcTaskName[ configMAX_TASK_NAME_LEN - 1 ] = '\0';
 80025a2:	f884 8043 	strb.w	r8, [r4, #67]	; 0x43
	if( uxPriority >= ( UBaseType_t ) configMAX_PRIORITIES )
 80025a6:	2d38      	cmp	r5, #56	; 0x38
			break;
 80025a8:	d300      	bcc.n	80025ac <prvInitialiseNewTask+0x4e>
		uxPriority = ( UBaseType_t ) configMAX_PRIORITIES - ( UBaseType_t ) 1U;
 80025aa:	2537      	movs	r5, #55	; 0x37
	pxNewTCB->uxPriority = uxPriority;
 80025ac:	62e5      	str	r5, [r4, #44]	; 0x2c
		pxNewTCB->uxBasePriority = uxPriority;
 80025ae:	64e5      	str	r5, [r4, #76]	; 0x4c
		pxNewTCB->uxMutexesHeld = 0;
 80025b0:	f8c4 8050 	str.w	r8, [r4, #80]	; 0x50
	vListInitialiseItem( &( pxNewTCB->xStateListItem ) );
 80025b4:	1d20      	adds	r0, r4, #4
 80025b6:	f000 fbab 	bl	8002d10 <vListInitialiseItem>
	vListInitialiseItem( &( pxNewTCB->xEventListItem ) );
 80025ba:	f104 0018 	add.w	r0, r4, #24
 80025be:	f000 fba7 	bl	8002d10 <vListInitialiseItem>
	listSET_LIST_ITEM_OWNER( &( pxNewTCB->xStateListItem ), pxNewTCB );
 80025c2:	6124      	str	r4, [r4, #16]
	listSET_LIST_ITEM_VALUE( &( pxNewTCB->xEventListItem ), ( TickType_t ) configMAX_PRIORITIES - ( TickType_t ) uxPriority ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
 80025c4:	f1c5 0038 	rsb	r0, r5, #56	; 0x38
 80025c8:	61a0      	str	r0, [r4, #24]
	listSET_LIST_ITEM_OWNER( &( pxNewTCB->xEventListItem ), pxNewTCB );
 80025ca:	6264      	str	r4, [r4, #36]	; 0x24
		pxNewTCB->ulRunTimeCounter = 0UL;
 80025cc:	f8c4 8054 	str.w	r8, [r4, #84]	; 0x54
		pxNewTCB->ulNotifiedValue = 0;
 80025d0:	f8c4 8058 	str.w	r8, [r4, #88]	; 0x58
		pxNewTCB->ucNotifyState = taskNOT_WAITING_NOTIFICATION;
 80025d4:	f884 805c 	strb.w	r8, [r4, #92]	; 0x5c
		pxNewTCB->pxTopOfStack = pxPortInitialiseStack( pxTopOfStack, pxTaskCode, pvParameters );
 80025d8:	465a      	mov	r2, fp
 80025da:	4651      	mov	r1, sl
 80025dc:	4648      	mov	r0, r9
 80025de:	f000 faef 	bl	8002bc0 <pxPortInitialiseStack>
 80025e2:	6020      	str	r0, [r4, #0]
	if( ( void * ) pxCreatedTask != NULL )
 80025e4:	2f00      	cmp	r7, #0
 80025e6:	d000      	beq.n	80025ea <prvInitialiseNewTask+0x8c>
		*pxCreatedTask = ( TaskHandle_t ) pxNewTCB;
 80025e8:	603c      	str	r4, [r7, #0]
}
 80025ea:	e8bd 9ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}
	...

080025f0 <prvInitialiseTaskLists>:
{
 80025f0:	b570      	push	{r4, r5, r6, lr}
	for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) configMAX_PRIORITIES; uxPriority++ )
 80025f2:	2400      	movs	r4, #0
		vListInitialise( &( pxReadyTasksLists[ uxPriority ] ) );
 80025f4:	4d0f      	ldr	r5, [pc, #60]	; (8002634 <prvInitialiseTaskLists+0x44>)
 80025f6:	eb04 0084 	add.w	r0, r4, r4, lsl #2
 80025fa:	eb05 0080 	add.w	r0, r5, r0, lsl #2
 80025fe:	f000 fb7c 	bl	8002cfa <vListInitialise>
	for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) configMAX_PRIORITIES; uxPriority++ )
 8002602:	1c64      	adds	r4, r4, #1
 8002604:	2c38      	cmp	r4, #56	; 0x38
 8002606:	d3f6      	bcc.n	80025f6 <prvInitialiseTaskLists+0x6>
	vListInitialise( &xDelayedTaskList1 );
 8002608:	480b      	ldr	r0, [pc, #44]	; (8002638 <prvInitialiseTaskLists+0x48>)
 800260a:	f000 fb76 	bl	8002cfa <vListInitialise>
	vListInitialise( &xDelayedTaskList2 );
 800260e:	480b      	ldr	r0, [pc, #44]	; (800263c <prvInitialiseTaskLists+0x4c>)
 8002610:	f000 fb73 	bl	8002cfa <vListInitialise>
	vListInitialise( &xPendingReadyList );
 8002614:	480a      	ldr	r0, [pc, #40]	; (8002640 <prvInitialiseTaskLists+0x50>)
 8002616:	f000 fb70 	bl	8002cfa <vListInitialise>
		vListInitialise( &xTasksWaitingTermination );
 800261a:	480a      	ldr	r0, [pc, #40]	; (8002644 <prvInitialiseTaskLists+0x54>)
 800261c:	f000 fb6d 	bl	8002cfa <vListInitialise>
		vListInitialise( &xSuspendedTaskList );
 8002620:	4809      	ldr	r0, [pc, #36]	; (8002648 <prvInitialiseTaskLists+0x58>)
 8002622:	f000 fb6a 	bl	8002cfa <vListInitialise>
	pxDelayedTaskList = &xDelayedTaskList1;
 8002626:	4809      	ldr	r0, [pc, #36]	; (800264c <prvInitialiseTaskLists+0x5c>)
 8002628:	4903      	ldr	r1, [pc, #12]	; (8002638 <prvInitialiseTaskLists+0x48>)
 800262a:	6041      	str	r1, [r0, #4]
	pxOverflowDelayedTaskList = &xDelayedTaskList2;
 800262c:	3114      	adds	r1, #20
 800262e:	6081      	str	r1, [r0, #8]
}
 8002630:	bd70      	pop	{r4, r5, r6, pc}
 8002632:	0000      	.short	0x0000
 8002634:	2000060c 	.word	0x2000060c
 8002638:	20000a6c 	.word	0x20000a6c
 800263c:	20000a80 	.word	0x20000a80
 8002640:	20000a94 	.word	0x20000a94
 8002644:	20000aa8 	.word	0x20000aa8
 8002648:	20000abc 	.word	0x20000abc
 800264c:	20000028 	.word	0x20000028

08002650 <prvInsertBlockIntoFreeList>:
/*-----------------------------------------------------------*/

static void prvInsertBlockIntoFreeList( BlockLink_t *pxBlockToInsert )
{
 8002650:	b410      	push	{r4}
BlockLink_t *pxIterator;
uint8_t *puc;

	/* Iterate through the list until a block is found that has a higher address
	than the block being inserted. */
	for( pxIterator = &xStart; pxIterator->pxNextFreeBlock < pxBlockToInsert; pxIterator = pxIterator->pxNextFreeBlock )
 8002652:	4914      	ldr	r1, [pc, #80]	; (80026a4 <prvInsertBlockIntoFreeList+0x54>)
{
 8002654:	e000      	b.n	8002658 <prvInsertBlockIntoFreeList+0x8>
	for( pxIterator = &xStart; pxIterator->pxNextFreeBlock < pxBlockToInsert; pxIterator = pxIterator->pxNextFreeBlock )
 8002656:	4611      	mov	r1, r2
 8002658:	680a      	ldr	r2, [r1, #0]
 800265a:	4282      	cmp	r2, r0
 800265c:	d3fb      	bcc.n	8002656 <prvInsertBlockIntoFreeList+0x6>
	}

	/* Do the block being inserted, and the block it is being inserted after
	make a contiguous block of memory? */
	puc = ( uint8_t * ) pxIterator;
	if( ( puc + pxIterator->xBlockSize ) == ( uint8_t * ) pxBlockToInsert )
 800265e:	684b      	ldr	r3, [r1, #4]
 8002660:	eb03 0c01 	add.w	ip, r3, r1
 8002664:	4584      	cmp	ip, r0
 8002666:	d103      	bne.n	8002670 <prvInsertBlockIntoFreeList+0x20>
	{
		pxIterator->xBlockSize += pxBlockToInsert->xBlockSize;
 8002668:	6840      	ldr	r0, [r0, #4]
 800266a:	4418      	add	r0, r3
 800266c:	6048      	str	r0, [r1, #4]
		pxBlockToInsert = pxIterator;
 800266e:	4608      	mov	r0, r1
	}

	/* Do the block being inserted, and the block it is being inserted before
	make a contiguous block of memory? */
	puc = ( uint8_t * ) pxBlockToInsert;
	if( ( puc + pxBlockToInsert->xBlockSize ) == ( uint8_t * ) pxIterator->pxNextFreeBlock )
 8002670:	680c      	ldr	r4, [r1, #0]
 8002672:	f8d0 c004 	ldr.w	ip, [r0, #4]
 8002676:	eb0c 0300 	add.w	r3, ip, r0
 800267a:	42a3      	cmp	r3, r4
 800267c:	d10c      	bne.n	8002698 <prvInsertBlockIntoFreeList+0x48>
	{
		if( pxIterator->pxNextFreeBlock != pxEnd )
 800267e:	4b0a      	ldr	r3, [pc, #40]	; (80026a8 <prvInsertBlockIntoFreeList+0x58>)
 8002680:	681b      	ldr	r3, [r3, #0]
 8002682:	429a      	cmp	r2, r3
 8002684:	d006      	beq.n	8002694 <prvInsertBlockIntoFreeList+0x44>
		{
			/* Form one big block from the two blocks. */
			pxBlockToInsert->xBlockSize += pxIterator->pxNextFreeBlock->xBlockSize;
 8002686:	6852      	ldr	r2, [r2, #4]
 8002688:	4462      	add	r2, ip
 800268a:	6042      	str	r2, [r0, #4]
			pxBlockToInsert->pxNextFreeBlock = pxIterator->pxNextFreeBlock->pxNextFreeBlock;
 800268c:	680a      	ldr	r2, [r1, #0]
 800268e:	6812      	ldr	r2, [r2, #0]
 8002690:	6002      	str	r2, [r0, #0]
 8002692:	e002      	b.n	800269a <prvInsertBlockIntoFreeList+0x4a>
		}
		else
		{
			pxBlockToInsert->pxNextFreeBlock = pxEnd;
 8002694:	6003      	str	r3, [r0, #0]
 8002696:	e000      	b.n	800269a <prvInsertBlockIntoFreeList+0x4a>
		}
	}
	else
	{
		pxBlockToInsert->pxNextFreeBlock = pxIterator->pxNextFreeBlock;
 8002698:	6002      	str	r2, [r0, #0]

	/* If the block being inserted plugged a gab, so was merged with the block
	before and the block after, then it's pxNextFreeBlock pointer will have
	already been set, and should not be set here as that would make it point
	to itself. */
	if( pxIterator != pxBlockToInsert )
 800269a:	4281      	cmp	r1, r0
 800269c:	d000      	beq.n	80026a0 <prvInsertBlockIntoFreeList+0x50>
	{
		pxIterator->pxNextFreeBlock = pxBlockToInsert;
 800269e:	6008      	str	r0, [r1, #0]
	}
	else
	{
		mtCOVERAGE_TEST_MARKER();
	}
}
 80026a0:	bc10      	pop	{r4}
 80026a2:	4770      	bx	lr
 80026a4:	20000094 	.word	0x20000094
 80026a8:	20000084 	.word	0x20000084

080026ac <prvInsertTimerInActiveList>:
{
 80026ac:	b510      	push	{r4, lr}
BaseType_t xProcessTimerNow = pdFALSE;
 80026ae:	2400      	movs	r4, #0
	listSET_LIST_ITEM_VALUE( &( pxTimer->xTimerListItem ), xNextExpiryTime );
 80026b0:	6041      	str	r1, [r0, #4]
	listSET_LIST_ITEM_OWNER( &( pxTimer->xTimerListItem ), pxTimer );
 80026b2:	6100      	str	r0, [r0, #16]
			vListInsert( pxOverflowTimerList, &( pxTimer->xTimerListItem ) );
 80026b4:	f8df c038 	ldr.w	ip, [pc, #56]	; 80026f0 <prvInsertTimerInActiveList+0x44>
	if( xNextExpiryTime <= xTimeNow )
 80026b8:	4291      	cmp	r1, r2
{
 80026ba:	d80b      	bhi.n	80026d4 <prvInsertTimerInActiveList+0x28>
		if( ( ( TickType_t ) ( xTimeNow - xCommandTime ) ) >= pxTimer->xTimerPeriodInTicks ) /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
 80026bc:	1ad1      	subs	r1, r2, r3
 80026be:	6982      	ldr	r2, [r0, #24]
 80026c0:	4291      	cmp	r1, r2
 80026c2:	d301      	bcc.n	80026c8 <prvInsertTimerInActiveList+0x1c>
			xProcessTimerNow = pdTRUE;
 80026c4:	2401      	movs	r4, #1
 80026c6:	e010      	b.n	80026ea <prvInsertTimerInActiveList+0x3e>
			vListInsert( pxOverflowTimerList, &( pxTimer->xTimerListItem ) );
 80026c8:	1d01      	adds	r1, r0, #4
 80026ca:	f8dc 0004 	ldr.w	r0, [ip, #4]
 80026ce:	f000 fb22 	bl	8002d16 <vListInsert>
 80026d2:	e00a      	b.n	80026ea <prvInsertTimerInActiveList+0x3e>
		if( ( xTimeNow < xCommandTime ) && ( xNextExpiryTime >= xCommandTime ) )
 80026d4:	429a      	cmp	r2, r3
 80026d6:	d203      	bcs.n	80026e0 <prvInsertTimerInActiveList+0x34>
 80026d8:	4299      	cmp	r1, r3
 80026da:	d301      	bcc.n	80026e0 <prvInsertTimerInActiveList+0x34>
			xProcessTimerNow = pdTRUE;
 80026dc:	2401      	movs	r4, #1
 80026de:	e004      	b.n	80026ea <prvInsertTimerInActiveList+0x3e>
			vListInsert( pxCurrentTimerList, &( pxTimer->xTimerListItem ) );
 80026e0:	1d01      	adds	r1, r0, #4
 80026e2:	f8dc 0000 	ldr.w	r0, [ip]
 80026e6:	f000 fb16 	bl	8002d16 <vListInsert>
	return xProcessTimerNow;
 80026ea:	4620      	mov	r0, r4
}
 80026ec:	bd10      	pop	{r4, pc}
 80026ee:	0000      	.short	0x0000
 80026f0:	2000006c 	.word	0x2000006c

080026f4 <prvIsQueueEmpty>:
	taskEXIT_CRITICAL();
}
/*-----------------------------------------------------------*/

static BaseType_t prvIsQueueEmpty( const Queue_t *pxQueue )
{
 80026f4:	b510      	push	{r4, lr}
 80026f6:	4604      	mov	r4, r0
BaseType_t xReturn;

	taskENTER_CRITICAL();
 80026f8:	f000 fb34 	bl	8002d64 <vPortEnterCritical>
	{
		if( pxQueue->uxMessagesWaiting == ( UBaseType_t )  0 )
 80026fc:	6ba0      	ldr	r0, [r4, #56]	; 0x38
 80026fe:	b120      	cbz	r0, 800270a <prvIsQueueEmpty+0x16>
		{
			xReturn = pdTRUE;
		}
		else
		{
			xReturn = pdFALSE;
 8002700:	2400      	movs	r4, #0
		}
	}
	taskEXIT_CRITICAL();
 8002702:	f000 fb4f 	bl	8002da4 <vPortExitCritical>

	return xReturn;
 8002706:	4620      	mov	r0, r4
}
 8002708:	bd10      	pop	{r4, pc}
			xReturn = pdTRUE;
 800270a:	2401      	movs	r4, #1
 800270c:	e7f9      	b.n	8002702 <prvIsQueueEmpty+0xe>

0800270e <prvIsQueueFull>:
	return xReturn;
} /*lint !e818 xQueue could not be pointer to const because it is a typedef. */
/*-----------------------------------------------------------*/

static BaseType_t prvIsQueueFull( const Queue_t *pxQueue )
{
 800270e:	b510      	push	{r4, lr}
 8002710:	4604      	mov	r4, r0
BaseType_t xReturn;

	taskENTER_CRITICAL();
 8002712:	f000 fb27 	bl	8002d64 <vPortEnterCritical>
	{
		if( pxQueue->uxMessagesWaiting == pxQueue->uxLength )
 8002716:	6ba0      	ldr	r0, [r4, #56]	; 0x38
 8002718:	6be1      	ldr	r1, [r4, #60]	; 0x3c
 800271a:	4288      	cmp	r0, r1
 800271c:	d101      	bne.n	8002722 <prvIsQueueFull+0x14>
		{
			xReturn = pdTRUE;
 800271e:	2401      	movs	r4, #1
 8002720:	e000      	b.n	8002724 <prvIsQueueFull+0x16>
		}
		else
		{
			xReturn = pdFALSE;
 8002722:	2400      	movs	r4, #0
		}
	}
	taskEXIT_CRITICAL();
 8002724:	f000 fb3e 	bl	8002da4 <vPortExitCritical>

	return xReturn;
 8002728:	4620      	mov	r0, r4
}
 800272a:	bd10      	pop	{r4, pc}

0800272c <prvListTasksWithinSingleList>:
	{
 800272c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8002730:	4680      	mov	r8, r0
 8002732:	460c      	mov	r4, r1
 8002734:	4691      	mov	r9, r2
	UBaseType_t uxTask = 0;
 8002736:	2500      	movs	r5, #0
		if( listCURRENT_LIST_LENGTH( pxList ) > ( UBaseType_t ) 0 )
 8002738:	6820      	ldr	r0, [r4, #0]
 800273a:	2800      	cmp	r0, #0
	{
 800273c:	d023      	beq.n	8002786 <prvListTasksWithinSingleList+0x5a>
			listGET_OWNER_OF_NEXT_ENTRY( pxFirstTCB, pxList );
 800273e:	6860      	ldr	r0, [r4, #4]
 8002740:	6840      	ldr	r0, [r0, #4]
 8002742:	6060      	str	r0, [r4, #4]
 8002744:	f104 0608 	add.w	r6, r4, #8
 8002748:	42b0      	cmp	r0, r6
 800274a:	d101      	bne.n	8002750 <prvListTasksWithinSingleList+0x24>
 800274c:	6841      	ldr	r1, [r0, #4]
 800274e:	6061      	str	r1, [r4, #4]
 8002750:	6860      	ldr	r0, [r4, #4]
 8002752:	68c7      	ldr	r7, [r0, #12]
				listGET_OWNER_OF_NEXT_ENTRY( pxNextTCB, pxList );
 8002754:	6860      	ldr	r0, [r4, #4]
 8002756:	f8d0 c004 	ldr.w	ip, [r0, #4]
 800275a:	f8c4 c004 	str.w	ip, [r4, #4]
 800275e:	45b4      	cmp	ip, r6
 8002760:	d102      	bne.n	8002768 <prvListTasksWithinSingleList+0x3c>
 8002762:	f8dc 1004 	ldr.w	r1, [ip, #4]
 8002766:	6061      	str	r1, [r4, #4]
 8002768:	6860      	ldr	r0, [r4, #4]
 800276a:	f8d0 a00c 	ldr.w	sl, [r0, #12]
				vTaskGetInfo( ( TaskHandle_t ) pxNextTCB, &( pxTaskStatusArray[ uxTask ] ), pdTRUE, eState );
 800276e:	eb05 00c5 	add.w	r0, r5, r5, lsl #3
 8002772:	eb08 0180 	add.w	r1, r8, r0, lsl #2
 8002776:	464b      	mov	r3, r9
 8002778:	2201      	movs	r2, #1
 800277a:	4650      	mov	r0, sl
 800277c:	f000 fbf4 	bl	8002f68 <vTaskGetInfo>
				uxTask++;
 8002780:	1c6d      	adds	r5, r5, #1
			} while( pxNextTCB != pxFirstTCB );
 8002782:	45ba      	cmp	sl, r7
 8002784:	d1e6      	bne.n	8002754 <prvListTasksWithinSingleList+0x28>
		return uxTask;
 8002786:	4628      	mov	r0, r5
	}
 8002788:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

0800278c <prvProcessExpiredTimer>:
{
 800278c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800278e:	4605      	mov	r5, r0
 8002790:	460e      	mov	r6, r1
Timer_t * const pxTimer = ( Timer_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxCurrentTimerList );
 8002792:	4814      	ldr	r0, [pc, #80]	; (80027e4 <prvProcessExpiredTimer+0x58>)
 8002794:	6800      	ldr	r0, [r0, #0]
 8002796:	68c0      	ldr	r0, [r0, #12]
 8002798:	68c4      	ldr	r4, [r0, #12]
	( void ) uxListRemove( &( pxTimer->xTimerListItem ) );
 800279a:	1d20      	adds	r0, r4, #4
 800279c:	f000 fa2a 	bl	8002bf4 <uxListRemove>
	if( pxTimer->uxAutoReload == ( UBaseType_t ) pdTRUE )
 80027a0:	69e0      	ldr	r0, [r4, #28]
 80027a2:	2801      	cmp	r0, #1
 80027a4:	d110      	bne.n	80027c8 <prvProcessExpiredTimer+0x3c>
		if( prvInsertTimerInActiveList( pxTimer, ( xNextExpireTime + pxTimer->xTimerPeriodInTicks ), xTimeNow, xNextExpireTime ) != pdFALSE )
 80027a6:	69a0      	ldr	r0, [r4, #24]
 80027a8:	462b      	mov	r3, r5
 80027aa:	1941      	adds	r1, r0, r5
 80027ac:	4632      	mov	r2, r6
 80027ae:	4620      	mov	r0, r4
 80027b0:	f7ff ff7c 	bl	80026ac <prvInsertTimerInActiveList>
 80027b4:	b140      	cbz	r0, 80027c8 <prvProcessExpiredTimer+0x3c>
			xResult = xTimerGenericCommand( pxTimer, tmrCOMMAND_START_DONT_TRACE, xNextExpireTime, NULL, tmrNO_DELAY );
 80027b6:	2000      	movs	r0, #0
 80027b8:	4603      	mov	r3, r0
 80027ba:	4601      	mov	r1, r0
 80027bc:	9000      	str	r0, [sp, #0]
 80027be:	462a      	mov	r2, r5
 80027c0:	4620      	mov	r0, r4
 80027c2:	f001 fa31 	bl	8003c28 <xTimerGenericCommand>
			configASSERT( xResult );
 80027c6:	b128      	cbz	r0, 80027d4 <prvProcessExpiredTimer+0x48>
	pxTimer->pxCallbackFunction( ( TimerHandle_t ) pxTimer );
 80027c8:	6a61      	ldr	r1, [r4, #36]	; 0x24
 80027ca:	b001      	add	sp, #4
 80027cc:	4620      	mov	r0, r4
 80027ce:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
 80027d2:	4708      	bx	r1
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 80027d4:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 80027d6:	f380 8811 	msr	BASEPRI, r0
		dsb
 80027da:	f3bf 8f4f 	dsb	sy
		isb
 80027de:	f3bf 8f6f 	isb	sy
			configASSERT( xResult );
 80027e2:	e7fe      	b.n	80027e2 <prvProcessExpiredTimer+0x56>
 80027e4:	2000006c 	.word	0x2000006c

080027e8 <prvProcessReceivedCommands>:
{
 80027e8:	b530      	push	{r4, r5, lr}
 80027ea:	b087      	sub	sp, #28
	while( xQueueReceive( xTimerQueue, &xMessage, tmrNO_DELAY ) != pdFAIL ) /*lint !e603 xMessage does not have to be initialised as it is passed out, not in, and it is not used unless xQueueReceive() returns pdTRUE. */
 80027ec:	4d33      	ldr	r5, [pc, #204]	; (80028bc <prvProcessReceivedCommands+0xd4>)
 80027ee:	2200      	movs	r2, #0
 80027f0:	a902      	add	r1, sp, #8
 80027f2:	68a8      	ldr	r0, [r5, #8]
 80027f4:	f000 ff3e 	bl	8003674 <xQueueReceive>
 80027f8:	2800      	cmp	r0, #0
 80027fa:	d05c      	beq.n	80028b6 <prvProcessReceivedCommands+0xce>
			if( xMessage.xMessageID < ( BaseType_t ) 0 )
 80027fc:	9802      	ldr	r0, [sp, #8]
 80027fe:	2800      	cmp	r0, #0
 8002800:	da03      	bge.n	800280a <prvProcessReceivedCommands+0x22>
				pxCallback->pxCallbackFunction( pxCallback->pvParameter1, pxCallback->ulParameter2 );
 8002802:	9a03      	ldr	r2, [sp, #12]
 8002804:	9905      	ldr	r1, [sp, #20]
 8002806:	9804      	ldr	r0, [sp, #16]
 8002808:	4790      	blx	r2
		if( xMessage.xMessageID >= ( BaseType_t ) 0 )
 800280a:	9802      	ldr	r0, [sp, #8]
 800280c:	2800      	cmp	r0, #0
 800280e:	db4b      	blt.n	80028a8 <prvProcessReceivedCommands+0xc0>
			pxTimer = xMessage.u.xTimerParameters.pxTimer;
 8002810:	9c04      	ldr	r4, [sp, #16]
			if( listIS_CONTAINED_WITHIN( NULL, &( pxTimer->xTimerListItem ) ) == pdFALSE ) /*lint !e961. The cast is only redundant when NULL is passed into the macro. */
 8002812:	6960      	ldr	r0, [r4, #20]
 8002814:	b110      	cbz	r0, 800281c <prvProcessReceivedCommands+0x34>
				( void ) uxListRemove( &( pxTimer->xTimerListItem ) );
 8002816:	1d20      	adds	r0, r4, #4
 8002818:	f000 f9ec 	bl	8002bf4 <uxListRemove>
			xTimeNow = prvSampleTimeNow( &xTimerListsWereSwitched );
 800281c:	a801      	add	r0, sp, #4
 800281e:	f000 f897 	bl	8002950 <prvSampleTimeNow>
 8002822:	4602      	mov	r2, r0
			switch( xMessage.xMessageID )
 8002824:	9802      	ldr	r0, [sp, #8]
 8002826:	280a      	cmp	r0, #10
 8002828:	d23e      	bcs.n	80028a8 <prvProcessReceivedCommands+0xc0>
 800282a:	e8df f000 	tbb	[pc, r0]
 800282e:	0505      	.short	0x0505
 8002830:	37263d05 	.word	0x37263d05
 8002834:	263d0505 	.word	0x263d0505
					if( prvInsertTimerInActiveList( pxTimer,  xMessage.u.xTimerParameters.xMessageValue + pxTimer->xTimerPeriodInTicks, xTimeNow, xMessage.u.xTimerParameters.xMessageValue ) != pdFALSE )
 8002838:	9803      	ldr	r0, [sp, #12]
 800283a:	69a1      	ldr	r1, [r4, #24]
 800283c:	4603      	mov	r3, r0
 800283e:	4401      	add	r1, r0
 8002840:	4620      	mov	r0, r4
 8002842:	f7ff ff33 	bl	80026ac <prvInsertTimerInActiveList>
 8002846:	b300      	cbz	r0, 800288a <prvProcessReceivedCommands+0xa2>
						pxTimer->pxCallbackFunction( ( TimerHandle_t ) pxTimer );
 8002848:	6a61      	ldr	r1, [r4, #36]	; 0x24
 800284a:	4620      	mov	r0, r4
 800284c:	4788      	blx	r1
						if( pxTimer->uxAutoReload == ( UBaseType_t ) pdTRUE )
 800284e:	69e0      	ldr	r0, [r4, #28]
 8002850:	2801      	cmp	r0, #1
 8002852:	d129      	bne.n	80028a8 <prvProcessReceivedCommands+0xc0>
							xResult = xTimerGenericCommand( pxTimer, tmrCOMMAND_START_DONT_TRACE, xMessage.u.xTimerParameters.xMessageValue + pxTimer->xTimerPeriodInTicks, NULL, tmrNO_DELAY );
 8002854:	2000      	movs	r0, #0
 8002856:	9000      	str	r0, [sp, #0]
 8002858:	9803      	ldr	r0, [sp, #12]
 800285a:	69a1      	ldr	r1, [r4, #24]
 800285c:	2300      	movs	r3, #0
 800285e:	1842      	adds	r2, r0, r1
 8002860:	4619      	mov	r1, r3
 8002862:	4620      	mov	r0, r4
 8002864:	f001 f9e0 	bl	8003c28 <xTimerGenericCommand>
							configASSERT( xResult );
 8002868:	b978      	cbnz	r0, 800288a <prvProcessReceivedCommands+0xa2>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800286a:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 800286c:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002870:	f3bf 8f4f 	dsb	sy
		isb
 8002874:	f3bf 8f6f 	isb	sy
 8002878:	e7fe      	b.n	8002878 <prvProcessReceivedCommands+0x90>
					pxTimer->xTimerPeriodInTicks = xMessage.u.xTimerParameters.xMessageValue;
 800287a:	9803      	ldr	r0, [sp, #12]
 800287c:	61a0      	str	r0, [r4, #24]
					configASSERT( ( pxTimer->xTimerPeriodInTicks > 0 ) );
 800287e:	b128      	cbz	r0, 800288c <prvProcessReceivedCommands+0xa4>
					( void ) prvInsertTimerInActiveList( pxTimer, ( xTimeNow + pxTimer->xTimerPeriodInTicks ), xTimeNow, xTimeNow );
 8002880:	1881      	adds	r1, r0, r2
 8002882:	4613      	mov	r3, r2
 8002884:	4620      	mov	r0, r4
 8002886:	f7ff ff11 	bl	80026ac <prvInsertTimerInActiveList>
					break;
 800288a:	e00d      	b.n	80028a8 <prvProcessReceivedCommands+0xc0>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800288c:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 800288e:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002892:	f3bf 8f4f 	dsb	sy
		isb
 8002896:	f3bf 8f6f 	isb	sy
					configASSERT( ( pxTimer->xTimerPeriodInTicks > 0 ) );
 800289a:	e7fe      	b.n	800289a <prvProcessReceivedCommands+0xb2>
						if( pxTimer->ucStaticallyAllocated == ( uint8_t ) pdFALSE )
 800289c:	f894 002c 	ldrb.w	r0, [r4, #44]	; 0x2c
 80028a0:	b910      	cbnz	r0, 80028a8 <prvProcessReceivedCommands+0xc0>
							vPortFree( pxTimer );
 80028a2:	4620      	mov	r0, r4
 80028a4:	f000 fa94 	bl	8002dd0 <vPortFree>
	while( xQueueReceive( xTimerQueue, &xMessage, tmrNO_DELAY ) != pdFAIL ) /*lint !e603 xMessage does not have to be initialised as it is passed out, not in, and it is not used unless xQueueReceive() returns pdTRUE. */
 80028a8:	2200      	movs	r2, #0
 80028aa:	a902      	add	r1, sp, #8
 80028ac:	68a8      	ldr	r0, [r5, #8]
 80028ae:	f000 fee1 	bl	8003674 <xQueueReceive>
 80028b2:	2800      	cmp	r0, #0
 80028b4:	d1a2      	bne.n	80027fc <prvProcessReceivedCommands+0x14>
}
 80028b6:	b007      	add	sp, #28
 80028b8:	bd30      	pop	{r4, r5, pc}
 80028ba:	0000      	.short	0x0000
 80028bc:	2000006c 	.word	0x2000006c

080028c0 <prvProcessTimerOrBlockTask>:
{
 80028c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80028c2:	4605      	mov	r5, r0
 80028c4:	460c      	mov	r4, r1
	vTaskSuspendAll();
 80028c6:	f000 fc83 	bl	80031d0 <vTaskSuspendAll>
		xTimeNow = prvSampleTimeNow( &xTimerListsWereSwitched );
 80028ca:	4668      	mov	r0, sp
 80028cc:	f000 f840 	bl	8002950 <prvSampleTimeNow>
 80028d0:	4606      	mov	r6, r0
		if( xTimerListsWereSwitched == pdFALSE )
 80028d2:	9800      	ldr	r0, [sp, #0]
 80028d4:	b110      	cbz	r0, 80028dc <prvProcessTimerOrBlockTask+0x1c>
			( void ) xTaskResumeAll();
 80028d6:	f001 f90d 	bl	8003af4 <xTaskResumeAll>
}
 80028da:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
			if( ( xListWasEmpty == pdFALSE ) && ( xNextExpireTime <= xTimeNow ) )
 80028dc:	b944      	cbnz	r4, 80028f0 <prvProcessTimerOrBlockTask+0x30>
 80028de:	42b5      	cmp	r5, r6
 80028e0:	d806      	bhi.n	80028f0 <prvProcessTimerOrBlockTask+0x30>
				( void ) xTaskResumeAll();
 80028e2:	f001 f907 	bl	8003af4 <xTaskResumeAll>
				prvProcessExpiredTimer( xNextExpireTime, xTimeNow );
 80028e6:	4631      	mov	r1, r6
 80028e8:	4628      	mov	r0, r5
 80028ea:	f7ff ff4f 	bl	800278c <prvProcessExpiredTimer>
}
 80028ee:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
					xListWasEmpty = listLIST_IS_EMPTY( pxOverflowTimerList );
 80028f0:	480c      	ldr	r0, [pc, #48]	; (8002924 <prvProcessTimerOrBlockTask+0x64>)
				if( xListWasEmpty != pdFALSE )
 80028f2:	b11c      	cbz	r4, 80028fc <prvProcessTimerOrBlockTask+0x3c>
					xListWasEmpty = listLIST_IS_EMPTY( pxOverflowTimerList );
 80028f4:	6841      	ldr	r1, [r0, #4]
 80028f6:	6809      	ldr	r1, [r1, #0]
 80028f8:	b191      	cbz	r1, 8002920 <prvProcessTimerOrBlockTask+0x60>
 80028fa:	2400      	movs	r4, #0
				vQueueWaitForMessageRestricted( xTimerQueue, ( xNextExpireTime - xTimeNow ), xListWasEmpty );
 80028fc:	1ba9      	subs	r1, r5, r6
 80028fe:	4622      	mov	r2, r4
 8002900:	6880      	ldr	r0, [r0, #8]
 8002902:	f000 fae3 	bl	8002ecc <vQueueWaitForMessageRestricted>
				if( xTaskResumeAll() == pdFALSE )
 8002906:	f001 f8f5 	bl	8003af4 <xTaskResumeAll>
 800290a:	2800      	cmp	r0, #0
 800290c:	d1ef      	bne.n	80028ee <prvProcessTimerOrBlockTask+0x2e>
					portYIELD_WITHIN_API();
 800290e:	4906      	ldr	r1, [pc, #24]	; (8002928 <prvProcessTimerOrBlockTask+0x68>)
 8002910:	f04f 5080 	mov.w	r0, #268435456	; 0x10000000
 8002914:	6008      	str	r0, [r1, #0]
 8002916:	f3bf 8f4f 	dsb	sy
 800291a:	f3bf 8f6f 	isb	sy
}
 800291e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
					xListWasEmpty = listLIST_IS_EMPTY( pxOverflowTimerList );
 8002920:	2401      	movs	r4, #1
 8002922:	e7eb      	b.n	80028fc <prvProcessTimerOrBlockTask+0x3c>
 8002924:	2000006c 	.word	0x2000006c
 8002928:	e000ed04 	.word	0xe000ed04

0800292c <prvResetNextTaskUnblockTime>:
	if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
 800292c:	4907      	ldr	r1, [pc, #28]	; (800294c <prvResetNextTaskUnblockTime+0x20>)
 800292e:	6848      	ldr	r0, [r1, #4]
 8002930:	6800      	ldr	r0, [r0, #0]
 8002932:	2800      	cmp	r0, #0
{
 8002934:	d005      	beq.n	8002942 <prvResetNextTaskUnblockTime+0x16>
		( pxTCB ) = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxDelayedTaskList );
 8002936:	6848      	ldr	r0, [r1, #4]
 8002938:	68c0      	ldr	r0, [r0, #12]
 800293a:	68c0      	ldr	r0, [r0, #12]
		xNextTaskUnblockTime = listGET_LIST_ITEM_VALUE( &( ( pxTCB )->xStateListItem ) );
 800293c:	6840      	ldr	r0, [r0, #4]
 800293e:	6308      	str	r0, [r1, #48]	; 0x30
}
 8002940:	4770      	bx	lr
		xNextTaskUnblockTime = portMAX_DELAY;
 8002942:	f04f 30ff 	mov.w	r0, #4294967295
 8002946:	6308      	str	r0, [r1, #48]	; 0x30
}
 8002948:	4770      	bx	lr
 800294a:	0000      	.short	0x0000
 800294c:	20000028 	.word	0x20000028

08002950 <prvSampleTimeNow>:
{
 8002950:	b570      	push	{r4, r5, r6, lr}
 8002952:	4604      	mov	r4, r0
	xTimeNow = xTaskGetTickCount();
 8002954:	f000 ffe6 	bl	8003924 <xTaskGetTickCount>
 8002958:	4605      	mov	r5, r0
	if( xTimeNow < xLastTime )
 800295a:	4e07      	ldr	r6, [pc, #28]	; (8002978 <prvSampleTimeNow+0x28>)
 800295c:	6930      	ldr	r0, [r6, #16]
 800295e:	4285      	cmp	r5, r0
 8002960:	d204      	bcs.n	800296c <prvSampleTimeNow+0x1c>
		prvSwitchTimerLists();
 8002962:	f000 f80b 	bl	800297c <prvSwitchTimerLists>
		*pxTimerListsWereSwitched = pdTRUE;
 8002966:	2001      	movs	r0, #1
 8002968:	6020      	str	r0, [r4, #0]
 800296a:	e001      	b.n	8002970 <prvSampleTimeNow+0x20>
		*pxTimerListsWereSwitched = pdFALSE;
 800296c:	2000      	movs	r0, #0
 800296e:	6020      	str	r0, [r4, #0]
	xLastTime = xTimeNow;
 8002970:	6135      	str	r5, [r6, #16]
	return xTimeNow;
 8002972:	4628      	mov	r0, r5
}
 8002974:	bd70      	pop	{r4, r5, r6, pc}
 8002976:	0000      	.short	0x0000
 8002978:	2000006c 	.word	0x2000006c

0800297c <prvSwitchTimerLists>:
{
 800297c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	while( listLIST_IS_EMPTY( pxCurrentTimerList ) == pdFALSE )
 800297e:	4e1b      	ldr	r6, [pc, #108]	; (80029ec <prvSwitchTimerLists+0x70>)
 8002980:	6830      	ldr	r0, [r6, #0]
 8002982:	6800      	ldr	r0, [r0, #0]
 8002984:	2800      	cmp	r0, #0
{
 8002986:	d024      	beq.n	80029d2 <prvSwitchTimerLists+0x56>
 8002988:	2700      	movs	r7, #0
		xNextExpireTime = listGET_ITEM_VALUE_OF_HEAD_ENTRY( pxCurrentTimerList );
 800298a:	6830      	ldr	r0, [r6, #0]
 800298c:	68c0      	ldr	r0, [r0, #12]
 800298e:	6805      	ldr	r5, [r0, #0]
		pxTimer = ( Timer_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxCurrentTimerList );
 8002990:	68c4      	ldr	r4, [r0, #12]
		( void ) uxListRemove( &( pxTimer->xTimerListItem ) );
 8002992:	1d20      	adds	r0, r4, #4
 8002994:	f000 f92e 	bl	8002bf4 <uxListRemove>
		pxTimer->pxCallbackFunction( ( TimerHandle_t ) pxTimer );
 8002998:	6a61      	ldr	r1, [r4, #36]	; 0x24
 800299a:	4620      	mov	r0, r4
 800299c:	4788      	blx	r1
		if( pxTimer->uxAutoReload == ( UBaseType_t ) pdTRUE )
 800299e:	69e0      	ldr	r0, [r4, #28]
 80029a0:	2801      	cmp	r0, #1
 80029a2:	d112      	bne.n	80029ca <prvSwitchTimerLists+0x4e>
			xReloadTime = ( xNextExpireTime + pxTimer->xTimerPeriodInTicks );
 80029a4:	69a0      	ldr	r0, [r4, #24]
 80029a6:	4428      	add	r0, r5
			if( xReloadTime > xNextExpireTime )
 80029a8:	42a8      	cmp	r0, r5
 80029aa:	d906      	bls.n	80029ba <prvSwitchTimerLists+0x3e>
				listSET_LIST_ITEM_VALUE( &( pxTimer->xTimerListItem ), xReloadTime );
 80029ac:	6060      	str	r0, [r4, #4]
				listSET_LIST_ITEM_OWNER( &( pxTimer->xTimerListItem ), pxTimer );
 80029ae:	6124      	str	r4, [r4, #16]
				vListInsert( pxCurrentTimerList, &( pxTimer->xTimerListItem ) );
 80029b0:	1d21      	adds	r1, r4, #4
 80029b2:	6830      	ldr	r0, [r6, #0]
 80029b4:	f000 f9af 	bl	8002d16 <vListInsert>
 80029b8:	e007      	b.n	80029ca <prvSwitchTimerLists+0x4e>
				xResult = xTimerGenericCommand( pxTimer, tmrCOMMAND_START_DONT_TRACE, xNextExpireTime, NULL, tmrNO_DELAY );
 80029ba:	2300      	movs	r3, #0
 80029bc:	462a      	mov	r2, r5
 80029be:	4619      	mov	r1, r3
 80029c0:	4620      	mov	r0, r4
 80029c2:	9700      	str	r7, [sp, #0]
 80029c4:	f001 f930 	bl	8003c28 <xTimerGenericCommand>
				configASSERT( xResult );
 80029c8:	b140      	cbz	r0, 80029dc <prvSwitchTimerLists+0x60>
	while( listLIST_IS_EMPTY( pxCurrentTimerList ) == pdFALSE )
 80029ca:	6830      	ldr	r0, [r6, #0]
 80029cc:	6800      	ldr	r0, [r0, #0]
 80029ce:	2800      	cmp	r0, #0
 80029d0:	d1db      	bne.n	800298a <prvSwitchTimerLists+0xe>
	pxTemp = pxCurrentTimerList;
 80029d2:	6830      	ldr	r0, [r6, #0]
	pxCurrentTimerList = pxOverflowTimerList;
 80029d4:	6871      	ldr	r1, [r6, #4]
 80029d6:	6031      	str	r1, [r6, #0]
	pxOverflowTimerList = pxTemp;
 80029d8:	6070      	str	r0, [r6, #4]
}
 80029da:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 80029dc:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 80029de:	f380 8811 	msr	BASEPRI, r0
		dsb
 80029e2:	f3bf 8f4f 	dsb	sy
		isb
 80029e6:	f3bf 8f6f 	isb	sy
				configASSERT( xResult );
 80029ea:	e7fe      	b.n	80029ea <prvSwitchTimerLists+0x6e>
 80029ec:	2000006c 	.word	0x2000006c

080029f0 <prvTaskCheckFreeStackSpace>:
	uint32_t ulCount = 0U;
 80029f0:	2100      	movs	r1, #0
		while( *pucStackByte == ( uint8_t ) tskSTACK_FILL_BYTE )
 80029f2:	7802      	ldrb	r2, [r0, #0]
 80029f4:	2aa5      	cmp	r2, #165	; 0xa5
	{
 80029f6:	d104      	bne.n	8002a02 <prvTaskCheckFreeStackSpace+0x12>
			pucStackByte -= portSTACK_GROWTH;
 80029f8:	1c40      	adds	r0, r0, #1
			ulCount++;
 80029fa:	1c49      	adds	r1, r1, #1
		while( *pucStackByte == ( uint8_t ) tskSTACK_FILL_BYTE )
 80029fc:	7802      	ldrb	r2, [r0, #0]
 80029fe:	2aa5      	cmp	r2, #165	; 0xa5
 8002a00:	d0fa      	beq.n	80029f8 <prvTaskCheckFreeStackSpace+0x8>
		ulCount /= ( uint32_t ) sizeof( StackType_t ); /*lint !e961 Casting is not redundant on smaller architectures. */
 8002a02:	0888      	lsrs	r0, r1, #2
		return ( uint16_t ) ulCount;
 8002a04:	b280      	uxth	r0, r0
	}
 8002a06:	4770      	bx	lr

08002a08 <prvTaskExitError>:
	configASSERT( uxCriticalNesting == ~0UL );
 8002a08:	480a      	ldr	r0, [pc, #40]	; (8002a34 <prvTaskExitError+0x2c>)
 8002a0a:	6840      	ldr	r0, [r0, #4]
 8002a0c:	f1b0 3fff 	cmp.w	r0, #4294967295
{
 8002a10:	d007      	beq.n	8002a22 <prvTaskExitError+0x1a>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002a12:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002a14:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002a18:	f3bf 8f4f 	dsb	sy
		isb
 8002a1c:	f3bf 8f6f 	isb	sy
	configASSERT( uxCriticalNesting == ~0UL );
 8002a20:	e7fe      	b.n	8002a20 <prvTaskExitError+0x18>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002a22:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002a24:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002a28:	f3bf 8f4f 	dsb	sy
		isb
 8002a2c:	f3bf 8f6f 	isb	sy
	for( ;; );
 8002a30:	e7fe      	b.n	8002a30 <prvTaskExitError+0x28>
 8002a32:	0000      	.short	0x0000
 8002a34:	2000009c 	.word	0x2000009c

08002a38 <prvTimerTask>:
{
 8002a38:	b082      	sub	sp, #8
		xNextExpireTime = prvGetNextExpireTime( &xListWasEmpty );
 8002a3a:	a801      	add	r0, sp, #4
 8002a3c:	f7ff fd2e 	bl	800249c <prvGetNextExpireTime>
		prvProcessTimerOrBlockTask( xNextExpireTime, xListWasEmpty );
 8002a40:	9901      	ldr	r1, [sp, #4]
 8002a42:	f7ff ff3d 	bl	80028c0 <prvProcessTimerOrBlockTask>
		prvProcessReceivedCommands();
 8002a46:	f7ff fecf 	bl	80027e8 <prvProcessReceivedCommands>
 8002a4a:	e7f6      	b.n	8002a3a <prvTimerTask+0x2>

08002a4c <prvUnlockQueue>:
{
 8002a4c:	b570      	push	{r4, r5, r6, lr}
 8002a4e:	4604      	mov	r4, r0
	taskENTER_CRITICAL();
 8002a50:	f000 f988 	bl	8002d64 <vPortEnterCritical>
		int8_t cTxLock = pxQueue->cTxLock;
 8002a54:	f994 5045 	ldrsb.w	r5, [r4, #69]	; 0x45
		while( cTxLock > queueLOCKED_UNMODIFIED )
 8002a58:	2d00      	cmp	r5, #0
 8002a5a:	dd0c      	ble.n	8002a76 <prvUnlockQueue+0x2a>
				if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
 8002a5c:	6a60      	ldr	r0, [r4, #36]	; 0x24
 8002a5e:	b150      	cbz	r0, 8002a76 <prvUnlockQueue+0x2a>
					if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
 8002a60:	f104 0024 	add.w	r0, r4, #36	; 0x24
 8002a64:	f001 f80a 	bl	8003a7c <xTaskRemoveFromEventList>
 8002a68:	b108      	cbz	r0, 8002a6e <prvUnlockQueue+0x22>
						vTaskMissedYield();
 8002a6a:	f000 fb29 	bl	80030c0 <vTaskMissedYield>
			--cTxLock;
 8002a6e:	1e68      	subs	r0, r5, #1
 8002a70:	b245      	sxtb	r5, r0
		while( cTxLock > queueLOCKED_UNMODIFIED )
 8002a72:	2d00      	cmp	r5, #0
 8002a74:	dcf2      	bgt.n	8002a5c <prvUnlockQueue+0x10>
		pxQueue->cTxLock = queueUNLOCKED;
 8002a76:	f04f 36ff 	mov.w	r6, #4294967295
 8002a7a:	f884 6045 	strb.w	r6, [r4, #69]	; 0x45
	taskEXIT_CRITICAL();
 8002a7e:	f000 f991 	bl	8002da4 <vPortExitCritical>
	taskENTER_CRITICAL();
 8002a82:	f000 f96f 	bl	8002d64 <vPortEnterCritical>
		int8_t cRxLock = pxQueue->cRxLock;
 8002a86:	f994 5044 	ldrsb.w	r5, [r4, #68]	; 0x44
		while( cRxLock > queueLOCKED_UNMODIFIED )
 8002a8a:	2d00      	cmp	r5, #0
					break;
 8002a8c:	dd0c      	ble.n	8002aa8 <prvUnlockQueue+0x5c>
			if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
 8002a8e:	6920      	ldr	r0, [r4, #16]
 8002a90:	b150      	cbz	r0, 8002aa8 <prvUnlockQueue+0x5c>
				if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
 8002a92:	f104 0010 	add.w	r0, r4, #16
 8002a96:	f000 fff1 	bl	8003a7c <xTaskRemoveFromEventList>
 8002a9a:	b108      	cbz	r0, 8002aa0 <prvUnlockQueue+0x54>
					vTaskMissedYield();
 8002a9c:	f000 fb10 	bl	80030c0 <vTaskMissedYield>
				--cRxLock;
 8002aa0:	1e68      	subs	r0, r5, #1
 8002aa2:	b245      	sxtb	r5, r0
		while( cRxLock > queueLOCKED_UNMODIFIED )
 8002aa4:	2d00      	cmp	r5, #0
				--cRxLock;
 8002aa6:	dcf2      	bgt.n	8002a8e <prvUnlockQueue+0x42>
		pxQueue->cRxLock = queueUNLOCKED;
 8002aa8:	f884 6044 	strb.w	r6, [r4, #68]	; 0x44
	taskEXIT_CRITICAL();
 8002aac:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8002ab0:	f000 b978 	b.w	8002da4 <vPortExitCritical>

08002ab4 <prvWriteNameToBuffer>:
	{
 8002ab4:	b510      	push	{r4, lr}
 8002ab6:	4604      	mov	r4, r0
		strcpy( pcBuffer, pcTaskName );
 8002ab8:	4620      	mov	r0, r4
 8002aba:	f7fd fc59 	bl	8000370 <strcpy>
		for( x = strlen( pcBuffer ); x < ( size_t ) ( configMAX_TASK_NAME_LEN - 1 ); x++ )
 8002abe:	4620      	mov	r0, r4
 8002ac0:	f7fd fc7a 	bl	80003b8 <strlen>
 8002ac4:	280f      	cmp	r0, #15
 8002ac6:	d204      	bcs.n	8002ad2 <prvWriteNameToBuffer+0x1e>
			pcBuffer[ x ] = ' ';
 8002ac8:	2120      	movs	r1, #32
 8002aca:	5421      	strb	r1, [r4, r0]
		for( x = strlen( pcBuffer ); x < ( size_t ) ( configMAX_TASK_NAME_LEN - 1 ); x++ )
 8002acc:	1c40      	adds	r0, r0, #1
 8002ace:	280f      	cmp	r0, #15
 8002ad0:	d3fb      	bcc.n	8002aca <prvWriteNameToBuffer+0x16>
		pcBuffer[ x ] = 0x00;
 8002ad2:	2100      	movs	r1, #0
 8002ad4:	5421      	strb	r1, [r4, r0]
		return &( pcBuffer[ x ] );
 8002ad6:	4420      	add	r0, r4
	}
 8002ad8:	bd10      	pop	{r4, pc}
	...

08002adc <pvPortMalloc>:
{
 8002adc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002ae0:	4605      	mov	r5, r0
void *pvReturn = NULL;
 8002ae2:	2600      	movs	r6, #0
	vTaskSuspendAll();
 8002ae4:	f000 fb74 	bl	80031d0 <vTaskSuspendAll>
		if( pxEnd == NULL )
 8002ae8:	4f33      	ldr	r7, [pc, #204]	; (8002bb8 <pvPortMalloc+0xdc>)
 8002aea:	6838      	ldr	r0, [r7, #0]
 8002aec:	b908      	cbnz	r0, 8002af2 <pvPortMalloc+0x16>
			prvHeapInit();
 8002aee:	f7ff fce7 	bl	80024c0 <prvHeapInit>
		if( ( xWantedSize & xBlockAllocatedBit ) == 0 )
 8002af2:	68f8      	ldr	r0, [r7, #12]
 8002af4:	4205      	tst	r5, r0
 8002af6:	d14e      	bne.n	8002b96 <pvPortMalloc+0xba>
			if( xWantedSize > 0 )
 8002af8:	b19d      	cbz	r5, 8002b22 <pvPortMalloc+0x46>
				xWantedSize += xHeapStructSize;
 8002afa:	3508      	adds	r5, #8
				if( ( xWantedSize & portBYTE_ALIGNMENT_MASK ) != 0x00 )
 8002afc:	f015 0f07 	tst.w	r5, #7
 8002b00:	d00f      	beq.n	8002b22 <pvPortMalloc+0x46>
					xWantedSize += ( portBYTE_ALIGNMENT - ( xWantedSize & portBYTE_ALIGNMENT_MASK ) );
 8002b02:	f005 0007 	and.w	r0, r5, #7
 8002b06:	f1c0 0008 	rsb	r0, r0, #8
 8002b0a:	4405      	add	r5, r0
					configASSERT( ( xWantedSize & portBYTE_ALIGNMENT_MASK ) == 0 );
 8002b0c:	f015 0f07 	tst.w	r5, #7
 8002b10:	d007      	beq.n	8002b22 <pvPortMalloc+0x46>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002b12:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002b14:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002b18:	f3bf 8f4f 	dsb	sy
		isb
 8002b1c:	f3bf 8f6f 	isb	sy
 8002b20:	e7fe      	b.n	8002b20 <pvPortMalloc+0x44>
			if( ( xWantedSize > 0 ) && ( xWantedSize <= xFreeBytesRemaining ) )
 8002b22:	2d00      	cmp	r5, #0
 8002b24:	d037      	beq.n	8002b96 <pvPortMalloc+0xba>
 8002b26:	6878      	ldr	r0, [r7, #4]
 8002b28:	4285      	cmp	r5, r0
 8002b2a:	d834      	bhi.n	8002b96 <pvPortMalloc+0xba>
				pxPreviousBlock = &xStart;
 8002b2c:	4923      	ldr	r1, [pc, #140]	; (8002bbc <pvPortMalloc+0xe0>)
				pxBlock = xStart.pxNextFreeBlock;
 8002b2e:	4608      	mov	r0, r1
 8002b30:	6804      	ldr	r4, [r0, #0]
				while( ( pxBlock->xBlockSize < xWantedSize ) && ( pxBlock->pxNextFreeBlock != NULL ) )
 8002b32:	e001      	b.n	8002b38 <pvPortMalloc+0x5c>
					pxPreviousBlock = pxBlock;
 8002b34:	4621      	mov	r1, r4
					pxBlock = pxBlock->pxNextFreeBlock;
 8002b36:	4604      	mov	r4, r0
				while( ( pxBlock->xBlockSize < xWantedSize ) && ( pxBlock->pxNextFreeBlock != NULL ) )
 8002b38:	6860      	ldr	r0, [r4, #4]
 8002b3a:	42a8      	cmp	r0, r5
 8002b3c:	d202      	bcs.n	8002b44 <pvPortMalloc+0x68>
 8002b3e:	6820      	ldr	r0, [r4, #0]
 8002b40:	2800      	cmp	r0, #0
 8002b42:	d1f7      	bne.n	8002b34 <pvPortMalloc+0x58>
				if( pxBlock != pxEnd )
 8002b44:	6838      	ldr	r0, [r7, #0]
 8002b46:	4284      	cmp	r4, r0
 8002b48:	d025      	beq.n	8002b96 <pvPortMalloc+0xba>
					pvReturn = ( void * ) ( ( ( uint8_t * ) pxPreviousBlock->pxNextFreeBlock ) + xHeapStructSize );
 8002b4a:	6808      	ldr	r0, [r1, #0]
 8002b4c:	f100 0608 	add.w	r6, r0, #8
					pxPreviousBlock->pxNextFreeBlock = pxBlock->pxNextFreeBlock;
 8002b50:	6820      	ldr	r0, [r4, #0]
 8002b52:	6008      	str	r0, [r1, #0]
					if( ( pxBlock->xBlockSize - xWantedSize ) > heapMINIMUM_BLOCK_SIZE )
 8002b54:	6860      	ldr	r0, [r4, #4]
 8002b56:	1b41      	subs	r1, r0, r5
 8002b58:	2910      	cmp	r1, #16
 8002b5a:	d90f      	bls.n	8002b7c <pvPortMalloc+0xa0>
						pxNewBlockLink = ( void * ) ( ( ( uint8_t * ) pxBlock ) + xWantedSize );
 8002b5c:	1960      	adds	r0, r4, r5
						configASSERT( ( ( ( size_t ) pxNewBlockLink ) & portBYTE_ALIGNMENT_MASK ) == 0 );
 8002b5e:	f010 0f07 	tst.w	r0, #7
 8002b62:	d007      	beq.n	8002b74 <pvPortMalloc+0x98>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002b64:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002b66:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002b6a:	f3bf 8f4f 	dsb	sy
		isb
 8002b6e:	f3bf 8f6f 	isb	sy
 8002b72:	e7fe      	b.n	8002b72 <pvPortMalloc+0x96>
						pxNewBlockLink->xBlockSize = pxBlock->xBlockSize - xWantedSize;
 8002b74:	6041      	str	r1, [r0, #4]
						pxBlock->xBlockSize = xWantedSize;
 8002b76:	6065      	str	r5, [r4, #4]
						prvInsertBlockIntoFreeList( pxNewBlockLink );
 8002b78:	f7ff fd6a 	bl	8002650 <prvInsertBlockIntoFreeList>
					xFreeBytesRemaining -= pxBlock->xBlockSize;
 8002b7c:	6861      	ldr	r1, [r4, #4]
 8002b7e:	6878      	ldr	r0, [r7, #4]
 8002b80:	1a40      	subs	r0, r0, r1
 8002b82:	6078      	str	r0, [r7, #4]
					if( xFreeBytesRemaining < xMinimumEverFreeBytesRemaining )
 8002b84:	68ba      	ldr	r2, [r7, #8]
 8002b86:	4290      	cmp	r0, r2
 8002b88:	d200      	bcs.n	8002b8c <pvPortMalloc+0xb0>
						xMinimumEverFreeBytesRemaining = xFreeBytesRemaining;
 8002b8a:	60b8      	str	r0, [r7, #8]
					pxBlock->xBlockSize |= xBlockAllocatedBit;
 8002b8c:	68f8      	ldr	r0, [r7, #12]
 8002b8e:	4308      	orrs	r0, r1
 8002b90:	6060      	str	r0, [r4, #4]
					pxBlock->pxNextFreeBlock = NULL;
 8002b92:	2000      	movs	r0, #0
 8002b94:	6020      	str	r0, [r4, #0]
	( void ) xTaskResumeAll();
 8002b96:	f000 ffad 	bl	8003af4 <xTaskResumeAll>
	configASSERT( ( ( ( size_t ) pvReturn ) & ( size_t ) portBYTE_ALIGNMENT_MASK ) == 0 );
 8002b9a:	f016 0f07 	tst.w	r6, #7
 8002b9e:	d007      	beq.n	8002bb0 <pvPortMalloc+0xd4>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002ba0:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002ba2:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002ba6:	f3bf 8f4f 	dsb	sy
		isb
 8002baa:	f3bf 8f6f 	isb	sy
 8002bae:	e7fe      	b.n	8002bae <pvPortMalloc+0xd2>
	return pvReturn;
 8002bb0:	4630      	mov	r0, r6
}
 8002bb2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002bb6:	0000      	.short	0x0000
 8002bb8:	20000084 	.word	0x20000084
 8002bbc:	20000094 	.word	0x20000094

08002bc0 <pxPortInitialiseStack>:
	pxTopOfStack--; /* Offset added to account for the way the MCU uses the stack on entry/exit of interrupts. */
 8002bc0:	1f00      	subs	r0, r0, #4
	*pxTopOfStack = portINITIAL_XPSR;	/* xPSR */
 8002bc2:	f04f 7380 	mov.w	r3, #16777216	; 0x1000000
 8002bc6:	6003      	str	r3, [r0, #0]
	pxTopOfStack--;
 8002bc8:	1f00      	subs	r0, r0, #4
	*pxTopOfStack = ( ( StackType_t ) pxCode ) & portSTART_ADDRESS_MASK;	/* PC */
 8002bca:	f021 0101 	bic.w	r1, r1, #1
 8002bce:	6001      	str	r1, [r0, #0]
	pxTopOfStack--;
 8002bd0:	1f00      	subs	r0, r0, #4
	*pxTopOfStack = ( StackType_t ) prvTaskExitError;	/* LR */
 8002bd2:	4903      	ldr	r1, [pc, #12]	; (8002be0 <pxPortInitialiseStack+0x20>)
 8002bd4:	6001      	str	r1, [r0, #0]
	pxTopOfStack -= 5;	/* R12, R3, R2 and R1. */
 8002bd6:	3814      	subs	r0, #20
	*pxTopOfStack = ( StackType_t ) pvParameters;	/* R0 */
 8002bd8:	6002      	str	r2, [r0, #0]
	pxTopOfStack -= 8;	/* R11, R10, R9, R8, R7, R6, R5 and R4. */
 8002bda:	3820      	subs	r0, #32
}
 8002bdc:	4770      	bx	lr
 8002bde:	0000      	.short	0x0000
 8002be0:	08002a09 	.word	0x08002a09

08002be4 <uart_printf_init>:
	if (handle!=NULL)
 8002be4:	2800      	cmp	r0, #0
		s_uart_handle = handle;
 8002be6:	bf1c      	itt	ne
 8002be8:	4901      	ldrne	r1, [pc, #4]	; (8002bf0 <uart_printf_init+0xc>)
 8002bea:	6008      	strne	r0, [r1, #0]
}
 8002bec:	4770      	bx	lr
 8002bee:	0000      	.short	0x0000
 8002bf0:	20000000 	.word	0x20000000

08002bf4 <uxListRemove>:

UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove )
{
/* The list item knows which list it is in.  Obtain the list from the list
item. */
List_t * const pxList = ( List_t * ) pxItemToRemove->pvContainer;
 8002bf4:	6901      	ldr	r1, [r0, #16]

	pxItemToRemove->pxNext->pxPrevious = pxItemToRemove->pxPrevious;
 8002bf6:	6843      	ldr	r3, [r0, #4]
 8002bf8:	6882      	ldr	r2, [r0, #8]
 8002bfa:	609a      	str	r2, [r3, #8]
	pxItemToRemove->pxPrevious->pxNext = pxItemToRemove->pxNext;
 8002bfc:	6883      	ldr	r3, [r0, #8]
 8002bfe:	6842      	ldr	r2, [r0, #4]
 8002c00:	605a      	str	r2, [r3, #4]

	/* Only used during decision coverage testing. */
	mtCOVERAGE_TEST_DELAY();

	/* Make sure the index is left pointing to a valid item. */
	if( pxList->pxIndex == pxItemToRemove )
 8002c02:	684a      	ldr	r2, [r1, #4]
 8002c04:	4282      	cmp	r2, r0
{
 8002c06:	d101      	bne.n	8002c0c <uxListRemove+0x18>
	{
		pxList->pxIndex = pxItemToRemove->pxPrevious;
 8002c08:	6882      	ldr	r2, [r0, #8]
 8002c0a:	604a      	str	r2, [r1, #4]
	else
	{
		mtCOVERAGE_TEST_MARKER();
	}

	pxItemToRemove->pvContainer = NULL;
 8002c0c:	2200      	movs	r2, #0
 8002c0e:	6102      	str	r2, [r0, #16]
	( pxList->uxNumberOfItems )--;
 8002c10:	6808      	ldr	r0, [r1, #0]
 8002c12:	1e40      	subs	r0, r0, #1
 8002c14:	6008      	str	r0, [r1, #0]

	return pxList->uxNumberOfItems;
 8002c16:	6808      	ldr	r0, [r1, #0]
}
 8002c18:	4770      	bx	lr
	...

08002c1c <uxTaskGetSystemState>:
	{
 8002c1c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8002c20:	4606      	mov	r6, r0
 8002c22:	460b      	mov	r3, r1
 8002c24:	4617      	mov	r7, r2
	UBaseType_t uxTask = 0, uxQueue = configMAX_PRIORITIES;
 8002c26:	2400      	movs	r4, #0
 8002c28:	2538      	movs	r5, #56	; 0x38
		vTaskSuspendAll();
 8002c2a:	f000 fad1 	bl	80031d0 <vTaskSuspendAll>
			if( uxArraySize >= uxCurrentNumberOfTasks )
 8002c2e:	f8df 808c 	ldr.w	r8, [pc, #140]	; 8002cbc <uxTaskGetSystemState+0xa0>
 8002c32:	f8d8 0010 	ldr.w	r0, [r8, #16]
 8002c36:	4283      	cmp	r3, r0
 8002c38:	d33a      	bcc.n	8002cb0 <uxTaskGetSystemState+0x94>
					uxTask += prvListTasksWithinSingleList( &( pxTaskStatusArray[ uxTask ] ), &( pxReadyTasksLists[ uxQueue ] ), eReady );
 8002c3a:	f8df 9084 	ldr.w	r9, [pc, #132]	; 8002cc0 <uxTaskGetSystemState+0xa4>
					uxQueue--;
 8002c3e:	1e6d      	subs	r5, r5, #1
					uxTask += prvListTasksWithinSingleList( &( pxTaskStatusArray[ uxTask ] ), &( pxReadyTasksLists[ uxQueue ] ), eReady );
 8002c40:	eb05 0085 	add.w	r0, r5, r5, lsl #2
 8002c44:	eb09 0180 	add.w	r1, r9, r0, lsl #2
 8002c48:	eb04 00c4 	add.w	r0, r4, r4, lsl #3
 8002c4c:	eb06 0080 	add.w	r0, r6, r0, lsl #2
 8002c50:	2201      	movs	r2, #1
 8002c52:	f7ff fd6b 	bl	800272c <prvListTasksWithinSingleList>
 8002c56:	4404      	add	r4, r0
				} while( uxQueue > ( UBaseType_t ) tskIDLE_PRIORITY ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
 8002c58:	2d00      	cmp	r5, #0
 8002c5a:	d1f0      	bne.n	8002c3e <uxTaskGetSystemState+0x22>
				uxTask += prvListTasksWithinSingleList( &( pxTaskStatusArray[ uxTask ] ), ( List_t * ) pxDelayedTaskList, eBlocked );
 8002c5c:	eb04 00c4 	add.w	r0, r4, r4, lsl #3
 8002c60:	eb06 0080 	add.w	r0, r6, r0, lsl #2
 8002c64:	2202      	movs	r2, #2
 8002c66:	f8d8 1004 	ldr.w	r1, [r8, #4]
 8002c6a:	f7ff fd5f 	bl	800272c <prvListTasksWithinSingleList>
 8002c6e:	4404      	add	r4, r0
				uxTask += prvListTasksWithinSingleList( &( pxTaskStatusArray[ uxTask ] ), ( List_t * ) pxOverflowDelayedTaskList, eBlocked );
 8002c70:	eb04 00c4 	add.w	r0, r4, r4, lsl #3
 8002c74:	eb06 0080 	add.w	r0, r6, r0, lsl #2
 8002c78:	2202      	movs	r2, #2
 8002c7a:	f8d8 1008 	ldr.w	r1, [r8, #8]
 8002c7e:	f7ff fd55 	bl	800272c <prvListTasksWithinSingleList>
 8002c82:	4404      	add	r4, r0
					uxTask += prvListTasksWithinSingleList( &( pxTaskStatusArray[ uxTask ] ), &xTasksWaitingTermination, eDeleted );
 8002c84:	eb04 00c4 	add.w	r0, r4, r4, lsl #3
 8002c88:	eb06 0080 	add.w	r0, r6, r0, lsl #2
 8002c8c:	2204      	movs	r2, #4
 8002c8e:	490d      	ldr	r1, [pc, #52]	; (8002cc4 <uxTaskGetSystemState+0xa8>)
 8002c90:	f7ff fd4c 	bl	800272c <prvListTasksWithinSingleList>
 8002c94:	4404      	add	r4, r0
					uxTask += prvListTasksWithinSingleList( &( pxTaskStatusArray[ uxTask ] ), &xSuspendedTaskList, eSuspended );
 8002c96:	eb04 00c4 	add.w	r0, r4, r4, lsl #3
 8002c9a:	eb06 0080 	add.w	r0, r6, r0, lsl #2
 8002c9e:	2203      	movs	r2, #3
 8002ca0:	4909      	ldr	r1, [pc, #36]	; (8002cc8 <uxTaskGetSystemState+0xac>)
 8002ca2:	f7ff fd43 	bl	800272c <prvListTasksWithinSingleList>
 8002ca6:	4404      	add	r4, r0
					if( pulTotalRunTime != NULL )
 8002ca8:	b117      	cbz	r7, 8002cb0 <uxTaskGetSystemState+0x94>
							*pulTotalRunTime = portGET_RUN_TIME_COUNTER_VALUE();
 8002caa:	f7ff f8a9 	bl	8001e00 <getRunTimeCounterValue>
 8002cae:	6038      	str	r0, [r7, #0]
		( void ) xTaskResumeAll();
 8002cb0:	f000 ff20 	bl	8003af4 <xTaskResumeAll>
		return uxTask;
 8002cb4:	4620      	mov	r0, r4
	}
 8002cb6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8002cba:	0000      	.short	0x0000
 8002cbc:	20000028 	.word	0x20000028
 8002cc0:	2000060c 	.word	0x2000060c
 8002cc4:	20000aa8 	.word	0x20000aa8
 8002cc8:	20000abc 	.word	0x20000abc

08002ccc <vApplicationGetIdleTaskMemory>:
/*
  vApplicationGetIdleTaskMemory gets called when configSUPPORT_STATIC_ALLOCATION
  equals to 1 and is required for static memory allocation support.
*/
void vApplicationGetIdleTaskMemory (StaticTask_t **ppxIdleTaskTCBBuffer, StackType_t **ppxIdleTaskStackBuffer, uint32_t *pulIdleTaskStackSize) {
  *ppxIdleTaskTCBBuffer   = &Idle_TCB;
 8002ccc:	4b03      	ldr	r3, [pc, #12]	; (8002cdc <vApplicationGetIdleTaskMemory+0x10>)
 8002cce:	6003      	str	r3, [r0, #0]
  *ppxIdleTaskStackBuffer = &Idle_Stack[0];
 8002cd0:	f103 0060 	add.w	r0, r3, #96	; 0x60
 8002cd4:	6008      	str	r0, [r1, #0]
  *pulIdleTaskStackSize   = (uint32_t)configMINIMAL_STACK_SIZE;
 8002cd6:	2080      	movs	r0, #128	; 0x80
 8002cd8:	6010      	str	r0, [r2, #0]
}
 8002cda:	4770      	bx	lr
 8002cdc:	20000be8 	.word	0x20000be8

08002ce0 <vApplicationGetTimerTaskMemory>:
/*
  vApplicationGetTimerTaskMemory gets called when configSUPPORT_STATIC_ALLOCATION
  equals to 1 and is required for static memory allocation support.
*/
void vApplicationGetTimerTaskMemory (StaticTask_t **ppxTimerTaskTCBBuffer, StackType_t **ppxTimerTaskStackBuffer, uint32_t *pulTimerTaskStackSize) {
  *ppxTimerTaskTCBBuffer   = &Timer_TCB;
 8002ce0:	4b04      	ldr	r3, [pc, #16]	; (8002cf4 <vApplicationGetTimerTaskMemory+0x14>)
 8002ce2:	6003      	str	r3, [r0, #0]
  *ppxTimerTaskStackBuffer = &Timer_Stack[0];
 8002ce4:	f103 0060 	add.w	r0, r3, #96	; 0x60
 8002ce8:	6008      	str	r0, [r1, #0]
  *pulTimerTaskStackSize   = (uint32_t)configTIMER_TASK_STACK_DEPTH;
 8002cea:	f44f 7080 	mov.w	r0, #256	; 0x100
 8002cee:	6010      	str	r0, [r2, #0]
}
 8002cf0:	4770      	bx	lr
 8002cf2:	0000      	.short	0x0000
 8002cf4:	20000e48 	.word	0x20000e48

08002cf8 <vApplicationIdleHook>:
   specified, or call vTaskDelay()). If the application makes use of the
   vTaskDelete() API function (as this demo application does) then it is also
   important that vApplicationIdleHook() is permitted to return to its calling
   function, because it is the responsibility of the idle task to clean up
   memory allocated by the kernel to any task that has since been deleted. */
}
 8002cf8:	4770      	bx	lr

08002cfa <vListInitialise>:
	pxList->pxIndex = ( ListItem_t * ) &( pxList->xListEnd );			/*lint !e826 !e740 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
 8002cfa:	f100 0108 	add.w	r1, r0, #8
 8002cfe:	6041      	str	r1, [r0, #4]
	pxList->xListEnd.xItemValue = portMAX_DELAY;
 8002d00:	f04f 32ff 	mov.w	r2, #4294967295
 8002d04:	6082      	str	r2, [r0, #8]
	pxList->xListEnd.pxNext = ( ListItem_t * ) &( pxList->xListEnd );	/*lint !e826 !e740 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
 8002d06:	60c1      	str	r1, [r0, #12]
	pxList->xListEnd.pxPrevious = ( ListItem_t * ) &( pxList->xListEnd );/*lint !e826 !e740 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
 8002d08:	6101      	str	r1, [r0, #16]
	pxList->uxNumberOfItems = ( UBaseType_t ) 0U;
 8002d0a:	2100      	movs	r1, #0
 8002d0c:	6001      	str	r1, [r0, #0]
}
 8002d0e:	4770      	bx	lr

08002d10 <vListInitialiseItem>:
	pxItem->pvContainer = NULL;
 8002d10:	2100      	movs	r1, #0
 8002d12:	6101      	str	r1, [r0, #16]
}
 8002d14:	4770      	bx	lr

08002d16 <vListInsert>:
{
 8002d16:	b410      	push	{r4}
const TickType_t xValueOfInsertion = pxNewListItem->xItemValue;
 8002d18:	f8d1 c000 	ldr.w	ip, [r1]
	if( xValueOfInsertion == portMAX_DELAY )
 8002d1c:	f1bc 3fff 	cmp.w	ip, #4294967295
{
 8002d20:	d002      	beq.n	8002d28 <vListInsert+0x12>
		for( pxIterator = ( ListItem_t * ) &( pxList->xListEnd ); pxIterator->pxNext->xItemValue <= xValueOfInsertion; pxIterator = pxIterator->pxNext ) /*lint !e826 !e740 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
 8002d22:	f100 0208 	add.w	r2, r0, #8
 8002d26:	e002      	b.n	8002d2e <vListInsert+0x18>
		pxIterator = pxList->xListEnd.pxPrevious;
 8002d28:	6902      	ldr	r2, [r0, #16]
 8002d2a:	e004      	b.n	8002d36 <vListInsert+0x20>
		for( pxIterator = ( ListItem_t * ) &( pxList->xListEnd ); pxIterator->pxNext->xItemValue <= xValueOfInsertion; pxIterator = pxIterator->pxNext ) /*lint !e826 !e740 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
 8002d2c:	461a      	mov	r2, r3
 8002d2e:	6853      	ldr	r3, [r2, #4]
 8002d30:	681c      	ldr	r4, [r3, #0]
 8002d32:	4564      	cmp	r4, ip
 8002d34:	d9fa      	bls.n	8002d2c <vListInsert+0x16>
	pxNewListItem->pxNext = pxIterator->pxNext;
 8002d36:	6853      	ldr	r3, [r2, #4]
 8002d38:	604b      	str	r3, [r1, #4]
	pxNewListItem->pxNext->pxPrevious = pxNewListItem;
 8002d3a:	6099      	str	r1, [r3, #8]
	pxNewListItem->pxPrevious = pxIterator;
 8002d3c:	608a      	str	r2, [r1, #8]
	pxIterator->pxNext = pxNewListItem;
 8002d3e:	6051      	str	r1, [r2, #4]
	pxNewListItem->pvContainer = ( void * ) pxList;
 8002d40:	6108      	str	r0, [r1, #16]
	( pxList->uxNumberOfItems )++;
 8002d42:	6801      	ldr	r1, [r0, #0]
 8002d44:	1c49      	adds	r1, r1, #1
 8002d46:	6001      	str	r1, [r0, #0]
}
 8002d48:	bc10      	pop	{r4}
 8002d4a:	4770      	bx	lr

08002d4c <vListInsertEnd>:
ListItem_t * const pxIndex = pxList->pxIndex;
 8002d4c:	6842      	ldr	r2, [r0, #4]
	pxNewListItem->pxNext = pxIndex;
 8002d4e:	604a      	str	r2, [r1, #4]
	pxNewListItem->pxPrevious = pxIndex->pxPrevious;
 8002d50:	6893      	ldr	r3, [r2, #8]
 8002d52:	608b      	str	r3, [r1, #8]
	pxIndex->pxPrevious->pxNext = pxNewListItem;
 8002d54:	6893      	ldr	r3, [r2, #8]
 8002d56:	6059      	str	r1, [r3, #4]
	pxIndex->pxPrevious = pxNewListItem;
 8002d58:	6091      	str	r1, [r2, #8]
	pxNewListItem->pvContainer = ( void * ) pxList;
 8002d5a:	6108      	str	r0, [r1, #16]
	( pxList->uxNumberOfItems )++;
 8002d5c:	6801      	ldr	r1, [r0, #0]
 8002d5e:	1c49      	adds	r1, r1, #1
 8002d60:	6001      	str	r1, [r0, #0]
}
 8002d62:	4770      	bx	lr

08002d64 <vPortEnterCritical>:
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002d64:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002d66:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002d6a:	f3bf 8f4f 	dsb	sy
		isb
 8002d6e:	f3bf 8f6f 	isb	sy
	uxCriticalNesting++;
 8002d72:	490a      	ldr	r1, [pc, #40]	; (8002d9c <vPortEnterCritical+0x38>)
 8002d74:	6848      	ldr	r0, [r1, #4]
 8002d76:	1c40      	adds	r0, r0, #1
 8002d78:	6048      	str	r0, [r1, #4]
	if( uxCriticalNesting == 1 )
 8002d7a:	2801      	cmp	r0, #1
{
 8002d7c:	d10c      	bne.n	8002d98 <vPortEnterCritical+0x34>
		configASSERT( ( portNVIC_INT_CTRL_REG & portVECTACTIVE_MASK ) == 0 );
 8002d7e:	4808      	ldr	r0, [pc, #32]	; (8002da0 <vPortEnterCritical+0x3c>)
 8002d80:	6800      	ldr	r0, [r0, #0]
 8002d82:	f010 0fff 	tst.w	r0, #255	; 0xff
 8002d86:	d007      	beq.n	8002d98 <vPortEnterCritical+0x34>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002d88:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002d8a:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002d8e:	f3bf 8f4f 	dsb	sy
		isb
 8002d92:	f3bf 8f6f 	isb	sy
 8002d96:	e7fe      	b.n	8002d96 <vPortEnterCritical+0x32>
}
 8002d98:	4770      	bx	lr
 8002d9a:	0000      	.short	0x0000
 8002d9c:	2000009c 	.word	0x2000009c
 8002da0:	e000ed04 	.word	0xe000ed04

08002da4 <vPortExitCritical>:
	configASSERT( uxCriticalNesting );
 8002da4:	4909      	ldr	r1, [pc, #36]	; (8002dcc <vPortExitCritical+0x28>)
 8002da6:	6848      	ldr	r0, [r1, #4]
 8002da8:	2800      	cmp	r0, #0
{
 8002daa:	d006      	beq.n	8002dba <vPortExitCritical+0x16>
	uxCriticalNesting--;
 8002dac:	1e40      	subs	r0, r0, #1
 8002dae:	6048      	str	r0, [r1, #4]
	if( uxCriticalNesting == 0 )
 8002db0:	2800      	cmp	r0, #0
 8002db2:	d101      	bne.n	8002db8 <vPortExitCritical+0x14>
		msr basepri, ulBASEPRI
 8002db4:	f380 8811 	msr	BASEPRI, r0
}
 8002db8:	4770      	bx	lr
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002dba:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002dbc:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002dc0:	f3bf 8f4f 	dsb	sy
		isb
 8002dc4:	f3bf 8f6f 	isb	sy
	configASSERT( uxCriticalNesting );
 8002dc8:	e7fe      	b.n	8002dc8 <vPortExitCritical+0x24>
 8002dca:	0000      	.short	0x0000
 8002dcc:	2000009c 	.word	0x2000009c

08002dd0 <vPortFree>:
{
 8002dd0:	b570      	push	{r4, r5, r6, lr}
	if( pv != NULL )
 8002dd2:	2800      	cmp	r0, #0
{
 8002dd4:	d027      	beq.n	8002e26 <vPortFree+0x56>
		puc -= xHeapStructSize;
 8002dd6:	f1a0 0408 	sub.w	r4, r0, #8
		configASSERT( ( pxLink->xBlockSize & xBlockAllocatedBit ) != 0 );
 8002dda:	4d13      	ldr	r5, [pc, #76]	; (8002e28 <vPortFree+0x58>)
 8002ddc:	6860      	ldr	r0, [r4, #4]
 8002dde:	68e9      	ldr	r1, [r5, #12]
 8002de0:	4208      	tst	r0, r1
 8002de2:	d107      	bne.n	8002df4 <vPortFree+0x24>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002de4:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002de6:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002dea:	f3bf 8f4f 	dsb	sy
		isb
 8002dee:	f3bf 8f6f 	isb	sy
 8002df2:	e7fe      	b.n	8002df2 <vPortFree+0x22>
		configASSERT( pxLink->pxNextFreeBlock == NULL );
 8002df4:	6822      	ldr	r2, [r4, #0]
 8002df6:	b13a      	cbz	r2, 8002e08 <vPortFree+0x38>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002df8:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002dfa:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002dfe:	f3bf 8f4f 	dsb	sy
		isb
 8002e02:	f3bf 8f6f 	isb	sy
 8002e06:	e7fe      	b.n	8002e06 <vPortFree+0x36>
				pxLink->xBlockSize &= ~xBlockAllocatedBit;
 8002e08:	4388      	bics	r0, r1
 8002e0a:	6060      	str	r0, [r4, #4]
				vTaskSuspendAll();
 8002e0c:	f000 f9e0 	bl	80031d0 <vTaskSuspendAll>
					xFreeBytesRemaining += pxLink->xBlockSize;
 8002e10:	6860      	ldr	r0, [r4, #4]
 8002e12:	6869      	ldr	r1, [r5, #4]
 8002e14:	4408      	add	r0, r1
 8002e16:	6068      	str	r0, [r5, #4]
					prvInsertBlockIntoFreeList( ( ( BlockLink_t * ) pxLink ) );
 8002e18:	4620      	mov	r0, r4
 8002e1a:	f7ff fc19 	bl	8002650 <prvInsertBlockIntoFreeList>
				( void ) xTaskResumeAll();
 8002e1e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8002e22:	f000 be67 	b.w	8003af4 <xTaskResumeAll>
}
 8002e26:	bd70      	pop	{r4, r5, r6, pc}
 8002e28:	20000084 	.word	0x20000084

08002e2c <vPortSetupTimerInterrupt>:
		portNVIC_SYSTICK_CTRL_REG = 0UL;
 8002e2c:	f04f 20e0 	mov.w	r0, #3758153728	; 0xe000e000
 8002e30:	2100      	movs	r1, #0
 8002e32:	6101      	str	r1, [r0, #16]
		portNVIC_SYSTICK_CURRENT_VALUE_REG = 0UL;
 8002e34:	6181      	str	r1, [r0, #24]
		portNVIC_SYSTICK_LOAD_REG = ( configSYSTICK_CLOCK_HZ / configTICK_RATE_HZ ) - 1UL;
 8002e36:	4905      	ldr	r1, [pc, #20]	; (8002e4c <vPortSetupTimerInterrupt+0x20>)
 8002e38:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
 8002e3c:	6809      	ldr	r1, [r1, #0]
 8002e3e:	fbb1 f1f2 	udiv	r1, r1, r2
 8002e42:	1e49      	subs	r1, r1, #1
 8002e44:	6141      	str	r1, [r0, #20]
		portNVIC_SYSTICK_CTRL_REG = ( portNVIC_SYSTICK_CLK_BIT | portNVIC_SYSTICK_INT_BIT | portNVIC_SYSTICK_ENABLE_BIT );
 8002e46:	2107      	movs	r1, #7
 8002e48:	6101      	str	r1, [r0, #16]
	}
 8002e4a:	4770      	bx	lr
 8002e4c:	20000024 	.word	0x20000024

08002e50 <vPortValidateInterruptPriority>:
/*-----------------------------------------------------------*/

#if( configASSERT_DEFINED == 1 )

	void vPortValidateInterruptPriority( void )
	{
 8002e50:	b510      	push	{r4, lr}
	uint32_t ulCurrentInterrupt;
	uint8_t ucCurrentPriority;

		/* Obtain the number of the currently executing interrupt. */
		ulCurrentInterrupt = vPortGetIPSR();
 8002e52:	f7fd f9e5 	bl	8000220 <vPortGetIPSR>
			interrupt entry is as fast and simple as possible.

			The following links provide detailed information:
			http://www.freertos.org/RTOS-Cortex-M3-M4.html
			http://www.freertos.org/FAQHelp.html */
			configASSERT( ucCurrentPriority >= ucMaxSysCallPriority );
 8002e56:	4911      	ldr	r1, [pc, #68]	; (8002e9c <vPortValidateInterruptPriority+0x4c>)
		if( ulCurrentInterrupt >= portFIRST_USER_INTERRUPT_NUMBER )
 8002e58:	2810      	cmp	r0, #16
 8002e5a:	d30e      	bcc.n	8002e7a <vPortValidateInterruptPriority+0x2a>
			ucCurrentPriority = pcInterruptPriorityRegisters[ ulCurrentInterrupt ];
 8002e5c:	f100 20e0 	add.w	r0, r0, #3758153728	; 0xe000e000
 8002e60:	f890 03f0 	ldrb.w	r0, [r0, #1008]	; 0x3f0
			configASSERT( ucCurrentPriority >= ucMaxSysCallPriority );
 8002e64:	780a      	ldrb	r2, [r1, #0]
 8002e66:	4290      	cmp	r0, r2
 8002e68:	d207      	bcs.n	8002e7a <vPortValidateInterruptPriority+0x2a>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002e6a:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002e6c:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002e70:	f3bf 8f4f 	dsb	sy
		isb
 8002e74:	f3bf 8f6f 	isb	sy
 8002e78:	e7fe      	b.n	8002e78 <vPortValidateInterruptPriority+0x28>
		configuration then the correct setting can be achieved on all Cortex-M
		devices by calling NVIC_SetPriorityGrouping( 0 ); before starting the
		scheduler.  Note however that some vendor specific peripheral libraries
		assume a non-zero priority group setting, in which cases using a value
		of zero will result in unpredictable behaviour. */
		configASSERT( ( portAIRCR_REG & portPRIORITY_GROUP_MASK ) <= ulMaxPRIGROUPValue );
 8002e7a:	4809      	ldr	r0, [pc, #36]	; (8002ea0 <vPortValidateInterruptPriority+0x50>)
 8002e7c:	6800      	ldr	r0, [r0, #0]
 8002e7e:	6889      	ldr	r1, [r1, #8]
 8002e80:	f400 60e0 	and.w	r0, r0, #1792	; 0x700
 8002e84:	4288      	cmp	r0, r1
 8002e86:	d907      	bls.n	8002e98 <vPortValidateInterruptPriority+0x48>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002e88:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002e8a:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002e8e:	f3bf 8f4f 	dsb	sy
		isb
 8002e92:	f3bf 8f6f 	isb	sy
 8002e96:	e7fe      	b.n	8002e96 <vPortValidateInterruptPriority+0x46>
	}
 8002e98:	bd10      	pop	{r4, pc}
 8002e9a:	0000      	.short	0x0000
 8002e9c:	2000009c 	.word	0x2000009c
 8002ea0:	e000ed0c 	.word	0xe000ed0c

08002ea4 <vQueueAddToRegistry>:
	{
	UBaseType_t ux;

		/* See if there is an empty space in the registry.  A NULL name denotes
		a free slot. */
		for( ux = ( UBaseType_t ) 0U; ux < ( UBaseType_t ) configQUEUE_REGISTRY_SIZE; ux++ )
 8002ea4:	2200      	movs	r2, #0
		{
			if( xQueueRegistry[ ux ].pcQueueName == NULL )
 8002ea6:	4b08      	ldr	r3, [pc, #32]	; (8002ec8 <vQueueAddToRegistry+0x24>)
 8002ea8:	f853 c032 	ldr.w	ip, [r3, r2, lsl #3]
 8002eac:	f1bc 0f00 	cmp.w	ip, #0
 8002eb0:	d003      	beq.n	8002eba <vQueueAddToRegistry+0x16>
		for( ux = ( UBaseType_t ) 0U; ux < ( UBaseType_t ) configQUEUE_REGISTRY_SIZE; ux++ )
 8002eb2:	1c52      	adds	r2, r2, #1
 8002eb4:	2a08      	cmp	r2, #8
 8002eb6:	d3f7      	bcc.n	8002ea8 <vQueueAddToRegistry+0x4>
			else
			{
				mtCOVERAGE_TEST_MARKER();
			}
		}
	}
 8002eb8:	4770      	bx	lr
				xQueueRegistry[ ux ].pcQueueName = pcQueueName;
 8002eba:	f843 1032 	str.w	r1, [r3, r2, lsl #3]
				xQueueRegistry[ ux ].xHandle = xQueue;
 8002ebe:	eb03 01c2 	add.w	r1, r3, r2, lsl #3
 8002ec2:	6048      	str	r0, [r1, #4]
	}
 8002ec4:	4770      	bx	lr
 8002ec6:	0000      	.short	0x0000
 8002ec8:	200005cc 	.word	0x200005cc

08002ecc <vQueueWaitForMessageRestricted>:
/*-----------------------------------------------------------*/

#if ( configUSE_TIMERS == 1 )

	void vQueueWaitForMessageRestricted( QueueHandle_t xQueue, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely )
	{
 8002ecc:	b570      	push	{r4, r5, r6, lr}
 8002ece:	4604      	mov	r4, r0
 8002ed0:	460d      	mov	r5, r1
 8002ed2:	4616      	mov	r6, r2
		will not actually cause the task to block, just place it on a blocked
		list.  It will not block until the scheduler is unlocked - at which
		time a yield will be performed.  If an item is added to the queue while
		the queue is locked, and the calling task blocks on the queue, then the
		calling task will be immediately unblocked when the queue is unlocked. */
		prvLockQueue( pxQueue );
 8002ed4:	f7ff ff46 	bl	8002d64 <vPortEnterCritical>
 8002ed8:	f994 0044 	ldrsb.w	r0, [r4, #68]	; 0x44
 8002edc:	f1b0 3fff 	cmp.w	r0, #4294967295
 8002ee0:	f04f 0000 	mov.w	r0, #0
 8002ee4:	d101      	bne.n	8002eea <vQueueWaitForMessageRestricted+0x1e>
 8002ee6:	f884 0044 	strb.w	r0, [r4, #68]	; 0x44
 8002eea:	f994 1045 	ldrsb.w	r1, [r4, #69]	; 0x45
 8002eee:	f1b1 3fff 	cmp.w	r1, #4294967295
 8002ef2:	d101      	bne.n	8002ef8 <vQueueWaitForMessageRestricted+0x2c>
 8002ef4:	f884 0045 	strb.w	r0, [r4, #69]	; 0x45
 8002ef8:	f7ff ff54 	bl	8002da4 <vPortExitCritical>
		if( pxQueue->uxMessagesWaiting == ( UBaseType_t ) 0U )
 8002efc:	6ba0      	ldr	r0, [r4, #56]	; 0x38
 8002efe:	b928      	cbnz	r0, 8002f0c <vQueueWaitForMessageRestricted+0x40>
		{
			/* There is nothing in the queue, block for the specified period. */
			vTaskPlaceOnEventListRestricted( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait, xWaitIndefinitely );
 8002f00:	4632      	mov	r2, r6
 8002f02:	4629      	mov	r1, r5
 8002f04:	f104 0024 	add.w	r0, r4, #36	; 0x24
 8002f08:	f000 f8fa 	bl	8003100 <vTaskPlaceOnEventListRestricted>
		}
		else
		{
			mtCOVERAGE_TEST_MARKER();
		}
		prvUnlockQueue( pxQueue );
 8002f0c:	4620      	mov	r0, r4
 8002f0e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8002f12:	f7ff bd9b 	b.w	8002a4c <prvUnlockQueue>
	...

08002f18 <vTaskDelay>:
	{
 8002f18:	b510      	push	{r4, lr}
 8002f1a:	4602      	mov	r2, r0
	BaseType_t xAlreadyYielded = pdFALSE;
 8002f1c:	2000      	movs	r0, #0
		if( xTicksToDelay > ( TickType_t ) 0U )
 8002f1e:	2a00      	cmp	r2, #0
	{
 8002f20:	d012      	beq.n	8002f48 <vTaskDelay+0x30>
			configASSERT( uxSchedulerSuspended == 0 );
 8002f22:	480f      	ldr	r0, [pc, #60]	; (8002f60 <vTaskDelay+0x48>)
 8002f24:	6b80      	ldr	r0, [r0, #56]	; 0x38
 8002f26:	b138      	cbz	r0, 8002f38 <vTaskDelay+0x20>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8002f28:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8002f2a:	f380 8811 	msr	BASEPRI, r0
		dsb
 8002f2e:	f3bf 8f4f 	dsb	sy
		isb
 8002f32:	f3bf 8f6f 	isb	sy
 8002f36:	e7fe      	b.n	8002f36 <vTaskDelay+0x1e>
			vTaskSuspendAll();
 8002f38:	f000 f94a 	bl	80031d0 <vTaskSuspendAll>
				prvAddCurrentTaskToDelayedList( xTicksToDelay, pdFALSE );
 8002f3c:	2100      	movs	r1, #0
 8002f3e:	4610      	mov	r0, r2
 8002f40:	f7ff f980 	bl	8002244 <prvAddCurrentTaskToDelayedList>
			xAlreadyYielded = xTaskResumeAll();
 8002f44:	f000 fdd6 	bl	8003af4 <xTaskResumeAll>
		if( xAlreadyYielded == pdFALSE )
 8002f48:	2800      	cmp	r0, #0
 8002f4a:	d107      	bne.n	8002f5c <vTaskDelay+0x44>
			portYIELD_WITHIN_API();
 8002f4c:	4905      	ldr	r1, [pc, #20]	; (8002f64 <vTaskDelay+0x4c>)
 8002f4e:	f04f 5080 	mov.w	r0, #268435456	; 0x10000000
 8002f52:	6008      	str	r0, [r1, #0]
 8002f54:	f3bf 8f4f 	dsb	sy
 8002f58:	f3bf 8f6f 	isb	sy
	}
 8002f5c:	bd10      	pop	{r4, pc}
 8002f5e:	0000      	.short	0x0000
 8002f60:	20000028 	.word	0x20000028
 8002f64:	e000ed04 	.word	0xe000ed04

08002f68 <vTaskGetInfo>:
	{
 8002f68:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002f6c:	460c      	mov	r4, r1
 8002f6e:	4616      	mov	r6, r2
		pxTCB = prvGetTCBFromHandle( xTask );
 8002f70:	491a      	ldr	r1, [pc, #104]	; (8002fdc <vTaskGetInfo+0x74>)
 8002f72:	2800      	cmp	r0, #0
	{
 8002f74:	d016      	beq.n	8002fa4 <vTaskGetInfo+0x3c>
		pxTCB = prvGetTCBFromHandle( xTask );
 8002f76:	4605      	mov	r5, r0
		pxTaskStatus->xHandle = ( TaskHandle_t ) pxTCB;
 8002f78:	6025      	str	r5, [r4, #0]
		pxTaskStatus->pcTaskName = ( const char * ) &( pxTCB->pcTaskName [ 0 ] );
 8002f7a:	f105 0034 	add.w	r0, r5, #52	; 0x34
 8002f7e:	6060      	str	r0, [r4, #4]
		pxTaskStatus->uxCurrentPriority = pxTCB->uxPriority;
 8002f80:	6ae8      	ldr	r0, [r5, #44]	; 0x2c
 8002f82:	6120      	str	r0, [r4, #16]
		pxTaskStatus->pxStackBase = pxTCB->pxStack;
 8002f84:	6b28      	ldr	r0, [r5, #48]	; 0x30
 8002f86:	61e0      	str	r0, [r4, #28]
		pxTaskStatus->xTaskNumber = pxTCB->uxTCBNumber;
 8002f88:	6c68      	ldr	r0, [r5, #68]	; 0x44
 8002f8a:	60a0      	str	r0, [r4, #8]
			pxTaskStatus->uxBasePriority = pxTCB->uxBasePriority;
 8002f8c:	6ce8      	ldr	r0, [r5, #76]	; 0x4c
 8002f8e:	6160      	str	r0, [r4, #20]
			pxTaskStatus->ulRunTimeCounter = pxTCB->ulRunTimeCounter;
 8002f90:	6d68      	ldr	r0, [r5, #84]	; 0x54
 8002f92:	61a0      	str	r0, [r4, #24]
		if( eState != eInvalid )
 8002f94:	2700      	movs	r7, #0
 8002f96:	2b05      	cmp	r3, #5
 8002f98:	d012      	beq.n	8002fc0 <vTaskGetInfo+0x58>
			if( pxTCB == pxCurrentTCB )
 8002f9a:	6808      	ldr	r0, [r1, #0]
 8002f9c:	4285      	cmp	r5, r0
 8002f9e:	d103      	bne.n	8002fa8 <vTaskGetInfo+0x40>
				pxTaskStatus->eCurrentState = eRunning;
 8002fa0:	7327      	strb	r7, [r4, #12]
 8002fa2:	e011      	b.n	8002fc8 <vTaskGetInfo+0x60>
		pxTCB = prvGetTCBFromHandle( xTask );
 8002fa4:	680d      	ldr	r5, [r1, #0]
 8002fa6:	e7e7      	b.n	8002f78 <vTaskGetInfo+0x10>
				pxTaskStatus->eCurrentState = eState;
 8002fa8:	7323      	strb	r3, [r4, #12]
					if( eState == eSuspended )
 8002faa:	2b03      	cmp	r3, #3
 8002fac:	d10c      	bne.n	8002fc8 <vTaskGetInfo+0x60>
						vTaskSuspendAll();
 8002fae:	f000 f90f 	bl	80031d0 <vTaskSuspendAll>
							if( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) != NULL )
 8002fb2:	6aa8      	ldr	r0, [r5, #40]	; 0x28
 8002fb4:	b108      	cbz	r0, 8002fba <vTaskGetInfo+0x52>
								pxTaskStatus->eCurrentState = eBlocked;
 8002fb6:	2002      	movs	r0, #2
 8002fb8:	7320      	strb	r0, [r4, #12]
						( void ) xTaskResumeAll();
 8002fba:	f000 fd9b 	bl	8003af4 <xTaskResumeAll>
 8002fbe:	e003      	b.n	8002fc8 <vTaskGetInfo+0x60>
			pxTaskStatus->eCurrentState = eTaskGetState( pxTCB );
 8002fc0:	4628      	mov	r0, r5
 8002fc2:	f7fe fee7 	bl	8001d94 <eTaskGetState>
 8002fc6:	7320      	strb	r0, [r4, #12]
		if( xGetFreeStackSpace != pdFALSE )
 8002fc8:	b12e      	cbz	r6, 8002fd6 <vTaskGetInfo+0x6e>
				pxTaskStatus->usStackHighWaterMark = prvTaskCheckFreeStackSpace( ( uint8_t * ) pxTCB->pxStack );
 8002fca:	6b28      	ldr	r0, [r5, #48]	; 0x30
 8002fcc:	f7ff fd10 	bl	80029f0 <prvTaskCheckFreeStackSpace>
 8002fd0:	8420      	strh	r0, [r4, #32]
	}
 8002fd2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
			pxTaskStatus->usStackHighWaterMark = 0;
 8002fd6:	8427      	strh	r7, [r4, #32]
	}
 8002fd8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002fdc:	20000028 	.word	0x20000028

08002fe0 <vTaskGetRunTimeStats>:
	{
 8002fe0:	b570      	push	{r4, r5, r6, lr}
 8002fe2:	b084      	sub	sp, #16
 8002fe4:	4606      	mov	r6, r0
		*pcWriteBuffer = 0x00;
 8002fe6:	2500      	movs	r5, #0
 8002fe8:	7035      	strb	r5, [r6, #0]
		uxArraySize = uxCurrentNumberOfTasks;
 8002fea:	4829      	ldr	r0, [pc, #164]	; (8003090 <vTaskGetRunTimeStats+0xb0>)
 8002fec:	6901      	ldr	r1, [r0, #16]
 8002fee:	9103      	str	r1, [sp, #12]
		pxTaskStatusArray = pvPortMalloc( uxCurrentNumberOfTasks * sizeof( TaskStatus_t ) );
 8002ff0:	6900      	ldr	r0, [r0, #16]
 8002ff2:	eb00 00c0 	add.w	r0, r0, r0, lsl #3
 8002ff6:	0080      	lsls	r0, r0, #2
 8002ff8:	f7ff fd70 	bl	8002adc <pvPortMalloc>
 8002ffc:	4604      	mov	r4, r0
		if( pxTaskStatusArray != NULL )
 8002ffe:	0020      	movs	r0, r4
 8003000:	d043      	beq.n	800308a <vTaskGetRunTimeStats+0xaa>
			uxArraySize = uxTaskGetSystemState( pxTaskStatusArray, uxArraySize, &ulTotalTime );
 8003002:	aa01      	add	r2, sp, #4
 8003004:	9903      	ldr	r1, [sp, #12]
 8003006:	f7ff fe09 	bl	8002c1c <uxTaskGetSystemState>
 800300a:	9003      	str	r0, [sp, #12]
			ulTotalTime /= 100UL;
 800300c:	4921      	ldr	r1, [pc, #132]	; (8003094 <vTaskGetRunTimeStats+0xb4>)
 800300e:	9801      	ldr	r0, [sp, #4]
 8003010:	fba1 1000 	umull	r1, r0, r1, r0
 8003014:	0940      	lsrs	r0, r0, #5
 8003016:	9001      	str	r0, [sp, #4]
			if( ulTotalTime > 0 )
 8003018:	2800      	cmp	r0, #0
 800301a:	d033      	beq.n	8003084 <vTaskGetRunTimeStats+0xa4>
				for( x = 0; x < uxArraySize; x++ )
 800301c:	9502      	str	r5, [sp, #8]
 800301e:	9803      	ldr	r0, [sp, #12]
 8003020:	2800      	cmp	r0, #0
 8003022:	d92f      	bls.n	8003084 <vTaskGetRunTimeStats+0xa4>
					ulStatsAsPercentage = pxTaskStatusArray[ x ].ulRunTimeCounter / ulTotalTime;
 8003024:	9802      	ldr	r0, [sp, #8]
 8003026:	9a01      	ldr	r2, [sp, #4]
 8003028:	eb00 00c0 	add.w	r0, r0, r0, lsl #3
 800302c:	eb04 0080 	add.w	r0, r4, r0, lsl #2
 8003030:	6981      	ldr	r1, [r0, #24]
 8003032:	fbb1 f5f2 	udiv	r5, r1, r2
					pcWriteBuffer = prvWriteNameToBuffer( pcWriteBuffer, pxTaskStatusArray[ x ].pcTaskName );
 8003036:	6841      	ldr	r1, [r0, #4]
 8003038:	4630      	mov	r0, r6
 800303a:	f7ff fd3b 	bl	8002ab4 <prvWriteNameToBuffer>
 800303e:	4606      	mov	r6, r0
					if( ulStatsAsPercentage > 0UL )
 8003040:	b15d      	cbz	r5, 800305a <vTaskGetRunTimeStats+0x7a>
							sprintf( pcWriteBuffer, "\t%u\t\t%u%%\r\n", ( unsigned int ) pxTaskStatusArray[ x ].ulRunTimeCounter, ( unsigned int ) ulStatsAsPercentage );
 8003042:	9802      	ldr	r0, [sp, #8]
 8003044:	462b      	mov	r3, r5
 8003046:	eb00 00c0 	add.w	r0, r0, r0, lsl #3
 800304a:	eb04 0080 	add.w	r0, r4, r0, lsl #2
 800304e:	a112      	add	r1, pc, #72	; (adr r1, 8003098 <vTaskGetRunTimeStats+0xb8>)
 8003050:	6982      	ldr	r2, [r0, #24]
 8003052:	4630      	mov	r0, r6
 8003054:	f7fd f908 	bl	8000268 <__2sprintf>
 8003058:	e009      	b.n	800306e <vTaskGetRunTimeStats+0x8e>
							sprintf( pcWriteBuffer, "\t%u\t\t<1%%\r\n", ( unsigned int ) pxTaskStatusArray[ x ].ulRunTimeCounter );
 800305a:	9802      	ldr	r0, [sp, #8]
 800305c:	a111      	add	r1, pc, #68	; (adr r1, 80030a4 <vTaskGetRunTimeStats+0xc4>)
 800305e:	eb00 00c0 	add.w	r0, r0, r0, lsl #3
 8003062:	eb04 0080 	add.w	r0, r4, r0, lsl #2
 8003066:	6982      	ldr	r2, [r0, #24]
 8003068:	4630      	mov	r0, r6
 800306a:	f7fd f8fd 	bl	8000268 <__2sprintf>
					pcWriteBuffer += strlen( pcWriteBuffer );
 800306e:	4630      	mov	r0, r6
 8003070:	f7fd f9a2 	bl	80003b8 <strlen>
 8003074:	4406      	add	r6, r0
				for( x = 0; x < uxArraySize; x++ )
 8003076:	9802      	ldr	r0, [sp, #8]
 8003078:	1c40      	adds	r0, r0, #1
 800307a:	9002      	str	r0, [sp, #8]
 800307c:	9903      	ldr	r1, [sp, #12]
 800307e:	9802      	ldr	r0, [sp, #8]
 8003080:	4288      	cmp	r0, r1
 8003082:	d3cf      	bcc.n	8003024 <vTaskGetRunTimeStats+0x44>
			vPortFree( pxTaskStatusArray );
 8003084:	4620      	mov	r0, r4
 8003086:	f7ff fea3 	bl	8002dd0 <vPortFree>
	}
 800308a:	b004      	add	sp, #16
 800308c:	bd70      	pop	{r4, r5, r6, pc}
 800308e:	0000      	.short	0x0000
 8003090:	20000028 	.word	0x20000028
 8003094:	51eb851f 	.word	0x51eb851f
 8003098:	09752509 	.word	0x09752509
 800309c:	25752509 	.word	0x25752509
 80030a0:	000a0d25 	.word	0x000a0d25
 80030a4:	09752509 	.word	0x09752509
 80030a8:	25313c09 	.word	0x25313c09
 80030ac:	000a0d25 	.word	0x000a0d25

080030b0 <vTaskInternalSetTimeOutState>:
	pxTimeOut->xOverflowCount = xNumOfOverflows;
 80030b0:	4902      	ldr	r1, [pc, #8]	; (80030bc <vTaskInternalSetTimeOutState+0xc>)
 80030b2:	6a8a      	ldr	r2, [r1, #40]	; 0x28
 80030b4:	6002      	str	r2, [r0, #0]
	pxTimeOut->xTimeOnEntering = xTickCount;
 80030b6:	6949      	ldr	r1, [r1, #20]
 80030b8:	6041      	str	r1, [r0, #4]
}
 80030ba:	4770      	bx	lr
 80030bc:	20000028 	.word	0x20000028

080030c0 <vTaskMissedYield>:
	xYieldPending = pdTRUE;
 80030c0:	4901      	ldr	r1, [pc, #4]	; (80030c8 <vTaskMissedYield+0x8>)
 80030c2:	2001      	movs	r0, #1
 80030c4:	6248      	str	r0, [r1, #36]	; 0x24
}
 80030c6:	4770      	bx	lr
 80030c8:	20000028 	.word	0x20000028

080030cc <vTaskPlaceOnEventList>:
{
 80030cc:	b510      	push	{r4, lr}
 80030ce:	460c      	mov	r4, r1
	configASSERT( pxEventList );
 80030d0:	2800      	cmp	r0, #0
{
 80030d2:	d00b      	beq.n	80030ec <vTaskPlaceOnEventList+0x20>
	vListInsert( pxEventList, &( pxCurrentTCB->xEventListItem ) );
 80030d4:	4a09      	ldr	r2, [pc, #36]	; (80030fc <vTaskPlaceOnEventList+0x30>)
 80030d6:	6812      	ldr	r2, [r2, #0]
 80030d8:	f102 0118 	add.w	r1, r2, #24
 80030dc:	f7ff fe1b 	bl	8002d16 <vListInsert>
	prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
 80030e0:	4620      	mov	r0, r4
 80030e2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80030e6:	2101      	movs	r1, #1
 80030e8:	f7ff b8ac 	b.w	8002244 <prvAddCurrentTaskToDelayedList>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 80030ec:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 80030ee:	f380 8811 	msr	BASEPRI, r0
		dsb
 80030f2:	f3bf 8f4f 	dsb	sy
		isb
 80030f6:	f3bf 8f6f 	isb	sy
	configASSERT( pxEventList );
 80030fa:	e7fe      	b.n	80030fa <vTaskPlaceOnEventList+0x2e>
 80030fc:	20000028 	.word	0x20000028

08003100 <vTaskPlaceOnEventListRestricted>:
	{
 8003100:	b570      	push	{r4, r5, r6, lr}
 8003102:	460d      	mov	r5, r1
 8003104:	4614      	mov	r4, r2
		configASSERT( pxEventList );
 8003106:	2800      	cmp	r0, #0
	{
 8003108:	d00d      	beq.n	8003126 <vTaskPlaceOnEventListRestricted+0x26>
		vListInsertEnd( pxEventList, &( pxCurrentTCB->xEventListItem ) );
 800310a:	490b      	ldr	r1, [pc, #44]	; (8003138 <vTaskPlaceOnEventListRestricted+0x38>)
 800310c:	6809      	ldr	r1, [r1, #0]
 800310e:	3118      	adds	r1, #24
 8003110:	f7ff fe1c 	bl	8002d4c <vListInsertEnd>
		if( xWaitIndefinitely != pdFALSE )
 8003114:	b10c      	cbz	r4, 800311a <vTaskPlaceOnEventListRestricted+0x1a>
			xTicksToWait = portMAX_DELAY;
 8003116:	f04f 35ff 	mov.w	r5, #4294967295
		prvAddCurrentTaskToDelayedList( xTicksToWait, xWaitIndefinitely );
 800311a:	4621      	mov	r1, r4
 800311c:	4628      	mov	r0, r5
 800311e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8003122:	f7ff b88f 	b.w	8002244 <prvAddCurrentTaskToDelayedList>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8003126:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003128:	f380 8811 	msr	BASEPRI, r0
		dsb
 800312c:	f3bf 8f4f 	dsb	sy
		isb
 8003130:	f3bf 8f6f 	isb	sy
		configASSERT( pxEventList );
 8003134:	e7fe      	b.n	8003134 <vTaskPlaceOnEventListRestricted+0x34>
 8003136:	0000      	.short	0x0000
 8003138:	20000028 	.word	0x20000028

0800313c <vTaskStartScheduler>:
{
 800313c:	b530      	push	{r4, r5, lr}
 800313e:	b087      	sub	sp, #28
		StaticTask_t *pxIdleTaskTCBBuffer = NULL;
 8003140:	2500      	movs	r5, #0
 8003142:	9506      	str	r5, [sp, #24]
		StackType_t *pxIdleTaskStackBuffer = NULL;
 8003144:	9505      	str	r5, [sp, #20]
		vApplicationGetIdleTaskMemory( &pxIdleTaskTCBBuffer, &pxIdleTaskStackBuffer, &ulIdleTaskStackSize );
 8003146:	aa04      	add	r2, sp, #16
 8003148:	a905      	add	r1, sp, #20
 800314a:	a806      	add	r0, sp, #24
 800314c:	f7ff fdbe 	bl	8002ccc <vApplicationGetIdleTaskMemory>
		xIdleTaskHandle = xTaskCreateStatic(	prvIdleTask,
 8003150:	9806      	ldr	r0, [sp, #24]
 8003152:	9905      	ldr	r1, [sp, #20]
 8003154:	9101      	str	r1, [sp, #4]
 8003156:	9002      	str	r0, [sp, #8]
 8003158:	2300      	movs	r3, #0
 800315a:	9500      	str	r5, [sp, #0]
 800315c:	a118      	add	r1, pc, #96	; (adr r1, 80031c0 <vTaskStartScheduler+0x84>)
 800315e:	481a      	ldr	r0, [pc, #104]	; (80031c8 <vTaskStartScheduler+0x8c>)
 8003160:	9a04      	ldr	r2, [sp, #16]
 8003162:	f000 fba1 	bl	80038a8 <xTaskCreateStatic>
 8003166:	4c19      	ldr	r4, [pc, #100]	; (80031cc <vTaskStartScheduler+0x90>)
 8003168:	6360      	str	r0, [r4, #52]	; 0x34
		if( xIdleTaskHandle != NULL )
 800316a:	b108      	cbz	r0, 8003170 <vTaskStartScheduler+0x34>
			xReturn = pdPASS;
 800316c:	2001      	movs	r0, #1
 800316e:	e000      	b.n	8003172 <vTaskStartScheduler+0x36>
			xReturn = pdFAIL;
 8003170:	2000      	movs	r0, #0
		if( xReturn == pdPASS )
 8003172:	2801      	cmp	r0, #1
 8003174:	d101      	bne.n	800317a <vTaskStartScheduler+0x3e>
			xReturn = xTimerCreateTimerTask();
 8003176:	f000 fd23 	bl	8003bc0 <xTimerCreateTimerTask>
	if( xReturn == pdPASS )
 800317a:	2801      	cmp	r0, #1
 800317c:	d00a      	beq.n	8003194 <vTaskStartScheduler+0x58>
		configASSERT( xReturn != errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY );
 800317e:	f1b0 3fff 	cmp.w	r0, #4294967295
 8003182:	d11b      	bne.n	80031bc <vTaskStartScheduler+0x80>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8003184:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003186:	f380 8811 	msr	BASEPRI, r0
		dsb
 800318a:	f3bf 8f4f 	dsb	sy
		isb
 800318e:	f3bf 8f6f 	isb	sy
 8003192:	e7fe      	b.n	8003192 <vTaskStartScheduler+0x56>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8003194:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003196:	f380 8811 	msr	BASEPRI, r0
		dsb
 800319a:	f3bf 8f4f 	dsb	sy
		isb
 800319e:	f3bf 8f6f 	isb	sy
		xNextTaskUnblockTime = portMAX_DELAY;
 80031a2:	f04f 30ff 	mov.w	r0, #4294967295
 80031a6:	6320      	str	r0, [r4, #48]	; 0x30
		xSchedulerRunning = pdTRUE;
 80031a8:	2001      	movs	r0, #1
 80031aa:	61e0      	str	r0, [r4, #28]
		xTickCount = ( TickType_t ) 0U;
 80031ac:	6165      	str	r5, [r4, #20]
		portCONFIGURE_TIMER_FOR_RUN_TIME_STATS();
 80031ae:	f7fe fd9a 	bl	8001ce6 <configureTimerForRunTimeStats>
		if( xPortStartScheduler() != pdFALSE )
 80031b2:	b007      	add	sp, #28
 80031b4:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 80031b8:	f000 b856 	b.w	8003268 <xPortStartScheduler>
}
 80031bc:	b007      	add	sp, #28
 80031be:	bd30      	pop	{r4, r5, pc}
 80031c0:	454c4449 	.word	0x454c4449
 80031c4:	00000000 	.word	0x00000000
 80031c8:	08002511 	.word	0x08002511
 80031cc:	20000028 	.word	0x20000028

080031d0 <vTaskSuspendAll>:
	++uxSchedulerSuspended;
 80031d0:	4802      	ldr	r0, [pc, #8]	; (80031dc <vTaskSuspendAll+0xc>)
 80031d2:	6b81      	ldr	r1, [r0, #56]	; 0x38
 80031d4:	1c49      	adds	r1, r1, #1
 80031d6:	6381      	str	r1, [r0, #56]	; 0x38
}
 80031d8:	4770      	bx	lr
 80031da:	0000      	.short	0x0000
 80031dc:	20000028 	.word	0x20000028

080031e0 <vTaskSwitchContext>:
{
 80031e0:	b510      	push	{r4, lr}
	if( uxSchedulerSuspended != ( UBaseType_t ) pdFALSE )
 80031e2:	4c1f      	ldr	r4, [pc, #124]	; (8003260 <vTaskSwitchContext+0x80>)
 80031e4:	6ba0      	ldr	r0, [r4, #56]	; 0x38
 80031e6:	2800      	cmp	r0, #0
{
 80031e8:	d002      	beq.n	80031f0 <vTaskSwitchContext+0x10>
		xYieldPending = pdTRUE;
 80031ea:	2001      	movs	r0, #1
 80031ec:	6260      	str	r0, [r4, #36]	; 0x24
}
 80031ee:	bd10      	pop	{r4, pc}
		xYieldPending = pdFALSE;
 80031f0:	2000      	movs	r0, #0
 80031f2:	6260      	str	r0, [r4, #36]	; 0x24
					ulTotalRunTime = portGET_RUN_TIME_COUNTER_VALUE();
 80031f4:	f7fe fe04 	bl	8001e00 <getRunTimeCounterValue>
 80031f8:	6420      	str	r0, [r4, #64]	; 0x40
				if( ulTotalRunTime > ulTaskSwitchedInTime )
 80031fa:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 80031fc:	4290      	cmp	r0, r2
 80031fe:	d904      	bls.n	800320a <vTaskSwitchContext+0x2a>
					pxCurrentTCB->ulRunTimeCounter += ( ulTotalRunTime - ulTaskSwitchedInTime );
 8003200:	6821      	ldr	r1, [r4, #0]
 8003202:	1a82      	subs	r2, r0, r2
 8003204:	6d4b      	ldr	r3, [r1, #84]	; 0x54
 8003206:	441a      	add	r2, r3
 8003208:	654a      	str	r2, [r1, #84]	; 0x54
				ulTaskSwitchedInTime = ulTotalRunTime;
 800320a:	63e0      	str	r0, [r4, #60]	; 0x3c
		taskSELECT_HIGHEST_PRIORITY_TASK();
 800320c:	69a0      	ldr	r0, [r4, #24]
 800320e:	4915      	ldr	r1, [pc, #84]	; (8003264 <vTaskSwitchContext+0x84>)
 8003210:	eb00 0280 	add.w	r2, r0, r0, lsl #2
 8003214:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
 8003218:	b93a      	cbnz	r2, 800322a <vTaskSwitchContext+0x4a>
 800321a:	b1c0      	cbz	r0, 800324e <vTaskSwitchContext+0x6e>
 800321c:	1e40      	subs	r0, r0, #1
 800321e:	eb00 0280 	add.w	r2, r0, r0, lsl #2
 8003222:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
 8003226:	2a00      	cmp	r2, #0
 8003228:	d0f7      	beq.n	800321a <vTaskSwitchContext+0x3a>
 800322a:	eb00 0280 	add.w	r2, r0, r0, lsl #2
 800322e:	eb01 0182 	add.w	r1, r1, r2, lsl #2
 8003232:	684a      	ldr	r2, [r1, #4]
 8003234:	6852      	ldr	r2, [r2, #4]
 8003236:	604a      	str	r2, [r1, #4]
 8003238:	f101 0308 	add.w	r3, r1, #8
 800323c:	429a      	cmp	r2, r3
 800323e:	d101      	bne.n	8003244 <vTaskSwitchContext+0x64>
 8003240:	6852      	ldr	r2, [r2, #4]
 8003242:	604a      	str	r2, [r1, #4]
 8003244:	6849      	ldr	r1, [r1, #4]
 8003246:	68c9      	ldr	r1, [r1, #12]
 8003248:	6021      	str	r1, [r4, #0]
 800324a:	61a0      	str	r0, [r4, #24]
}
 800324c:	bd10      	pop	{r4, pc}
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800324e:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003250:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003254:	f3bf 8f4f 	dsb	sy
		isb
 8003258:	f3bf 8f6f 	isb	sy
		taskSELECT_HIGHEST_PRIORITY_TASK();
 800325c:	e7fe      	b.n	800325c <vTaskSwitchContext+0x7c>
 800325e:	0000      	.short	0x0000
 8003260:	20000028 	.word	0x20000028
 8003264:	2000060c 	.word	0x2000060c

08003268 <xPortStartScheduler>:
{
 8003268:	b500      	push	{lr}
 800326a:	b083      	sub	sp, #12
		volatile uint8_t * const pucFirstUserPriorityRegister = ( uint8_t * ) ( portNVIC_IP_REGISTERS_OFFSET_16 + portFIRST_USER_INTERRUPT_NUMBER );
 800326c:	4928      	ldr	r1, [pc, #160]	; (8003310 <xPortStartScheduler+0xa8>)
		ulOriginalPriority = *pucFirstUserPriorityRegister;
 800326e:	7808      	ldrb	r0, [r1, #0]
 8003270:	9002      	str	r0, [sp, #8]
		*pucFirstUserPriorityRegister = portMAX_8_BIT_VALUE;
 8003272:	20ff      	movs	r0, #255	; 0xff
 8003274:	7008      	strb	r0, [r1, #0]
		ucMaxPriorityValue = *pucFirstUserPriorityRegister;
 8003276:	7808      	ldrb	r0, [r1, #0]
 8003278:	9001      	str	r0, [sp, #4]
		configASSERT( ucMaxPriorityValue == ( configKERNEL_INTERRUPT_PRIORITY & ucMaxPriorityValue ) );
 800327a:	f89d 0004 	ldrb.w	r0, [sp, #4]
 800327e:	f89d 2004 	ldrb.w	r2, [sp, #4]
 8003282:	f000 00f0 	and.w	r0, r0, #240	; 0xf0
 8003286:	4290      	cmp	r0, r2
{
 8003288:	d007      	beq.n	800329a <xPortStartScheduler+0x32>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800328a:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 800328c:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003290:	f3bf 8f4f 	dsb	sy
		isb
 8003294:	f3bf 8f6f 	isb	sy
		configASSERT( ucMaxPriorityValue == ( configKERNEL_INTERRUPT_PRIORITY & ucMaxPriorityValue ) );
 8003298:	e7fe      	b.n	8003298 <xPortStartScheduler+0x30>
		ucMaxSysCallPriority = configMAX_SYSCALL_INTERRUPT_PRIORITY & ucMaxPriorityValue;
 800329a:	f89d 0004 	ldrb.w	r0, [sp, #4]
 800329e:	4b1d      	ldr	r3, [pc, #116]	; (8003314 <xPortStartScheduler+0xac>)
 80032a0:	f000 0050 	and.w	r0, r0, #80	; 0x50
 80032a4:	7018      	strb	r0, [r3, #0]
		ulMaxPRIGROUPValue = portMAX_PRIGROUP_BITS;
 80032a6:	2007      	movs	r0, #7
 80032a8:	6098      	str	r0, [r3, #8]
		while( ( ucMaxPriorityValue & portTOP_BIT_OF_BYTE ) == portTOP_BIT_OF_BYTE )
 80032aa:	f89d 0004 	ldrb.w	r0, [sp, #4]
 80032ae:	f010 0f80 	tst.w	r0, #128	; 0x80
 80032b2:	d00b      	beq.n	80032cc <xPortStartScheduler+0x64>
			ulMaxPRIGROUPValue--;
 80032b4:	6898      	ldr	r0, [r3, #8]
 80032b6:	1e40      	subs	r0, r0, #1
 80032b8:	6098      	str	r0, [r3, #8]
			ucMaxPriorityValue <<= ( uint8_t ) 0x01;
 80032ba:	f89d 0004 	ldrb.w	r0, [sp, #4]
 80032be:	0040      	lsls	r0, r0, #1
 80032c0:	9001      	str	r0, [sp, #4]
		while( ( ucMaxPriorityValue & portTOP_BIT_OF_BYTE ) == portTOP_BIT_OF_BYTE )
 80032c2:	f89d 0004 	ldrb.w	r0, [sp, #4]
 80032c6:	f010 0f80 	tst.w	r0, #128	; 0x80
 80032ca:	d1f3      	bne.n	80032b4 <xPortStartScheduler+0x4c>
			configASSERT( ( portMAX_PRIGROUP_BITS - ulMaxPRIGROUPValue ) == configPRIO_BITS );
 80032cc:	6898      	ldr	r0, [r3, #8]
 80032ce:	2803      	cmp	r0, #3
 80032d0:	d007      	beq.n	80032e2 <xPortStartScheduler+0x7a>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 80032d2:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 80032d4:	f380 8811 	msr	BASEPRI, r0
		dsb
 80032d8:	f3bf 8f4f 	dsb	sy
		isb
 80032dc:	f3bf 8f6f 	isb	sy
 80032e0:	e7fe      	b.n	80032e0 <xPortStartScheduler+0x78>
		ulMaxPRIGROUPValue <<= portPRIGROUP_SHIFT;
 80032e2:	f44f 7040 	mov.w	r0, #768	; 0x300
 80032e6:	6098      	str	r0, [r3, #8]
		*pucFirstUserPriorityRegister = ulOriginalPriority;
 80032e8:	9802      	ldr	r0, [sp, #8]
 80032ea:	7008      	strb	r0, [r1, #0]
	portNVIC_SYSPRI2_REG |= portNVIC_PENDSV_PRI;
 80032ec:	480a      	ldr	r0, [pc, #40]	; (8003318 <xPortStartScheduler+0xb0>)
 80032ee:	6801      	ldr	r1, [r0, #0]
 80032f0:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80032f4:	6001      	str	r1, [r0, #0]
	portNVIC_SYSPRI2_REG |= portNVIC_SYSTICK_PRI;
 80032f6:	6801      	ldr	r1, [r0, #0]
 80032f8:	f041 4170 	orr.w	r1, r1, #4026531840	; 0xf0000000
 80032fc:	6001      	str	r1, [r0, #0]
	vPortSetupTimerInterrupt();
 80032fe:	f7ff fd95 	bl	8002e2c <vPortSetupTimerInterrupt>
	uxCriticalNesting = 0;
 8003302:	2000      	movs	r0, #0
 8003304:	6058      	str	r0, [r3, #4]
	prvStartFirstTask();
 8003306:	f7fc ff55 	bl	80001b4 <__asm___6_port_c_39a90d8d__prvStartFirstTask>
}
 800330a:	b003      	add	sp, #12
	return 0;
 800330c:	2000      	movs	r0, #0
}
 800330e:	bd00      	pop	{pc}
 8003310:	e000e400 	.word	0xe000e400
 8003314:	2000009c 	.word	0x2000009c
 8003318:	e000ed20 	.word	0xe000ed20

0800331c <xPortSysTickHandler>:
{
 800331c:	b510      	push	{r4, lr}
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800331e:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003320:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003324:	f3bf 8f4f 	dsb	sy
		isb
 8003328:	f3bf 8f6f 	isb	sy
		if( xTaskIncrementTick() != pdFALSE )
 800332c:	f000 fb00 	bl	8003930 <xTaskIncrementTick>
 8003330:	b118      	cbz	r0, 800333a <xPortSysTickHandler+0x1e>
			portNVIC_INT_CTRL_REG = portNVIC_PENDSVSET_BIT;
 8003332:	4904      	ldr	r1, [pc, #16]	; (8003344 <xPortSysTickHandler+0x28>)
 8003334:	f04f 5080 	mov.w	r0, #268435456	; 0x10000000
 8003338:	6008      	str	r0, [r1, #0]
	__asm
	{
		/* Set BASEPRI to 0 so no interrupts are masked.  This function is only
		used to lower the mask in an interrupt, so memory barriers are not 
		used. */
		msr basepri, #0
 800333a:	2000      	movs	r0, #0
 800333c:	f380 8811 	msr	BASEPRI, r0
}
 8003340:	bd10      	pop	{r4, pc}
 8003342:	0000      	.short	0x0000
 8003344:	e000ed04 	.word	0xe000ed04

08003348 <xQueueGenericCreateStatic>:
	{
 8003348:	b538      	push	{r3, r4, r5, lr}
 800334a:	9d04      	ldr	r5, [sp, #16]
		configASSERT( uxQueueLength > ( UBaseType_t ) 0 );
 800334c:	2800      	cmp	r0, #0
	{
 800334e:	d004      	beq.n	800335a <xQueueGenericCreateStatic+0x12>
		configASSERT( pxStaticQueue != NULL );
 8003350:	b15b      	cbz	r3, 800336a <xQueueGenericCreateStatic+0x22>
		configASSERT( !( ( pucQueueStorage != NULL ) && ( uxItemSize == 0 ) ) );
 8003352:	b102      	cbz	r2, 8003356 <xQueueGenericCreateStatic+0xe>
 8003354:	b189      	cbz	r1, 800337a <xQueueGenericCreateStatic+0x32>
		configASSERT( !( ( pucQueueStorage == NULL ) && ( uxItemSize != 0 ) ) );
 8003356:	b1c2      	cbz	r2, 800338a <xQueueGenericCreateStatic+0x42>
 8003358:	e020      	b.n	800339c <xQueueGenericCreateStatic+0x54>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800335a:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 800335c:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003360:	f3bf 8f4f 	dsb	sy
		isb
 8003364:	f3bf 8f6f 	isb	sy
		configASSERT( uxQueueLength > ( UBaseType_t ) 0 );
 8003368:	e7fe      	b.n	8003368 <xQueueGenericCreateStatic+0x20>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800336a:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 800336c:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003370:	f3bf 8f4f 	dsb	sy
		isb
 8003374:	f3bf 8f6f 	isb	sy
		configASSERT( pxStaticQueue != NULL );
 8003378:	e7fe      	b.n	8003378 <xQueueGenericCreateStatic+0x30>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800337a:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 800337c:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003380:	f3bf 8f4f 	dsb	sy
		isb
 8003384:	f3bf 8f6f 	isb	sy
		configASSERT( !( ( pucQueueStorage != NULL ) && ( uxItemSize == 0 ) ) );
 8003388:	e7fe      	b.n	8003388 <xQueueGenericCreateStatic+0x40>
		configASSERT( !( ( pucQueueStorage == NULL ) && ( uxItemSize != 0 ) ) );
 800338a:	b139      	cbz	r1, 800339c <xQueueGenericCreateStatic+0x54>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800338c:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 800338e:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003392:	f3bf 8f4f 	dsb	sy
		isb
 8003396:	f3bf 8f6f 	isb	sy
 800339a:	e7fe      	b.n	800339a <xQueueGenericCreateStatic+0x52>
			volatile size_t xSize = sizeof( StaticQueue_t );
 800339c:	f04f 0c50 	mov.w	ip, #80	; 0x50
 80033a0:	f8cd c000 	str.w	ip, [sp]
		pxNewQueue = ( Queue_t * ) pxStaticQueue; /*lint !e740 Unusual cast is ok as the structures are designed to have the same alignment, and the size is checked by an assert. */
 80033a4:	461c      	mov	r4, r3
				pxNewQueue->ucStaticallyAllocated = pdTRUE;
 80033a6:	2301      	movs	r3, #1
 80033a8:	f884 3046 	strb.w	r3, [r4, #70]	; 0x46
			prvInitialiseNewQueue( uxQueueLength, uxItemSize, pucQueueStorage, ucQueueType, pxNewQueue );
 80033ac:	462b      	mov	r3, r5
 80033ae:	9400      	str	r4, [sp, #0]
 80033b0:	f7ff f8c4 	bl	800253c <prvInitialiseNewQueue>
		return pxNewQueue;
 80033b4:	4620      	mov	r0, r4
	}
 80033b6:	bd38      	pop	{r3, r4, r5, pc}

080033b8 <xQueueGenericReset>:
{
 80033b8:	b570      	push	{r4, r5, r6, lr}
 80033ba:	4604      	mov	r4, r0
 80033bc:	460d      	mov	r5, r1
	configASSERT( pxQueue );
 80033be:	2c00      	cmp	r4, #0
{
 80033c0:	d025      	beq.n	800340e <xQueueGenericReset+0x56>
	taskENTER_CRITICAL();
 80033c2:	f7ff fccf 	bl	8002d64 <vPortEnterCritical>
		pxQueue->pcTail = pxQueue->pcHead + ( pxQueue->uxLength * pxQueue->uxItemSize );
 80033c6:	6c22      	ldr	r2, [r4, #64]	; 0x40
 80033c8:	6be1      	ldr	r1, [r4, #60]	; 0x3c
 80033ca:	6820      	ldr	r0, [r4, #0]
 80033cc:	fb01 0002 	mla	r0, r1, r2, r0
 80033d0:	6060      	str	r0, [r4, #4]
		pxQueue->uxMessagesWaiting = ( UBaseType_t ) 0U;
 80033d2:	2000      	movs	r0, #0
 80033d4:	63a0      	str	r0, [r4, #56]	; 0x38
		pxQueue->pcWriteTo = pxQueue->pcHead;
 80033d6:	6820      	ldr	r0, [r4, #0]
 80033d8:	60a0      	str	r0, [r4, #8]
		pxQueue->u.pcReadFrom = pxQueue->pcHead + ( ( pxQueue->uxLength - ( UBaseType_t ) 1U ) * pxQueue->uxItemSize );
 80033da:	6be1      	ldr	r1, [r4, #60]	; 0x3c
 80033dc:	6c22      	ldr	r2, [r4, #64]	; 0x40
 80033de:	6820      	ldr	r0, [r4, #0]
 80033e0:	1e49      	subs	r1, r1, #1
 80033e2:	fb01 0002 	mla	r0, r1, r2, r0
 80033e6:	60e0      	str	r0, [r4, #12]
		pxQueue->cRxLock = queueUNLOCKED;
 80033e8:	f04f 30ff 	mov.w	r0, #4294967295
 80033ec:	f884 0044 	strb.w	r0, [r4, #68]	; 0x44
		pxQueue->cTxLock = queueUNLOCKED;
 80033f0:	f884 0045 	strb.w	r0, [r4, #69]	; 0x45
		if( xNewQueue == pdFALSE )
 80033f4:	b19d      	cbz	r5, 800341e <xQueueGenericReset+0x66>
			vListInitialise( &( pxQueue->xTasksWaitingToSend ) );
 80033f6:	f104 0010 	add.w	r0, r4, #16
 80033fa:	f7ff fc7e 	bl	8002cfa <vListInitialise>
			vListInitialise( &( pxQueue->xTasksWaitingToReceive ) );
 80033fe:	f104 0024 	add.w	r0, r4, #36	; 0x24
 8003402:	f7ff fc7a 	bl	8002cfa <vListInitialise>
	taskEXIT_CRITICAL();
 8003406:	f7ff fccd 	bl	8002da4 <vPortExitCritical>
	return pdPASS;
 800340a:	2001      	movs	r0, #1
}
 800340c:	bd70      	pop	{r4, r5, r6, pc}
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800340e:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003410:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003414:	f3bf 8f4f 	dsb	sy
		isb
 8003418:	f3bf 8f6f 	isb	sy
	configASSERT( pxQueue );
 800341c:	e7fe      	b.n	800341c <xQueueGenericReset+0x64>
			if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
 800341e:	6920      	ldr	r0, [r4, #16]
 8003420:	2800      	cmp	r0, #0
 8003422:	d0f0      	beq.n	8003406 <xQueueGenericReset+0x4e>
				if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
 8003424:	f104 0010 	add.w	r0, r4, #16
 8003428:	f000 fb28 	bl	8003a7c <xTaskRemoveFromEventList>
 800342c:	2800      	cmp	r0, #0
 800342e:	d0ea      	beq.n	8003406 <xQueueGenericReset+0x4e>
					queueYIELD_IF_USING_PREEMPTION();
 8003430:	4904      	ldr	r1, [pc, #16]	; (8003444 <xQueueGenericReset+0x8c>)
 8003432:	f04f 5080 	mov.w	r0, #268435456	; 0x10000000
 8003436:	6008      	str	r0, [r1, #0]
 8003438:	f3bf 8f4f 	dsb	sy
 800343c:	f3bf 8f6f 	isb	sy
 8003440:	e7e1      	b.n	8003406 <xQueueGenericReset+0x4e>
 8003442:	0000      	.short	0x0000
 8003444:	e000ed04 	.word	0xe000ed04

08003448 <xQueueGenericSend>:
{
 8003448:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
 800344c:	b082      	sub	sp, #8
 800344e:	4604      	mov	r4, r0
 8003450:	468a      	mov	sl, r1
 8003452:	461f      	mov	r7, r3
BaseType_t xEntryTimeSet = pdFALSE, xYieldRequired;
 8003454:	2500      	movs	r5, #0
	configASSERT( pxQueue );
 8003456:	2c00      	cmp	r4, #0
{
 8003458:	d003      	beq.n	8003462 <xQueueGenericSend+0x1a>
	configASSERT( !( ( pvItemToQueue == NULL ) && ( pxQueue->uxItemSize != ( UBaseType_t ) 0U ) ) );
 800345a:	f1ba 0f00 	cmp.w	sl, #0
 800345e:	d008      	beq.n	8003472 <xQueueGenericSend+0x2a>
 8003460:	e011      	b.n	8003486 <xQueueGenericSend+0x3e>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8003462:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003464:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003468:	f3bf 8f4f 	dsb	sy
		isb
 800346c:	f3bf 8f6f 	isb	sy
	configASSERT( pxQueue );
 8003470:	e7fe      	b.n	8003470 <xQueueGenericSend+0x28>
	configASSERT( !( ( pvItemToQueue == NULL ) && ( pxQueue->uxItemSize != ( UBaseType_t ) 0U ) ) );
 8003472:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8003474:	b138      	cbz	r0, 8003486 <xQueueGenericSend+0x3e>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8003476:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003478:	f380 8811 	msr	BASEPRI, r0
		dsb
 800347c:	f3bf 8f4f 	dsb	sy
		isb
 8003480:	f3bf 8f6f 	isb	sy
 8003484:	e7fe      	b.n	8003484 <xQueueGenericSend+0x3c>
	configASSERT( !( ( xCopyPosition == queueOVERWRITE ) && ( pxQueue->uxLength != 1 ) ) );
 8003486:	2f02      	cmp	r7, #2
 8003488:	d10a      	bne.n	80034a0 <xQueueGenericSend+0x58>
 800348a:	6be0      	ldr	r0, [r4, #60]	; 0x3c
 800348c:	2801      	cmp	r0, #1
 800348e:	d007      	beq.n	80034a0 <xQueueGenericSend+0x58>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8003490:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003492:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003496:	f3bf 8f4f 	dsb	sy
		isb
 800349a:	f3bf 8f6f 	isb	sy
 800349e:	e7fe      	b.n	800349e <xQueueGenericSend+0x56>
		configASSERT( !( ( xTaskGetSchedulerState() == taskSCHEDULER_SUSPENDED ) && ( xTicksToWait != 0 ) ) );
 80034a0:	f000 fa32 	bl	8003908 <xTaskGetSchedulerState>
 80034a4:	b948      	cbnz	r0, 80034ba <xQueueGenericSend+0x72>
 80034a6:	9804      	ldr	r0, [sp, #16]
 80034a8:	b138      	cbz	r0, 80034ba <xQueueGenericSend+0x72>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 80034aa:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 80034ac:	f380 8811 	msr	BASEPRI, r0
		dsb
 80034b0:	f3bf 8f4f 	dsb	sy
		isb
 80034b4:	f3bf 8f6f 	isb	sy
 80034b8:	e7fe      	b.n	80034b8 <xQueueGenericSend+0x70>
	for( ;; )
 80034ba:	2600      	movs	r6, #0
							queueYIELD_IF_USING_PREEMPTION();
 80034bc:	f04f 5880 	mov.w	r8, #268435456	; 0x10000000
 80034c0:	f8df 90f0 	ldr.w	r9, [pc, #240]	; 80035b4 <xQueueGenericSend+0x16c>
		taskENTER_CRITICAL();
 80034c4:	f7ff fc4e 	bl	8002d64 <vPortEnterCritical>
			if( ( pxQueue->uxMessagesWaiting < pxQueue->uxLength ) || ( xCopyPosition == queueOVERWRITE ) )
 80034c8:	6ba0      	ldr	r0, [r4, #56]	; 0x38
 80034ca:	6be1      	ldr	r1, [r4, #60]	; 0x3c
 80034cc:	4288      	cmp	r0, r1
 80034ce:	d305      	bcc.n	80034dc <xQueueGenericSend+0x94>
 80034d0:	2f02      	cmp	r7, #2
 80034d2:	d003      	beq.n	80034dc <xQueueGenericSend+0x94>
				if( xTicksToWait == ( TickType_t ) 0 )
 80034d4:	9804      	ldr	r0, [sp, #16]
 80034d6:	b308      	cbz	r0, 800351c <xQueueGenericSend+0xd4>
				else if( xEntryTimeSet == pdFALSE )
 80034d8:	b335      	cbz	r5, 8003528 <xQueueGenericSend+0xe0>
 80034da:	e029      	b.n	8003530 <xQueueGenericSend+0xe8>
				xYieldRequired = prvCopyDataToQueue( pxQueue, pvItemToQueue, xCopyPosition );
 80034dc:	463a      	mov	r2, r7
 80034de:	4651      	mov	r1, sl
 80034e0:	4620      	mov	r0, r4
 80034e2:	f7fe ff83 	bl	80023ec <prvCopyDataToQueue>
					if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
 80034e6:	6a61      	ldr	r1, [r4, #36]	; 0x24
 80034e8:	b159      	cbz	r1, 8003502 <xQueueGenericSend+0xba>
						if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
 80034ea:	f104 0024 	add.w	r0, r4, #36	; 0x24
 80034ee:	f000 fac5 	bl	8003a7c <xTaskRemoveFromEventList>
 80034f2:	b168      	cbz	r0, 8003510 <xQueueGenericSend+0xc8>
							queueYIELD_IF_USING_PREEMPTION();
 80034f4:	f8c9 8000 	str.w	r8, [r9]
 80034f8:	f3bf 8f4f 	dsb	sy
 80034fc:	f3bf 8f6f 	isb	sy
 8003500:	e006      	b.n	8003510 <xQueueGenericSend+0xc8>
					else if( xYieldRequired != pdFALSE )
 8003502:	b128      	cbz	r0, 8003510 <xQueueGenericSend+0xc8>
						queueYIELD_IF_USING_PREEMPTION();
 8003504:	f8c9 8000 	str.w	r8, [r9]
 8003508:	f3bf 8f4f 	dsb	sy
 800350c:	f3bf 8f6f 	isb	sy
				taskEXIT_CRITICAL();
 8003510:	f7ff fc48 	bl	8002da4 <vPortExitCritical>
}
 8003514:	b006      	add	sp, #24
				return pdPASS;
 8003516:	2001      	movs	r0, #1
}
 8003518:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
					taskEXIT_CRITICAL();
 800351c:	f7ff fc42 	bl	8002da4 <vPortExitCritical>
}
 8003520:	b006      	add	sp, #24
					return errQUEUE_FULL;
 8003522:	2000      	movs	r0, #0
}
 8003524:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
					vTaskInternalSetTimeOutState( &xTimeOut );
 8003528:	4668      	mov	r0, sp
 800352a:	f7ff fdc1 	bl	80030b0 <vTaskInternalSetTimeOutState>
					xEntryTimeSet = pdTRUE;
 800352e:	2501      	movs	r5, #1
		taskEXIT_CRITICAL();
 8003530:	f7ff fc38 	bl	8002da4 <vPortExitCritical>
		vTaskSuspendAll();
 8003534:	f7ff fe4c 	bl	80031d0 <vTaskSuspendAll>
		prvLockQueue( pxQueue );
 8003538:	f7ff fc14 	bl	8002d64 <vPortEnterCritical>
 800353c:	f994 0044 	ldrsb.w	r0, [r4, #68]	; 0x44
 8003540:	f1b0 3fff 	cmp.w	r0, #4294967295
 8003544:	d101      	bne.n	800354a <xQueueGenericSend+0x102>
 8003546:	f884 6044 	strb.w	r6, [r4, #68]	; 0x44
 800354a:	f994 0045 	ldrsb.w	r0, [r4, #69]	; 0x45
 800354e:	f1b0 3fff 	cmp.w	r0, #4294967295
 8003552:	d101      	bne.n	8003558 <xQueueGenericSend+0x110>
 8003554:	f884 6045 	strb.w	r6, [r4, #69]	; 0x45
 8003558:	f7ff fc24 	bl	8002da4 <vPortExitCritical>
		if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdFALSE )
 800355c:	a904      	add	r1, sp, #16
 800355e:	4668      	mov	r0, sp
 8003560:	f000 f92c 	bl	80037bc <xTaskCheckForTimeOut>
 8003564:	b140      	cbz	r0, 8003578 <xQueueGenericSend+0x130>
			prvUnlockQueue( pxQueue );
 8003566:	4620      	mov	r0, r4
 8003568:	f7ff fa70 	bl	8002a4c <prvUnlockQueue>
			( void ) xTaskResumeAll();
 800356c:	f000 fac2 	bl	8003af4 <xTaskResumeAll>
}
 8003570:	b006      	add	sp, #24
			return errQUEUE_FULL;
 8003572:	2000      	movs	r0, #0
}
 8003574:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
			if( prvIsQueueFull( pxQueue ) != pdFALSE )
 8003578:	4620      	mov	r0, r4
 800357a:	f7ff f8c8 	bl	800270e <prvIsQueueFull>
 800357e:	b190      	cbz	r0, 80035a6 <xQueueGenericSend+0x15e>
				vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToSend ), xTicksToWait );
 8003580:	f104 0010 	add.w	r0, r4, #16
 8003584:	9904      	ldr	r1, [sp, #16]
 8003586:	f7ff fda1 	bl	80030cc <vTaskPlaceOnEventList>
				prvUnlockQueue( pxQueue );
 800358a:	4620      	mov	r0, r4
 800358c:	f7ff fa5e 	bl	8002a4c <prvUnlockQueue>
				if( xTaskResumeAll() == pdFALSE )
 8003590:	f000 fab0 	bl	8003af4 <xTaskResumeAll>
 8003594:	2800      	cmp	r0, #0
 8003596:	d195      	bne.n	80034c4 <xQueueGenericSend+0x7c>
					portYIELD_WITHIN_API();
 8003598:	f8c9 8000 	str.w	r8, [r9]
 800359c:	f3bf 8f4f 	dsb	sy
 80035a0:	f3bf 8f6f 	isb	sy
 80035a4:	e78e      	b.n	80034c4 <xQueueGenericSend+0x7c>
				prvUnlockQueue( pxQueue );
 80035a6:	4620      	mov	r0, r4
 80035a8:	f7ff fa50 	bl	8002a4c <prvUnlockQueue>
				( void ) xTaskResumeAll();
 80035ac:	f000 faa2 	bl	8003af4 <xTaskResumeAll>
 80035b0:	e788      	b.n	80034c4 <xQueueGenericSend+0x7c>
 80035b2:	0000      	.short	0x0000
 80035b4:	e000ed04 	.word	0xe000ed04

080035b8 <xQueueGenericSendFromISR>:
{
 80035b8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80035bc:	4604      	mov	r4, r0
 80035be:	4689      	mov	r9, r1
 80035c0:	4617      	mov	r7, r2
 80035c2:	461e      	mov	r6, r3
	configASSERT( pxQueue );
 80035c4:	2c00      	cmp	r4, #0
{
 80035c6:	d003      	beq.n	80035d0 <xQueueGenericSendFromISR+0x18>
	configASSERT( !( ( pvItemToQueue == NULL ) && ( pxQueue->uxItemSize != ( UBaseType_t ) 0U ) ) );
 80035c8:	f1b9 0f00 	cmp.w	r9, #0
 80035cc:	d008      	beq.n	80035e0 <xQueueGenericSendFromISR+0x28>
 80035ce:	e011      	b.n	80035f4 <xQueueGenericSendFromISR+0x3c>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 80035d0:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 80035d2:	f380 8811 	msr	BASEPRI, r0
		dsb
 80035d6:	f3bf 8f4f 	dsb	sy
		isb
 80035da:	f3bf 8f6f 	isb	sy
	configASSERT( pxQueue );
 80035de:	e7fe      	b.n	80035de <xQueueGenericSendFromISR+0x26>
	configASSERT( !( ( pvItemToQueue == NULL ) && ( pxQueue->uxItemSize != ( UBaseType_t ) 0U ) ) );
 80035e0:	6c20      	ldr	r0, [r4, #64]	; 0x40
 80035e2:	b138      	cbz	r0, 80035f4 <xQueueGenericSendFromISR+0x3c>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 80035e4:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 80035e6:	f380 8811 	msr	BASEPRI, r0
		dsb
 80035ea:	f3bf 8f4f 	dsb	sy
		isb
 80035ee:	f3bf 8f6f 	isb	sy
 80035f2:	e7fe      	b.n	80035f2 <xQueueGenericSendFromISR+0x3a>
	configASSERT( !( ( xCopyPosition == queueOVERWRITE ) && ( pxQueue->uxLength != 1 ) ) );
 80035f4:	2e02      	cmp	r6, #2
 80035f6:	d10a      	bne.n	800360e <xQueueGenericSendFromISR+0x56>
 80035f8:	6be0      	ldr	r0, [r4, #60]	; 0x3c
 80035fa:	2801      	cmp	r0, #1
 80035fc:	d007      	beq.n	800360e <xQueueGenericSendFromISR+0x56>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 80035fe:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003600:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003604:	f3bf 8f4f 	dsb	sy
		isb
 8003608:	f3bf 8f6f 	isb	sy
 800360c:	e7fe      	b.n	800360c <xQueueGenericSendFromISR+0x54>
	portASSERT_IF_INTERRUPT_PRIORITY_INVALID();
 800360e:	f7ff fc1f 	bl	8002e50 <vPortValidateInterruptPriority>
}
/*-----------------------------------------------------------*/

static portFORCE_INLINE uint32_t ulPortRaiseBASEPRI( void )
{
uint32_t ulReturn, ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8003612:	2050      	movs	r0, #80	; 0x50

	__asm
	{
		/* Set BASEPRI to the max syscall priority to effect a critical
		section. */
		mrs ulReturn, basepri
 8003614:	f3ef 8811 	mrs	r8, BASEPRI
		msr basepri, ulNewBASEPRI
 8003618:	f380 8811 	msr	BASEPRI, r0
		dsb
 800361c:	f3bf 8f4f 	dsb	sy
		isb
 8003620:	f3bf 8f6f 	isb	sy
		if( ( pxQueue->uxMessagesWaiting < pxQueue->uxLength ) || ( xCopyPosition == queueOVERWRITE ) )
 8003624:	6ba0      	ldr	r0, [r4, #56]	; 0x38
 8003626:	6be1      	ldr	r1, [r4, #60]	; 0x3c
 8003628:	4288      	cmp	r0, r1
 800362a:	d306      	bcc.n	800363a <xQueueGenericSendFromISR+0x82>
 800362c:	2e02      	cmp	r6, #2
 800362e:	d004      	beq.n	800363a <xQueueGenericSendFromISR+0x82>
			xReturn = errQUEUE_FULL;
 8003630:	2000      	movs	r0, #0
		msr basepri, ulBASEPRI
 8003632:	f388 8811 	msr	BASEPRI, r8
}
 8003636:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
			const int8_t cTxLock = pxQueue->cTxLock;
 800363a:	f994 5045 	ldrsb.w	r5, [r4, #69]	; 0x45
			( void ) prvCopyDataToQueue( pxQueue, pvItemToQueue, xCopyPosition );
 800363e:	4632      	mov	r2, r6
 8003640:	4649      	mov	r1, r9
 8003642:	4620      	mov	r0, r4
 8003644:	f7fe fed2 	bl	80023ec <prvCopyDataToQueue>
			if( cTxLock == queueUNLOCKED )
 8003648:	f1b5 3fff 	cmp.w	r5, #4294967295
 800364c:	d004      	beq.n	8003658 <xQueueGenericSendFromISR+0xa0>
				pxQueue->cTxLock = ( int8_t ) ( cTxLock + 1 );
 800364e:	1c68      	adds	r0, r5, #1
 8003650:	f884 0045 	strb.w	r0, [r4, #69]	; 0x45
			xReturn = pdPASS;
 8003654:	2001      	movs	r0, #1
		}
 8003656:	e7ec      	b.n	8003632 <xQueueGenericSendFromISR+0x7a>
					if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
 8003658:	6a60      	ldr	r0, [r4, #36]	; 0x24
 800365a:	2800      	cmp	r0, #0
 800365c:	d0fa      	beq.n	8003654 <xQueueGenericSendFromISR+0x9c>
						if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
 800365e:	f104 0024 	add.w	r0, r4, #36	; 0x24
 8003662:	f000 fa0b 	bl	8003a7c <xTaskRemoveFromEventList>
 8003666:	2800      	cmp	r0, #0
 8003668:	d0f4      	beq.n	8003654 <xQueueGenericSendFromISR+0x9c>
							if( pxHigherPriorityTaskWoken != NULL )
 800366a:	2f00      	cmp	r7, #0
 800366c:	d0f2      	beq.n	8003654 <xQueueGenericSendFromISR+0x9c>
								*pxHigherPriorityTaskWoken = pdTRUE;
 800366e:	2001      	movs	r0, #1
 8003670:	6038      	str	r0, [r7, #0]
 8003672:	e7ef      	b.n	8003654 <xQueueGenericSendFromISR+0x9c>

08003674 <xQueueReceive>:
{
 8003674:	e92d 47f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, lr}
 8003678:	b083      	sub	sp, #12
 800367a:	4604      	mov	r4, r0
 800367c:	468a      	mov	sl, r1
BaseType_t xEntryTimeSet = pdFALSE;
 800367e:	2500      	movs	r5, #0
	configASSERT( ( pxQueue ) );
 8003680:	2c00      	cmp	r4, #0
{
 8003682:	d003      	beq.n	800368c <xQueueReceive+0x18>
	configASSERT( !( ( ( pvBuffer ) == NULL ) && ( ( pxQueue )->uxItemSize != ( UBaseType_t ) 0U ) ) );
 8003684:	f1ba 0f00 	cmp.w	sl, #0
 8003688:	d008      	beq.n	800369c <xQueueReceive+0x28>
 800368a:	e011      	b.n	80036b0 <xQueueReceive+0x3c>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800368c:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 800368e:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003692:	f3bf 8f4f 	dsb	sy
		isb
 8003696:	f3bf 8f6f 	isb	sy
	configASSERT( ( pxQueue ) );
 800369a:	e7fe      	b.n	800369a <xQueueReceive+0x26>
	configASSERT( !( ( ( pvBuffer ) == NULL ) && ( ( pxQueue )->uxItemSize != ( UBaseType_t ) 0U ) ) );
 800369c:	6c20      	ldr	r0, [r4, #64]	; 0x40
 800369e:	b138      	cbz	r0, 80036b0 <xQueueReceive+0x3c>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 80036a0:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 80036a2:	f380 8811 	msr	BASEPRI, r0
		dsb
 80036a6:	f3bf 8f4f 	dsb	sy
		isb
 80036aa:	f3bf 8f6f 	isb	sy
 80036ae:	e7fe      	b.n	80036ae <xQueueReceive+0x3a>
		configASSERT( !( ( xTaskGetSchedulerState() == taskSCHEDULER_SUSPENDED ) && ( xTicksToWait != 0 ) ) );
 80036b0:	f000 f92a 	bl	8003908 <xTaskGetSchedulerState>
 80036b4:	b948      	cbnz	r0, 80036ca <xQueueReceive+0x56>
 80036b6:	9805      	ldr	r0, [sp, #20]
 80036b8:	b138      	cbz	r0, 80036ca <xQueueReceive+0x56>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 80036ba:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 80036bc:	f380 8811 	msr	BASEPRI, r0
		dsb
 80036c0:	f3bf 8f4f 	dsb	sy
		isb
 80036c4:	f3bf 8f6f 	isb	sy
 80036c8:	e7fe      	b.n	80036c8 <xQueueReceive+0x54>
	for( ;; )
 80036ca:	2700      	movs	r7, #0
						queueYIELD_IF_USING_PREEMPTION();
 80036cc:	f04f 5880 	mov.w	r8, #268435456	; 0x10000000
 80036d0:	f8df 90e4 	ldr.w	r9, [pc, #228]	; 80037b8 <xQueueReceive+0x144>
		taskENTER_CRITICAL();
 80036d4:	f7ff fb46 	bl	8002d64 <vPortEnterCritical>
			const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;
 80036d8:	6ba6      	ldr	r6, [r4, #56]	; 0x38
			if( uxMessagesWaiting > ( UBaseType_t ) 0 )
 80036da:	b1c6      	cbz	r6, 800370e <xQueueReceive+0x9a>
				prvCopyDataFromQueue( pxQueue, pvBuffer );
 80036dc:	4651      	mov	r1, sl
 80036de:	4620      	mov	r0, r4
 80036e0:	f7fe fe72 	bl	80023c8 <prvCopyDataFromQueue>
				pxQueue->uxMessagesWaiting = uxMessagesWaiting - ( UBaseType_t ) 1;
 80036e4:	1e70      	subs	r0, r6, #1
 80036e6:	63a0      	str	r0, [r4, #56]	; 0x38
				if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
 80036e8:	6920      	ldr	r0, [r4, #16]
 80036ea:	b150      	cbz	r0, 8003702 <xQueueReceive+0x8e>
					if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
 80036ec:	f104 0010 	add.w	r0, r4, #16
 80036f0:	f000 f9c4 	bl	8003a7c <xTaskRemoveFromEventList>
 80036f4:	b128      	cbz	r0, 8003702 <xQueueReceive+0x8e>
						queueYIELD_IF_USING_PREEMPTION();
 80036f6:	f8c9 8000 	str.w	r8, [r9]
 80036fa:	f3bf 8f4f 	dsb	sy
 80036fe:	f3bf 8f6f 	isb	sy
				taskEXIT_CRITICAL();
 8003702:	f7ff fb4f 	bl	8002da4 <vPortExitCritical>
}
 8003706:	b006      	add	sp, #24
				return pdPASS;
 8003708:	2001      	movs	r0, #1
}
 800370a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
				if( xTicksToWait == ( TickType_t ) 0 )
 800370e:	9805      	ldr	r0, [sp, #20]
 8003710:	b108      	cbz	r0, 8003716 <xQueueReceive+0xa2>
				else if( xEntryTimeSet == pdFALSE )
 8003712:	b135      	cbz	r5, 8003722 <xQueueReceive+0xae>
 8003714:	e009      	b.n	800372a <xQueueReceive+0xb6>
					taskEXIT_CRITICAL();
 8003716:	f7ff fb45 	bl	8002da4 <vPortExitCritical>
}
 800371a:	b006      	add	sp, #24
					return errQUEUE_EMPTY;
 800371c:	2000      	movs	r0, #0
}
 800371e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
					vTaskInternalSetTimeOutState( &xTimeOut );
 8003722:	4668      	mov	r0, sp
 8003724:	f7ff fcc4 	bl	80030b0 <vTaskInternalSetTimeOutState>
					xEntryTimeSet = pdTRUE;
 8003728:	2501      	movs	r5, #1
		taskEXIT_CRITICAL();
 800372a:	f7ff fb3b 	bl	8002da4 <vPortExitCritical>
		vTaskSuspendAll();
 800372e:	f7ff fd4f 	bl	80031d0 <vTaskSuspendAll>
		prvLockQueue( pxQueue );
 8003732:	f7ff fb17 	bl	8002d64 <vPortEnterCritical>
 8003736:	f994 0044 	ldrsb.w	r0, [r4, #68]	; 0x44
 800373a:	f1b0 3fff 	cmp.w	r0, #4294967295
 800373e:	d101      	bne.n	8003744 <xQueueReceive+0xd0>
 8003740:	f884 7044 	strb.w	r7, [r4, #68]	; 0x44
 8003744:	f994 0045 	ldrsb.w	r0, [r4, #69]	; 0x45
 8003748:	f1b0 3fff 	cmp.w	r0, #4294967295
 800374c:	d101      	bne.n	8003752 <xQueueReceive+0xde>
 800374e:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
 8003752:	f7ff fb27 	bl	8002da4 <vPortExitCritical>
		if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdFALSE )
 8003756:	a905      	add	r1, sp, #20
 8003758:	4668      	mov	r0, sp
 800375a:	f000 f82f 	bl	80037bc <xTaskCheckForTimeOut>
 800375e:	b168      	cbz	r0, 800377c <xQueueReceive+0x108>
			prvUnlockQueue( pxQueue );
 8003760:	4620      	mov	r0, r4
 8003762:	f7ff f973 	bl	8002a4c <prvUnlockQueue>
			( void ) xTaskResumeAll();
 8003766:	f000 f9c5 	bl	8003af4 <xTaskResumeAll>
			if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
 800376a:	4620      	mov	r0, r4
 800376c:	f7fe ffc2 	bl	80026f4 <prvIsQueueEmpty>
 8003770:	2800      	cmp	r0, #0
 8003772:	d0af      	beq.n	80036d4 <xQueueReceive+0x60>
}
 8003774:	b006      	add	sp, #24
				return errQUEUE_EMPTY;
 8003776:	2000      	movs	r0, #0
}
 8003778:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
			if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
 800377c:	4620      	mov	r0, r4
 800377e:	f7fe ffb9 	bl	80026f4 <prvIsQueueEmpty>
 8003782:	b190      	cbz	r0, 80037aa <xQueueReceive+0x136>
				vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait );
 8003784:	f104 0024 	add.w	r0, r4, #36	; 0x24
 8003788:	9905      	ldr	r1, [sp, #20]
 800378a:	f7ff fc9f 	bl	80030cc <vTaskPlaceOnEventList>
				prvUnlockQueue( pxQueue );
 800378e:	4620      	mov	r0, r4
 8003790:	f7ff f95c 	bl	8002a4c <prvUnlockQueue>
				if( xTaskResumeAll() == pdFALSE )
 8003794:	f000 f9ae 	bl	8003af4 <xTaskResumeAll>
 8003798:	2800      	cmp	r0, #0
 800379a:	d19b      	bne.n	80036d4 <xQueueReceive+0x60>
					portYIELD_WITHIN_API();
 800379c:	f8c9 8000 	str.w	r8, [r9]
 80037a0:	f3bf 8f4f 	dsb	sy
 80037a4:	f3bf 8f6f 	isb	sy
 80037a8:	e794      	b.n	80036d4 <xQueueReceive+0x60>
				prvUnlockQueue( pxQueue );
 80037aa:	4620      	mov	r0, r4
 80037ac:	f7ff f94e 	bl	8002a4c <prvUnlockQueue>
				( void ) xTaskResumeAll();
 80037b0:	f000 f9a0 	bl	8003af4 <xTaskResumeAll>
 80037b4:	e78e      	b.n	80036d4 <xQueueReceive+0x60>
 80037b6:	0000      	.short	0x0000
 80037b8:	e000ed04 	.word	0xe000ed04

080037bc <xTaskCheckForTimeOut>:
{
 80037bc:	b570      	push	{r4, r5, r6, lr}
 80037be:	4605      	mov	r5, r0
 80037c0:	460c      	mov	r4, r1
	configASSERT( pxTimeOut );
 80037c2:	2d00      	cmp	r5, #0
{
 80037c4:	d015      	beq.n	80037f2 <xTaskCheckForTimeOut+0x36>
	configASSERT( pxTicksToWait );
 80037c6:	b1e4      	cbz	r4, 8003802 <xTaskCheckForTimeOut+0x46>
	taskENTER_CRITICAL();
 80037c8:	f7ff facc 	bl	8002d64 <vPortEnterCritical>
		const TickType_t xConstTickCount = xTickCount;
 80037cc:	f8df c068 	ldr.w	ip, [pc, #104]	; 8003838 <xTaskCheckForTimeOut+0x7c>
 80037d0:	f8dc 0014 	ldr.w	r0, [ip, #20]
		const TickType_t xElapsedTime = xConstTickCount - pxTimeOut->xTimeOnEntering;
 80037d4:	686b      	ldr	r3, [r5, #4]
 80037d6:	1ac1      	subs	r1, r0, r3
			if( *pxTicksToWait == portMAX_DELAY )
 80037d8:	6822      	ldr	r2, [r4, #0]
 80037da:	f1b2 3fff 	cmp.w	r2, #4294967295
 80037de:	d018      	beq.n	8003812 <xTaskCheckForTimeOut+0x56>
		if( ( xNumOfOverflows != pxTimeOut->xOverflowCount ) && ( xConstTickCount >= pxTimeOut->xTimeOnEntering ) ) /*lint !e525 Indentation preferred as is to make code within pre-processor directives clearer. */
 80037e0:	682e      	ldr	r6, [r5, #0]
 80037e2:	f8dc c028 	ldr.w	ip, [ip, #40]	; 0x28
 80037e6:	4566      	cmp	r6, ip
 80037e8:	d015      	beq.n	8003816 <xTaskCheckForTimeOut+0x5a>
 80037ea:	4283      	cmp	r3, r0
 80037ec:	d813      	bhi.n	8003816 <xTaskCheckForTimeOut+0x5a>
			xReturn = pdTRUE;
 80037ee:	2401      	movs	r4, #1
 80037f0:	e01d      	b.n	800382e <xTaskCheckForTimeOut+0x72>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 80037f2:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 80037f4:	f380 8811 	msr	BASEPRI, r0
		dsb
 80037f8:	f3bf 8f4f 	dsb	sy
		isb
 80037fc:	f3bf 8f6f 	isb	sy
	configASSERT( pxTimeOut );
 8003800:	e7fe      	b.n	8003800 <xTaskCheckForTimeOut+0x44>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8003802:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003804:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003808:	f3bf 8f4f 	dsb	sy
		isb
 800380c:	f3bf 8f6f 	isb	sy
	configASSERT( pxTicksToWait );
 8003810:	e7fe      	b.n	8003810 <xTaskCheckForTimeOut+0x54>
				xReturn = pdFALSE;
 8003812:	2400      	movs	r4, #0
 8003814:	e00b      	b.n	800382e <xTaskCheckForTimeOut+0x72>
		else if( xElapsedTime < *pxTicksToWait ) /*lint !e961 Explicit casting is only redundant with some compilers, whereas others require it to prevent integer conversion errors. */
 8003816:	428a      	cmp	r2, r1
 8003818:	d906      	bls.n	8003828 <xTaskCheckForTimeOut+0x6c>
			*pxTicksToWait -= xElapsedTime;
 800381a:	1a50      	subs	r0, r2, r1
 800381c:	6020      	str	r0, [r4, #0]
			vTaskInternalSetTimeOutState( pxTimeOut );
 800381e:	4628      	mov	r0, r5
 8003820:	f7ff fc46 	bl	80030b0 <vTaskInternalSetTimeOutState>
			xReturn = pdFALSE;
 8003824:	2400      	movs	r4, #0
 8003826:	e002      	b.n	800382e <xTaskCheckForTimeOut+0x72>
			*pxTicksToWait = 0;
 8003828:	2000      	movs	r0, #0
 800382a:	6020      	str	r0, [r4, #0]
			xReturn = pdTRUE;
 800382c:	2401      	movs	r4, #1
	taskEXIT_CRITICAL();
 800382e:	f7ff fab9 	bl	8002da4 <vPortExitCritical>
	return xReturn;
 8003832:	4620      	mov	r0, r4
}
 8003834:	bd70      	pop	{r4, r5, r6, pc}
 8003836:	0000      	.short	0x0000
 8003838:	20000028 	.word	0x20000028

0800383c <xTaskCreate>:
	{
 800383c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003840:	b085      	sub	sp, #20
 8003842:	4681      	mov	r9, r0
 8003844:	9f0f      	ldr	r7, [sp, #60]	; 0x3c
 8003846:	9e0e      	ldr	r6, [sp, #56]	; 0x38
 8003848:	468a      	mov	sl, r1
 800384a:	4690      	mov	r8, r2
 800384c:	469b      	mov	fp, r3
			pxStack = ( StackType_t * ) pvPortMalloc( ( ( ( size_t ) usStackDepth ) * sizeof( StackType_t ) ) ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
 800384e:	ea4f 0088 	mov.w	r0, r8, lsl #2
 8003852:	f7ff f943 	bl	8002adc <pvPortMalloc>
 8003856:	4605      	mov	r5, r0
			if( pxStack != NULL )
 8003858:	0028      	movs	r0, r5
 800385a:	d00a      	beq.n	8003872 <xTaskCreate+0x36>
				pxNewTCB = ( TCB_t * ) pvPortMalloc( sizeof( TCB_t ) ); /*lint !e961 MISRA exception as the casts are only redundant for some paths. */
 800385c:	2060      	movs	r0, #96	; 0x60
 800385e:	f7ff f93d 	bl	8002adc <pvPortMalloc>
 8003862:	4604      	mov	r4, r0
				if( pxNewTCB != NULL )
 8003864:	b10c      	cbz	r4, 800386a <xTaskCreate+0x2e>
					pxNewTCB->pxStack = pxStack;
 8003866:	6325      	str	r5, [r4, #48]	; 0x30
 8003868:	e004      	b.n	8003874 <xTaskCreate+0x38>
					vPortFree( pxStack );
 800386a:	4628      	mov	r0, r5
 800386c:	f7ff fab0 	bl	8002dd0 <vPortFree>
 8003870:	e000      	b.n	8003874 <xTaskCreate+0x38>
				pxNewTCB = NULL;
 8003872:	2400      	movs	r4, #0
		if( pxNewTCB != NULL )
 8003874:	b19c      	cbz	r4, 800389e <xTaskCreate+0x62>
				pxNewTCB->ucStaticallyAllocated = tskDYNAMICALLY_ALLOCATED_STACK_AND_TCB;
 8003876:	2000      	movs	r0, #0
 8003878:	f884 005d 	strb.w	r0, [r4, #93]	; 0x5d
			prvInitialiseNewTask( pxTaskCode, pcName, ( uint32_t ) usStackDepth, pvParameters, uxPriority, pxCreatedTask, pxNewTCB, NULL );
 800387c:	9003      	str	r0, [sp, #12]
 800387e:	465b      	mov	r3, fp
 8003880:	4642      	mov	r2, r8
 8003882:	4651      	mov	r1, sl
 8003884:	9701      	str	r7, [sp, #4]
 8003886:	9600      	str	r6, [sp, #0]
 8003888:	9402      	str	r4, [sp, #8]
 800388a:	4648      	mov	r0, r9
 800388c:	f7fe fe67 	bl	800255e <prvInitialiseNewTask>
			prvAddNewTaskToReadyList( pxNewTCB );
 8003890:	4620      	mov	r0, r4
 8003892:	f7fe fd07 	bl	80022a4 <prvAddNewTaskToReadyList>
	}
 8003896:	b005      	add	sp, #20
			xReturn = pdPASS;
 8003898:	2001      	movs	r0, #1
	}
 800389a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800389e:	b005      	add	sp, #20
			xReturn = errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY;
 80038a0:	f04f 30ff 	mov.w	r0, #4294967295
	}
 80038a4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

080038a8 <xTaskCreateStatic>:
	{
 80038a8:	b570      	push	{r4, r5, r6, lr}
 80038aa:	b086      	sub	sp, #24
 80038ac:	4606      	mov	r6, r0
 80038ae:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
 80038b2:	9c0c      	ldr	r4, [sp, #48]	; 0x30
 80038b4:	980b      	ldr	r0, [sp, #44]	; 0x2c
		configASSERT( puxStackBuffer != NULL );
 80038b6:	2800      	cmp	r0, #0
	{
 80038b8:	d016      	beq.n	80038e8 <xTaskCreateStatic+0x40>
		configASSERT( pxTaskBuffer != NULL );
 80038ba:	b1ec      	cbz	r4, 80038f8 <xTaskCreateStatic+0x50>
			volatile size_t xSize = sizeof( StaticTask_t );
 80038bc:	2560      	movs	r5, #96	; 0x60
 80038be:	9504      	str	r5, [sp, #16]
			pxNewTCB->pxStack = ( StackType_t * ) puxStackBuffer;
 80038c0:	6320      	str	r0, [r4, #48]	; 0x30
				pxNewTCB->ucStaticallyAllocated = tskSTATICALLY_ALLOCATED_STACK_AND_TCB;
 80038c2:	2002      	movs	r0, #2
 80038c4:	f884 005d 	strb.w	r0, [r4, #93]	; 0x5d
			prvInitialiseNewTask( pxTaskCode, pcName, ulStackDepth, pvParameters, uxPriority, &xReturn, pxNewTCB, NULL );
 80038c8:	2000      	movs	r0, #0
 80038ca:	ad05      	add	r5, sp, #20
 80038cc:	9003      	str	r0, [sp, #12]
 80038ce:	f8cd c000 	str.w	ip, [sp]
 80038d2:	9501      	str	r5, [sp, #4]
 80038d4:	9402      	str	r4, [sp, #8]
 80038d6:	4630      	mov	r0, r6
 80038d8:	f7fe fe41 	bl	800255e <prvInitialiseNewTask>
			prvAddNewTaskToReadyList( pxNewTCB );
 80038dc:	4620      	mov	r0, r4
 80038de:	f7fe fce1 	bl	80022a4 <prvAddNewTaskToReadyList>
			configASSERT( xSize == sizeof( TCB_t ) );
 80038e2:	9805      	ldr	r0, [sp, #20]
	}
 80038e4:	b006      	add	sp, #24
 80038e6:	bd70      	pop	{r4, r5, r6, pc}
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 80038e8:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 80038ea:	f380 8811 	msr	BASEPRI, r0
		dsb
 80038ee:	f3bf 8f4f 	dsb	sy
		isb
 80038f2:	f3bf 8f6f 	isb	sy
		configASSERT( puxStackBuffer != NULL );
 80038f6:	e7fe      	b.n	80038f6 <xTaskCreateStatic+0x4e>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 80038f8:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 80038fa:	f380 8811 	msr	BASEPRI, r0
		dsb
 80038fe:	f3bf 8f4f 	dsb	sy
		isb
 8003902:	f3bf 8f6f 	isb	sy
		configASSERT( pxTaskBuffer != NULL );
 8003906:	e7fe      	b.n	8003906 <xTaskCreateStatic+0x5e>

08003908 <xTaskGetSchedulerState>:
		if( xSchedulerRunning == pdFALSE )
 8003908:	4805      	ldr	r0, [pc, #20]	; (8003920 <xTaskGetSchedulerState+0x18>)
 800390a:	69c1      	ldr	r1, [r0, #28]
 800390c:	2900      	cmp	r1, #0
	{
 800390e:	d003      	beq.n	8003918 <xTaskGetSchedulerState+0x10>
			if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
 8003910:	6b80      	ldr	r0, [r0, #56]	; 0x38
 8003912:	b118      	cbz	r0, 800391c <xTaskGetSchedulerState+0x14>
				xReturn = taskSCHEDULER_SUSPENDED;
 8003914:	2000      	movs	r0, #0
	}
 8003916:	4770      	bx	lr
			xReturn = taskSCHEDULER_NOT_STARTED;
 8003918:	2001      	movs	r0, #1
	}
 800391a:	4770      	bx	lr
				xReturn = taskSCHEDULER_RUNNING;
 800391c:	2002      	movs	r0, #2
	}
 800391e:	4770      	bx	lr
 8003920:	20000028 	.word	0x20000028

08003924 <xTaskGetTickCount>:
		xTicks = xTickCount;
 8003924:	4801      	ldr	r0, [pc, #4]	; (800392c <xTaskGetTickCount+0x8>)
 8003926:	6940      	ldr	r0, [r0, #20]
}
 8003928:	4770      	bx	lr
 800392a:	0000      	.short	0x0000
 800392c:	20000028 	.word	0x20000028

08003930 <xTaskIncrementTick>:
{
 8003930:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
BaseType_t xSwitchRequired = pdFALSE;
 8003934:	2600      	movs	r6, #0
	if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
 8003936:	4f2f      	ldr	r7, [pc, #188]	; (80039f4 <xTaskIncrementTick+0xc4>)
 8003938:	6bb8      	ldr	r0, [r7, #56]	; 0x38
 800393a:	2800      	cmp	r0, #0
{
 800393c:	d008      	beq.n	8003950 <xTaskIncrementTick+0x20>
		++uxPendedTicks;
 800393e:	6a38      	ldr	r0, [r7, #32]
 8003940:	1c40      	adds	r0, r0, #1
 8003942:	6238      	str	r0, [r7, #32]
		if( xYieldPending != pdFALSE )
 8003944:	6a78      	ldr	r0, [r7, #36]	; 0x24
 8003946:	b100      	cbz	r0, 800394a <xTaskIncrementTick+0x1a>
			xSwitchRequired = pdTRUE;
 8003948:	2601      	movs	r6, #1
	return xSwitchRequired;
 800394a:	4630      	mov	r0, r6
}
 800394c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
		const TickType_t xConstTickCount = xTickCount + ( TickType_t ) 1;
 8003950:	6978      	ldr	r0, [r7, #20]
 8003952:	1c45      	adds	r5, r0, #1
		xTickCount = xConstTickCount;
 8003954:	617d      	str	r5, [r7, #20]
		if( xConstTickCount == ( TickType_t ) 0U ) /*lint !e774 'if' does not always evaluate to false as it is looking for an overflow. */
 8003956:	b99d      	cbnz	r5, 8003980 <xTaskIncrementTick+0x50>
			taskSWITCH_DELAYED_LISTS();
 8003958:	6878      	ldr	r0, [r7, #4]
 800395a:	6800      	ldr	r0, [r0, #0]
 800395c:	b138      	cbz	r0, 800396e <xTaskIncrementTick+0x3e>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 800395e:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003960:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003964:	f3bf 8f4f 	dsb	sy
		isb
 8003968:	f3bf 8f6f 	isb	sy
 800396c:	e7fe      	b.n	800396c <xTaskIncrementTick+0x3c>
 800396e:	6878      	ldr	r0, [r7, #4]
 8003970:	68b9      	ldr	r1, [r7, #8]
 8003972:	6079      	str	r1, [r7, #4]
 8003974:	60b8      	str	r0, [r7, #8]
 8003976:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 8003978:	1c40      	adds	r0, r0, #1
 800397a:	62b8      	str	r0, [r7, #40]	; 0x28
 800397c:	f7fe ffd6 	bl	800292c <prvResetNextTaskUnblockTime>
		if( xConstTickCount >= xNextTaskUnblockTime )
 8003980:	6b38      	ldr	r0, [r7, #48]	; 0x30
					prvAddTaskToReadyList( pxTCB );
 8003982:	f8df 8074 	ldr.w	r8, [pc, #116]	; 80039f8 <xTaskIncrementTick+0xc8>
		if( xConstTickCount >= xNextTaskUnblockTime )
 8003986:	4285      	cmp	r5, r0
 8003988:	d30d      	bcc.n	80039a6 <xTaskIncrementTick+0x76>
				if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
 800398a:	6878      	ldr	r0, [r7, #4]
 800398c:	6800      	ldr	r0, [r0, #0]
 800398e:	b138      	cbz	r0, 80039a0 <xTaskIncrementTick+0x70>
					pxTCB = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxDelayedTaskList );
 8003990:	6878      	ldr	r0, [r7, #4]
 8003992:	68c0      	ldr	r0, [r0, #12]
 8003994:	68c4      	ldr	r4, [r0, #12]
					xItemValue = listGET_LIST_ITEM_VALUE( &( pxTCB->xStateListItem ) );
 8003996:	6860      	ldr	r0, [r4, #4]
					if( xConstTickCount < xItemValue )
 8003998:	4285      	cmp	r5, r0
 800399a:	d20e      	bcs.n	80039ba <xTaskIncrementTick+0x8a>
						xNextTaskUnblockTime = xItemValue;
 800399c:	6338      	str	r0, [r7, #48]	; 0x30
						break;
 800399e:	e002      	b.n	80039a6 <xTaskIncrementTick+0x76>
					xNextTaskUnblockTime = portMAX_DELAY; /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
 80039a0:	f04f 30ff 	mov.w	r0, #4294967295
 80039a4:	6338      	str	r0, [r7, #48]	; 0x30
			if( listCURRENT_LIST_LENGTH( &( pxReadyTasksLists[ pxCurrentTCB->uxPriority ] ) ) > ( UBaseType_t ) 1 )
 80039a6:	6838      	ldr	r0, [r7, #0]
 80039a8:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
 80039aa:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 80039ae:	f858 0020 	ldr.w	r0, [r8, r0, lsl #2]
 80039b2:	2801      	cmp	r0, #1
 80039b4:	d9c6      	bls.n	8003944 <xTaskIncrementTick+0x14>
				xSwitchRequired = pdTRUE;
 80039b6:	2601      	movs	r6, #1
 80039b8:	e7c4      	b.n	8003944 <xTaskIncrementTick+0x14>
					( void ) uxListRemove( &( pxTCB->xStateListItem ) );
 80039ba:	1d20      	adds	r0, r4, #4
 80039bc:	f7ff f91a 	bl	8002bf4 <uxListRemove>
					if( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) != NULL )
 80039c0:	6aa0      	ldr	r0, [r4, #40]	; 0x28
 80039c2:	b118      	cbz	r0, 80039cc <xTaskIncrementTick+0x9c>
						( void ) uxListRemove( &( pxTCB->xEventListItem ) );
 80039c4:	f104 0018 	add.w	r0, r4, #24
 80039c8:	f7ff f914 	bl	8002bf4 <uxListRemove>
					prvAddTaskToReadyList( pxTCB );
 80039cc:	6ae1      	ldr	r1, [r4, #44]	; 0x2c
 80039ce:	69b8      	ldr	r0, [r7, #24]
 80039d0:	4281      	cmp	r1, r0
 80039d2:	d900      	bls.n	80039d6 <xTaskIncrementTick+0xa6>
 80039d4:	61b9      	str	r1, [r7, #24]
 80039d6:	eb01 0081 	add.w	r0, r1, r1, lsl #2
 80039da:	eb08 0080 	add.w	r0, r8, r0, lsl #2
 80039de:	1d21      	adds	r1, r4, #4
 80039e0:	f7ff f9b4 	bl	8002d4c <vListInsertEnd>
						if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
 80039e4:	6ae0      	ldr	r0, [r4, #44]	; 0x2c
 80039e6:	6839      	ldr	r1, [r7, #0]
 80039e8:	6ac9      	ldr	r1, [r1, #44]	; 0x2c
 80039ea:	4288      	cmp	r0, r1
 80039ec:	d3cd      	bcc.n	800398a <xTaskIncrementTick+0x5a>
							xSwitchRequired = pdTRUE;
 80039ee:	2601      	movs	r6, #1
 80039f0:	e7cb      	b.n	800398a <xTaskIncrementTick+0x5a>
 80039f2:	0000      	.short	0x0000
 80039f4:	20000028 	.word	0x20000028
 80039f8:	2000060c 	.word	0x2000060c

080039fc <xTaskPriorityDisinherit>:
	{
 80039fc:	b570      	push	{r4, r5, r6, lr}
	TCB_t * const pxTCB = ( TCB_t * ) pxMutexHolder;
 80039fe:	4604      	mov	r4, r0
	BaseType_t xReturn = pdFALSE;
 8003a00:	2100      	movs	r1, #0
		if( pxMutexHolder != NULL )
 8003a02:	2800      	cmp	r0, #0
	{
 8003a04:	d033      	beq.n	8003a6e <xTaskPriorityDisinherit+0x72>
			configASSERT( pxTCB == pxCurrentTCB );
 8003a06:	4d1b      	ldr	r5, [pc, #108]	; (8003a74 <xTaskPriorityDisinherit+0x78>)
 8003a08:	6828      	ldr	r0, [r5, #0]
 8003a0a:	4284      	cmp	r4, r0
 8003a0c:	d007      	beq.n	8003a1e <xTaskPriorityDisinherit+0x22>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8003a0e:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003a10:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003a14:	f3bf 8f4f 	dsb	sy
		isb
 8003a18:	f3bf 8f6f 	isb	sy
 8003a1c:	e7fe      	b.n	8003a1c <xTaskPriorityDisinherit+0x20>
			configASSERT( pxTCB->uxMutexesHeld );
 8003a1e:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8003a20:	b138      	cbz	r0, 8003a32 <xTaskPriorityDisinherit+0x36>
			( pxTCB->uxMutexesHeld )--;
 8003a22:	1e40      	subs	r0, r0, #1
 8003a24:	6520      	str	r0, [r4, #80]	; 0x50
			if( pxTCB->uxPriority != pxTCB->uxBasePriority )
 8003a26:	6ce3      	ldr	r3, [r4, #76]	; 0x4c
 8003a28:	6ae2      	ldr	r2, [r4, #44]	; 0x2c
 8003a2a:	429a      	cmp	r2, r3
 8003a2c:	d01f      	beq.n	8003a6e <xTaskPriorityDisinherit+0x72>
				if( pxTCB->uxMutexesHeld == ( UBaseType_t ) 0 )
 8003a2e:	b140      	cbz	r0, 8003a42 <xTaskPriorityDisinherit+0x46>
 8003a30:	e01d      	b.n	8003a6e <xTaskPriorityDisinherit+0x72>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8003a32:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003a34:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003a38:	f3bf 8f4f 	dsb	sy
		isb
 8003a3c:	f3bf 8f6f 	isb	sy
			configASSERT( pxTCB->uxMutexesHeld );
 8003a40:	e7fe      	b.n	8003a40 <xTaskPriorityDisinherit+0x44>
					if( uxListRemove( &( pxTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
 8003a42:	1d20      	adds	r0, r4, #4
 8003a44:	f7ff f8d6 	bl	8002bf4 <uxListRemove>
					pxTCB->uxPriority = pxTCB->uxBasePriority;
 8003a48:	6ce0      	ldr	r0, [r4, #76]	; 0x4c
 8003a4a:	62e0      	str	r0, [r4, #44]	; 0x2c
					listSET_LIST_ITEM_VALUE( &( pxTCB->xEventListItem ), ( TickType_t ) configMAX_PRIORITIES - ( TickType_t ) pxTCB->uxPriority ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
 8003a4c:	f1c0 0038 	rsb	r0, r0, #56	; 0x38
 8003a50:	61a0      	str	r0, [r4, #24]
					prvAddTaskToReadyList( pxTCB );
 8003a52:	6ae0      	ldr	r0, [r4, #44]	; 0x2c
 8003a54:	69a9      	ldr	r1, [r5, #24]
 8003a56:	4288      	cmp	r0, r1
 8003a58:	d900      	bls.n	8003a5c <xTaskPriorityDisinherit+0x60>
 8003a5a:	61a8      	str	r0, [r5, #24]
 8003a5c:	4906      	ldr	r1, [pc, #24]	; (8003a78 <xTaskPriorityDisinherit+0x7c>)
 8003a5e:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 8003a62:	eb01 0080 	add.w	r0, r1, r0, lsl #2
 8003a66:	1d21      	adds	r1, r4, #4
 8003a68:	f7ff f970 	bl	8002d4c <vListInsertEnd>
					xReturn = pdTRUE;
 8003a6c:	2101      	movs	r1, #1
		return xReturn;
 8003a6e:	4608      	mov	r0, r1
	}
 8003a70:	bd70      	pop	{r4, r5, r6, pc}
 8003a72:	0000      	.short	0x0000
 8003a74:	20000028 	.word	0x20000028
 8003a78:	2000060c 	.word	0x2000060c

08003a7c <xTaskRemoveFromEventList>:
{
 8003a7c:	b570      	push	{r4, r5, r6, lr}
	pxUnblockedTCB = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxEventList );
 8003a7e:	68c0      	ldr	r0, [r0, #12]
 8003a80:	68c4      	ldr	r4, [r0, #12]
	configASSERT( pxUnblockedTCB );
 8003a82:	2c00      	cmp	r4, #0
{
 8003a84:	d014      	beq.n	8003ab0 <xTaskRemoveFromEventList+0x34>
	( void ) uxListRemove( &( pxUnblockedTCB->xEventListItem ) );
 8003a86:	f104 0018 	add.w	r0, r4, #24
 8003a8a:	f7ff f8b3 	bl	8002bf4 <uxListRemove>
	if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
 8003a8e:	4d16      	ldr	r5, [pc, #88]	; (8003ae8 <xTaskRemoveFromEventList+0x6c>)
 8003a90:	6ba8      	ldr	r0, [r5, #56]	; 0x38
 8003a92:	b1a8      	cbz	r0, 8003ac0 <xTaskRemoveFromEventList+0x44>
		vListInsertEnd( &( xPendingReadyList ), &( pxUnblockedTCB->xEventListItem ) );
 8003a94:	f104 0118 	add.w	r1, r4, #24
 8003a98:	4814      	ldr	r0, [pc, #80]	; (8003aec <xTaskRemoveFromEventList+0x70>)
 8003a9a:	f7ff f957 	bl	8002d4c <vListInsertEnd>
	if( pxUnblockedTCB->uxPriority > pxCurrentTCB->uxPriority )
 8003a9e:	6ae0      	ldr	r0, [r4, #44]	; 0x2c
 8003aa0:	6829      	ldr	r1, [r5, #0]
 8003aa2:	6ac9      	ldr	r1, [r1, #44]	; 0x2c
 8003aa4:	4288      	cmp	r0, r1
 8003aa6:	d91c      	bls.n	8003ae2 <xTaskRemoveFromEventList+0x66>
		xReturn = pdTRUE;
 8003aa8:	2001      	movs	r0, #1
		xYieldPending = pdTRUE;
 8003aaa:	2101      	movs	r1, #1
 8003aac:	6269      	str	r1, [r5, #36]	; 0x24
}
 8003aae:	bd70      	pop	{r4, r5, r6, pc}
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8003ab0:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003ab2:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003ab6:	f3bf 8f4f 	dsb	sy
		isb
 8003aba:	f3bf 8f6f 	isb	sy
	configASSERT( pxUnblockedTCB );
 8003abe:	e7fe      	b.n	8003abe <xTaskRemoveFromEventList+0x42>
		( void ) uxListRemove( &( pxUnblockedTCB->xStateListItem ) );
 8003ac0:	1d20      	adds	r0, r4, #4
 8003ac2:	f7ff f897 	bl	8002bf4 <uxListRemove>
		prvAddTaskToReadyList( pxUnblockedTCB );
 8003ac6:	6ae0      	ldr	r0, [r4, #44]	; 0x2c
 8003ac8:	69a9      	ldr	r1, [r5, #24]
 8003aca:	4288      	cmp	r0, r1
 8003acc:	d900      	bls.n	8003ad0 <xTaskRemoveFromEventList+0x54>
 8003ace:	61a8      	str	r0, [r5, #24]
 8003ad0:	4907      	ldr	r1, [pc, #28]	; (8003af0 <xTaskRemoveFromEventList+0x74>)
 8003ad2:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 8003ad6:	eb01 0080 	add.w	r0, r1, r0, lsl #2
 8003ada:	1d21      	adds	r1, r4, #4
 8003adc:	f7ff f936 	bl	8002d4c <vListInsertEnd>
 8003ae0:	e7dd      	b.n	8003a9e <xTaskRemoveFromEventList+0x22>
		xReturn = pdFALSE;
 8003ae2:	2000      	movs	r0, #0
}
 8003ae4:	bd70      	pop	{r4, r5, r6, pc}
 8003ae6:	0000      	.short	0x0000
 8003ae8:	20000028 	.word	0x20000028
 8003aec:	20000a94 	.word	0x20000a94
 8003af0:	2000060c 	.word	0x2000060c

08003af4 <xTaskResumeAll>:
{
 8003af4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
TCB_t *pxTCB = NULL;
 8003af8:	2400      	movs	r4, #0
BaseType_t xAlreadyYielded = pdFALSE;
 8003afa:	2700      	movs	r7, #0
	configASSERT( uxSchedulerSuspended );
 8003afc:	4d2d      	ldr	r5, [pc, #180]	; (8003bb4 <xTaskResumeAll+0xc0>)
 8003afe:	6ba8      	ldr	r0, [r5, #56]	; 0x38
 8003b00:	2800      	cmp	r0, #0
{
 8003b02:	d007      	beq.n	8003b14 <xTaskResumeAll+0x20>
	taskENTER_CRITICAL();
 8003b04:	f7ff f92e 	bl	8002d64 <vPortEnterCritical>
		--uxSchedulerSuspended;
 8003b08:	6ba8      	ldr	r0, [r5, #56]	; 0x38
 8003b0a:	1e40      	subs	r0, r0, #1
 8003b0c:	63a8      	str	r0, [r5, #56]	; 0x38
		if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
 8003b0e:	6ba8      	ldr	r0, [r5, #56]	; 0x38
 8003b10:	b140      	cbz	r0, 8003b24 <xTaskResumeAll+0x30>
 8003b12:	e049      	b.n	8003ba8 <xTaskResumeAll+0xb4>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8003b14:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003b16:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003b1a:	f3bf 8f4f 	dsb	sy
		isb
 8003b1e:	f3bf 8f6f 	isb	sy
	configASSERT( uxSchedulerSuspended );
 8003b22:	e7fe      	b.n	8003b22 <xTaskResumeAll+0x2e>
			if( uxCurrentNumberOfTasks > ( UBaseType_t ) 0U )
 8003b24:	6928      	ldr	r0, [r5, #16]
 8003b26:	2800      	cmp	r0, #0
 8003b28:	d03e      	beq.n	8003ba8 <xTaskResumeAll+0xb4>
				while( listLIST_IS_EMPTY( &xPendingReadyList ) == pdFALSE )
 8003b2a:	4e23      	ldr	r6, [pc, #140]	; (8003bb8 <xTaskResumeAll+0xc4>)
 8003b2c:	6830      	ldr	r0, [r6, #0]
						xYieldPending = pdTRUE;
 8003b2e:	f04f 0801 	mov.w	r8, #1
				while( listLIST_IS_EMPTY( &xPendingReadyList ) == pdFALSE )
 8003b32:	b300      	cbz	r0, 8003b76 <xTaskResumeAll+0x82>
					prvAddTaskToReadyList( pxTCB );
 8003b34:	f5a6 6991 	sub.w	r9, r6, #1160	; 0x488
					pxTCB = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( ( &xPendingReadyList ) );
 8003b38:	68f0      	ldr	r0, [r6, #12]
 8003b3a:	68c4      	ldr	r4, [r0, #12]
					( void ) uxListRemove( &( pxTCB->xEventListItem ) );
 8003b3c:	f104 0018 	add.w	r0, r4, #24
 8003b40:	f7ff f858 	bl	8002bf4 <uxListRemove>
					( void ) uxListRemove( &( pxTCB->xStateListItem ) );
 8003b44:	1d20      	adds	r0, r4, #4
 8003b46:	f7ff f855 	bl	8002bf4 <uxListRemove>
					prvAddTaskToReadyList( pxTCB );
 8003b4a:	6ae0      	ldr	r0, [r4, #44]	; 0x2c
 8003b4c:	69a9      	ldr	r1, [r5, #24]
 8003b4e:	4288      	cmp	r0, r1
 8003b50:	d900      	bls.n	8003b54 <xTaskResumeAll+0x60>
 8003b52:	61a8      	str	r0, [r5, #24]
 8003b54:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 8003b58:	eb09 0080 	add.w	r0, r9, r0, lsl #2
 8003b5c:	1d21      	adds	r1, r4, #4
 8003b5e:	f7ff f8f5 	bl	8002d4c <vListInsertEnd>
					if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
 8003b62:	6ae0      	ldr	r0, [r4, #44]	; 0x2c
 8003b64:	6829      	ldr	r1, [r5, #0]
 8003b66:	6ac9      	ldr	r1, [r1, #44]	; 0x2c
 8003b68:	4288      	cmp	r0, r1
 8003b6a:	d301      	bcc.n	8003b70 <xTaskResumeAll+0x7c>
						xYieldPending = pdTRUE;
 8003b6c:	f8c5 8024 	str.w	r8, [r5, #36]	; 0x24
				while( listLIST_IS_EMPTY( &xPendingReadyList ) == pdFALSE )
 8003b70:	6830      	ldr	r0, [r6, #0]
 8003b72:	2800      	cmp	r0, #0
 8003b74:	d1e0      	bne.n	8003b38 <xTaskResumeAll+0x44>
				if( pxTCB != NULL )
 8003b76:	b10c      	cbz	r4, 8003b7c <xTaskResumeAll+0x88>
					prvResetNextTaskUnblockTime();
 8003b78:	f7fe fed8 	bl	800292c <prvResetNextTaskUnblockTime>
					UBaseType_t uxPendedCounts = uxPendedTicks; /* Non-volatile copy. */
 8003b7c:	6a2c      	ldr	r4, [r5, #32]
					if( uxPendedCounts > ( UBaseType_t ) 0U )
 8003b7e:	b14c      	cbz	r4, 8003b94 <xTaskResumeAll+0xa0>
							if( xTaskIncrementTick() != pdFALSE )
 8003b80:	f7ff fed6 	bl	8003930 <xTaskIncrementTick>
 8003b84:	b108      	cbz	r0, 8003b8a <xTaskResumeAll+0x96>
								xYieldPending = pdTRUE;
 8003b86:	f8c5 8024 	str.w	r8, [r5, #36]	; 0x24
							--uxPendedCounts;
 8003b8a:	1e64      	subs	r4, r4, #1
						} while( uxPendedCounts > ( UBaseType_t ) 0U );
 8003b8c:	2c00      	cmp	r4, #0
 8003b8e:	d1f7      	bne.n	8003b80 <xTaskResumeAll+0x8c>
						uxPendedTicks = 0;
 8003b90:	2000      	movs	r0, #0
 8003b92:	6228      	str	r0, [r5, #32]
				if( xYieldPending != pdFALSE )
 8003b94:	6a68      	ldr	r0, [r5, #36]	; 0x24
 8003b96:	b138      	cbz	r0, 8003ba8 <xTaskResumeAll+0xb4>
						xAlreadyYielded = pdTRUE;
 8003b98:	2701      	movs	r7, #1
					taskYIELD_IF_USING_PREEMPTION();
 8003b9a:	4908      	ldr	r1, [pc, #32]	; (8003bbc <xTaskResumeAll+0xc8>)
 8003b9c:	0738      	lsls	r0, r7, #28
 8003b9e:	6008      	str	r0, [r1, #0]
 8003ba0:	f3bf 8f4f 	dsb	sy
 8003ba4:	f3bf 8f6f 	isb	sy
	taskEXIT_CRITICAL();
 8003ba8:	f7ff f8fc 	bl	8002da4 <vPortExitCritical>
	return xAlreadyYielded;
 8003bac:	4638      	mov	r0, r7
}
 8003bae:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8003bb2:	0000      	.short	0x0000
 8003bb4:	20000028 	.word	0x20000028
 8003bb8:	20000a94 	.word	0x20000a94
 8003bbc:	e000ed04 	.word	0xe000ed04

08003bc0 <xTimerCreateTimerTask>:
{
 8003bc0:	b530      	push	{r4, r5, lr}
 8003bc2:	b087      	sub	sp, #28
BaseType_t xReturn = pdFAIL;
 8003bc4:	2400      	movs	r4, #0
	prvCheckForValidListAndQueue();
 8003bc6:	f7fe fbb1 	bl	800232c <prvCheckForValidListAndQueue>
	if( xTimerQueue != NULL )
 8003bca:	4d13      	ldr	r5, [pc, #76]	; (8003c18 <xTimerCreateTimerTask+0x58>)
 8003bcc:	68a8      	ldr	r0, [r5, #8]
 8003bce:	b1b0      	cbz	r0, 8003bfe <xTimerCreateTimerTask+0x3e>
			StaticTask_t *pxTimerTaskTCBBuffer = NULL;
 8003bd0:	2000      	movs	r0, #0
 8003bd2:	9006      	str	r0, [sp, #24]
			StackType_t *pxTimerTaskStackBuffer = NULL;
 8003bd4:	9005      	str	r0, [sp, #20]
			vApplicationGetTimerTaskMemory( &pxTimerTaskTCBBuffer, &pxTimerTaskStackBuffer, &ulTimerTaskStackSize );
 8003bd6:	aa04      	add	r2, sp, #16
 8003bd8:	a905      	add	r1, sp, #20
 8003bda:	a806      	add	r0, sp, #24
 8003bdc:	f7ff f880 	bl	8002ce0 <vApplicationGetTimerTaskMemory>
			xTimerTaskHandle = xTaskCreateStatic(	prvTimerTask,
 8003be0:	9905      	ldr	r1, [sp, #20]
 8003be2:	9806      	ldr	r0, [sp, #24]
 8003be4:	2202      	movs	r2, #2
 8003be6:	9200      	str	r2, [sp, #0]
 8003be8:	9101      	str	r1, [sp, #4]
 8003bea:	9002      	str	r0, [sp, #8]
 8003bec:	2300      	movs	r3, #0
 8003bee:	a10b      	add	r1, pc, #44	; (adr r1, 8003c1c <xTimerCreateTimerTask+0x5c>)
 8003bf0:	480c      	ldr	r0, [pc, #48]	; (8003c24 <xTimerCreateTimerTask+0x64>)
 8003bf2:	9a04      	ldr	r2, [sp, #16]
 8003bf4:	f7ff fe58 	bl	80038a8 <xTaskCreateStatic>
 8003bf8:	60e8      	str	r0, [r5, #12]
			if( xTimerTaskHandle != NULL )
 8003bfa:	b100      	cbz	r0, 8003bfe <xTimerCreateTimerTask+0x3e>
				xReturn = pdPASS;
 8003bfc:	2401      	movs	r4, #1
	configASSERT( xReturn );
 8003bfe:	b114      	cbz	r4, 8003c06 <xTimerCreateTimerTask+0x46>
}
 8003c00:	b007      	add	sp, #28
	return xReturn;
 8003c02:	4620      	mov	r0, r4
}
 8003c04:	bd30      	pop	{r4, r5, pc}
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8003c06:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003c08:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003c0c:	f3bf 8f4f 	dsb	sy
		isb
 8003c10:	f3bf 8f6f 	isb	sy
	configASSERT( xReturn );
 8003c14:	e7fe      	b.n	8003c14 <xTimerCreateTimerTask+0x54>
 8003c16:	0000      	.short	0x0000
 8003c18:	2000006c 	.word	0x2000006c
 8003c1c:	20726d54 	.word	0x20726d54
 8003c20:	00637653 	.word	0x00637653
 8003c24:	08002a39 	.word	0x08002a39

08003c28 <xTimerGenericCommand>:
{
 8003c28:	b5f0      	push	{r4, r5, r6, r7, lr}
 8003c2a:	b085      	sub	sp, #20
 8003c2c:	4684      	mov	ip, r0
 8003c2e:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8003c30:	4616      	mov	r6, r2
 8003c32:	461f      	mov	r7, r3
BaseType_t xReturn = pdFAIL;
 8003c34:	2200      	movs	r2, #0
	configASSERT( xTimer );
 8003c36:	f1bc 0f00 	cmp.w	ip, #0
{
 8003c3a:	d014      	beq.n	8003c66 <xTimerGenericCommand+0x3e>
	if( xTimerQueue != NULL )
 8003c3c:	4c16      	ldr	r4, [pc, #88]	; (8003c98 <xTimerGenericCommand+0x70>)
 8003c3e:	68a0      	ldr	r0, [r4, #8]
 8003c40:	b300      	cbz	r0, 8003c84 <xTimerGenericCommand+0x5c>
		xMessage.xMessageID = xCommandID;
 8003c42:	9100      	str	r1, [sp, #0]
		xMessage.u.xTimerParameters.xMessageValue = xOptionalValue;
 8003c44:	9601      	str	r6, [sp, #4]
		xMessage.u.xTimerParameters.pxTimer = ( Timer_t * ) xTimer;
 8003c46:	f8cd c008 	str.w	ip, [sp, #8]
		if( xCommandID < tmrFIRST_FROM_ISR_COMMAND )
 8003c4a:	2906      	cmp	r1, #6
 8003c4c:	da1b      	bge.n	8003c86 <xTimerGenericCommand+0x5e>
			if( xTaskGetSchedulerState() == taskSCHEDULER_RUNNING )
 8003c4e:	f7ff fe5b 	bl	8003908 <xTaskGetSchedulerState>
 8003c52:	2802      	cmp	r0, #2
 8003c54:	d00f      	beq.n	8003c76 <xTimerGenericCommand+0x4e>
				xReturn = xQueueSendToBack( xTimerQueue, &xMessage, tmrNO_DELAY );
 8003c56:	2300      	movs	r3, #0
 8003c58:	461a      	mov	r2, r3
 8003c5a:	4669      	mov	r1, sp
 8003c5c:	68a0      	ldr	r0, [r4, #8]
 8003c5e:	f7ff fbf3 	bl	8003448 <xQueueGenericSend>
 8003c62:	4602      	mov	r2, r0
 8003c64:	e015      	b.n	8003c92 <xTimerGenericCommand+0x6a>
uint32_t ulNewBASEPRI = configMAX_SYSCALL_INTERRUPT_PRIORITY;
 8003c66:	2050      	movs	r0, #80	; 0x50
		msr basepri, ulNewBASEPRI
 8003c68:	f380 8811 	msr	BASEPRI, r0
		dsb
 8003c6c:	f3bf 8f4f 	dsb	sy
		isb
 8003c70:	f3bf 8f6f 	isb	sy
	configASSERT( xTimer );
 8003c74:	e7fe      	b.n	8003c74 <xTimerGenericCommand+0x4c>
				xReturn = xQueueSendToBack( xTimerQueue, &xMessage, xTicksToWait );
 8003c76:	2300      	movs	r3, #0
 8003c78:	462a      	mov	r2, r5
 8003c7a:	4669      	mov	r1, sp
 8003c7c:	68a0      	ldr	r0, [r4, #8]
 8003c7e:	f7ff fbe3 	bl	8003448 <xQueueGenericSend>
 8003c82:	4602      	mov	r2, r0
 8003c84:	e005      	b.n	8003c92 <xTimerGenericCommand+0x6a>
			xReturn = xQueueSendToBackFromISR( xTimerQueue, &xMessage, pxHigherPriorityTaskWoken );
 8003c86:	2300      	movs	r3, #0
 8003c88:	463a      	mov	r2, r7
 8003c8a:	4669      	mov	r1, sp
 8003c8c:	f7ff fc94 	bl	80035b8 <xQueueGenericSendFromISR>
 8003c90:	4602      	mov	r2, r0
}
 8003c92:	b005      	add	sp, #20
	return xReturn;
 8003c94:	4610      	mov	r0, r2
}
 8003c96:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8003c98:	2000006c 	.word	0x2000006c

08003c9c <g_pcHex>:
 8003c9c:	08003d38                                8=..

08003ca0 <defaultTask_attributes>:
 8003ca0:	08003d64 00000000 00000000 00000000     d=..............
 8003cb0:	00000000 00000200 00000028 00000000     ........(.......
 8003cc0:	00000000                                ....

08003cc4 <mylogTask_attributes>:
 8003cc4:	08003d58 00000000 00000000 00000000     X=..............
 8003cd4:	00000000 00000200 00000008 00000000     ................
 8003ce4:	00000000                                ....

08003ce8 <myTask03_attributes>:
 8003ce8:	08003d4c 00000000 00000000 00000000     L=..............
 8003cf8:	00000000 00000200 00000009 00000000     ................
 8003d08:	00000000                                ....

08003d0c <aPredivFactorTable>:
 8003d0c:	                                         ..

08003d0e <aPLLMULFactorTable>:
 8003d0e:	05040302 09080706 0d0c0b0a 10100f0e     ................

08003d1e <AHBPrescTable>:
	...
 8003d26:	04030201 09080706                       ........

08003d2e <APBPrescTable>:
 8003d2e:	00000000 04030201 31300000 35343332     ..........012345
 8003d3e:	39383736 64636261 00006665 796d0000     6789abcdef....my
 8003d4e:	6b736154 00003330 796d0000 54676f6c     Task03....mylogT
 8003d5e:	006b7361 65640000 6c756166 73615474     ask...defaultTas
 8003d6e:	                                         k.

08003d70 <Region$$Table$$Base>:
 8003d70:	08003d90 	.word	0x08003d90
 8003d74:	20000000 	.word	0x20000000
 8003d78:	000000a8 	.word	0x000000a8
 8003d7c:	08000128 	.word	0x08000128
 8003d80:	08003e38 	.word	0x08003e38
 8003d84:	200000a8 	.word	0x200000a8
 8003d88:	00002460 	.word	0x00002460
 8003d8c:	08000144 	.word	0x08000144
