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
static const char *ng0 = "C:/Users/HpGaming/Dropbox/CSE 320/CSE320 LAB FINAL/CPU/RTL/CPU/ALU.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {32U, 67106816U};
static unsigned int ng3[] = {536870912U, 67108863U};
static unsigned int ng4[] = {603979776U, 67108863U};
static unsigned int ng5[] = {33U, 67106816U};
static unsigned int ng6[] = {36U, 67106816U};
static unsigned int ng7[] = {268435456U, 67108863U};
static int ng8[] = {0, 0};
static int ng9[] = {1, 0};
static unsigned int ng10[] = {469762048U, 65077247U};
static unsigned int ng11[] = {335544320U, 67108863U};
static unsigned int ng12[] = {0U, 67108800U};
static unsigned int ng13[] = {2U, 67108800U};
static unsigned int ng14[] = {3U, 67106816U};
static unsigned int ng15[] = {4U, 67106816U};
static unsigned int ng16[] = {0U, 0U, 0U, 0U};
static unsigned int ng17[] = {6U, 67106816U};
static unsigned int ng18[] = {7U, 67106816U};
static unsigned int ng19[] = {24U, 67106816U};
static unsigned int ng20[] = {25U, 67106816U};
static unsigned int ng21[] = {26U, 67043328U};
static unsigned int ng22[] = {27U, 67043328U};
static unsigned int ng23[] = {34U, 67106816U};
static unsigned int ng24[] = {35U, 67106816U};
static unsigned int ng25[] = {37U, 67106816U};
static unsigned int ng26[] = {38U, 67106816U};
static unsigned int ng27[] = {39U, 67106816U};
static unsigned int ng28[] = {42U, 67106816U};
static int ng29[] = {1, 0, 0, 0};
static int ng30[] = {0, 0, 0, 0};



static void Cont_47_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
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
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;

LAB0:    t1 = (t0 + 24256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 23016);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t3, 0, 8);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 4294967295U);
    if (t11 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t6) == 0)
        goto LAB4;

LAB6:    t12 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t12) = 1;

LAB7:    t13 = (t0 + 24920);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memset(t17, 0, 8);
    t18 = 1U;
    t19 = t18;
    t20 = (t3 + 4);
    t21 = *((unsigned int *)t3);
    t18 = (t18 & t21);
    t22 = *((unsigned int *)t20);
    t19 = (t19 & t22);
    t23 = (t17 + 4);
    t24 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t24 | t18);
    t25 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t25 | t19);
    xsi_driver_vfirst_trans(t13, 0, 0);
    t26 = (t0 + 24824);
    *((int *)t26) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t3) = 1;
    goto LAB7;

}

static void Always_52_1(char *t0)
{
    char t7[16];
    char t10[8];
    char t41[8];
    char t42[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t8;
    char *t9;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    int t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t43;
    char *t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;

LAB0:    t1 = (t0 + 24504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 24840);
    *((int *)t2) = 1;
    t3 = (t0 + 24536);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(52, ng0);

LAB5:    xsi_set_current_line(54, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 23176);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 23336);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 21496U);
    t3 = *((char **)t2);

LAB6:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_zcompare(t3, 32, t2, 32);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_zcompare(t3, 32, t2, 32);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_zcompare(t3, 32, t2, 32);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_zcompare(t3, 32, t2, 32);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_zcompare(t3, 32, t2, 32);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_zcompare(t3, 32, t2, 32);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_zcompare(t3, 32, t2, 32);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_zcompare(t3, 32, t2, 32);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_zcompare(t3, 32, t2, 32);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_zcompare(t3, 32, t2, 32);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_zcompare(t3, 32, t2, 32);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_zcompare(t3, 32, t2, 32);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng17)));
    t6 = xsi_vlog_unsigned_case_zcompare(t3, 32, t2, 32);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng18)));
    t6 = xsi_vlog_unsigned_case_zcompare(t3, 32, t2, 32);
    if (t6 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng19)));
    t6 = xsi_vlog_unsigned_case_zcompare(t3, 32, t2, 32);
    if (t6 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng20)));
    t6 = xsi_vlog_unsigned_case_zcompare(t3, 32, t2, 32);
    if (t6 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng21)));
    t6 = xsi_vlog_unsigned_case_zcompare(t3, 32, t2, 32);
    if (t6 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng22)));
    t6 = xsi_vlog_unsigned_case_zcompare(t3, 32, t2, 32);
    if (t6 == 1)
        goto LAB41;

