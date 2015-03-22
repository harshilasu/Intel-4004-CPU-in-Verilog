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
static const char *ng0 = "C:/Users/HpGaming/Dropbox/CSE 320/CSE320 LAB FINAL/CPU/RTL/CPU/dataMem.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {1, 0};



static void Cont_50_0(char *t0)
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

LAB0:    t1 = (t0 + 24048U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 22968);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 22968);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 22968);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = (t0 + 21448U);
    t13 = *((char **)t12);
    xsi_vlog_generic_get_array_select_value(t5, 32, t4, t8, t11, 2, 1, t13, 32, 2);
    t12 = (t0 + 24712);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t5, 8);
    xsi_driver_vfirst_trans(t12, 0, 31);
    t18 = (t0 + 24616);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Always_55_1(char *t0)
{
    char t4[8];
    char t31[8];
    char t32[8];
    char t70[8];
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
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    unsigned int t75;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    int t80;
    int t81;

LAB0:    t1 = (t0 + 24296U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 24632);
    *((int *)t2) = 1;
    t3 = (t0 + 24328);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(56, ng0);
    t5 = (t0 + 22568U);
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

LAB12:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 21768U);
    t3 = *((char **)t2);
    t2 = (t0 + 22088U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB22;

LAB20:    if (*((unsigned int *)t2) == 0)
        goto LAB19;

LAB21:    t6 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t6) = 1;

LAB22:    t12 = (t4 + 4);
    t13 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t12) = 0;
    if (*((unsigned int *)t13) != 0)
        goto LAB24;

LAB23:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t22 & 1U);
    t24 = *((unsigned int *)t3);
    t25 = *((unsigned int *)t4);
    t26 = (t24 & t25);
    *((unsigned int *)t31) = t26;
    t14 = (t3 + 4);
    t23 = (t4 + 4);
    t29 = (t31 + 4);
    t27 = *((unsigned int *)t14);
    t28 = *((unsigned int *)t23);
    t46 = (t27 | t28);
    *((unsigned int *)t29) = t46;
    t47 = *((unsigned int *)t29);
    t48 = (t47 != 0);
    if (t48 == 1)
        goto LAB25;

LAB26:
LAB27:    t34 = (t31 + 4);
    t65 = *((unsigned int *)t34);
    t66 = (~(t65));
    t67 = *((unsigned int *)t31);
    t68 = (t67 & t66);
    t69 = (t68 != 0);
    if (t69 > 0)
        goto LAB28;

LAB29:
LAB30:
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

LAB11:    xsi_set_current_line(56, ng0);
    xsi_set_current_line(56, ng0);
    t29 = ((char*)((ng1)));
    t30 = (t0 + 23128);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 32);

LAB14:    t2 = (t0 + 23128);
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
        goto LAB15;

LAB16:    goto LAB13;

LAB15:    xsi_set_current_line(56, ng0);
    t13 = ((char*)((ng2)));
    t14 = (t0 + 22968);
    t23 = (t0 + 22968);
    t29 = (t23 + 72U);
    t30 = *((char **)t29);
    t33 = (t0 + 22968);
    t34 = (t33 + 64U);
    t35 = *((char **)t34);
    t36 = (t0 + 23128);
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
        goto LAB17;

LAB18:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 23128);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng3)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t12 = (t0 + 23128);
    xsi_vlogvar_assign_value(t12, t4, 0, 0, 32);
    goto LAB14;

LAB17:    t17 = *((unsigned int *)t31);
    t18 = *((unsigned int *)t32);
    t44 = (t17 - t18);
    t45 = (t44 + 1);
    xsi_vlogvar_wait_assign_value(t14, t13, 0, *((unsigned int *)t32), t45, 0LL);
    goto LAB18;

LAB19:    *((unsigned int *)t4) = 1;
    goto LAB22;

LAB24:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t13);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t12);
    t20 = *((unsigned int *)t13);
    *((unsigned int *)t12) = (t19 | t20);
    goto LAB23;

LAB25:    t49 = *((unsigned int *)t31);
    t50 = *((unsigned int *)t29);
    *((unsigned int *)t31) = (t49 | t50);
    t30 = (t3 + 4);
    t33 = (t4 + 4);
    t51 = *((unsigned int *)t3);
    t52 = (~(t51));
    t53 = *((unsigned int *)t30);
    t54 = (~(t53));
    t55 = *((unsigned int *)t4);
    t56 = (~(t55));
    t57 = *((unsigned int *)t33);
    t58 = (~(t57));
    t40 = (t52 & t54);
    t42 = (t56 & t58);
    t59 = (~(t40));
    t60 = (~(t42));
    t61 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t61 & t59);
    t62 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t62 & t60);
    t63 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t63 & t59);
    t64 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t64 & t60);
    goto LAB27;

LAB28:    xsi_set_current_line(57, ng0);
    t35 = (t0 + 21928U);
    t36 = *((char **)t35);
    t35 = (t0 + 22968);
    t37 = (t0 + 22968);
    t38 = (t37 + 72U);
    t39 = *((char **)t38);
    t41 = (t0 + 22968);
    t71 = (t41 + 64U);
    t72 = *((char **)t71);
    t73 = (t0 + 21608U);
    t74 = *((char **)t73);
    xsi_vlog_generic_convert_array_indices(t32, t70, t39, t72, 2, 1, t74, 32, 2);
    t73 = (t32 + 4);
    t75 = *((unsigned int *)t73);
    t43 = (!(t75));
    t76 = (t70 + 4);
    t77 = *((unsigned int *)t76);
    t44 = (!(t77));
    t45 = (t43 && t44);
    if (t45 == 1)
        goto LAB31;

LAB32:    goto LAB30;

LAB31:    t78 = *((unsigned int *)t32);
    t79 = *((unsigned int *)t70);
    t80 = (t78 - t79);
    t81 = (t80 + 1);
    xsi_vlogvar_wait_assign_value(t35, t36, 0, *((unsigned int *)t70), t81, 0LL);
    goto LAB32;

}


extern void work_m_00000000000568603791_2784346234_init()
{
	static char *pe[] = {(void *)Cont_50_0,(void *)Always_55_1};
	xsi_register_didat("work_m_00000000000568603791_2784346234", "isim/fpga_top_isim_beh.exe.sim/work/m_00000000000568603791_2784346234.didat");
	xsi_register_executes(pe);
}
