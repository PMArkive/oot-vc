glabel cpuCompile_LDC
/* 800353C4 00030984  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800353C8 00030988  7C 08 02 A6 */	mflr r0
/* 800353CC 0003098C  3C A0 30 00 */	lis r5, 0x30000030@ha
/* 800353D0 00030990  90 01 00 24 */	stw r0, 0x24(r1)
/* 800353D4 00030994  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800353D8 00030998  7C 9F 23 78 */	mr r31, r4
/* 800353DC 0003099C  38 85 00 30 */	addi r4, r5, 0x30000030@l
/* 800353E0 000309A0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800353E4 000309A4  7C 7E 1B 78 */	mr r30, r3
/* 800353E8 000309A8  38 61 00 08 */	addi r3, r1, 8
/* 800353EC 000309AC  48 04 BD 0D */	bl xlHeapTake
/* 800353F0 000309B0  2C 03 00 00 */	cmpwi r3, 0
/* 800353F4 000309B4  40 82 00 0C */	bne lbl_80035400
/* 800353F8 000309B8  38 60 00 00 */	li r3, 0
/* 800353FC 000309BC  48 00 00 D4 */	b lbl_800354D0
lbl_80035400:
/* 80035400 000309C0  80 61 00 08 */	lwz r3, 8(r1)
/* 80035404 000309C4  38 1E 0B 60 */	addi r0, r30, 0xb60
/* 80035408 000309C8  3C 80 54 C6 */	lis r4, 0x54C6103A@ha
/* 8003540C 000309CC  3D 20 7C C6 */	lis r9, 0x7CC6382E@ha
/* 80035410 000309D0  90 7F 00 00 */	stw r3, 0(r31)
/* 80035414 000309D4  7D 7E 00 50 */	subf r11, r30, r0
/* 80035418 000309D8  38 04 10 3A */	addi r0, r4, 0x54C6103A@l
/* 8003541C 000309DC  3C E0 7C A5 */	lis r7, 0x7CA53A14@ha
/* 80035420 000309E0  80 61 00 08 */	lwz r3, 8(r1)
/* 80035424 000309E4  3D 00 80 E6 */	lis r8, 0x80E60008@ha
/* 80035428 000309E8  3C A0 7C E5 */	lis r5, 0x7CE53A14@ha
/* 8003542C 000309EC  3C 80 80 C7 */	lis r4, 0x80C70004@ha
/* 80035430 000309F0  90 03 00 00 */	stw r0, 0(r3)
/* 80035434 000309F4  3C 0B 38 E3 */	addis r0, r11, 0x38e3
/* 80035438 000309F8  39 69 38 2E */	addi r11, r9, 0x7CC6382E@l
/* 8003543C 000309FC  3C 60 4E 80 */	lis r3, 0x4E800020@ha
/* 80035440 00030A00  81 41 00 08 */	lwz r10, 8(r1)
/* 80035444 00030A04  3C C0 80 E7 */	lis r6, 0x80E70004@ha
/* 80035448 00030A08  90 0A 00 04 */	stw r0, 4(r10)
/* 8003544C 00030A0C  39 47 3A 14 */	addi r10, r7, 0x7CA53A14@l
/* 80035450 00030A10  38 08 00 08 */	addi r0, r8, 0x80E60008@l
/* 80035454 00030A14  81 21 00 08 */	lwz r9, 8(r1)
/* 80035458 00030A18  91 69 00 08 */	stw r11, 8(r9)
/* 8003545C 00030A1C  39 28 00 04 */	addi r9, r8, 4
/* 80035460 00030A20  39 06 00 04 */	addi r8, r6, 0x80E70004@l
/* 80035464 00030A24  3C C0 80 A7 */	lis r6, 0x80a7
/* 80035468 00030A28  80 E1 00 08 */	lwz r7, 8(r1)
/* 8003546C 00030A2C  90 07 00 0C */	stw r0, 0xc(r7)
/* 80035470 00030A30  38 E5 3A 14 */	addi r7, r5, 0x7CE53A14@l
/* 80035474 00030A34  38 A4 00 04 */	addi r5, r4, 0x80C70004@l
/* 80035478 00030A38  38 03 00 20 */	addi r0, r3, 0x4E800020@l
/* 8003547C 00030A3C  80 81 00 08 */	lwz r4, 8(r1)
/* 80035480 00030A40  91 44 00 10 */	stw r10, 0x10(r4)
/* 80035484 00030A44  38 80 00 2C */	li r4, 0x2c
/* 80035488 00030A48  80 61 00 08 */	lwz r3, 8(r1)
/* 8003548C 00030A4C  91 23 00 14 */	stw r9, 0x14(r3)
/* 80035490 00030A50  80 61 00 08 */	lwz r3, 8(r1)
/* 80035494 00030A54  91 03 00 18 */	stw r8, 0x18(r3)
/* 80035498 00030A58  80 61 00 08 */	lwz r3, 8(r1)
/* 8003549C 00030A5C  90 E3 00 1C */	stw r7, 0x1c(r3)
/* 800354A0 00030A60  80 61 00 08 */	lwz r3, 8(r1)
/* 800354A4 00030A64  90 C3 00 20 */	stw r6, 0x20(r3)
/* 800354A8 00030A68  80 61 00 08 */	lwz r3, 8(r1)
/* 800354AC 00030A6C  90 A3 00 24 */	stw r5, 0x24(r3)
/* 800354B0 00030A70  80 61 00 08 */	lwz r3, 8(r1)
/* 800354B4 00030A74  90 03 00 28 */	stw r0, 0x28(r3)
/* 800354B8 00030A78  80 61 00 08 */	lwz r3, 8(r1)
/* 800354BC 00030A7C  48 05 61 C9 */	bl DCStoreRange
/* 800354C0 00030A80  80 61 00 08 */	lwz r3, 8(r1)
/* 800354C4 00030A84  38 80 00 2C */	li r4, 0x2c
/* 800354C8 00030A88  48 05 62 45 */	bl ICInvalidateRange
/* 800354CC 00030A8C  38 60 00 01 */	li r3, 1
lbl_800354D0:
/* 800354D0 00030A90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800354D4 00030A94  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800354D8 00030A98  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800354DC 00030A9C  7C 08 03 A6 */	mtlr r0
/* 800354E0 00030AA0  38 21 00 20 */	addi r1, r1, 0x20
/* 800354E4 00030AA4  4E 80 00 20 */	blr 