LAB42:    t2 = ((char*)((ng23)));
    t6 = xsi_vlog_unsigned_case_zcompare(t3, 32, t2, 32);
    if (t6 == 1)
        goto LAB43;

LAB44:    t2 = ((char*)((ng24)));
    t6 = xsi_vlog_unsigned_case_zcompare(t3, 32, t2, 32);
    if (t6 == 1)
        goto LAB45;

LAB46:    t2 = ((char*)((ng25)));
    t6 = xsi_vlog_unsigned_case_zcompare(t3, 32, t2, 32);
    if (t6 == 1)
        goto LAB47;

LAB48:    t2 = ((char*)((ng26)));
    t6 = xsi_vlog_unsigned_case_zcompare(t3, 32, t2, 32);
    if (t6 == 1)
        goto LAB49;

LAB50:    t2 = ((char*)((ng27)));
    t6 = xsi_vlog_unsigned_case_zcompare(t3, 32, t2, 32);
    if (t6 == 1)
        goto LAB51;

LAB52:    t2 = ((char*)((ng28)));
    t6 = xsi_vlog_unsigned_case_zcompare(t3, 32, t2, 32);
    if (t6 == 1)
        goto LAB53;

LAB54:
LAB56:
LAB55:    xsi_set_current_line(375, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 23016);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 32);

LAB57:    goto LAB2;

LAB7:    xsi_set_current_line(77, ng0);
    t4 = (t0 + 22136U);
    t5 = *((char **)t4);
    t4 = (t0 + 22616U);
    t8 = *((char **)t4);
    xsi_vlogtype_concat(t7, 33, 33, 2U, t8, 1, t5, 32);
    t4 = (t0 + 23016);
    xsi_vlogvar_assign_value(t4, t7, 0, 0, 32);
    t9 = (t0 + 23176);
    xsi_vlogvar_assign_value(t9, t7, 32, 0, 1);
    goto LAB57;

LAB9:    xsi_set_current_line(90, ng0);
    t4 = (t0 + 22136U);
    t5 = *((char **)t4);
    t4 = (t0 + 22616U);
    t8 = *((char **)t4);
    xsi_vlogtype_concat(t7, 33, 33, 2U, t8, 1, t5, 32);
    t4 = (t0 + 23016);
    xsi_vlogvar_assign_value(t4, t7, 0, 0, 32);
    t9 = (t0 + 23176);
    xsi_vlogvar_assign_value(t9, t7, 32, 0, 1);
    goto LAB57;

LAB11:    xsi_set_current_line(106, ng0);
    t4 = (t0 + 22136U);
    t5 = *((char **)t4);
    t4 = (t0 + 22616U);
    t8 = *((char **)t4);
    xsi_vlogtype_concat(t7, 33, 33, 2U, t8, 1, t5, 32);
    t4 = (t0 + 23016);
    xsi_vlogvar_assign_value(t4, t7, 0, 0, 32);
    t9 = (t0 + 23336);
    xsi_vlogvar_assign_value(t9, t7, 32, 0, 1);
    goto LAB57;

LAB13:    xsi_set_current_line(122, ng0);
    t4 = (t0 + 22136U);
    t5 = *((char **)t4);
    t4 = (t0 + 22616U);
    t8 = *((char **)t4);
    xsi_vlogtype_concat(t7, 33, 33, 2U, t8, 1, t5, 32);
    t4 = (t0 + 23016);
    xsi_vlogvar_assign_value(t4, t7, 0, 0, 32);
    t9 = (t0 + 23336);
    xsi_vlogvar_assign_value(t9, t7, 32, 0, 1);
    goto LAB57;

