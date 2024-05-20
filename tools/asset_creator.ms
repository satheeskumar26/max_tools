
-- Asset Creator.
-- Creates a main and sub ctrl on the selected item.


if selection.count > 0 then
(
	bound_box = 0

	-- Add all obj max
	for obj in selection do (
		bound_box += obj.max
	)

	-- Make it to array
	bound_box_x = abs(bound_box.x)

	main_ctrl = Circle radius: (bound_box_x *3) name: "main_ctrl" 
	sub_ctrl = Circle radius:  (bound_box_x *2.2) name: "sub_ctrl" 
	
	sub_ctrl.parent = main_ctrl
	
	-- Parent all sel to sub_ctrl
	$.parent = sub_ctrl
)

else
(
	messageBox "Please select and obj!"
)


