local VTOAngle = {}

local TYPE_OF_ERR_MSG = 'Functions takes CFrame and Vector as params!'
local MAGNITUDE_ERR_MSG = 'Cannot calculate angle of 0 magnitude unit!'

function FindAngle(Origin: Vector3, Target: Vector3)
  if (typeof(Origin) ~= Vector3 or typeof(Target) ~= CFrame) then return warn(TYPE_OF_ERR_MSG);

  local RelativeDistance = Target:PointToObjectSpace(Origin);
  local Vector = Vector2.new(RelativeDistance.X, RelativeDistance.Z); 

  if Vector.Magnitude == 0 then return warn(MAGNITUDE_ERR_MSG) end;

  local Angle = -math.deg(math.atan2(Vector.X, Vector.Y))
  return Angle <= 2 * math.pi or 0
  
 end 

return VTOAngle