LAB15:    xsi_set_current_line(136, ng0);
    t4 = (t0 + 21176U);
    t5 = *((char **)t4);
    t4 = (t0 + 21336U);
    t8 = *((char **)t4);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t8);
    t13 = (t11 & t12);
    *((unsigned int *)t10) = t13;
    t4 = (t5 + 4);
    t9 = (t8 + 4);
    t14 = (t10 + 4);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t9);
    t17 = (t15 | t16);
    *((unsigned int *)t14) = t17;
    t18 = *((unsigned int *)t14);
    t19 = (t18 != 0);
    if (t19 == 1)
        goto LAB58;

LAB59:
LAB60:    t40 = (t0 + 23016);
    xsi_vlogvar_assign_value(t40, t10, 0, 0, 32);
    goto LAB57;

LAB17:    xsi_set_current_line(160, ng0);
    t4 = (t0 + 21176U);
    t5 = *((char **)t4);
    t4 = (t0 + 21336U);
    t8 = *((char **)t4);
    memset(t42, 0, 8);
    t4 = (t5 + 4);
    t9 = (t8 + 4);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t8);
    t13 = (t11 ^ t12);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t9);
    t17 = (t15 ^ t16);
    t18 = (t13 | t17);
    t19 = *((unsigned int *)t4);
    t20 = *((unsigned int *)t9);
    t21 = (t19 | t20);
    t24 = (~(t21));
    t25 = (t18 & t24);
    if (t25 != 0)
        goto LAB64;

LAB61:    if (t21 != 0)
        goto LAB63;

LAB62:    *((unsigned int *)t42) = 1;

LAB64:    memset(t41, 0, 8);
    t22 = (t42 + 4);
    t26 = *((unsigned int *)t22);
    t27 = (~(t26));
    t28 = *((unsigned int *)t42);
    t29 = (t28 & t27);
    t30 = (t29 & 1U);
    if (t30 != 0)
        goto LAB65;

LAB66:    if (*((unsigned int *)t22) != 0)
        goto LAB67;

LAB68:    t40 = (t41 + 4);
    t31 = *((unsigned int *)t41);
    t34 = *((unsigned int *)t40);
    t35 = (t31 || t34);
    if (t35 > 0)
        goto LAB69;

LAB70:    t36 = *((unsigned int *)t41);
    t37 = (~(t36));
    t38 = *((unsigned int *)t40);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB71;

LAB72:    if (*((unsigned int *)t40) > 0)
        goto LAB73;

LAB74:    if (*((unsigned int *)t41) > 0)
        goto LAB75;

LAB76:    memcpy(t10, t44, 8);

LAB77:    t45 = (t0 + 23016);
    xsi_vlogvar_assign_value(t45, t10, 0, 0, 32);
    goto LAB57;

LAB19:    xsi_set_current_line(179, ng0);
    t4 = (t0 + 21176U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng8)));
    memset(t10, 0, 8);
    t8 = (t5 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB79;

LAB78:    t9 = (t4 + 4);
    if (*((unsigned int *)t9) != 0)
        goto LAB79;

LAB82:    if (*((unsigned int *)t5) > *((unsigned int *)t4))
        goto LAB80;

LAB81:    t22 = (t0 + 23016);
    xsi_vlogvar_assign_value(t22, t10, 0, 0, 32);
    goto LAB57;

LAB21:    xsi_set_current_line(197, ng0);
    t4 = (t0 + 21176U);
    t5 = *((char **)t4);
    t4 = (t0 + 21336U);
    t8 = *((char **)t4);
    memset(t42, 0, 8);
    t4 = (t5 + 4);
    t9 = (t8 + 4);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t8);
    t13 = (t11 ^ t12);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t9);
    t17 = (t15 ^ t16);
    t18 = (t13 | t17);
    t19 = *((unsigned int *)t4);
    t20 = *((unsigned int *)t9);
    t21 = (t19 | t20);
    t24 = (~(t21));
    t25 = (t18 & t24);
    if (t25 != 0)
        goto LAB84;

