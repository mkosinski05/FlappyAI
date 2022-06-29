/* generated HAL source file - do not edit */
#include "hal_data.h"
gtm_instance_ctrl_t g_timer2_ctrl;
const gtm_extended_cfg_t g_timer2_extend =
{ .generate_interrupt_when_starts = GTM_GIWS_TYPE_DISABLED, .gtm_mode = GTM_TIMER_MODE_INTERVAL, };
const timer_cfg_t g_timer2_cfg =
{ .mode = TIMER_MODE_PERIODIC,
  .period_counts = 12500000 /* Actual period: 0.125 seconds. */,
  .channel = 2,
  .p_callback = NULL,
  .p_context = NULL,
  .cycle_end_ipl = 5,
  .p_extend = &g_timer2_extend,
#if defined(VECTOR_NUMBER_GTM2_COUNTER_OVERFLOW)
    .cycle_end_irq       = VECTOR_NUMBER_GTM2_COUNTER_OVERFLOW,
#else
  .cycle_end_irq = GTM2_OSTM2INT_IRQn,
#endif
        };
/* Instance structure to use this module. */
const timer_instance_t g_timer2 =
{ .p_ctrl = &g_timer2_ctrl, .p_cfg = &g_timer2_cfg, .p_api = &g_timer_on_gtm };
void g_hal_init(void)
{
    g_common_init ();
}
