.equ NUM_ACCOUNTS, 0x0000
.equ MAX_SLOT_HEIGHT, 0x0010
.equ CURRENT_SLOT_HEIGHT, 0x0028
.globl entrypoint
entrypoint:
  ldxdw r0, [r1+NUM_ACCOUNTS]
  ldxdw r2, [r1+MAX_SLOT_HEIGHT]

  mov64 r1, r10
  sub64 r1, CURRENT_SLOT_HEIGHT
  call sol_get_clock_sysvar
  ldxdw r1, [r1+0x0000]
  
  jle r1, r2, end
  lddw r0, 1
end:
  exit