LAB83:    if (t21 != 0)
        goto LAB85;

LAB86:    memset(t41, 0, 8);
    t22 = (t42 + 4);
    t26 = *((unsigned int *)t22);
    t27 = (~(t26));
    t28 = *((unsigned int *)t42);
    t29 = (t28 & t27);
    t30 = (t29 & 1U);
    if (t30 != 0)
        goto LAB87;

LAB88:    if (*((unsigned int *)t22) != 0)
        goto LAB89;

LAB90:    t40 = (t41 + 4);
    t31 = *((unsigned int *)t41);
    t34 = *((unsigned int *)t40);
    t35 = (t31 || t34);
    if (t35 > 0)
        goto LAB91;

LAB92:    t36 = *((unsigned int *)t41);
    t37 = (~(t36));
    t38 = *((unsigned int *)t40);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB93;

LAB94:    if (*((unsigned int *)t40) > 0)
        goto LAB95;

LAB96:    if (*((unsigned int *)t41) > 0)
        goto LAB97;

LAB98:    memcpy(t10, t44, 8);

LAB99:    t45 = (t0 + 23016);
    xsi_vlogvar_assign_value(t45, t10, 0, 0, 32);
    goto LAB57;

LAB23:    xsi_set_current_line(214, ng0);
    t4 = (t0 + 21336U);
    t5 = *((char **)t4);
    t4 = (t0 + 21656U);
    t8 = *((char **)t4);
    xsi_vlog_unsigned_lshift(t7, 33, t5, 32, t8, 5);
    t4 = (t0 + 23016);
    xsi_vlogvar_assign_value(t4, t7, 0, 0, 32);
    t9 = (t0 + 23336);
    xsi_vlogvar_assign_value(t9, t7, 32, 0, 1);
    goto LAB57;

LAB25:    xsi_set_current_line(229, ng0);
    t4 = (t0 + 21336U);
    t5 = *((char **)t4);
    t4 = (t0 + 21656U);
    t8 = *((char **)t4);
    xsi_vlog_unsigned_rshift(t7, 33, t5, 32, t8, 5);
    t4 = (t0 + 23016);
    xsi_vlogvar_assign_value(t4, t7, 0, 0, 32);
    t9 = (t0 + 23336);
    xsi_vlogvar_assign_value(t9, t7, 32, 0, 1);
    goto LAB57;

LAB27:    xsi_set_current_line(244, ng0);
    t4 = (t0 + 21336U);
    t5 = *((char **)t4);
    t4 = (t0 + 21656U);
    t8 = *((char **)t4);
    xsi_vlog_unsigned_arith_rshift(t7, 33, t5, 32, t8, 5);
    t4 = (t0 + 23016);
    xsi_vlogvar_assign_value(t4, t7, 0, 0, 32);
    t9 = (t0 + 23336);
    xsi_vlogvar_assign_value(t9, t7, 32, 0, 1);
    goto LAB57;

LAB29:    xsi_set_current_line(248, ng0);
    t4 = ((char*)((ng16)));
    t5 = (t0 + 23016);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    t8 = (t0 + 23336);
    xsi_vlogvar_assign_value(t8, t4, 32, 0, 1);
    goto LAB57;

LAB31:    xsi_set_current_line(252, ng0);
    t4 = ((char*)((ng16)));
    t5 = (t0 + 23016);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    t8 = (t0 + 23336);
    xsi_vlogvar_assign_value(t8, t4, 32, 0, 1);
    goto LAB57;

LAB33:    xsi_set_current_line(253, ng0);
    t4 = ((char*)((ng16)));
    t5 = (t0 + 23016);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    t8 = (t0 + 23336);
    xsi_vlogvar_assign_value(t8, t4, 32, 0, 1);
    goto LAB57;

