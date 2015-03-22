/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/HpGaming/Dropbox/CSE 320/CSE320 LAB FINAL/CPU/RTL/CPU/registerFile.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {1, 0};



static void Cont_48_0(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    t1 = (t0 + 4376U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 3296);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 3296);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 3296);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = (t0 + 1456U);
    t13 = *((char **)t12);
    xsi_vlog_generic_get_array_select_value(t5, 32, t4, t8, t11, 2, 1, t13, 5, 2);
    t12 = (t0 + 5304);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t5, 8);
    xsi_driver_vfirst_trans(t12, 0, 31);
    t18 = (t0 + 5192);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_49_1(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    t1 = (t0 + 4624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 3296);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 3296);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 3296);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = (t0 + 1616U);
    t13 = *((char **)t12);
    xsi_vlog_generic_get_array_select_value(t5, 32, t4, t8, t11, 2, 1, t13, 5, 2);
    t12 = (t0 + 5368);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t5, 8);
    xsi_driver_vfirst_trans(t12, 0, 31);
    t18 = (t0 + 5208);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Always_51_2(char *t0)
{
    char t4[8];
    char t31[8];
    char t32[8];
    char t70[8];
    char t104[8];
    char t105[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    int t40;
    char *t41;
    int t42;
    int t43;
    int t44;
    int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    char *t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    char *t102;
    char *t103;
    char *t106;
    char *t107;
    char *t108;
    char *t109;
    char *t110;
    char *t111;
    char *t112;
    char *t113;
    unsigned int t114;
    char *t115;
    unsigned int t116;
    int t117;
    int t118;
    unsigned int t119;
    unsigned int t120;
    int t121;
    int t122;

LAB0:    t1 = (t0 + 4872U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 5224);
    *((int *)t2) = 1;
    t3 = (t0 + 4904);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(52, ng0);
    t5 = (t0 + 2896U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t5) == 0)
        goto LAB5;

LAB7:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB8:    t13 = (t4 + 4);
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB10;

LAB9:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t4 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB11;

LAB12:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2096U);
    t3 = *((char **)t2);
    t2 = (t0 + 1776U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 31U);
    if (t11 != 0)
        goto LAB20;

LAB21:    if (*((unsigned int *)t2) != 0)
        goto LAB22;

LAB23:    t15 = *((unsigned int *)t3);
    t16 = *((unsigned int *)t4);
    t17 = (t15 & t16);
    *((unsigned int *)t31) = t17;
    t12 = (t3 + 4);
    t13 = (t4 + 4);
    t14 = (t31 + 4);
    t18 = *((unsigned int *)t12);
    t19 = *((unsigned int *)t13);
    t20 = (t18 | t19);
    *((unsigned int *)t14) = t20;
    t21 = *((unsigned int *)t14);
    t22 = (t21 != 0);
    if (t22 == 1)
        goto LAB24;

LAB25:
LAB26:    t30 = (t0 + 2256U);
    t33 = *((char **)t30);
    memset(t32, 0, 8);
    t30 = (t33 + 4);
    t57 = *((unsigned int *)t30);
    t58 = (~(t57));
    t59 = *((unsigned int *)t33);
    t60 = (t59 & t58);
    t61 = (t60 & 1U);
    if (t61 != 0)
        goto LAB30;

LAB28:    if (*((unsigned int *)t30) == 0)
        goto LAB27;

LAB29:    t34 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t34) = 1;

LAB30:    t35 = (t32 + 4);
    t36 = (t33 + 4);
    t62 = *((unsigned int *)t33);
    t63 = (~(t62));
    *((unsigned int *)t32) = t63;
    *((unsigned int *)t35) = 0;
    if (*((unsigned int *)t36) != 0)
        goto LAB32;

LAB31:    t68 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t68 & 1U);
    t69 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t69 & 1U);
    t71 = *((unsigned int *)t31);
    t72 = *((unsigned int *)t32);
    t73 = (t71 & t72);
    *((unsigned int *)t70) = t73;
    t37 = (t31 + 4);
    t38 = (t32 + 4);
    t39 = (t70 + 4);
    t74 = *((unsigned int *)t37);
    t75 = *((unsigned int *)t38);
    t76 = (t74 | t75);
    *((unsigned int *)t39) = t76;
    t77 = *((unsigned int *)t39);
    t78 = (t77 != 0);
    if (t78 == 1)
        goto LAB33;

LAB34:
LAB35:    t96 = (t70 + 4);
    t97 = *((unsigned int *)t96);
    t98 = (~(t97));
    t99 = *((unsigned int *)t70);
    t100 = (t99 & t98);
    t101 = (t100 != 0);
    if (t101 > 0)
        goto LAB36;

LAB37:
LAB38:
LAB13:    goto LAB2;

LAB5:    *((unsigned int *)t4) = 1;
    goto LAB8;

LAB10:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB9;

LAB11:    xsi_set_current_line(52, ng0);

LAB14:    xsi_set_current_line(53, ng0);
    xsi_set_current_line(53, ng0);
    t29 = ((char*)((ng1)));
    t30 = (t0 + 3456);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 32);

