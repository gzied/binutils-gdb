#source: ../ld-x86-64/property-x86-isa1.s
#source: ../ld-x86-64/simple.s
#as: --32 -mx86-used-note=no
#ld: -m elf_i386 -z x86-64-v4
#readelf: -n

Displaying notes found in: .note.gnu.property
[ 	]+Owner[ 	]+Data size[ 	]+Description
  GNU                  0x[0-9a-f]+	NT_GNU_PROPERTY_TYPE_0
      Properties: x86 ISA needed: x86-64-baseline, x86-64-v4
	<procesor-specific type 0xc0009000 data: 30 00 00 00 >