LAB35:    xsi_set_current_line(260, ng0);
    t4 = (t0 + 22456U);
    t5 = *((char **)t4);
    t4 = (t0 + 23016);
    xsi_vlogvar_assign_value(t4, t5, 0, 0, 32);
    t8 = (t0 + 23336);
    xsi_vlogvar_assign_value(t8, t5, 32, 0, 1);
    goto LAB57;

LAB37:    xsi_set_current_line(269, ng0);
    t4 = (t0 + 22456U);
    t5 = *((char **)t4);
    t4 = (t0 + 23016);
    xsi_vlogvar_assign_value(t4, t5, 0, 0, 32);
    t8 = (t0 + 23336);
    xsi_vlogvar_assign_value(t8, t5, 32, 0, 1);
    goto LAB57;

LAB39:    xsi_set_current_line(276, ng0);
    t4 = (t0 + 22296U);
    t5 = *((char **)t4);
    memcpy(t7, t5, 8);
    t4 = (t7 + 8);
    memset(t4, 0, 8);
    t8 = (t0 + 23016);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 32);
    t9 = (t0 + 23336);
    xsi_vlogvar_assign_value(t9, t7, 32, 0, 1);
    goto LAB57;

LAB41:    xsi_set_current_line(286, ng0);
    t4 = (t0 + 22296U);
    t5 = *((char **)t4);
    memcpy(t7, t5, 8);
    t4 = (t7 + 8);
    memset(t4, 0, 8);
    t8 = (t0 + 23016);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 32);
    t9 = (t0 + 23336);
    xsi_vlogvar_assign_value(t9, t7, 32, 0, 1);
    goto LAB57;

LAB43:    xsi_set_current_line(294, ng0);
    t4 = (t0 + 21176U);
    t5 = *((char **)t4);
    t4 = (t0 + 21336U);
    t8 = *((char **)t4);
    xsi_vlog_unsigned_minus(t7, 33, t5, 32, t8, 32);
    t4 = (t0 + 23016);
    xsi_vlogvar_assign_value(t4, t7, 0, 0, 32);
    t9 = (t0 + 23176);
    xsi_vlogvar_assign_value(t9, t7, 32, 0, 1);
    goto LAB57;

LAB45:    xsi_set_current_line(301, ng0);
    t4 = (t0 + 21176U);
    t5 = *((char **)t4);
    t4 = (t0 + 21336U);
    t8 = *((char **)t4);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_minus(t10, 32, t5, 32, t8, 32);
    t4 = (t0 + 23016);
    xsi_vlogvar_assign_value(t4, t10, 0, 0, 32);
    goto LAB57;

LAB47:    xsi_set_current_line(315, ng0);
    t4 = (t0 + 21176U);
    t5 = *((char **)t4);
    t4 = (t0 + 21336U);
    t8 = *((char **)t4);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t8);
    t13 = (t11 | t12);
    *((unsigned int *)t10) = t13;
    t4 = (t5 + 4);
    t9 = (t8 + 4);
    t14 = (t10 + 4);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t9);
    t17 = (t15 | t16);
    *((unsigned int *)t14) = t17;
    t18 = *((unsigned int *)t14);
    t19 = (t18 != 0);
    if (t19 == 1)
        goto LAB100;

LAB101:
LAB102:    t40 = (t0 + 23016);
    xsi_vlogvar_assign_value(t40, t10, 0, 0, 32);
    goto LAB57;

LAB49:    xsi_set_current_line(319, ng0);
    t4 = (t0 + 21176U);
    t5 = *((char **)t4);
    t4 = (t0 + 21336U);
    t8 = *((char **)t4);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t8);
    t13 = (t11 ^ t12);
    *((unsigned int *)t10) = t13;
    t4 = (t5 + 4);
    t9 = (t8 + 4);
    t14 = (t10 + 4);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t9);
    t17 = (t15 | t16);
    *((unsigned int *)t14) = t17;
    t18 = *((unsigned int *)t14);
    t19 = (t18 != 0);
    if (t19 == 1)
        goto LAB103;