LAB15:    t2 = (t0 + 3456);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 472);
    t12 = *((char **)t6);
    memset(t4, 0, 8);
    xsi_vlog_signed_less(t4, 32, t5, 32, t12, 32);
    t6 = (t4 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB16;

LAB17:    goto LAB13;

LAB16:    xsi_set_current_line(54, ng0);
    t13 = ((char*)((ng2)));
    t14 = (t0 + 3296);
    t23 = (t0 + 3296);
    t29 = (t23 + 72U);
    t30 = *((char **)t29);
    t33 = (t0 + 3296);
    t34 = (t33 + 64U);
    t35 = *((char **)t34);
    t36 = (t0 + 3456);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    xsi_vlog_generic_convert_array_indices(t31, t32, t30, t35, 2, 1, t38, 32, 1);
    t39 = (t31 + 4);
    t15 = *((unsigned int *)t39);
    t40 = (!(t15));
    t41 = (t32 + 4);
    t16 = *((unsigned int *)t41);
    t42 = (!(t16));
    t43 = (t40 && t42);
    if (t43 == 1)
        goto LAB18;

LAB19:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 3456);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng3)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t12 = (t0 + 3456);
    xsi_vlogvar_assign_value(t12, t4, 0, 0, 32);
    goto LAB15;

LAB18:    t17 = *((unsigned int *)t31);
    t18 = *((unsigned int *)t32);
    t44 = (t17 - t18);
    t45 = (t44 + 1);
    xsi_vlogvar_wait_assign_value(t14, t13, 0, *((unsigned int *)t32), t45, 0LL);
    goto LAB19;

LAB20:    *((unsigned int *)t4) = 1;
    goto LAB23;

LAB22:    t6 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t6) = 1;
    goto LAB23;

LAB24:    t24 = *((unsigned int *)t31);
    t25 = *((unsigned int *)t14);
    *((unsigned int *)t31) = (t24 | t25);
    t23 = (t3 + 4);
    t29 = (t4 + 4);
    t26 = *((unsigned int *)t3);
    t27 = (~(t26));
    t28 = *((unsigned int *)t23);
    t46 = (~(t28));
    t47 = *((unsigned int *)t4);
    t48 = (~(t47));
    t49 = *((unsigned int *)t29);
    t50 = (~(t49));
    t40 = (t27 & t46);
    t42 = (t48 & t50);
    t51 = (~(t40));
    t52 = (~(t42));
    t53 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t53 & t51);
    t54 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t54 & t52);
    t55 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t55 & t51);
    t56 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t56 & t52);
    goto LAB26;

LAB27:    *((unsigned int *)t32) = 1;
    goto LAB30;

LAB32:    t64 = *((unsigned int *)t32);
    t65 = *((unsigned int *)t36);
    *((unsigned int *)t32) = (t64 | t65);
    t66 = *((unsigned int *)t35);
    t67 = *((unsigned int *)t36);
    *((unsigned int *)t35) = (t66 | t67);
    goto LAB31;

LAB33:    t79 = *((unsigned int *)t70);
    t80 = *((unsigned int *)t39);
    *((unsigned int *)t70) = (t79 | t80);
    t41 = (t31 + 4);
    t81 = (t32 + 4);
    t82 = *((unsigned int *)t31);
    t83 = (~(t82));
    t84 = *((unsigned int *)t41);
    t85 = (~(t84));
    t86 = *((unsigned int *)t32);
    t87 = (~(t86));
    t88 = *((unsigned int *)t81);
    t89 = (~(t88));
    t43 = (t83 & t85);
    t44 = (t87 & t89);
    t90 = (~(t43));
    t91 = (~(t44));
    t92 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t92 & t90);
    t93 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t93 & t91);
    t94 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t94 & t90);
    t95 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t95 & t91);
    goto LAB35;

LAB36:    xsi_set_current_line(60, ng0);
    t102 = (t0 + 1936U);
    t103 = *((char **)t102);
    t102 = (t0 + 3296);
    t106 = (t0 + 3296);
    t107 = (t106 + 72U);
    t108 = *((char **)t107);
    t109 = (t0 + 3296);
    t110 = (t109 + 64U);
    t111 = *((char **)t110);
    t112 = (t0 + 1776U);
    t113 = *((char **)t112);
    xsi_vlog_generic_convert_array_indices(t104, t105, t108, t111, 2, 1, t113, 5, 2);
    t112 = (t104 + 4);
    t114 = *((unsigned int *)t112);
    t45 = (!(t114));
    t115 = (t105 + 4);
    t116 = *((unsigned int *)t115);
    t117 = (!(t116));
    t118 = (t45 && t117);
    if (t118 == 1)
        goto LAB39;

LAB40:    goto LAB38;

LAB39:    t119 = *((unsigned int *)t104);
    t120 = *((unsigned int *)t105);
    t121 = (t119 - t120);
    t122 = (t121 + 1);
    xsi_vlogvar_wait_assign_value(t102, t103, 0, *((unsigned int *)t105), t122, 0LL);
    goto LAB40;

}


extern void work_m_00000000000164411669_3275311449_init()
{
	static char *pe[] = {(void *)Cont_48_0,(void *)Cont_49_1,(void *)Always_51_2};
	xsi_register_didat("work_m_00000000000164411669_3275311449", "isim/CPU_tb_isim_beh.exe.sim/work/m_00000000000164411669_3275311449.didat");
	xsi_register_executes(pe);
}
