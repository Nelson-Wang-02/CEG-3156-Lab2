onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_singlecycleprocessor/tb_BranchOut
add wave -noupdate /tb_singlecycleprocessor/tb_GClock
add wave -noupdate /tb_singlecycleprocessor/tb_GReset
add wave -noupdate /tb_singlecycleprocessor/tb_InstructionOut
add wave -noupdate /tb_singlecycleprocessor/tb_MemWriteOut
add wave -noupdate /tb_singlecycleprocessor/tb_MuxOut
add wave -noupdate /tb_singlecycleprocessor/tb_RegWriteOut
add wave -noupdate /tb_singlecycleprocessor/tb_ValueSelect
add wave -noupdate /tb_singlecycleprocessor/tb_ZeroOut
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 256
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {735 ns}