LAB104:
LAB105:    t22 = (t0 + 23016);
    xsi_vlogvar_assign_value(t22, t10, 0, 0, 32);
    goto LAB57;

LAB51:    xsi_set_current_line(323, ng0);
    t4 = (t0 + 21176U);
    t5 = *((char **)t4);
    t4 = (t0 + 21336U);
    t8 = *((char **)t4);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t8);
    t13 = (t11 | t12);
    *((unsigned int *)t41) = t13;
    t4 = (t5 + 4);
    t9 = (t8 + 4);
    t14 = (t41 + 4);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t9);
    t17 = (t15 | t16);
    *((unsigned int *)t14) = t17;
    t18 = *((unsigned int *)t14);
    t19 = (t18 != 0);
    if (t19 == 1)
        goto LAB106;

LAB107:
LAB108:    memset(t10, 0, 8);
    t40 = (t10 + 4);
    t43 = (t41 + 4);
    t36 = *((unsigned int *)t41);
    t37 = (~(t36));
    *((unsigned int *)t10) = t37;
    *((unsigned int *)t40) = 0;
    if (*((unsigned int *)t43) != 0)
        goto LAB110;

LAB109:    t48 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t48 & 4294967295U);
    t49 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t49 & 4294967295U);
    t44 = (t0 + 23016);
    xsi_vlogvar_assign_value(t44, t10, 0, 0, 32);
    goto LAB57;

LAB53:    xsi_set_current_line(338, ng0);
    t4 = (t0 + 21176U);
    t5 = *((char **)t4);
    t4 = (t0 + 21336U);
    t8 = *((char **)t4);
    memset(t41, 0, 8);
    t4 = (t5 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB112;

LAB111:    t9 = (t8 + 4);
    if (*((unsigned int *)t9) != 0)
        goto LAB112;

LAB115:    if (*((unsigned int *)t5) < *((unsigned int *)t8))
        goto LAB113;

LAB114:    memset(t10, 0, 8);
    t22 = (t41 + 4);
    t11 = *((unsigned int *)t22);
    t12 = (~(t11));
    t13 = *((unsigned int *)t41);
    t15 = (t13 & t12);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB116;

LAB117:    if (*((unsigned int *)t22) != 0)
        goto LAB118;

LAB119:    t40 = (t10 + 4);
    t17 = *((unsigned int *)t10);
    t18 = *((unsigned int *)t40);
    t19 = (t17 || t18);
    if (t19 > 0)
        goto LAB120;

LAB121:    t20 = *((unsigned int *)t10);
    t21 = (~(t20));
    t24 = *((unsigned int *)t40);
    t25 = (t21 || t24);
    if (t25 > 0)
        goto LAB122;

LAB123:    if (*((unsigned int *)t40) > 0)
        goto LAB124;

LAB125:    if (*((unsigned int *)t10) > 0)
        goto LAB126;

LAB127:    memcpy(t7, t44, 16);

LAB128:    t45 = (t0 + 23016);
    xsi_vlogvar_assign_value(t45, t7, 0, 0, 32);
    t50 = (t0 + 23336);
    xsi_vlogvar_assign_value(t50, t7, 32, 0, 1);
    goto LAB57;

LAB58:    t20 = *((unsigned int *)t10);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t10) = (t20 | t21);
    t22 = (t5 + 4);
    t23 = (t8 + 4);
    t24 = *((unsigned int *)t5);
    t25 = (~(t24));
    t26 = *((unsigned int *)t22);
    t27 = (~(t26));
    t28 = *((unsigned int *)t8);
    t29 = (~(t28));
    t30 = *((unsigned int *)t23);
    t31 = (~(t30));
    t32 = (t25 & t27);
    t33 = (t29 & t31);
    t34 = (~(t32));
    t35 = (~(t33));
    t36 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t36 & t34);
    t37 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t37 & t35);
    t38 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t38 & t34);
    t39 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t39 & t35);
    goto LAB60;

LAB63:    t14 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB64;

