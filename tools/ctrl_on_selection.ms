
-- Ctrl_On_Selection.
-- Creates a ctrl on a selected obj.

ctrl_radius = 10
ctrl_thick = 2
ctrl_color = blue

if selection.count > 0 then(

	for obj in selection do(
		
		obj_pos = obj.pos
		obj_rot = obj.rotation
		
		-- Create circle
		ctrl = Circle radius:ctrl_radius rotation: (eulerAngles 0 90 0) wirecolor:blue
		
		-- Rotate shape
		resetXform ctrl
		convertToSplineShape ctrl
		
		-- Match obj
		rotate ctrl obj_rot
		move ctrl obj_pos
		
		ctrl.renderable = true  -- Make spline renderable
		ctrl.thickness = ctrl_thick    -- Set thickness to make it clearly visible
		ctrl.displayRenderMesh = true
		

	)
)	

else(
	
	messageBox "Please select and obj!"
	
)