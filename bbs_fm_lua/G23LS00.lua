g23ls00 = {}
g23ls00_mt = {__index = g23ls00}
function g23ls00.new(_ARG_0_)
  return setmetatable({}, g23ls00_mt)
end
function g23ls00.OnInit(_ARG_0_, _ARG_1_)
  _ARG_0_.myHandle = _ARG_1_
  _ARG_0_.targetHandle = 0
  _ARG_0_.step = 0
  if _UPVALUE0_ == 0 then
    _UPVALUE0_ = 1
  end
end
function g23ls00.OnUpdate(_ARG_0_)
end
function g23ls00.OnDamage(_ARG_0_, _ARG_1_)
  Entity.GetWorldPos(_UPVALUE0_, _ARG_0_.myHandle)
  if Entity.GetName((Entity.GetAttacker(_ARG_0_.myHandle))) == "b10ls00" and EntityManager:GetEntity((Entity.GetAttacker(_ARG_0_.myHandle))):GetState() == "Tackle" then
    Entity.SetEffect(_ARG_0_.myHandle, "g_ls_cnt_00", "G_LS_CNT1_0", _UPVALUE0_)
    Entity.Out(_ARG_0_.myHandle)
  end
  return 1
end
function g23ls00.OnDamageBefore(_ARG_0_, _ARG_1_)
  return 1
end
EntityFactory:Add("g23ls00", function(_ARG_0_)
  return (g23ls00:new())
end)