LAB65:    *((unsigned int *)t41) = 1;
    goto LAB68;

LAB67:    t23 = (t41 + 4);
    *((unsigned int *)t41) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB68;

LAB69:    t43 = ((char*)((ng8)));
    goto LAB70;

LAB71:    t44 = ((char*)((ng9)));
    goto LAB72;

LAB73:    xsi_vlog_unsigned_bit_combine(t10, 32, t43, 32, t44, 32);
    goto LAB77;

LAB75:    memcpy(t10, t43, 8);
    goto LAB77;

LAB79:    t14 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB81;

LAB80:    *((unsigned int *)t10) = 1;
    goto LAB81;

LAB84:    *((unsigned int *)t42) = 1;
    goto LAB86;

LAB85:    t14 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB86;

LAB87:    *((unsigned int *)t41) = 1;
    goto LAB90;

LAB89:    t23 = (t41 + 4);
    *((unsigned int *)t41) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB90;

LAB91:    t43 = ((char*)((ng8)));
    goto LAB92;

LAB93:    t44 = ((char*)((ng9)));
    goto LAB94;

LAB95:    xsi_vlog_unsigned_bit_combine(t10, 32, t43, 32, t44, 32);
    goto LAB99;

LAB97:    memcpy(t10, t43, 8);
    goto LAB99;

LAB100:    t20 = *((unsigned int *)t10);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t10) = (t20 | t21);
    t22 = (t5 + 4);
    t23 = (t8 + 4);
    t24 = *((unsigned int *)t22);
    t25 = (~(t24));
    t26 = *((unsigned int *)t5);
    t32 = (t26 & t25);
    t27 = *((unsigned int *)t23);
    t28 = (~(t27));
    t29 = *((unsigned int *)t8);
    t33 = (t29 & t28);
    t30 = (~(t32));
    t31 = (~(t33));
    t34 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t34 & t30);
    t35 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t35 & t31);
    goto LAB102;

LAB103:    t20 = *((unsigned int *)t10);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t10) = (t20 | t21);
    goto LAB105;

LAB106:    t20 = *((unsigned int *)t41);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t41) = (t20 | t21);
    t22 = (t5 + 4);
    t23 = (t8 + 4);
    t24 = *((unsigned int *)t22);
    t25 = (~(t24));
    t26 = *((unsigned int *)t5);
    t32 = (t26 & t25);
    t27 = *((unsigned int *)t23);
    t28 = (~(t27));
    t29 = *((unsigned int *)t8);
    t33 = (t29 & t28);
    t30 = (~(t32));
    t31 = (~(t33));
    t34 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t34 & t30);
    t35 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t35 & t31);
    goto LAB108;

LAB110:    t38 = *((unsigned int *)t10);
    t39 = *((unsigned int *)t43);
    *((unsigned int *)t10) = (t38 | t39);
    t46 = *((unsigned int *)t40);
    t47 = *((unsigned int *)t43);
    *((unsigned int *)t40) = (t46 | t47);
    goto LAB109;

LAB112:    t14 = (t41 + 4);
    *((unsigned int *)t41) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB114;

LAB113:    *((unsigned int *)t41) = 1;
    goto LAB114;

LAB116:    *((unsigned int *)t10) = 1;
    goto LAB119;

LAB118:    t23 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB119;

LAB120:    t43 = ((char*)((ng29)));
    goto LAB121;

LAB122:    t44 = ((char*)((ng30)));
    goto LAB123;

LAB124:    xsi_vlog_unsigned_bit_combine(t7, 33, t43, 33, t44, 33);
    goto LAB128;

LAB126:    memcpy(t7, t43, 16);
    goto LAB128;

}


extern void work_m_00000000000760898386_0886308060_init()
{
	static char *pe[] = {(void *)Cont_47_0,(void *)Always_52_1};
	xsi_register_didat("work_m_00000000000760898386_0886308060", "isim/CPU_tb_isim_beh.exe.sim/work/m_00000000000760898386_0886308060.didat");
	xsi_register_executes(pe);
}
