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
static const char *ng0 = "//Mac/Home/Documents/GitHub Files/301/lab5/dec_3to8.v";
static unsigned int ng1[] = {8U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {9U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {10U, 0U};
static unsigned int ng6[] = {4U, 0U};
static unsigned int ng7[] = {11U, 0U};
static unsigned int ng8[] = {12U, 0U};
static unsigned int ng9[] = {16U, 0U};
static unsigned int ng10[] = {13U, 0U};
static unsigned int ng11[] = {32U, 0U};
static unsigned int ng12[] = {14U, 0U};
static unsigned int ng13[] = {64U, 0U};
static unsigned int ng14[] = {15U, 0U};
static unsigned int ng15[] = {128U, 0U};
static unsigned int ng16[] = {0U, 0U};



static void Always_27_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 2848);
    *((int *)t2) = 1;
    t3 = (t0 + 2560);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(27, ng0);

LAB5:    xsi_set_current_line(28, ng0);
    t5 = (t0 + 1048U);
    t6 = *((char **)t5);
    t5 = (t0 + 1208U);
    t7 = *((char **)t5);
    xsi_vlogtype_concat(t4, 4, 4, 2U, t7, 1, t6, 3);

LAB6:    t5 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 4, t5, 4);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng7)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng8)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t8 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng10)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t8 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng12)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t8 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng14)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t8 == 1)
        goto LAB21;

LAB22:
LAB24:
LAB23:    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);

LAB25:    goto LAB2;

LAB7:    xsi_set_current_line(29, ng0);
    t9 = ((char*)((ng2)));
    t10 = (t0 + 1608);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 8);
    goto LAB25;

LAB9:    xsi_set_current_line(30, ng0);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 1608);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB25;

LAB11:    xsi_set_current_line(31, ng0);
    t3 = ((char*)((ng6)));
    t5 = (t0 + 1608);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB25;

LAB13:    xsi_set_current_line(32, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 1608);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB25;

LAB15:    xsi_set_current_line(33, ng0);
    t3 = ((char*)((ng9)));
    t5 = (t0 + 1608);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB25;

LAB17:    xsi_set_current_line(34, ng0);
    t3 = ((char*)((ng11)));
    t5 = (t0 + 1608);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB25;

LAB19:    xsi_set_current_line(35, ng0);
    t3 = ((char*)((ng13)));
    t5 = (t0 + 1608);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB25;

LAB21:    xsi_set_current_line(36, ng0);
    t3 = ((char*)((ng15)));
    t5 = (t0 + 1608);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB25;

}


extern void work_m_00000000003037535855_0300460909_init()
{
	static char *pe[] = {(void *)Always_27_0};
	xsi_register_didat("work_m_00000000003037535855_0300460909", "isim/regfile_diagnostic_isim_beh.exe.sim/work/m_00000000003037535855_0300460909.didat");
	xsi_register_executes(pe);
}
