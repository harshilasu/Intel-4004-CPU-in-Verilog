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
static const char *ng0 = "C:/Users/HpGaming/Dropbox/CSE 320/CSE320 LAB FINAL/CPU/RTL/CPU/ControlLogic.v";
static unsigned int ng1[] = {65535U, 0U};
static unsigned int ng2[] = {0U, 0U};



static void Cont_36_0(char *t0)
{
    char t3[8];
    char t4[8];
    char *t1;
    char *t2;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    t1 = (t0 + 25376U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 23096U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t12);
    t15 = (t13 || t14);
    if (t15 > 0)
        goto LAB8;

LAB9:    t18 = *((unsigned int *)t4);
    t19 = (~(t18));
    t20 = *((unsigned int *)t12);
    t21 = (t19 || t20);
    if (t21 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t12) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t22, 8);

LAB16:    t16 = (t0 + 26040);
    t23 = (t16 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t3, 8);
    xsi_driver_vfirst_trans(t16, 0, 31);
    t27 = (t0 + 25944);
    *((int *)t27) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t16 = (t0 + 24056U);
    t17 = *((char **)t16);
    goto LAB9;

LAB10:    t16 = (t0 + 21656U);
    t22 = *((char **)t16);
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t17, 32, t22, 32);
    goto LAB16;

LAB14:    memcpy(t3, t17, 8);
    goto LAB16;

}

static void Cont_37_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t7[8];
    char t15[8];
    char t58[8];
    char t59[8];
    char t74[8];
    char t75[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    int t39;
    int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t60;
    char *t61;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t76;
    char *t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    char *t85;
    char *t86;
    char *t87;
    char *t88;
    char *t89;
    char *t90;
    char *t91;

LAB0:    t1 = (t0 + 25624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 23256U);
    t5 = *((char **)t2);
    t2 = (t0 + 21176U);
    t6 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t7 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 15);
    t11 = (t10 & 1);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t8);
    t13 = (t12 >> 15);
    t14 = (t13 & 1);
    *((unsigned int *)t2) = t14;
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t7);
    t18 = (t16 & t17);
    *((unsigned int *)t15) = t18;
    t19 = (t5 + 4);
    t20 = (t7 + 4);
    t21 = (t15 + 4);
    t22 = *((unsigned int *)t19);
    t23 = *((unsigned int *)t20);
    t24 = (t22 | t23);
    *((unsigned int *)t21) = t24;
    t25 = *((unsigned int *)t21);
    t26 = (t25 != 0);
    if (t26 == 1)
        goto LAB4;

LAB5:
LAB6:    memset(t4, 0, 8);
    t47 = (t15 + 4);
    t48 = *((unsigned int *)t47);
    t49 = (~(t48));
    t50 = *((unsigned int *)t15);
    t51 = (t50 & t49);
    t52 = (t51 & 1U);
    if (t52 != 0)
        goto LAB7;

LAB8:    if (*((unsigned int *)t47) != 0)
        goto LAB9;

LAB10:    t54 = (t4 + 4);
    t55 = *((unsigned int *)t4);
    t56 = *((unsigned int *)t54);
    t57 = (t55 || t56);
    if (t57 > 0)
        goto LAB11;

LAB12:    t70 = *((unsigned int *)t4);
    t71 = (~(t70));
    t72 = *((unsigned int *)t54);
    t73 = (t71 || t72);
    if (t73 > 0)
        goto LAB13;

LAB14:    if (*((unsigned int *)t54) > 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t4) > 0)
        goto LAB17;

LAB18:    memcpy(t3, t74, 8);

LAB19:    t86 = (t0 + 26104);
    t87 = (t86 + 56U);
    t88 = *((char **)t87);
    t89 = (t88 + 56U);
    t90 = *((char **)t89);
    memcpy(t90, t3, 8);
    xsi_driver_vfirst_trans(t86, 0, 31);
    t91 = (t0 + 25960);
    *((int *)t91) = 1;

LAB1:    return;
LAB4:    t27 = *((unsigned int *)t15);
    t28 = *((unsigned int *)t21);
    *((unsigned int *)t15) = (t27 | t28);
    t29 = (t5 + 4);
    t30 = (t7 + 4);
    t31 = *((unsigned int *)t5);
    t32 = (~(t31));
    t33 = *((unsigned int *)t29);
    t34 = (~(t33));
    t35 = *((unsigned int *)t7);
    t36 = (~(t35));
    t37 = *((unsigned int *)t30);
    t38 = (~(t37));
    t39 = (t32 & t34);
    t40 = (t36 & t38);
    t41 = (~(t39));
    t42 = (~(t40));
    t43 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t43 & t41);
    t44 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t44 & t42);
    t45 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t45 & t41);
    t46 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t46 & t42);
    goto LAB6;

LAB7:    *((unsigned int *)t4) = 1;
    goto LAB10;

LAB9:    t53 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t53) = 1;
    goto LAB10;

LAB11:    t60 = (t0 + 21176U);
    t61 = *((char **)t60);
    memset(t59, 0, 8);
    t60 = (t59 + 4);
    t62 = (t61 + 4);
    t63 = *((unsigned int *)t61);
    t64 = (t63 >> 0);
    *((unsigned int *)t59) = t64;
    t65 = *((unsigned int *)t62);
    t66 = (t65 >> 0);
    *((unsigned int *)t60) = t66;
    t67 = *((unsigned int *)t59);
    *((unsigned int *)t59) = (t67 & 65535U);
    t68 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t68 & 65535U);
    t69 = ((char*)((ng1)));
    xsi_vlogtype_concat(t58, 32, 32, 2U, t69, 16, t59, 16);
    goto LAB12;

LAB13:    t76 = (t0 + 21176U);
    t77 = *((char **)t76);
    memset(t75, 0, 8);
    t76 = (t75 + 4);
    t78 = (t77 + 4);
    t79 = *((unsigned int *)t77);
    t80 = (t79 >> 0);
    *((unsigned int *)t75) = t80;
    t81 = *((unsigned int *)t78);
    t82 = (t81 >> 0);
    *((unsigned int *)t76) = t82;
    t83 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t83 & 65535U);
    t84 = *((unsigned int *)t76);
    *((unsigned int *)t76) = (t84 & 65535U);
    t85 = ((char*)((ng2)));
    xsi_vlogtype_concat(t74, 32, 32, 2U, t85, 16, t75, 16);
    goto LAB14;

LAB15:    xsi_vlog_unsigned_bit_combine(t3, 32, t58, 32, t74, 32);
    goto LAB19;

LAB17:    memcpy(t3, t58, 8);
    goto LAB19;

}


extern void work_m_00000000001549244743_3697141265_init()
{
	static char *pe[] = {(void *)Cont_36_0,(void *)Cont_37_1};
	xsi_register_didat("work_m_00000000001549244743_3697141265", "isim/fpga_top_isim_beh.exe.sim/work/m_00000000001549244743_3697141265.didat");
	xsi_register_executes(pe);
}
