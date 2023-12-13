```cmd
diskpart

# Disk Part Terminal Will open new
list disk
select disk X

# Remove Partitions
clean

# create new primary partition
create partition primary

# format
format fs=exFAT quick

# Assign letter
assign

exit

```
