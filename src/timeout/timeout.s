.equ NUM_ACCOUNTS, 0x0000
.equ MAX_SLOT_HEIGHT, 0x0008
.equ CLOCK_DATA, 0x0060

.globl entrypoint
entrypoint:
  ldxdw r2, [r1+MAX_SLOT_HEIGHT]
  ldxdw r3, [r1+CLOCK_DATA]
  jgt r3, r2, set_err
  exit

set_err:
  lddw r0, 1
  exit

