#include "bsp_api.h"
#include "r_ioport_api.h"

const ioport_pin_cfg_t g_bsp_pin_cfg_data[] =
{
};

const ioport_cfg_t g_bsp_pin_cfg =
{
    .number_of_pins = sizeof(g_bsp_pin_cfg_data) / sizeof(ioport_pin_cfg_t),
    .p_pin_cfg_data = &g_bsp_pin_cfg_data[0],
};
