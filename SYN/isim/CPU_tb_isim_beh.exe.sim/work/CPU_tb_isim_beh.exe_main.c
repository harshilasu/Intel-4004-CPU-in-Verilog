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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003487426851_0909227156_init();
    work_m_00000000000568603791_2784346234_init();
    work_m_00000000003174209543_3767757010_init();
    work_m_00000000000164411669_3275311449_init();
    work_m_00000000003382939660_0359808835_init();
    work_m_00000000004058922923_2779239139_init();
    work_m_00000000003416966187_0992280429_init();
    work_m_00000000002249339210_1522289385_init();
    work_m_00000000002297927950_1666137606_init();
    work_m_00000000004023994159_2005639598_init();
    work_m_00000000000760898386_0886308060_init();
    work_m_00000000003777972523_1273460063_init();
    work_m_00000000002612532671_1260819728_init();
    work_m_00000000001549244743_3697141265_init();
    work_m_00000000004195034948_3013612775_init();
    work_m_00000000002849695542_0015213090_init();
    work_m_00000000000829422508_3931953809_init();
    work_m_00000000000591968155_0341474959_init();
    work_m_00000000004134447467_2073120511_init();
    ieee_p_2592010699_init();
    work_a_1358314001_1278825118_init();


    xsi_register_tops("work_m_00000000000591968155_0341474959");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");

    return xsi_run_simulation(argc, argv);

}
