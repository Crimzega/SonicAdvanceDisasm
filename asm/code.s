

.syntax unified
.arm
Init: @ 0x08000000
	b start_vector
	.include "asm/rom_header.inc"

start_vector:
	mov r0, #0x12
	msr cpsr_fc, r0
	ldr sp, _080000F8 @ gUnknown_03007FA0
	
_080000F0:
	.byte 0xf2, 0xff, 0xff, 0xea
_080000F4: .4byte gUnknown_03007F00
_080000F8: .4byte gUnknown_03007FA0
