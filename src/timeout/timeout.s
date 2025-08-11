.equ NUM_ACCOUNTS, 0x0000
.equ MAX_SLOT_HEIGHT, 0x0010
.equ CLOCK_DATA, 0x0060

.globl entrypoint
entrypoint:
  ldxdw r2, [r1+MAX_SLOT_HEIGHT]

  ldxdw r3, [r1+CLOCK_DATA]
  ldxdw r4, [r3+0x0000]
  
  lddw r0, 0
  jle r4, r2, end
  lddw r0, 1
end:
  exit

