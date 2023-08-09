local bit_band,
    bit_bnot,
    bit_bor,
    bit_lshift,
    cheat_AngleToForward,
    Cheat_AngleToForward,
    cheat_FireBullet,
    Cheat_GetBinds,
    Cheat_GetCheatUserName,
    Cheat_GetMousePos,
    Cheat_IsKeyDown,
    Cheat_IsMenuVisible,
    cheat_RegisterCallback,
    cheat_VectorToAngle,
    Cheat_VectorToAngle,
    Color_new,
    CVar_FindVar,
    EngineClient_GetScreenSize,
    EntityList_GetClientEntity,
    EntityList_GetLocalPlayer,
    EntityList_GetPlayer,
    EntityList_GetPlayerResource,
    ffi_cast,
    ffi_cdef,
    ffi_new,
    ffi_typeof,
    math_abs,
    math_ceil,
    math_clamp,
    math_cos,
    math_floor,
    math_lerp,
    math_max,
    math_min,
    math_normalize,
    math_rad,
    math_round,
    Menu_Combo,
    Menu_FindVar,
    Menu_SliderInt,
    Menu_Switch,
    print,
    pairs,
    Render_InitFont,
    string_format,
    table_insert,
    table_reference_condition,
    Utils_CreateInterface,
    Utils_CreateInterface,
    Utils_PatternScan,
    utils_RandomFloat,
    Vector_new,
    Vector2_new,
    fn,
    type,
    tonumber,
    error,
    condition,
    EngineClient_GetLocalPlayer,
    EngineClient_GetViewAngles,
    EngineClient_IsConnected,
    EngineClient_IsInGame,
    EngineTrace_TraceRay,
    EntityList_GetEntitiesByName,
    EntityList_GetPlayerForUserID,
    math_closest_point_on_ray,
    math_percent_to_pix,
    math_sin,
    math_vector_lerp,
    MatSystem_FirstMaterial,
    MatSystem_GetMaterial,
    MatSystem_NextMaterial,
    Menu_Button,
    Menu_ColorEdit,
    Menu_ComboColor,
    Menu_DestroyItem,
    Menu_MultiCombo,
    menu_SliderInt,
    menu_SwitchColor,
    Menu_SwitchColor,
    QAngle_new,
    Render_BoxFilled,
    Render_CalcTextSize,
    Render_Circle,
    Render_CircleFilled,
    Render_GradientBoxFilled,
    Render_Line,
    Render_PolyFilled,
    Render_Text,
    Render_WorldToScreen,
    table_remove,
    table_sort,
    unpack,
    Utils_RandomFloat,
    Utils_RandomInt,
    ipairs,
    pcall,
    tostring
    =
    bit.band,
    bit.bnot,
    bit.bor,
    bit.lshift,
    Cheat.AngleToForward,
    Cheat.AngleToForward,
    Cheat.FireBullet,
    Cheat.GetBinds,
    Cheat.GetCheatUserName,
    Cheat.GetMousePos,
    Cheat.IsKeyDown,
    Cheat.IsMenuVisible,
    Cheat.RegisterCallback,
    Cheat.VectorToAngle,
    Cheat.VectorToAngle,
    Color.new,
    CVar.FindVar,
    EngineClient.GetScreenSize,
    EntityList.GetClientEntity,
    EntityList.GetLocalPlayer,
    EntityList.GetPlayer,
    EntityList.GetPlayerResource,
    ffi.cast,
    ffi.cdef,
    ffi.new,
    ffi.typeof,
    math.abs,
    math.ceil,
    math.clamp,
    math.cos,
    math.floor,
    math.lerp,
    math.max,
    math.min,
    math.normalize,
    math.rad,
    math.round,
    Menu.Combo,
    Menu.FindVar,
    Menu.SliderInt,
    Menu.Switch,
    print,
    pairs,
    Render.InitFont,
    string.format,
    table.insert,
    table.reference_condition,
    Utils.CreateInterface,
    Utils.CreateInterface,
    Utils.PatternScan,
    Utils.RandomFloat,
    Vector.new,
    Vector2.new,
    fn,
    type,
    tonumber,
    error,
    condition,
    EngineClient.GetLocalPlayer,
    EngineClient.GetViewAngles,
    EngineClient.IsConnected,
    EngineClient.IsInGame,
    EngineTrace.TraceRay,
    EntityList.GetEntitiesByName,
    EntityList.GetPlayerForUserID,
    math.closest_point_on_ray,
    math.percent_to_pix,
    math.sin,
    math.vector_lerp,
    MatSystem.FirstMaterial,
    MatSystem.GetMaterial,
    MatSystem.NextMaterial,
    Menu.Button,
    Menu.ColorEdit,
    Menu.ComboColor,
    Menu.DestroyItem,
    Menu.MultiCombo,
    Menu.SliderInt,
    Menu.SwitchColor,
    Menu.SwitchColor,
    QAngle.new,
    Render.BoxFilled,
    Render.CalcTextSize,
    Render.Circle,
    Render.CircleFilled,
    Render.GradientBoxFilled,
    Render.Line,
    Render.PolyFilled,
    Render.Text,
    Render.WorldToScreen,
    table.remove,
    table.sort,
    unpack,
    Utils.RandomFloat,
    Utils.RandomInt,
    ipairs,
    pcall,
    tostring
local Render_GetMenuPos = Render.GetMenuPos
local Render_GetMenuSize = Render.GetMenuSize
local exploits_GetCharge = function()
    return 1
end
local Color_RGBA = function(r, g, b, a)
    return Color_new(r/255, g/255, b/255, a/255)
end

local o_Render_Text = Render_Text

local Render_Text = function(text, pos, clr, size, font, out, cent)
    out = out or false
    cent = cent or false
    if cent then
        local offset = Render_CalcTextSize(text, size, font)
        o_Render_Text(text, pos - offset / 2, clr, size, font, out)
    else
        o_Render_Text(text, pos, clr, size, font, out)
    end
end


local ui_handler = {}
local handlers = {}
local font = {}
local entity_helpers = {}
local ffi_handler = {}
local AntiAim_on_use = {}
local defines = {}
local viewmodel_in_scope = {}
local visual_controller = {}
local bind_system = {}
local conditional_AntiAims = {}
local neverlose_refs = {}
local animation_breaker = {}
local anti_bruteforce = {}
local console_color = {}
local menu_effects = {}
local custom_scope = {}
local hitsound = {}
local manual_arrows = {}
local damage_marker = {}
local kill_say = {}
local hitlog = {}

local Cheat_AddNotify = function(a, v)
    return
end

local cheat_AddEvent = function(b)
    return
end

local configs_validation_key = "spirthack_innovations_llc"
--[[
kill_say.phrases = {
    "1 пидорасина ебаная спи",
    "круто вчера туалет помыла шлюха",
    "игрок?",
    "парашыч ебаный",
    "1 животно ебаное ",
    "оттарабанен 100 сантиметровым фалосом",
    "обоссан",
    "by SANCHEZj hvh boss",
    "але уебище химера яв гетни потом вырыгивай что то",
    "ебать ты на хуек присел нихуева",
    "заглотнул коки яки",
    "в сон нахуй",
    "уебашил дилдом по ебалу",
    "сбил пидораса обоссаного",
    "глотай овца",
    "трахнут",
    "поспи хуйсоска",
    "лови припиздок немощный",
    "слишком сочный для Chimera.technologies ",
    "sleep",
    "изи упал нищий",
    "посажен на хуй",
    "GLhf.exe Activated",
    "what you do dog??",
    "!medic НЮХАЙ БЭБРУ я полечился",
    "1 week lou doggo ovnet",
    "l2p bot",
    "why you sleep dog???",
    "лови тапыча мусор",
    "1 мусор учись играть",
    "$$$ 1 TAP UFF YA $$$ ∩ ( ͡⚆ ͜ʖ ͡⚆) ∩",
    "че, пососал глупый даун?",
    "я ķ¤нɥåλ ϯβ¤£ü ɱåɱķ£ β Ƥ¤ϯ",
    "улетаешь со своего ванвея хуесос",
    "0 iq",
    "сразу видно кфг иссуе мб конфиг у витмы прикупишь ?",
    "iq ? HAHAHA",
    "Best and cheap configurations for gamesense, ot and neverlose waiting for your order  at ---> vk.com/id498406374",
    "ХАХАХАХАХХАХА НИЩИЙ УЛЕТЕЛ (◣_◢)",
    "земля те землей хуйло чиста еденицей отлетел))",
    "Создатель JS REZOLVER",
}]]
-- эта хуйня русский язык не знает


    kill_say.phrases = {
        "1 pidorasina ebanaya spi",
    "kruto vchera tualet pomyla shlyuha",
    "igrok?",
    "parashych ebanyj",
    "1 zhivotno ebanoe ",
    "ottarabanen 100 santimetrovym falosom",
    "obossan",
    "by SANCHEZj hvh boss",
    "ale uebishche himera yav getni potom vyrygivaj chto to",
    "ebat' ty na huek prisel nihueva",
    "zaglotnul koki yaki",
    "v son nahuj",
    "uebashil dildom po ebalu",
    "sbil pidorasa obossanogo",
    "glotaj ovca",
    "trahnut",
    "pospi hujsoska",
    "lovi pripizdok nemoshchnyj",
    "slishkom sochnyj dlya Chimera.technologies ",
    "sleep",
    "izi upal nishchij",
    "posazhen na huj",
    "GLhf.exe Activated",
    "what you do dog??",
    "!medic NYUHAJ BEBRU ya polechilsya",
    "1 week lou doggo ovnet",
    "l2p bot",
    "why you sleep dog???",
    "lovi tapycha musor",
    "1 musor uchis' igrat'",
    "$$$ 1 TAP UFF YA $$$ ∩ ( ͡⚆ ͜ʖ ͡⚆) ∩",
    "che, pososal glupyj daun?",
    "ya ķ¤nɥåλ ϯβ¤£ü ɱåɱķ£ β Ƥ¤ϯ",
    "uletaesh' so svoego vanveya huesos",
    "0 iq",
    "srazu vidno kfg issue mb konfig u vitmy prikupish' ?",
    "iq ? HAHAHA",
    "Best and cheap configurations for gamesense, ot and neverlose waiting for your order  at ---> vk.com/id498406374",
    "HAHAHAHAHKHAHA NISHCHIJ ULETEL (◣_◢)",
    "zemlya te zemlej hujlo chista edenicej otletel))",
    "Sozdatel' JS REZOLVER",
    }


local jsonchick = {} do
end

local base64 = {}
extract = function(v, from, width)
    return bit.band(bit.rshift(v, from), bit.lshift(1, width) - 1)
end
function base64.makeencoder(alphabet)
    local encoder = {}
    local t_alphabet = {}
    for i = 1, #alphabet do
        t_alphabet[i - 1] = alphabet:sub(i, i)
    end
    for b64code, char in pairs(t_alphabet) do
        encoder[b64code] = char:byte()
    end
    return encoder
end
function base64.makedecoder(alphabet)
    local decoder = {}
    for b64code, charcode in pairs(base64.makeencoder(alphabet)) do
        decoder[charcode] = b64code
    end
    return decoder
end
DEFAULT_ENCODER = base64.makeencoder("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=")
DEFAULT_DECODER = base64.makedecoder("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=")

CUSTOM_ENCODER = base64.makeencoder("KmAWpuFBOhdbI1orP2UN5vnSJcxVRgazk97ZfQqL0yHCl84wTj3eYXiD6stEGM+/=")
CUSTOM_DECODER = base64.makedecoder("KmAWpuFBOhdbI1orP2UN5vnSJcxVRgazk97ZfQqL0yHCl84wTj3eYXiD6stEGM+/=")

function base64.encode(str, encoder, usecaching)
    str = tostring(str)

    encoder = encoder or DEFAULT_ENCODER
    local t, k, n = {}, 1, #str
    local lastn = n % 3
    local cache = {}
    for i = 1, n - lastn, 3 do
        local a, b, c = str:byte(i, i + 2)
        local v = a * 0x10000 + b * 0x100 + c
        local s
        if usecaching then
            s = cache[v]
            if not s then
                s = string.char(encoder[extract(v, 18, 6)], encoder[extract(v, 12, 6)], encoder[extract(v, 6, 6)],
                        encoder[extract(v, 0, 6)])
                cache[v] = s
            end
        else
            s = string.char(encoder[extract(v, 18, 6)], encoder[extract(v, 12, 6)], encoder[extract(v, 6, 6)],
                    encoder[extract(v, 0, 6)])
        end
        t[k] = s
        k = k + 1
    end
    if lastn == 2 then
        local a, b = str:byte(n - 1, n)
        local v = a * 0x10000 + b * 0x100
        t[k] = string.char(encoder[extract(v, 18, 6)], encoder[extract(v, 12, 6)], encoder[extract(v, 6, 6)],
                   encoder[64])
    elseif lastn == 1 then
        local v = str:byte(n) * 0x10000
        t[k] = string.char(encoder[extract(v, 18, 6)], encoder[extract(v, 12, 6)], encoder[64], encoder[64])
    end
    return table.concat(t)
end
function base64.decode(b64, decoder, usecaching)
    decoder = decoder or DEFAULT_DECODER
    local pattern = "[^%w%+%/%=]"
    if decoder then
        local s62, s63
        for charcode, b64code in pairs(decoder) do
            if b64code == 62 then
                s62 = charcode
            elseif b64code == 63 then
                s63 = charcode
            end
        end
        pattern = ("[^%%w%%%s%%%s%%=]"):format(string.char(s62), string.char(s63))
    end
    b64 = b64:gsub(pattern, "")
    local cache = usecaching and {}
    local t, k = {}, 1
    local n = #b64
    local padding = b64:sub(-2) == "==" and 2 or b64:sub(-1) == "=" and 1 or 0
    for i = 1, padding > 0 and n - 4 or n, 4 do
        local a, b, c, d = b64:byte(i, i + 3)
        local s
        if usecaching then
            local v0 = a * 0x1000000 + b * 0x10000 + c * 0x100 + d
            s = cache[v0]
            if not s then
                local v = decoder[a] * 0x40000 + decoder[b] * 0x1000 + decoder[c] * 0x40 + decoder[d]
                s = string.char(extract(v, 16, 8), extract(v, 8, 8), extract(v, 0, 8))
                cache[v0] = s
            end
        else
            local v = decoder[a] * 0x40000 + decoder[b] * 0x1000 + decoder[c] * 0x40 + decoder[d]
            s = string.char(extract(v, 16, 8), extract(v, 8, 8), extract(v, 0, 8))
        end
        t[k] = s
        k = k + 1
    end
    if padding == 1 then
        local a, b, c = b64:byte(n - 3, n - 1)
        local v = decoder[a] * 0x40000 + decoder[b] * 0x1000 + decoder[c] * 0x40
        t[k] = string.char(extract(v, 16, 8), extract(v, 8, 8))
    elseif padding == 2 then
        local a, b = b64:byte(n - 3, n - 2)
        local v = decoder[a] * 0x40000 + decoder[b] * 0x1000
        t[k] = string.char(extract(v, 16, 8))
    end
    return table.concat(t)
end

-- TODO: СДЕЛАТЬ НОРМАЛЬНО ОБЯЗАТЕЛЬНО!!!!!!!!!!!!!
local ref_dt = Menu_FindVar("Ragebot", "Aimbot", "Exploits", "Double Tap")
local ref_hs = Menu_FindVar("Ragebot", "Aimbot", "Exploits", "Hide Shots")


--[[
exe
http
//
URLDownloadToFileA
DeleteUrlCacheEntryA

:trollface:
:trollface:
:trollface:
:trollface:
]]

local debug = function(...)
    --return print(...)
end

-- TODO: переместить эти переменные в какую нибудь таблицу что бы избежать лимита локалов в 200 в будущем.
local   IN_ATTACK            = bit_lshift(1, 0) -- Fire weapon
local   IN_JUMP                = bit_lshift(1, 1) -- Jump
local   IN_DUCK                = bit_lshift(1, 2) -- Crouch
local   IN_FORWARD            = bit_lshift(1, 3) -- Walk forward
local   IN_BACK                = bit_lshift(1, 4) -- Walk backwards
local   IN_USE                = bit_lshift(1, 5) -- Use (Defuse bomb, etc...)
local   IN_CANCEL            = bit_lshift(1, 6) -- ??
local   IN_LEFT                = bit_lshift(1, 7) -- Walk left
local   IN_RIGHT            = bit_lshift(1, 8) -- Walk right
local   IN_MOVELEFT            = bit_lshift(1, 9) -- Alias? (not sure)
local   IN_MOVERIGHT        = bit_lshift(1, 10) -- Alias? (not sure)
local   IN_ATTACK2            = bit_lshift(1, 11) -- Secondary fire (Revolver, Glock change fire mode, Famas change fire mode) (not sure)
local   IN_RUN                = bit_lshift(1, 12)
local   IN_RELOAD            = bit_lshift(1, 13) -- Reload weapon
local   IN_ALT1                = bit_lshift(1, 14)
local   IN_ALT2                = bit_lshift(1, 15)
local   IN_SCORE            = bit_lshift(1, 16)
local   IN_SPEED            = bit_lshift(1, 17)
local   IN_WALK                = bit_lshift(1, 18) -- Shift
local   IN_ZOOM                = bit_lshift(1, 19) -- Zoom weapon (not sure)
local   IN_WEAPON1            = bit_lshift(1, 20)
local   IN_WEAPON2            = bit_lshift(1, 21)
local   IN_BULLRUSH            = bit_lshift(1, 22)

local   FL_ONGROUND            = bit_lshift(1, 0)
local   FL_DUCKING            = bit_lshift(1, 1)
local   FL_WATERJUMP        = bit_lshift(1, 3)
local   FL_ONTRAIN            = bit_lshift(1, 4)
local   FL_INRAIN            = bit_lshift(1, 5)
local   FL_FROZEN            = bit_lshift(1, 6)
local   FL_ATCONTROLS       = bit_lshift(1, 7)
local   FL_CLIENT            = bit_lshift(1, 8)
local   FL_FAKECLIENT       = bit_lshift(1, 9)
local   FL_INWATER            = bit_lshift(1, 10)


local spirt_yaw = Menu_FindVar("Ragebot", "Anti Aim", "Main", "Yaw")
local spirt_at_target = Menu_FindVar("Ragebot", "Anti Aim", "Main", "At Targets")
local spirt_freestanding = Menu_FindVar("Ragebot", "Anti Aim", "Auto Direction", "Enable Yaw Autodirection")
local spirt_yaw_modif = Menu_FindVar("Ragebot", "Anti Aim", "Main", "Jitter")
local spirt_yaw_modif_deg = Menu_FindVar("Ragebot", "Anti Aim", "Main", "Jitter Angle")


neverlose_refs.scope = Menu_FindVar("Visuals", "View", "Camera", "Remove Scope")

neverlose_refs.pitch = Menu_FindVar("Ragebot", "Anti Aim", "Main", "Pitch")
neverlose_refs.yaw_base = {
    list = {"Forward", "Backward", "Right", "Left", "At Targets", "Freestanding"},
    name = "Yaw Base",
    value = 2,

    GetList = function(self)
        return self.list
    end,
    GetName = function(self)
        return self.name
    end,
    Get = function(self)
        return self.value
    end,
    Set = function(self, val)
        self.value = val
        if val == 0 then
            spirt_yaw:Set(0)
            spirt_at_target:Set(false)
            spirt_freestanding:Set(false)
        end
        if val == 1 then
            spirt_yaw:Set(3)
            spirt_at_target:Set(false)
            spirt_freestanding:Set(false)
        end
        if val == 2 then
            spirt_yaw:Set(2)
            spirt_at_target:Set(false)
            spirt_freestanding:Set(false)
        end
        if val == 3 then
            spirt_yaw:Set(1)
            spirt_at_target:Set(false)
            spirt_freestanding:Set(false)
        end
        if val == 4 then
            spirt_yaw:Set(3)
            spirt_at_target:Set(true)
            spirt_freestanding:Set(false)
        end
        if val == 5 then
            spirt_yaw:Set(3)
            spirt_at_target:Set(false)
            spirt_freestanding:Set(true)
        end
    end
}

local yaw_base_list = neverlose_refs.yaw_base:GetList()

neverlose_refs.yaw_add = Menu_FindVar("Ragebot", "Anti Aim", "Main", "Yaw Add")
neverlose_refs.yaw_modifier = {
    list = spirt_yaw_modif:GetList(),
    name = "Yaw Modifier",

    GetList = function(self)
        return self.list
    end,
    GetName = function(self)
        return self.name
    end,
    Get = function(self)
        return spirt_yaw_modif:Get()
    end,
    Set = function(self, val)
        spirt_yaw_modif:Set(val)
    end
}
neverlose_refs.modifier_degree = {
    name = "Modifier Degree",

    GetName = function(self)
        return self.name
    end,
    Get = function(self)
        return spirt_yaw_modif_deg:Get()
    end,
    Set = function(self, val)
        spirt_yaw_modif_deg:Set(val)
    end
}

local spirt_dsy_limit = Menu_FindVar("Ragebot", "Anti Aim", "Fake Angle", "Body Yaw Limit")

local spirt_avoid_overlap = Menu_FindVar("Ragebot", "Anti Aim", "Fake Angle", "Avoid Overlap")
local spirt_jitter = Menu_FindVar("Ragebot", "Anti Aim", "Fake Angle", "Jitter Sides")
local spirt_lby_mode = Menu_FindVar("Ragebot", "Anti Aim", "Fake Angle", "Lower Body Yaw")
local spirt_fs_dsy = Menu_FindVar("Ragebot", "Anti Aim", "Fake Angle", "Auto Inverter")

neverlose_refs.enable_fake_angle = Menu_FindVar("Ragebot", "Anti Aim", "Fake Angle", "Enable Fake Angle")

neverlose_refs.fake_options = {
    list = {"Avoid Overlap", "Jitter"},
    name = "Fake Options",
    value = 0,

    GetList = function(self)
        return self.list
    end,
    GetName = function(self)
        return self.name
    end,
    Get = function(self)
        return self.value
    end,
    Set = function(self, val)
        self.value = val
        spirt_avoid_overlap:Set(bit_band(val, bit_lshift(1, 0)) ~= 0)
        spirt_jitter:Set(bit_band(val, bit_lshift(1, 1)) ~= 0)
    end
}
neverlose_refs.lby_mode = {
    list = spirt_lby_mode:GetList(),
    name = "LBY Mode",

    GetList = function(self)
        return self.list
    end,
    GetName = function(self)
        return self.name
    end,
    Get = function(self)
        return spirt_lby_mode:Get()
    end,
    Set = function(self, val)
        spirt_lby_mode:Set(val)
    end
}
neverlose_refs.freestanding_desync = {
    list = spirt_fs_dsy:GetList(),
    name = "Freestanding Desync",

    GetList = function(self)
        return self.list
    end,
    GetName = function(self)
        return self.name
    end,
    Get = function(self)
        return spirt_fs_dsy:Get()
    end,
    Set = function(self, val)
        spirt_fs_dsy:Set(val)
    end
}
neverlose_refs.desync_on_shot = {
    list = {"А где", "А хуй"},
    name = "Desync On Shot",

    GetList = function(self)
        return self.list
    end,
    GetName = function(self)
        return self.name
    end,
    Get = function(self)
        return 1
    end,
    Set = function(self, val)
        return
    end
}

neverlose_refs.slow_walk = Menu_FindVar("Ragebot", "Anti Aim", "Misc", "Slow Walk")

defines.noscope_weapons = {
    [261] = true,
    [242] = true,
    [233] = true,
    [267] = true
}

defines.colors = {}
defines.colors.white = Color_new(1, 1, 1, 1)
defines.colors.green = Color_RGBA(155, 200, 21, 255)
defines.colors.red = Color_new(0.7, 0.2, 0.2, 1)
defines.colors.black = Color_new(0, 0, 0, 1)
defines.colors.blue = Color_new(0, 0.67, 1, 1)

for k, v in pairs(defines.colors) do
    defines.colors[k .. "_transparent"] = Color_new(defines.colors[k].r, defines.colors[k].g, defines.colors[k].b, 0)
end

defines.colors.equals = function(a, b)
    return a.r == b.r and a.g == b.g and a.b == b.b and a.a == b.a
end

defines.colors.copy = function(color)
    return Color_new(color.r, color.g, color.b, color.a)
end

defines.vector_copy = function(vector)

    if vector.z then
        return Vector_new(vector.x, vector.y, vector.z)
    end

    return Vector2_new(vector.x, vector.y)
end

defines.miss_reasons = {
    [0] = "hit",
    [1] = "resolver",
    [2] = "spread",
    [3] = "occlusion",
    [4] = "pred. error",
}

defines.hitgroups = {
    [0] = "generic",
    [1] = "head",
    [2] = "chest",
    [3] = "stomach",
    [4] = "left arm",
    [5] = "right arm",
    [6] = "left leg",
    [7] = "right leg",
    [10] = "gear"
}

defines.hitgroup_to_hitbox = {0, 5, 2, 13, 14, 7, 8}

defines.username = Cheat_GetCheatUserName()
defines.screen_size = EngineClient_GetScreenSize()

defines.cvars = {}

defines.cvars.sv_maxusrcmdprocessticks = CVar_FindVar("sv_maxusrcmdprocessticks")
defines.cvars.fov_cs_debug = CVar_FindVar("fov_cs_debug")

ffi_cdef[[

    typedef struct {
        uint8_t r;
        uint8_t g;
        uint8_t b;
        uint8_t a;
    } color_struct_t;

    typedef void (__cdecl* console_color_print)(void*,const color_struct_t&, const char*, ...);

    typedef float*(__thiscall* bound)(void*);

    typedef void*(__thiscall* c_entity_list_get_client_entity_t)(void*, int);
    typedef void*(__thiscall* c_entity_list_get_client_entity_from_handle_t)(void*, uintptr_t);

    struct pose_params_t {
        char pad[8];
        float     m_flStart;
        float     m_flEnd;
        float     m_flState;
    };

    bool PlaySound(const char *pszSound, void *hmod, uint32_t fdwSound);
]]

ffi_handler.bind_argument = function(fn, arg)
    return function(...)
        return fn(arg, ...)
    end
end

ffi_handler.animstate_offset = 0x9960
ffi_handler.interface_type = ffi_typeof("uintptr_t**")

ffi_handler.vgui_system = ffi_cast(ffi_handler.interface_type, Utils.CreateInterface("vgui2.dll", "VGUI_System010"))

ffi_handler.get_clipboard_text_count = ffi_handler.bind_argument(ffi.cast("int(__thiscall*)(void*)", ffi_handler.vgui_system[0][7]), ffi_handler.vgui_system)
ffi_handler.set_clipboard_text = ffi_handler.bind_argument(ffi.cast("void(__thiscall*)(void*, const char*, int)", ffi_handler.vgui_system[0][9]), ffi_handler.vgui_system)
ffi_handler.get_clipboard_text_fn = ffi_handler.bind_argument(ffi.cast("void(__thiscall*)(void*, int, const char*, int)", ffi_handler.vgui_system[0][11]), ffi_handler.vgui_system)

local clippyboard = {} do
    local char_array = ffi.typeof 'char[?]'

    local native_GetClipboardTextCount = ffi_handler.bind_argument(ffi.cast("int(__thiscall*)(void*)", ffi_handler.vgui_system[0][7]), ffi_handler.vgui_system)
    local native_SetClipboardText = ffi_handler.bind_argument(ffi.cast("void(__thiscall*)(void*, const char*, int)", ffi_handler.vgui_system[0][9]), ffi_handler.vgui_system)
    local native_GetClipboardText = ffi_handler.bind_argument(ffi.cast("int(__thiscall*)(void*, int, const char*, int)", ffi_handler.vgui_system[0][11]), ffi_handler.vgui_system)

    local function get()
        local len = native_GetClipboardTextCount()

        if len > 0 then
            local char_arr = char_array(len)

            native_GetClipboardText(0, char_arr, len)
            return ffi.string(char_arr, len - 1)
        end
    end

    local function set(...)
        local text = tostring(table.concat({ ... }))

        native_SetClipboardText(text, string.len(text))
    end

    clippyboard = {
        set = set,
        get = get
    }
end

ffi_handler.engine_client = ffi_cast(ffi_handler.interface_type, Utils_CreateInterface("engine.dll", "VEngineClient014"))
ffi_handler.is_console_visible = ffi_handler.bind_argument(ffi_cast("bool(__thiscall*)(void*)", ffi_handler.engine_client[0][11]), ffi_handler.engine_client)

ffi_handler.engine_sound_client = ffi_cast(ffi_handler.interface_type, Utils_CreateInterface("engine.dll", "IEngineSoundClient003"))
ffi_handler.play_sound = ffi_handler.bind_argument(ffi_cast("void*(__thiscall*)(void*, const char*, float, int, int, float)", ffi_handler.engine_sound_client[0][12]), ffi_handler.engine_sound_client)

local pose_parameter_pattern = "55 8B EC 8B 45 08 57 8B F9 8B 4F 04 85 C9 75 15"
ffi_handler.get_pose_parameters = ffi_cast( "struct pose_params_t*(__thiscall* )( void*, int )", Utils_PatternScan( "client.dll", pose_parameter_pattern))

ffi_handler.i_client_entity_list = ffi_cast(ffi_handler.interface_type, Utils_CreateInterface("client.dll", "VClientEntityList003"))
ffi_handler.get_client_entity = ffi_handler.bind_argument(ffi_cast("c_entity_list_get_client_entity_t", ffi_handler.i_client_entity_list[0][3]), ffi_handler.i_client_entity_list)

ffi_handler.cvar_interface = ffi_cast(ffi_handler.interface_type, Utils_CreateInterface("vstdlib.dll", "VEngineCvar007"))
ffi_handler.print = ffi_cast("console_color_print", ffi_handler.cvar_interface[0][25])

ffi_handler.color_print = function(color, text)

    if color == nil then
        return
    end

    local col = ffi_new("color_struct_t")
    col.r = color.r * 255
    col.g = color.g * 255
    col.b = color.b * 255
    col.a = color.a * 255
    ffi_handler.print(ffi_handler.cvar_interface, col, text)
end

math_in_bounds = function(a1, a2, b)
    return b.x >= a1.x and b.y >= a1.y and b.x <= a2.x and b.y <= a2.y
end

math_round = function(value)
    return math_floor(value + 0.5)
end

math_clamp = function(value, min, max)
    return math_min(max, math_max(min, value))
end

math_percent_to_pix = function(percent, axis)

    if axis:lower() == "x" then
        return Vector2_new((defines.screen_size.x / 100) * percent, 0)
    end

    if axis:lower() == "y" then
        return Vector2_new(0, (defines.screen_size.y / 100) * percent)
    end

    return Vector2_new((defines.screen_size.x / 100) * percent, (defines.screen_size.y / 100) * percent)
end

math_lerp = function(start, end_pos, time)

    if time == nil then
        time = 0.095
    end

    time = math_clamp(GlobalVars.frametime * (time * 175), 0, 1)
    if type(start) == "userdata" then
        local r, g, b, a = start.r, start.g, start.b, start.a
        local e_r, e_g, e_b, e_a = end_pos.r, end_pos.g, end_pos.b, end_pos.a
        r = math_lerp(r, e_r, time)
        g = math_lerp(g, e_g, time)
        b = math_lerp(b, e_b, time)
        a = math_lerp(a, e_a, time)
        return Color_new(r, g, b, a)
    end


    local delta = end_pos - start
    delta = delta * time
    delta = delta + start

    if end_pos == 0 and delta < 0.01 and delta > -0.01 then
        delta = 0
    elseif end_pos == 1 and delta < 1.01 and delta > 0.99 then
        delta = 1
    end

    return delta
end

math_vector_lerp = function(vecSource, vecDestination, flPercentage)
    return vecSource + (vecDestination - vecSource) * flPercentage
end

math_normalize = function(ang)
    while (ang > 180.0) do
        ang = ang - 360.0
    end
    while (ang < -180.0) do
        ang = ang + 360.0
    end
    return ang
end

math_closest_point_on_ray = function(ray_from, ray_to, desired_point) -- функция получает ближайшее расстояние линии (ray_from - ray_to) до desired_point точки
    local to = desired_point - ray_from
    local direction = ray_to - ray_from
    local ray_length = direction:Length()

    direction.x = direction.x / ray_length
    direction.y = direction.y / ray_length
    direction.z = direction.z / ray_length

    local direction_along = direction.x * to.x + direction.y * to.y + direction.z * to.z
    if direction_along < 0 then return ray_from end
    if direction_along > ray_length then return ray_to end

    return Vector_new(ray_from.x + direction.x * direction_along, ray_from.y + direction.y * direction_along, ray_from.z + direction.z * direction_along)
end

bind_system.list = {}
bind_system._list = {}

bind_system.get = function(name)

    if bind_system.list[name] == nil then
        return {value = 0, state = 0}
    end

    return bind_system.list[name]
end

bind_system.parse = function()

    bind_system._list = {}

    local binds = Cheat_GetBinds()
    for i = 1, #binds do
        if binds[i]:IsActive() then
            bind_system._list[binds[i]:GetName()] = binds[i]:GetValue()
        end
    end

    for k, v in pairs(bind_system._list) do
        if bind_system.list[k] == nil then
            bind_system.list[k] = {value = v, state = 0}
        end
    end

    for k, v in pairs(bind_system.list) do
        bind_system.list[k].state = visual_controller.new_animation("bind_system." .. k, bind_system._list[k] == nil and 0 or 1)

        if bind_system.list[k].state == 0 then
            bind_system.list[k] = nil
        end
    end

end

font.list = {}
font.get = function(font_name, size, antialiasing, bold, italic)

    local array_index = string_format("name[%s]size[%d]flags[%d%d%d]", font_name, size, antialiasing and 1 or 0, bold and 1 or 0, italic and 1 or 0)

    if font.list[array_index] then
        return font.list[array_index]
    end

    local flags = {}

    if antialiasing then
        table_insert(flags, "r")
    end

    if bold then
        table_insert(flags, "b")
    end

    if italic then
        table_insert(flags, "i")
    end

    local final_font = Render_InitFont(font_name, size, flags)
    font.list[array_index] = final_font

    debug("Init new font", font_name, size, string_format("%s|%s|%s", antialiasing, bold, italic))
    return final_font
end

handlers.callbacks = {}

handlers.update = function()
    for i = 1, #handlers.callbacks do
        local function run(...)
            for j = 1, #handlers.callbacks[i].functions do

                --handlers.callbacks[i].functions[j].fn(...)

                local status, message = pcall(handlers.callbacks[i].functions[j].fn, ...)

                if not status then
                    print(string_format("\n\n\n\t[%s] -\n\t\t%s\n\n\n", handlers.callbacks[i].functions[j].name, message))
                    EngineClient.ExecuteClientCmd("play error") ---АААААААААВАААРИЯ
                end

            end
        end
        cheat_RegisterCallback(handlers.callbacks[i].callback, run)
    end
end

handlers.subscribe = function(callback, name, funct)

    if funct == nil then
        debug("Failed to create callback", callback, name)
        return false
    end

    name = name and name or "unknown"
    local isExists = false
    for i = 1, #handlers.callbacks do
        if handlers.callbacks[i].callback == callback then
            isExists = true
            break
        end
    end
    if not isExists then
        table_insert(handlers.callbacks, {callback = callback, functions = {}})
        isExists = true
    end
    for i = 1, #handlers.callbacks do
        if handlers.callbacks[i].callback == callback then
            table_insert(handlers.callbacks[i].functions, {fn = funct, name = name})
            break
        end
    end

    debug("Init new callbacked function", callback, name)
    handlers.update()
    return true
end

entity_helpers.local_player = {}

entity_helpers.local_player.last_time = -1
entity_helpers.local_player.cached = {ptr = nil, index = -1}
entity_helpers.local_player.pointer = function()

    if entity_helpers.local_player.last_time == GlobalVars.tickcount then
        return entity_helpers.local_player.cached.ptr
    end

    entity_helpers.local_player.cached.ptr = EntityList_GetLocalPlayer()

    if entity_helpers.local_player.cached.ptr then
        entity_helpers.local_player.cached.index = entity_helpers.local_player.cached.ptr:EntIndex()
    else
        entity_helpers.local_player.cached.index = -1
    end

    entity_helpers.local_player.last_time = GlobalVars.tickcount

    return entity_helpers.local_player.cached.ptr
end

entity_helpers.local_player.index = function()
    entity_helpers.local_player.pointer()
    return entity_helpers.local_player.cached.index
end

local normalize_yaw = function(ang)
    while (ang > 180.0) do
        ang = ang - 360.0
    end
    while (ang < -180.0) do
        ang = ang + 360.0
    end
    return ang
end

entity_helpers.local_player.desync_angle = function(round)

    local ptr = entity_helpers.local_player.pointer()

    if not ptr then
        return 0
    end

    if not round then
        return tonumber(string_format("%.2f", (normalize_yaw(ptr:GetProp("m_flPoseParameter")[11] * 120 - 60) / 2)))
    end

    return math_abs(math_round(tonumber(string_format("%.2f", (normalize_yaw(ptr:GetProp("m_flPoseParameter")[11] * 120 - 60) / 2)))))
end

local spirt_inverter = Menu_FindVar("Ragebot", "Anti Aim", "Fake Angle", "Inverter")

local jitter_inverter = false
local jitter_enabled = false

local update_jitter_side = function()
    if ClientState.m_choked_commands == 0 then
        jitter_inverter = not jitter_inverter
    end
end

local AntiAim_GetInverterState = function()
    if jitter_enabled == true then
        return jitter_inverter
    end
    return spirt_inverter:Get()
end

ui_handler.combo_controller = Menu_Combo("Chimera", "Tab Selection", {"Loading..."}, 0)
ui_handler.tab_list = {}
ui_handler.current_tab = "string"

ui_handler.elements = {}
ui_handler.refs = {}

ui_handler.global_update_callback = function()


    for _, tab in pairs(ui_handler.refs) do
        for name, table_reference in pairs(tab) do

            if table_reference ~= nil then
                table_reference.ref:SetVisible(table_reference.condition())
            end
        end
    end
end

ui_handler.new_element = function(tab, name, is_color, cheat_var, condition)


    if type(is_color) ~= "boolean" then
        print("Cannot create", tab, name, "is_color is", type(is_color))
        return
    end

    if is_color then
        cheat_var:GetColor()
    end

    if condition == nil then
        condition = function()
            return true
        end
    end

    if ui_handler.refs[tab] == nil then
        ui_handler.refs[tab] = {}
        ui_handler.elements[tab] = {}
       
        table_insert(ui_handler.tab_list, tab)
        ui_handler.combo_controller:UpdateList(ui_handler.tab_list)

        debug("Added new tab:", tab)
    end

    debug("Creating new item", tab, name)

    if ui_handler.refs[tab][name] ~= nil then
        debug("Element", name, "already exists in", tab, "tab")
        error("error")
    end

    ui_handler.refs[tab][name] = {
        ref = cheat_var,
        is_color = is_color,
        condition = function()
            return ui_handler.current_tab == tab and condition()
        end
    }

    local update_value = function(new_value)
       
        ui_handler.elements[tab][name] = new_value
        ui_handler.global_update_callback()

    end

    cheat_var:RegisterCallback(update_value)
    update_value(cheat_var:Get())

    ui_handler.current_tab = ui_handler.tab_list[ui_handler.combo_controller:Get() + 1]
    ui_handler.global_update_callback()
    return cheat_var
end

ui_handler.combo_controller:RegisterCallback(function(new_value)
    ui_handler.current_tab = ui_handler.tab_list[new_value + 1]
    ui_handler.global_update_callback()
end)

ui_handler.new_element("Global", "global_switch", false, Menu_Switch("Global", "Enable", false))




ui_handler.new_element("Visuals", "global_switch", false, Menu_Switch("Visuals", "Enable", false))

ui_handler.new_element("Visuals", "scope_model", false, Menu_Switch("Visuals", "Viewmodel in scope", false), function()
    return ui_handler.elements["Visuals"]["global_switch"]
end)

ui_handler.new_element("Visuals", "indicators", false, Menu_Combo("Visuals", "Indicators", {"Disabled", "Default", "Alternative"}, 0), function()
    return ui_handler.elements["Visuals"]["global_switch"]
end)

ui_handler.new_element("Visuals", "indicators_logo_color", false, Menu_ColorEdit("Visuals", "Logo Color", Color_new(1, 1, 1, 1)), function()
    return ui_handler.elements["Visuals"]["global_switch"] and ui_handler.elements["Visuals"]["indicators"] == 2
end)

ui_handler.new_element("Visuals", "indicators_desync_color", false, Menu_ColorEdit("Visuals", "Logo Desync Color", Color_new(1, 1, 1, 1)), function()
    return ui_handler.elements["Visuals"]["global_switch"] and ui_handler.elements["Visuals"]["indicators"] == 2
end)

ui_handler.new_element("Visuals", "indicators_bar_color", false, Menu_ColorEdit("Visuals", "Desync Bar Color", Color_new(1, 1, 1, 1)), function()
    return ui_handler.elements["Visuals"]["global_switch"] and ui_handler.elements["Visuals"]["indicators"] == 2
end)


AntiAim_on_use.enabled = false
AntiAim_on_use.handle = function(cmd)

    AntiAim_on_use.enabled = false

    if not ui_handler.elements["Anti Aims"]["aa_on_use"] or not ui_handler.elements["Global"]["global_switch"] then
        return
    end

    local is_holding_use = bit_band(cmd.buttons, IN_USE) > 0

    local me = entity_helpers.local_player.pointer()

    if me == nil then
        return
    end

    local active_weapon = me:GetActiveWeapon()
   
    local is_bomb_in_hand = false

    if active_weapon then
        is_bomb_in_hand = active_weapon:GetClassName() == "CC4"
    end

    local is_in_bombzone = me:GetProp("m_bInBombZone")
    local is_planting = is_in_bombzone and is_bomb_in_hand

    local planted_c4_table = EntityList_GetEntitiesByName("CPlantedC4")
    local is_c4_planted = #planted_c4_table > 0
    local bomb_distance = 100

    if is_c4_planted then
        local c4_entity = planted_c4_table[#planted_c4_table]

        local c4_origin = c4_entity:GetRenderOrigin()
        local my_origin = me:GetRenderOrigin()

        bomb_distance = my_origin:DistTo(c4_origin)
    end

    local is_defusing = bomb_distance < 62 and me:GetProp("m_iTeamNum") == 3

    if is_defusing then
        return
    end

    local camera_angles = EngineClient_GetViewAngles()

    local eye_position = me:GetEyePosition()
    local forward_vector = cheat_AngleToForward(camera_angles)

    local trace_end = eye_position + forward_vector * 8192

    local trace = EngineTrace_TraceRay(eye_position, trace_end, me, 0x4600400B)

    local is_using = is_holding_use

    if trace and trace.fraction < 1 and trace.hit_entity then
        local class_name = trace.hit_entity:GetClassName()
        is_using = class_name ~= "CWorld" and class_name ~= "CFuncBrush" and class_name ~= "CCSPlayer"
    end

    if not is_using and not is_planting then
        cmd.buttons = bit_band(cmd.buttons, bit_bnot(IN_USE))
        AntiAim_on_use.enabled = true
    end
end

viewmodel_in_scope.cache = nil
viewmodel_in_scope.render_start = function(stage)

    if stage ~= 5 then
        return
    end

    if not ui_handler.elements["Visuals"]["scope_model"] or not ui_handler.elements["Visuals"]["global_switch"] then
        defines.cvars.fov_cs_debug:SetInt(0)
        return
    end

    local player = entity_helpers.local_player.pointer()

    if player == nil then
        return
    end

    viewmodel_in_scope.cache = player:GetProp("m_bIsScoped")

    if viewmodel_in_scope.cache then
        defines.cvars.fov_cs_debug:SetInt(90)
    else
        defines.cvars.fov_cs_debug:SetInt(0)
    end

end

viewmodel_in_scope.destroy = function()
    defines.cvars.fov_cs_debug:SetInt(0)
end

visual_controller.start_offset = 15

visual_controller.non_lerp_offset = visual_controller.start_offset

visual_controller.animation_speed = 0.095
visual_controller.item_list = {}
visual_controller.font = font.get("Verdana", 12, false, false, false)
visual_controller.text_size = 12
visual_controller.is_rendering = false

visual_controller.animation_controller_items = {}

visual_controller.update_animations = function()

    for k, v in pairs(visual_controller.animation_controller_items) do

        if not visual_controller.animation_controller_items[k].called_this_frame then

            if type(visual_controller.get_animation(k).number) == "userdata" then
               
                if defines.colors.equals(visual_controller.new_animation(k, defines.colors.black_transparent, true), defines.colors.black_transparent) then
                    visual_controller.animation_controller_items[k] = nil
                end

            else

                if visual_controller.new_animation(k, 0, true) == 0 then
                    visual_controller.animation_controller_items[k] = nil
                end

            end
            goto skip
        end

        visual_controller.animation_controller_items[k].called_this_frame = false

        ::skip::
    end

end

visual_controller.new_animation = function(name, new_value, removing)


    if visual_controller.animation_controller_items[name] == nil then
        visual_controller.animation_controller_items[name] = {}
        visual_controller.animation_controller_items[name].color = Color_new(0, 0, 0, 0)
        visual_controller.animation_controller_items[name].number = 0
        visual_controller.animation_controller_items[name].called_this_frame = true
    end

    if removing == nil then
        visual_controller.animation_controller_items[name].called_this_frame = true
    end

    if type(new_value) == "userdata" then

        local lerping = math_lerp(visual_controller.animation_controller_items[name].color, new_value, visual_controller.animation_speed)
        visual_controller.animation_controller_items[name].color = lerping
       
        return lerping
    end

    local lerping = math_lerp(visual_controller.animation_controller_items[name].number, new_value, visual_controller.animation_speed)
    visual_controller.animation_controller_items[name].number = lerping

    return lerping
end

visual_controller.get_animation = function(name)
    return visual_controller.animation_controller_items[name] == nil and {number = 0, color = defines.colors.white_transparent, called_this_frame = false} or visual_controller.animation_controller_items[name]
end

visual_controller.extend = function(value)

    if type(value) ~= "number" then
        return visual_controller.non_lerp_offset
    end

    visual_controller.non_lerp_offset = visual_controller.non_lerp_offset + value
    return visual_controller.non_lerp_offset
end

visual_controller.start_render = function()

    if not ui_handler.elements["Visuals"]["global_switch"] then
        return
    end

    if not EngineClient_IsInGame() then
        return
    end
   
    local localPlayer_ptr = entity_helpers.local_player.pointer()
    if not localPlayer_ptr or localPlayer_ptr:GetProp("m_iHealth") < 1 then
        return
    end

    visual_controller.is_rendering = true
end

visual_controller.gradient_colors = {defines.colors.white_transparent, defines.colors.white, defines.colors.white_transparent, defines.colors.white}

visual_controller.default_indicators = function()

    if ui_handler.elements["Visuals"]["indicators"] ~= 1 then
        return
    end

    local center = defines.screen_size/2

    visual_controller.extend(visual_controller.text_size + 15)
   
    local chimera_yaw_colors = defines.colors.white

    local chimera_yaw_text = conditional_AntiAims.is_manual_enabled() and "FAKE YAW" or "CHIMERA YAW"

    if chimera_yaw_text == "CHIMERA YAW" then

        local is_brute_active = math_clamp((anti_bruteforce.reset_time - GlobalVars.realtime) / anti_bruteforce.timer, 0, 1) > 0
       
        if is_brute_active then
            chimera_yaw_colors = visual_controller.new_animation("chimera_yaw_colors", Color_new(0.15, 0.45, 0.15, 1))
        else
            chimera_yaw_colors = visual_controller.new_animation("chimera_yaw_colors", Color_RGBA(218, 118, 0, 255))
        end
    else
        chimera_yaw_colors = visual_controller.new_animation("chimera_yaw_colors", Color_RGBA(177, 151, 255, 255))
    end

    Render_Text(chimera_yaw_text, center + Vector2_new(0, visual_controller.extend()) + 1, Color_new(0, 0, 0, 1), visual_controller.text_size, visual_controller.font, false, true)
    Render_Text(chimera_yaw_text, center + Vector2_new(0, visual_controller.extend()), chimera_yaw_colors, visual_controller.text_size, visual_controller.font, false, true)

    visual_controller.extend(visual_controller.text_size)

    local yaw_base = neverlose_refs.yaw_base:Get()
    local dynamic_aa_text = (yaw_base == 4 or yaw_base == 5) and "DYNAMIC" or "DEFAULT"
    local dynamic_aa_color = defines.colors.white

    if dynamic_aa_text == "DYNAMIC" then
        dynamic_aa_color = visual_controller.new_animation("dynamic_aa_color", Color_RGBA(209, 139, 230, 255))
    else
        dynamic_aa_color = visual_controller.new_animation("dynamic_aa_color", Color_new(1, 0, 0, 1))
    end

    Render_Text(dynamic_aa_text, center + Vector2_new(0, visual_controller.extend()) + 1, Color_new(0, 0, 0, 1), visual_controller.text_size, visual_controller.font, false, true)
    Render_Text(dynamic_aa_text, center + Vector2_new(0, visual_controller.extend()), dynamic_aa_color, visual_controller.text_size, visual_controller.font, false, true)

    visual_controller.extend(visual_controller.text_size)

    local is_hide_shots = ref_hs:Get()
    local is_double_tap = ref_dt:Get()

    local doubletap_animation = visual_controller.new_animation("doubletap_ind", is_double_tap and 1 or 0)
    local hideshot_animation = visual_controller.new_animation("hideshot_ind", (is_hide_shots and not is_double_tap) and 1 or 0)

    if doubletap_animation ~= 0 then
        local charge = exploits_GetCharge()

        Render_Text("DT", center + Vector2_new(0, visual_controller.extend()) + 1, Color_new(0, 0, 0, doubletap_animation), visual_controller.text_size, visual_controller.font, false, true)
        Render_Text("DT", center + Vector2_new(0, visual_controller.extend()), Color_new(1 - charge, charge, 0, doubletap_animation), visual_controller.text_size, visual_controller.font, false, true)
       
        visual_controller.extend(visual_controller.text_size * doubletap_animation)
    end

    if hideshot_animation ~= 0 then
        local charge = exploits_GetCharge()

        Render_Text("AA", center + Vector2_new(0, visual_controller.extend()) + 1, Color_new(0, 0, 0, hideshot_animation), visual_controller.text_size, visual_controller.font, false, true)
        Render_Text("AA", center + Vector2_new(0, visual_controller.extend()), Color_RGBA(209, 139, 230, math_round(hideshot_animation * 255)), visual_controller.text_size, visual_controller.font, false, true)
   
        visual_controller.extend(visual_controller.text_size * hideshot_animation)
    end

end

visual_controller.alternative_indicators = function()

    if ui_handler.elements["Visuals"]["indicators"] ~= 2 then
        return
    end

    local indicators_logo_color   = ui_handler.refs["Visuals"]["indicators_logo_color"].ref:GetColor()
    local indicators_desync_color = ui_handler.refs["Visuals"]["indicators_desync_color"].ref:GetColor()

    local indicators_bar_color    = visual_controller.new_animation("indicators_bar_color", ui_handler.refs["Visuals"]["indicators_bar_color"].ref:GetColor())
    local indicators_bar_color_transparent = visual_controller.new_animation("indicators_bar_color_transparent", Color.new(indicators_bar_color.r, indicators_bar_color.g, indicators_bar_color.b, 0))

    local offset = 0
    local center = defines.screen_size/2

   -- desync bar rendering

    visual_controller.extend(visual_controller.new_animation("desync_angle", 15))

    local desync_angle = entity_helpers.local_player.desync_angle()

    Render_Text(math_abs(math_round(desync_angle)) .. "", center + Vector2_new(0, visual_controller.extend()) + 1, Color_new(0, 0, 0, 1), visual_controller.text_size, visual_controller.font, false, true)
    Render_Text(math_abs(math_round(desync_angle)) .. "", center + Vector2_new(0, visual_controller.extend()), defines.colors.white, visual_controller.text_size, visual_controller.font, false, true)

    visual_controller.extend(visual_controller.new_animation("desync_bar", 10))

    offset = Vector2_new(0, visual_controller.extend())

    visual_controller.gradient_colors = {
        indicators_bar_color_transparent,
        indicators_bar_color,
        indicators_bar_color_transparent,
        indicators_bar_color
    }


    Render_GradientBoxFilled(center - Vector2_new(desync_angle, 1 - offset.y), center + offset, unpack(visual_controller.gradient_colors))
    Render_GradientBoxFilled(center - Vector2_new(-desync_angle, 1 - offset.y), center + offset, unpack(visual_controller.gradient_colors))

   -- desync bar rendering end

   visual_controller.extend(visual_controller.new_animation("chimera_yaw_text", 10))

    local chimera_text = conditional_AntiAims.is_manual_enabled() and "MANUAL AA" or "CHIMERA YAW"

    if conditional_AntiAims.is_legit_aa() then
        chimera_text = "LEGIT AA"
    end

    if chimera_text == "CHIMERA YAW" then
        local current_inverter = AntiAim_GetInverterState()
        local chimera_sz = Render_CalcTextSize("CHIMERA YAW", visual_controller.text_size, visual_controller.font) / 2

        local non_active_color = indicators_logo_color
        local active_color = indicators_desync_color

        local current_color = non_active_color

        if current_inverter then
            current_color = active_color
        else
            current_color = non_active_color
        end

        local chimera_color = visual_controller.new_animation("chimera_color", current_color)

        Render_Text("CHIMERA", center + 1 - Vector2_new(chimera_sz.x, 0) + Vector2_new(0, visual_controller.extend() - chimera_sz.y), Color_new(0, 0, 0, chimera_color.a), visual_controller.text_size, visual_controller.font)
        Render_Text("CHIMERA", center - Vector2_new(chimera_sz.x, 0) + Vector2_new(0, visual_controller.extend() - chimera_sz.y), chimera_color, visual_controller.text_size, visual_controller.font)

        if not current_inverter then
            current_color = active_color
        else
            current_color = non_active_color
        end

        local yaw_color = visual_controller.new_animation("yaw_color", current_color)

        Render_Text("YAW", center + 1 + Vector2_new(chimera_sz.x / 3, 0) + Vector2_new(0, visual_controller.extend() - chimera_sz.y), Color_new(0, 0, 0, chimera_color.a), visual_controller.text_size, visual_controller.font)
        Render_Text("YAW", center + Vector2_new(chimera_sz.x / 3, 0) + Vector2_new(0, visual_controller.extend() - chimera_sz.y), yaw_color, visual_controller.text_size, visual_controller.font)
    else
        Render_Text(chimera_text, center + Vector2_new(0, visual_controller.extend()) + 1, Color_new(0, 0, 0, 1), visual_controller.text_size, visual_controller.font, false, true)
        Render_Text(chimera_text, center + Vector2_new(0, visual_controller.extend()), Color_new(1, 1, 1, 1), visual_controller.text_size, visual_controller.font, false, true)
    end


   local brute_time_remains = math_clamp((anti_bruteforce.reset_time - GlobalVars.realtime) / anti_bruteforce.timer, 0, 1)

    if brute_time_remains > 0 then
        visual_controller.new_animation("antibrute_line", 8)
    end

    local brute_anim = visual_controller.get_animation("antibrute_line").number
    local is_brute_available = brute_anim > 0

    if is_brute_available then
       
        visual_controller.extend(brute_anim)

        local offseter = Vector2_new(0, visual_controller.extend())

        local vec1 = Vector2_new(center.x - 30, center.y + offseter.y)
        local vec2 = Vector2_new(vec1.x + 60, center.y + offseter.y + 1)

        Render_BoxFilled(vec1 + (-1), vec2 + 1, Color_new(0, 0, 0, 0.5 * brute_anim / 8))
        Render_BoxFilled(vec1, vec2 - Vector2_new(60 - (60 * brute_time_remains), 0), Color_new(1, 1, 1, brute_anim / 8))

    end

    visual_controller.extend(visual_controller.text_size)

    local is_hide_shots = ref_hs:Get()
    local is_double_tap = ref_dt:Get()

    local doubletap_animation = visual_controller.new_animation("doubletap_ind", is_double_tap and 1 or 0)
    local hideshot_animation = visual_controller.new_animation("hideshot_ind", (is_hide_shots and not is_double_tap) and 1 or 0)

    if doubletap_animation ~= 0 then
        local charge = exploits_GetCharge()
        local text_size = Render_CalcTextSize("DT", visual_controller.text_size, visual_controller.font).x

        Render_Circle(center + Vector2_new(-text_size, visual_controller.extend()), 4.0, 10, Color_new(1 - charge, charge, 0, doubletap_animation), 1.5, 0, (charge * 360) / doubletap_animation)

        Render_Text("DT", center + Vector2_new(0, visual_controller.extend()) + 1, Color_new(0, 0, 0, doubletap_animation), visual_controller.text_size, visual_controller.font, false, true)
        Render_Text("DT", center + Vector2_new(0, visual_controller.extend()), Color_new(1 - charge, charge, 0, doubletap_animation), visual_controller.text_size, visual_controller.font, false, true)
       
        visual_controller.extend(visual_controller.text_size * doubletap_animation)
    end

    if hideshot_animation ~= 0 then
        local charge = exploits_GetCharge()

        Render_Text("ON-SHOT", center + Vector2_new(0, visual_controller.extend()) + 1, Color_new(0, 0, 0, hideshot_animation), visual_controller.text_size, visual_controller.font, false, true)
        Render_Text("ON-SHOT", center + Vector2_new(0, visual_controller.extend()), Color_new(1 - charge, charge, 0, hideshot_animation), visual_controller.text_size, visual_controller.font, false, true)
   
        visual_controller.extend(visual_controller.text_size * hideshot_animation)
    end

    -- minimum damage

    local min_damage_state = bind_system.get("Minimum Damage").state

    if min_damage_state ~= 0 then
        Render_Text("DMG", center + Vector2_new(0, visual_controller.extend()) + 1, Color_new(0, 0, 0, min_damage_state), visual_controller.text_size, visual_controller.font, false, true)
        Render_Text("DMG", center + Vector2_new(0, visual_controller.extend()), Color_new(0, 1, 0, min_damage_state), visual_controller.text_size, visual_controller.font, false, true)
    end

    visual_controller.extend(visual_controller.text_size * min_damage_state)

end

visual_controller.end_render = function()

    --visual_controller.new_animation("visual_controller.offset", visual_controller.non_lerp_offset)

    visual_controller.update_animations()
    visual_controller.non_lerp_offset = visual_controller.start_offset
    visual_controller.is_rendering = false
end

conditional_AntiAims.conditions = {}

conditional_AntiAims.is_legit_aa = function()
    return AntiAim_on_use.enabled and ui_handler.elements["Anti Aims"]["aa_on_use"] and Cheat_IsKeyDown(0x45)
end

conditional_AntiAims.is_manual_enabled = function()

    local default_manual_check = not ui_handler.elements["Anti Aims"]["conditional_separator"] and (ui_handler.elements["Anti Aims"]["default_yaw_base"] == 3 or ui_handler.elements["Anti Aims"]["default_yaw_base"] == 2)
    local conditions_check = ui_handler.elements["Anti Aims"]["conditional_separator"] and (ui_handler.elements["Anti Aims"]["conditional_manuals"] ~= 0)

    return not conditional_AntiAims.is_legit_aa() and (default_manual_check or conditions_check)
end

ui_handler.new_element("Anti Aims", "aa_on_use", false, Menu_Switch("Anti Aim Settings", "Allow AntiAim on Use", false))


conditional_AntiAims.separator = ui_handler.new_element("Anti Aims", "conditional_separator", false, Menu_Switch("Anti Aim Settings", "Conditions", false))
conditional_AntiAims.manual = ui_handler.new_element("Anti Aims", "conditional_manuals", false, Menu_Combo("Anti Aim Settings", "Manual Yaw Base", {"Disabled", unpack(yaw_base_list)}, 0), function()

    return ui_handler.elements["Anti Aims"]["conditional_separator"]

end)

conditional_AntiAims.condition_list = {}
conditional_AntiAims.current_condition = ui_handler.new_element("Anti Aims", "conditional_current", false, Menu_Combo("Anti Aim Settings", "Current Condition", {"loading..."}, 0), function()

    return ui_handler.elements["Anti Aims"]["conditional_separator"]

end)

conditional_AntiAims.default = {}

conditional_AntiAims.default.condition = function()
    return not ui_handler.elements["Anti Aims"]["conditional_separator"]
end

conditional_AntiAims.default.yaw_base = ui_handler.new_element("Anti Aims", "default_yaw_base", false, Menu_Combo("Anti Aim Preset", neverlose_refs.yaw_base:GetName(), yaw_base_list, 0), conditional_AntiAims.default.condition)

conditional_AntiAims.default.yaw_add_left = ui_handler.new_element("Anti Aims", "default_yaw_add_left", false, Menu_SliderInt("Anti Aim Preset", neverlose_refs.yaw_add:GetName() .. "", 0, -180, 180), conditional_AntiAims.default.condition)

conditional_AntiAims.default.yaw_modifier = ui_handler.new_element("Anti Aims", "default_yaw_modifier", false, Menu_Combo("Anti Aim Preset", neverlose_refs.yaw_modifier:GetName(), neverlose_refs.yaw_modifier:GetList(), 0), conditional_AntiAims.default.condition)
conditional_AntiAims.default.modifier_degree = ui_handler.new_element("Anti Aims", "default_yaw_degree", false, Menu_SliderInt("Anti Aim Preset", neverlose_refs.modifier_degree:GetName(), 0, -180, 180), conditional_AntiAims.default.condition)

conditional_AntiAims.default.fake_limit_combo = ui_handler.new_element("Anti Aims", "default_fake_limit_combo", false, Menu_Combo("Anti Aim Preset", "Body Yaw", {"Static", "Jitter"}, 0), conditional_AntiAims.default.condition)
conditional_AntiAims.default.fake_limit = ui_handler.new_element("Anti Aims", "default_fake_limit", false, Menu_SliderInt("Anti Aim Preset", "Fake Yaw limit", 60, 0, 60), conditional_AntiAims.default.condition)

conditional_AntiAims.default.lby_mode = ui_handler.new_element("Anti Aims", "default_lby_mode", false, Menu_Combo("Anti Aim Preset", "Lower Body Yaw", neverlose_refs.lby_mode:GetList(), 0), conditional_AntiAims.default.condition)
conditional_AntiAims.default.desync_on_shot = ui_handler.new_element("Anti Aims", "default__desync_on_shot", false, Menu_Combo("Anti Aim Preset", neverlose_refs.desync_on_shot:GetName(), neverlose_refs.desync_on_shot:GetList(), 0), conditional_AntiAims.default.condition)

conditional_AntiAims.default.freestanding_desync = ui_handler.new_element("Anti Aims", "default_freestanding_desync", false, Menu_Combo("Anti Aim Preset", "Body freestanding", neverlose_refs.freestanding_desync:GetList(), 0), conditional_AntiAims.default.condition)

conditional_AntiAims.default.slowmotion_limit = ui_handler.new_element("Anti Aims", "default_slowwalk_fake_limit", false, Menu_SliderInt("Anti Aim Preset", "Slow motion limit", 30, 0, 45), conditional_AntiAims.default.condition)

conditional_AntiAims.default_type = function()

    if ui_handler.elements["Anti Aims"]["conditional_separator"] then
        return
    end

    local yaw_base = 0

    for k, v in pairs(conditional_AntiAims.default) do
        if neverlose_refs[k] ~= nil then

            if k ~= "yaw_base" then
                neverlose_refs[k]:Set(v:Get())
            else
                yaw_base = v:Get()
            end
        end
    end

    jitter_enabled = false

    local is_slow_walk = neverlose_refs.slow_walk:Get()

    if ClientState.m_choked_commands == 0 then

        if not is_slow_walk then
            if ui_handler.elements["Anti Aims"]["default_fake_limit_combo"] == 0 then
                spirt_dsy_limit:Set(ui_handler.elements["Anti Aims"]["default_fake_limit"])
            else
                spirt_dsy_limit:Set(conditional_AntiAims.fake_jitter and 18 or ui_handler.elements["Anti Aims"]["default_fake_limit"])

                conditional_AntiAims.fake_jitter = not conditional_AntiAims.fake_jitter
            end
        else

            local limit_tmp = ui_handler.elements["Anti Aims"]["default_slowwalk_fake_limit"]
            local random = math_abs(Utils_RandomInt(limit_tmp - 5, limit_tmp + 5))

            spirt_dsy_limit:Set(random)
        end
    end

    neverlose_refs.yaw_add:Set(ui_handler.elements["Anti Aims"]["default_yaw_add_left"])

    local is_legit_aa = conditional_AntiAims.is_legit_aa()

    neverlose_refs.pitch:Set(is_legit_aa and 0 or 1)
    neverlose_refs.yaw_base:Set(is_legit_aa and 0 or yaw_base)

    if conditional_AntiAims.is_manual_enabled() then
        spirt_dsy_limit:Set(58)
    end

end

conditional_AntiAims.new_condition = function(name, fn)

    local id = #conditional_AntiAims.conditions + 1
    conditional_AntiAims.conditions[id] = {}

    local current_condition = {}

    local show_condition = function()
        return ui_handler.elements["Anti Aims"]["conditional_separator"] and conditional_AntiAims.condition_list[ui_handler.elements["Anti Aims"]["conditional_current"] + 1] == name
    end

    if name ~= "Shared" then
        current_condition.is_override = ui_handler.new_element("Anti Aims", name .. "_override", false, Menu_Switch("Anti Aim Settings", "Override " .. name, false), show_condition)
    end
   

    current_condition.yaw_base = ui_handler.new_element("Anti Aims", name .. "_yaw_base", false, Menu_Combo(name, neverlose_refs.yaw_base:GetName(), yaw_base_list, 0), show_condition)

    current_condition.yaw_add_left = ui_handler.new_element("Anti Aims", name .. "_yaw_add_left", false, Menu_SliderInt(name, neverlose_refs.yaw_add:GetName() .. "", 0, -180, 180), show_condition)

    current_condition.yaw_modifier = ui_handler.new_element("Anti Aims", name .. "_yaw_modifier", false, Menu_Combo(name, neverlose_refs.yaw_modifier:GetName(), neverlose_refs.yaw_modifier:GetList(), 0), show_condition)
    current_condition.modifier_degree = ui_handler.new_element("Anti Aims", name .. "_modifier_degree", false, Menu_SliderInt(name, neverlose_refs.modifier_degree:GetName(), 0, -180, 180), show_condition)

    current_condition.fake_limit_combo = ui_handler.new_element("Anti Aims", name .. "_fake_limit_combo", false, Menu_Combo(name, "Fake Limit Type", {"Static", "Jitter"}, 0), show_condition)
    current_condition.fake_limit_left = ui_handler.new_element("Anti Aims", name .. "_fake_limit_left", false, Menu_SliderInt(name, "Fake Limit", 60, 0, 60), show_condition)

    if name == "Slowwalk" then
        current_condition.slowwalk_custom = ui_handler.new_element("Anti Aims", name .. "_custom_slowwalk_switch", false, Menu_Switch(name, "Custom Slowwalk Fake Limit", false), show_condition)
        current_condition.slowwalk_limit = ui_handler.new_element("Anti Aims", name .. "_custom_slowwalk", false, Menu_SliderInt(name, "Slowwalk Fake Limit", 45, 5, 45), function()
            return show_condition() and ui_handler.elements["Anti Aims"][name .. "_custom_slowwalk_switch"]
        end)
    end

    local fake_options_list = neverlose_refs.fake_options:GetList()

    current_condition.fake_options = ui_handler.new_element("Anti Aims", name .. "_fake_options", false, Menu_MultiCombo(name, neverlose_refs.fake_options:GetName(), fake_options_list, 0), show_condition)
    current_condition.lby_mode = ui_handler.new_element("Anti Aims", name .. "_lby_mode", false, Menu_Combo(name, neverlose_refs.lby_mode:GetName(), neverlose_refs.lby_mode:GetList(), 0), show_condition)
    current_condition.freestanding_desync = ui_handler.new_element("Anti Aims", name .. "_freestanding_desync", false, Menu_Combo(name, neverlose_refs.freestanding_desync:GetName(), neverlose_refs.freestanding_desync:GetList(), 0), show_condition)
    current_condition.desync_on_shot = ui_handler.new_element("Anti Aims", name .. "_desync_on_shot", false, Menu_Combo(name, neverlose_refs.desync_on_shot:GetName(), neverlose_refs.desync_on_shot:GetList(), 0), show_condition)


    conditional_AntiAims.conditions[id] = {conditions = current_condition, fn = fn}

    table_insert(conditional_AntiAims.condition_list, name)
    conditional_AntiAims.current_condition:UpdateList(conditional_AntiAims.condition_list)


    return true, conditional_AntiAims.conditions[id]
end

conditional_AntiAims.fake_jitter = true
conditional_AntiAims.apply_condition = function(name, conditional_AntiAims)

    local yaw_base = 0

    for key_, value_ in pairs(conditional_AntiAims) do
        if neverlose_refs[key_] ~= nil then
            if key_ == "yaw_base" then
                yaw_base = ui_handler.elements["Anti Aims"][name .. "_yaw_base"]--value_:Get()
            else
                neverlose_refs[key_]:Set(ui_handler.elements["Anti Aims"][name .. "_" .. key_])
            end
        end
    end

    if bit_band(ui_handler.elements["Anti Aims"][name .. "_fake_options"], bit_lshift(1, 1)) ~= 0 then
        jitter_enabled = true
    else
        jitter_enabled = false
    end


    if ClientState.m_choked_commands == 0 then

        if name == "Slowwalk" and ui_handler.elements["Anti Aims"][name .. "_custom_slowwalk_switch"] and neverlose_refs.slow_walk:Get() then

            local angle = ui_handler.elements["Anti Aims"][name .. "_custom_slowwalk"]
            angle = Utils_RandomInt(angle - 5, angle + 5)

            spirt_dsy_limit:Set(angle)

        else

            if ui_handler.elements["Anti Aims"][name .. "_fake_limit_combo"] == 0 then
                spirt_dsy_limit:Set(ui_handler.elements["Anti Aims"][name .. "_fake_limit_left"])
            else
                spirt_dsy_limit:Set(conditional_AntiAims.fake_jitter and 18 or ui_handler.elements["Anti Aims"][name .. "_fake_limit_left"])

                conditional_AntiAims.fake_jitter = not conditional_AntiAims.fake_jitter
            end
        end

    end

    neverlose_refs.yaw_add:Set(ui_handler.elements["Anti Aims"][name .. "_yaw_add_left"])

    neverlose_refs.pitch:Set(name == "On Use" and 0 or 1)

    neverlose_refs.enable_fake_angle:Set(true)

    return true, yaw_base
end

conditional_AntiAims.update_conditions = function(cmd)

    if not conditional_AntiAims.separator:Get() then
        return
    end

    local is_applied = false

    local localplayer = entity_helpers.local_player.pointer()

    if localplayer == nil then
        return
    end

    local localplayer_flags = localplayer:GetProp("m_fFlags")

    if localplayer_flags == nil then -- бля они вроде вообще почти не могут быть нил, не?
        return
    end

    local yaw_base = 0

    for key, value in ipairs(conditional_AntiAims.conditions) do
        if key == 1 then
            goto skip
        end

        local state = value.fn(ui_handler.elements["Anti Aims"][conditional_AntiAims.condition_list[key] .. "_override"], cmd, localplayer_flags)

        if state then
           
            is_applied, yaw_base = conditional_AntiAims.apply_condition(conditional_AntiAims.condition_list[key], value.conditions)

            break
        end

        ::skip::
    end

    if not is_applied then
        is_applied, yaw_base = conditional_AntiAims.apply_condition("Shared", conditional_AntiAims.conditions[1].conditions)
    end

    local manual = ui_handler.elements["Anti Aims"]["conditional_manuals"] - 1
    manual = (manual == -1 or conditional_AntiAims.is_legit_aa() ) and yaw_base or manual

    if manual == nil then
        return
    end

    neverlose_refs.yaw_base:Set(manual)

    if conditional_AntiAims.is_manual_enabled() then
        spirt_dsy_limit:Set(58)
    end

end

conditional_AntiAims.new_condition("Shared", function(key, cmd, flags)
    return true
end)

conditional_AntiAims.new_condition("On Use", function(key, cmd, flags)
    if not ui_handler.elements["Global"]["global_switch"] then
        return false
    end

    return conditional_AntiAims.is_legit_aa()
end)

conditional_AntiAims.new_condition("Standing", function(key, cmd, flags)
    if not key then
        return false
    end

    local is_crouching = bit_band(flags, FL_DUCKING) ~= 0
    local on_ground = bit_band(flags, FL_ONGROUND) ~= 0

    return on_ground and not is_crouching and cmd.sidemove == 0 and cmd.forwardmove == 0 and cmd.upmove == 0
end)

conditional_AntiAims.new_condition("Crouching", function(key, cmd, flags)
    if not key then
        return false
    end

    local is_crouching = bit_band(flags, FL_DUCKING) ~= 0
    local on_ground = bit_band(flags, FL_ONGROUND) ~= 0

    return on_ground and is_crouching
end)

conditional_AntiAims.new_condition("Slowwalk", function(key, cmd, flags)

    if not key then
        return false
    end

    local on_ground = bit_band(flags, FL_ONGROUND) ~= 0

    return on_ground and neverlose_refs.slow_walk:Get()
end)

conditional_AntiAims.new_condition("Moving", function(key, cmd, flags)
    if not key then
        return false
    end

    local is_crouching = bit_band(flags, FL_DUCKING) ~= 0
    local on_ground = bit_band(flags, FL_ONGROUND) ~= 0

    return not is_crouching and on_ground and (cmd.sidemove ~= 0 or cmd.forwardmove ~= 0) and not Cheat_IsKeyDown(0x20) and not neverlose_refs.slow_walk:Get()
end)

conditional_AntiAims.new_condition("Air", function(key, cmd, flags)
    if not key then
        return false
    end

    local on_ground = bit_band(flags, FL_ONGROUND) ~= 0

    return not on_ground
end)


ui_handler.new_element("Global", "anim_breaker", false, Menu_MultiCombo("Global", "Animation Breaker", {"Ground", "Air", "Zero Pitch on Land"}, 0), function()
    return ui_handler.elements["Global"]["global_switch"]
end)

animation_breaker.cache = {}
animation_breaker.set_params = function(player_ptr, layer, start_val, end_val)
    player_ptr = ffi_cast("unsigned int", player_ptr)
    if player_ptr == 0x0 then
        return false
    end

    local studio_hdr = ffi_cast("void**", player_ptr + 0x2950)[0]
    if studio_hdr == nil then
        return false
    end

    local pose_params = ffi_handler.get_pose_parameters(studio_hdr, layer)
    if pose_params == nil or pose_params == 0x0 then
        return
    end

    if animation_breaker.cache[layer] == nil then
        animation_breaker.cache[layer] = {}

        animation_breaker.cache[layer].m_flStart = pose_params.m_flStart
        animation_breaker.cache[layer].m_flEnd = pose_params.m_flEnd

        animation_breaker.cache[layer].m_flState = pose_params.m_flState

        animation_breaker.cache[layer].installed = false
        return true
    end

    if start_val ~= nil and not animation_breaker.cache[layer].installed then

        pose_params.m_flStart   = start_val
        pose_params.m_flEnd     = end_val

        pose_params.m_flState   = (pose_params.m_flStart + pose_params.m_flEnd) / 2

        animation_breaker.cache[layer].installed = true
        return true
    end
   
    if animation_breaker.cache[layer].installed then

        pose_params.m_flStart   = animation_breaker.cache[layer].m_flStart
        pose_params.m_flEnd     = animation_breaker.cache[layer].m_flEnd

        pose_params.m_flState   = animation_breaker.cache[layer].m_flState

        animation_breaker.cache[layer].installed = false

        return true
    end

    return false
end

animation_breaker.handle_prediction = function(cmd)
    local local_player = ffi_handler.get_client_entity(entity_helpers.local_player.index())
    if local_player == nil then
        return
    end

    local local_player_addr = ffi_cast("unsigned int", local_player)
    if local_player_addr == 0x0 then
        return
    end

    local animstate = ffi_cast( "void**", local_player_addr + ffi_handler.animstate_offset)[0]
    if animstate == nil then
        return
    end

    animstate = ffi_cast("unsigned int", animstate)
    if animstate == 0x0 then
        return
    end
   
    local landing_anim = ffi_cast("bool*", animstate + 0x109)[0]
    if landing_anim == nil then
        return
    end

    local combo = ui_handler.elements["Global"]["anim_breaker"]
    if bit_band(combo, bit_lshift(1, 0)) ~= 0 then
        animation_breaker.set_params(local_player, 0, -180, -179)
    end

    if bit_band(combo, bit_lshift(1, 1)) ~= 0 then
        animation_breaker.set_params(local_player, 6, 0.9, 1)
    end

    if bit_band(combo, bit_lshift(1, 2)) ~= 0 and landing_anim and bit_band(cmd.buttons, 2) == 0 then
        animation_breaker.set_params(local_player, 12, 0.999, 1)
    end
end

animation_breaker.handle_cmove = function()

    local local_player = ffi_handler.get_client_entity(entity_helpers.local_player.index())

    if local_player == nil then
        return
    end

    for k, v in pairs(animation_breaker.cache) do
        animation_breaker.set_params(local_player, k)
    end

end

animation_breaker.on_destroy = function()

    local local_player = ffi_handler.get_client_entity(entity_helpers.local_player.index())

    if local_player == nil then
        return
    end

    for k, v in pairs(animation_breaker.cache) do
        animation_breaker.set_params(local_player, k)
    end

end

anti_bruteforce.menu_elements = {}

anti_bruteforce.global_switch = ui_handler.new_element("Anti Bruteforce", "global_switch", false, Menu_Switch("Anti Brute", "Enable", false))

anti_bruteforce.ui_condition = function()
    return ui_handler.elements["Anti Bruteforce"]["global_switch"]
end

anti_bruteforce.hidden_value = ui_handler.new_element("Anti Bruteforce", "slider_antibrute_value", false, Menu_SliderInt("Anti Brute", "nigga_slider", 2, 2, 20), function() return false end)

anti_bruteforce.new_button = ui_handler.new_element("Anti Bruteforce", "Create New Phase", false, Menu_Button("Anti Brute", "Add"), anti_bruteforce.ui_condition)
anti_bruteforce.remove_button = ui_handler.new_element("Anti Bruteforce", "Remove Phase", false, Menu_Button("Anti Brute", "Remove"), anti_bruteforce.ui_condition)

anti_bruteforce.create_new_phase = function()
    if #anti_bruteforce.menu_elements > 9 then
        Cheat_AddNotify("Chimera Yaw", "Нельзя создать больше " .. #anti_bruteforce.menu_elements .. " фаз!")
        return
    end

    local element = ui_handler.new_element("Anti Bruteforce", "abphase" .. (#anti_bruteforce.menu_elements + 1), false, Menu_SliderInt("Anti Brute", "[Phase " .. (#anti_bruteforce.menu_elements + 1) .. "] Fake Limit", 0, -60, 60), anti_bruteforce.ui_condition)

    table_insert(anti_bruteforce.menu_elements, element)
    anti_bruteforce.hidden_value:Set(#anti_bruteforce.menu_elements)
end

anti_bruteforce.remove_phase = function()

    if #anti_bruteforce.menu_elements <= 2 or type(anti_bruteforce.menu_elements[#anti_bruteforce.menu_elements]) ~= "userdata" then
        Cheat_AddNotify("Chimera Yaw", "Должно остаться не менее 2х фаз!")
        return
    end

    ui_handler.elements["Anti Bruteforce"]["abphase" .. #anti_bruteforce.menu_elements] = nil
    ui_handler.refs["Anti Bruteforce"]["abphase" .. #anti_bruteforce.menu_elements] = nil

    Menu_DestroyItem(anti_bruteforce.menu_elements[#anti_bruteforce.menu_elements])
    table_remove(anti_bruteforce.menu_elements, #anti_bruteforce.menu_elements)

    anti_bruteforce.hidden_value:Set(#anti_bruteforce.menu_elements)


end

anti_bruteforce.new_button:RegisterCallback(anti_bruteforce.create_new_phase)
anti_bruteforce.remove_button:RegisterCallback(anti_bruteforce.remove_phase)

for i = 1, anti_bruteforce.hidden_value:Get() do
    anti_bruteforce.create_new_phase()
end

anti_bruteforce.state = false
anti_bruteforce.reset_time = 0
anti_bruteforce.last_tick_triggered = 0
anti_bruteforce.work_distance = 75
anti_bruteforce.timer = 5
anti_bruteforce.current_phase = 0
anti_bruteforce.angle = 0

anti_bruteforce.side = false

anti_bruteforce.bullet_impact = function(...)
    local args = {...} -- честно, я в душе не ебу зачем так я сделала, просто в голову это почему то пришло и мне захотелось такое сделать
    local local_pos = args[3]

    local distance = math_closest_point_on_ray(...):DistTo(local_pos)

    if distance > anti_bruteforce.work_distance then
        return
    end

    local inverter_state = AntiAim_GetInverterState()

    if anti_bruteforce.reset_time < GlobalVars.realtime then
        for i = 1, #anti_bruteforce.menu_elements do
            if inverter_state and ui_handler.elements["Anti Bruteforce"]["abphase" .. i] >= 0 then
                anti_bruteforce.current_phase = i
                break
            elseif not inverter_state and ui_handler.elements["Anti Bruteforce"]["abphase" .. i] < 0 then -- как по идеи можно просто else оставить хз
                anti_bruteforce.current_phase = i
                break
            end
        end

    else
        anti_bruteforce.current_phase = 1 + (anti_bruteforce.current_phase % #anti_bruteforce.menu_elements)
    end

    anti_bruteforce.reset_time = GlobalVars.realtime + anti_bruteforce.timer
    anti_bruteforce.angle = ui_handler.elements["Anti Bruteforce"]["abphase" .. anti_bruteforce.current_phase]


    while anti_bruteforce.angle == nil do
        anti_bruteforce.current_phase = 1 + (anti_bruteforce.current_phase % #anti_bruteforce.menu_elements)
        anti_bruteforce.angle = ui_handler.elements["Anti Bruteforce"]["abphase" .. anti_bruteforce.current_phase]
    end

    anti_bruteforce.last_tick_triggered = GlobalVars.tickcount
end

anti_bruteforce.pre_bullet_impact = function(ev)

    if ev:GetName() ~= "bullet_impact" then
        return
    end

    if anti_bruteforce.last_tick_triggered == GlobalVars.tickcount then
        return
    end

    -- о да, давайте нахуярим 3 километра проверок
    -- в теории, на Custom серверах может вызываться этот каллбек и без переменных в ней, что вызовет отключение скрипта блинба

    local me = entity_helpers.local_player.pointer()

    if not me or me:GetProp("m_iHealth") <= 0 then
        return
    end

    local userid = ev:GetInt("userid", -1)

    if userid == -1 then
        return
    end


    local player_object = EntityList_GetPlayerForUserID(userid)

    if not player_object or player_object:IsDormant() or player_object:IsTeamMate() then
        return
    end

    local eye_position = me:GetEyePosition()

    if not eye_position then
        return
    end

    local enemy_eye_position = player_object:GetEyePosition()

    if not enemy_eye_position then
        return
    end

    local x = ev:GetFloat("x", -99999)
    local y = ev:GetFloat("y", -99999)
    local z = ev:GetFloat("z", -99999)

    if x == -99999 or y == -99999 or z == -99999 then
        return
    end

    local impact_vector = Vector_new(x, y, z)

    return anti_bruteforce.bullet_impact(impact_vector, enemy_eye_position, eye_position)
end

anti_bruteforce.prediction_handle = function()

    if anti_bruteforce.reset_time < GlobalVars.realtime then
        return
    end

    spirt_inverter:Set(anti_bruteforce.angle < 0)
    spirt_dsy_limit:Set(math_abs(anti_bruteforce.angle))
end

ui_handler.new_element("Misc", "enabled", false, Menu_Switch("Misc", "Enable Misc", false))

console_color.overrided = false
console_color.materials_count = 0
console_color.material_names = {["vgui_white"] = true, ["vgui/hud/800corner1"] = true, ["vgui/hud/800corner2"] = true, ["vgui/hud/800corner3"] = true, ["vgui/hud/800corner4"] = true}

for k, v in pairs(console_color.material_names) do
    console_color.materials_count = console_color.materials_count + 1 -- в луа #table не дает размер если там не интовые
end


console_color.materials = {}

console_color.scan_materials = function()

    console_color.materials = {}

    local material = MatSystem_FirstMaterial()
    local table_size = 0 -- пиздец луа говно ебанное я ебу этот мусор невозможный
    while console_color.materials_count ~= table_size do
        local mat = MatSystem_GetMaterial(material)
        local name = mat:GetName()
        if console_color.material_names[name] then
            console_color.materials[name] = mat
            table_size = table_size + 1


        end
        material = MatSystem_NextMaterial(material)
    end

end

console_color.scan_materials()

console_color.color = visual_controller.new_animation("console_color", Color_new(0, 0, 0, 0))
console_color.latest_color = Color_RGBA(27, 228, 1337, 1488)
console_color.color_change = function(color)

    if defines.colors.equals(color, console_color.latest_color) then
        return
    end

    for k, v in pairs(console_color.materials) do

        if v:IsErrorMaterial() then
            error("error material")
            return false
        end

        v:ColorModulate(color.r, color.g, color.b)
        v:AlphaModulate(color.a)
    end

    console_color.latest_color = defines.colors.copy(color)
end

ui_handler.new_element("Misc", "console_color", true, Menu_SwitchColor("Misc", "Console Color", false, Color_new(1, 1, 1, 1)), function()
    return ui_handler.elements["Misc"]["enabled"]
end)

console_color.handle = function()

    console_color.color = (ui_handler.elements["Misc"]["enabled"] and ui_handler.elements["Misc"]["console_color"] and ffi_handler.is_console_visible()) and ui_handler.refs["Misc"]["console_color"].ref:GetColor() or defines.colors.white

    console_color.color_change(console_color.color)
end

ui_handler.new_element("Misc", "menu_effects", true, Menu_SwitchColor("Misc", "Menu Effects", false, Color_new(1, 1, 1, 1)), function()
    return ui_handler.elements["Misc"]["enabled"]
end)

menu_effects.number_of_dots = 150
menu_effects.connection_distance = 150
menu_effects.speed = 25


-- рандом
menu_effects.alpha = Vector2_new(0.75, 1)
menu_effects.size = Vector2_new(1, 2)
menu_effects.velocity = Vector2_new(-2, 2)

menu_effects.global_alpha = 0
menu_effects.dots = ffi.new("float[" .. menu_effects.number_of_dots ..  "][6]")
menu_effects.generate = function(value)

    menu_effects.dots = {}

    for i = 0, value-1 do

        -- ФПС ГОВОРИШЬ ХАВАЕШЬ ДА? НУ Я ТЕБЕ СЕЙЧАС НАХУЙ ПОКАЖУ ЧТО ТАКОЕ ОПТИМИЗАЦИЯ БЛЯЯЯТЬ

        -- 0, 1 - position vector
        -- 2 -    alpha
        -- 3 -    size
        -- 4, 5 - velocity

        local particle_settings = ffi.new("float[?]", 6)
        particle_settings[0] = Utils_RandomInt(0, defines.screen_size.x)
        particle_settings[1] = Utils_RandomInt(0, defines.screen_size.y)

        -- alpha
        particle_settings[2] = Utils_RandomFloat(menu_effects.alpha.x, menu_effects.alpha.y)

        -- size
        particle_settings[3] = Utils_RandomFloat(menu_effects.size.y, menu_effects.size.y)

        -- velocity
        particle_settings[4] = Utils_RandomFloat(menu_effects.velocity.x, menu_effects.velocity.y) * menu_effects.speed
        particle_settings[5] = Utils_RandomFloat(menu_effects.velocity.x, menu_effects.velocity.y) * menu_effects.speed

        menu_effects.dots[i] = particle_settings
    end

end

menu_effects.color = defines.colors.copy(defines.colors.white)

menu_effects.c_velocity = ffi.new("float[?]", 2)
menu_effects.c_connections = ffi.new("float[?]", 10)
menu_effects.screen_size = ffi.new("float[?]", 2)

menu_effects.screen_size[0] = defines.screen_size.x
menu_effects.screen_size[1] = defines.screen_size.y

--- УРААААА ТОТАЛЬНЫЙ ВШИЗ УРААААААААААААААААААААААААААААААААААААААААААААААА
menu_effects.handle = function()

    if not ui_handler.elements["Misc"]["menu_effects"] or not Cheat_IsMenuVisible() then
        return
    end
   
    local menu_pos = Render_GetMenuPos()
    local menu_size = Render_GetMenuSize()
    local mouse_pos = Cheat_GetMousePos()

    menu_effects.c_connections[0] = mouse_pos.x
    menu_effects.c_connections[1] = mouse_pos.y

    menu_effects.c_connections[2] = menu_pos.x
    menu_effects.c_connections[3] = menu_pos.y

    menu_effects.c_connections[4] = menu_pos.x + menu_size.x
    menu_effects.c_connections[5] = menu_pos.y

    menu_effects.c_connections[6] = menu_pos.x + menu_size.x
    menu_effects.c_connections[7] = menu_pos.y + menu_size.y

    menu_effects.c_connections[8] = menu_pos.x
    menu_effects.c_connections[9] = menu_pos.y + menu_size.y

    local frame_time = GlobalVars.frametime

    local color = ui_handler.refs["Misc"]["menu_effects"].ref:GetColor()

    for i = 0, menu_effects.number_of_dots-1 do

        local current_element = menu_effects.dots[i]

        menu_effects.c_velocity[0] = current_element[4] * frame_time
        menu_effects.c_velocity[1] = current_element[5] * frame_time

        if current_element[0] + menu_effects.c_velocity[0] > menu_effects.screen_size[0] or current_element[0] + menu_effects.c_velocity[0] < 0 then
            menu_effects.dots[i][4] = -current_element[4]
            menu_effects.c_velocity[0] = -menu_effects.c_velocity[0]
        end

        if current_element[1] + menu_effects.c_velocity[1] > menu_effects.screen_size[1] or current_element[1] + menu_effects.c_velocity[1] < 0 then
            menu_effects.dots[i][5] = -current_element[5]
            menu_effects.c_velocity[1] = -menu_effects.c_velocity[1]
        end

        menu_effects.dots[i][0] = current_element[0] + menu_effects.c_velocity[0]
        menu_effects.dots[i][1] = current_element[1] + menu_effects.c_velocity[1]

        color.a = current_element[2]
        Render_CircleFilled(Vector2_new(current_element[0], current_element[1]), current_element[3], 7, color)


        for i = 0, 9, 2 do
            local current_distance = math_abs(current_element[0] - menu_effects.c_connections[i]) + math_abs(current_element[1] - menu_effects.c_connections[i+1])

            if current_distance < menu_effects.connection_distance then
                color.a = 1 - (current_distance / menu_effects.connection_distance)
                Render_Line(Vector2_new(menu_effects.c_connections[i], menu_effects.c_connections[i+1]), Vector2_new(current_element[0], current_element[1]), color)
                break
            end
        end

    end

end

menu_effects.generate(menu_effects.number_of_dots)

ui_handler.new_element("Visuals", "custom_scope", true, Menu_SwitchColor("Visuals", "Custom Scope", false, Color_new(1, 1, 1, 1)), function()
    return ui_handler.elements["Visuals"]["global_switch"]
end)

ui_handler.new_element("Visuals", "custom_scope_size", false, Menu_SliderInt("Visuals", "Custom Scope Size", 50, 50, defines.screen_size.y / 2), function()
    return ui_handler.elements["Visuals"]["global_switch"] and ui_handler.elements["Visuals"]["custom_scope"]
end)

ui_handler.new_element("Visuals", "custom_scope_gap", false, Menu_SliderInt("Visuals", "Custom Scope Gap", 15, 0, defines.screen_size.y / 2), function()
    return ui_handler.elements["Visuals"]["global_switch"] and ui_handler.elements["Visuals"]["custom_scope"]
end)

custom_scope.animation_state = 0
custom_scope.positions = {}
custom_scope.hash = 0
custom_scope.old_hash = 0

custom_scope.cache = -1
custom_scope.restored = true

custom_scope.generate_positions = function(center_offset, length, color)

    local full_color, transp_color = Color_new(color.r, color.g, color.b, math_min(color.a, custom_scope.animation_state)), Color_new(color.r, color.g, color.b, 0)

    custom_scope.positions.lower = { -- временно тут пусть полежит, todo: вынести из каллбека
        vec_start = Vector2_new(defines.screen_size.x / 2 + 1, defines.screen_size.y / 2 + center_offset),
        vec_end = Vector2_new(defines.screen_size.x / 2, defines.screen_size.y / 2 + length),

        colors = {
                full_color,
                full_color,
                transp_color,
                transp_color
            }
    }

    custom_scope.positions.upper = { -- временно тут пусть полежит, todo: вынести из каллбека
        vec_start = Vector2_new(defines.screen_size.x / 2 + 1, defines.screen_size.y / 2 - center_offset + 1),
        vec_end = Vector2_new(defines.screen_size.x / 2, defines.screen_size.y / 2 - length),

        colors = {
            full_color,
            full_color,
            transp_color,
            transp_color
        }
    }

    custom_scope.positions.right = { -- временно тут пусть полежит, todo: вынести из каллбека
        vec_start = Vector2_new(defines.screen_size.x / 2 + center_offset, defines.screen_size.y / 2 + 1),
        vec_end = Vector2_new(defines.screen_size.x / 2 + length, defines.screen_size.y / 2),

        colors = {
            full_color,
            transp_color,
            full_color,
            transp_color
        }
    }

    custom_scope.positions.left = { -- временно тут пусть полежит, todo: вынести из каллбека
        vec_start = Vector2_new(defines.screen_size.x / 2 - center_offset + 1, defines.screen_size.y / 2 + 1),
        vec_end = Vector2_new(defines.screen_size.x / 2 - length, defines.screen_size.y / 2),

        colors = {
            full_color,
            transp_color,
            full_color,
            transp_color
        }
    }
end

custom_scope.handle_cache = function()

    if custom_scope.cache == -1 then
        custom_scope.cache = neverlose_refs.scope:Get()
    end

    if ui_handler.elements["Visuals"]["custom_scope"] then
        neverlose_refs.scope:Set(true)
       
        custom_scope.restored = false
    elseif not ui_handler.elements["Visuals"]["custom_scope"] and not custom_scope.restored and custom_scope.cache ~= -1 then
        neverlose_refs.scope:Set(custom_scope.cache)
        custom_scope.restored = true
    end
end

custom_scope.destroy = function()
    if custom_scope.cache ~= -1 then
        neverlose_refs.scope:Set(custom_scope.cache)
    end
end

custom_scope.render = function()

    local local_player = entity_helpers.local_player.pointer()

    if not EngineClient_IsConnected() or local_player == nil or local_player:GetProp("m_iHealth") < 1 then
        return
    end

    custom_scope.handle_cache()

    local is_enabled = ui_handler.elements["Visuals"]["custom_scope"] and local_player:GetProp("m_bIsScoped")
   
    if is_enabled then
        custom_scope.animation_state = visual_controller.new_animation("custom_scope.animation_state", 1)
    else
        custom_scope.animation_state = visual_controller.get_animation("custom_scope.animation_state").number
    end

    if custom_scope.animation_state == 0 then
        return
    end


    local center_offset = ui_handler.elements["Visuals"]["custom_scope_gap"] * custom_scope.animation_state

    local length = math_max(center_offset + 25, ui_handler.elements["Visuals"]["custom_scope_size"] * custom_scope.animation_state)
    local color = ui_handler.refs["Visuals"]["custom_scope"].ref:GetColor()

    custom_scope.hash = string_format("%s%s%s%s%s%s%s", center_offset, length, color.r, color.g, color.b, color.a, custom_scope.animation_state)

    if custom_scope.old_hash ~= custom_scope.hash then
        custom_scope.generate_positions(center_offset, length, color)
    end

    custom_scope.old_hash = custom_scope.hash

    for _, value in pairs(custom_scope.positions) do
        Render_GradientBoxFilled(value.vec_start, value.vec_end, unpack(value.colors))
    end

end

ui_handler.new_element("Misc", "hitsound", false, Menu_Switch("Misc", "Skeet Hitsound", false), function()
    return ui_handler.elements["Misc"]["enabled"]
end)

ui_handler.new_element("Misc", "hitsound_volume", false, Menu_SliderInt("Misc", "Hitsound Volume", 50, 1, 100), function()
    return ui_handler.elements["Misc"]["enabled"] and ui_handler.elements["Misc"]["hitsound"]
end)


hitsound.handle = function(event)

    if event:GetName() ~= "player_hurt" then
        return
    end

    if not ui_handler.elements["Misc"]["hitsound"] then
        return
    end

    local victim = event:GetInt("userid", -1)
    local attacker = event:GetInt("attacker", -1)

    if victim == -1 or attacker == -1 or victim == attacker then
        return
    end

    attacker = EntityList_GetPlayerForUserID(attacker)

    if attacker == nil then
        return
    end

    if attacker:EntIndex() ~= EngineClient_GetLocalPlayer() then
        return
    end

    ffi_handler.play_sound("buttons/arena_switch_press_02.wav", ui_handler.elements["Misc"]["hitsound_volume"] / 100, 100, 0, 0)
end

manual_arrows.generate_arrows_polygons = function()

    local percents = 4.3
    local x_offset = math_percent_to_pix(percents / 2, "x")

    local poses = {
        ["left"] = Vector2_new(defines.screen_size.x / 2, defines.screen_size.y / 2) - x_offset,
        ["right"] = Vector2_new(defines.screen_size.x / 2, defines.screen_size.y / 2) + x_offset,
        ["backward"] = Vector2_new(defines.screen_size.x / 2, defines.screen_size.y / 2) + Vector2_new(0, math_percent_to_pix(percents, "x").x),
    }

    local offsets = {
        ["left"] = {
            Vector2_new(0, -10),
            Vector2_new(-15, 0),
            Vector2_new(0, 10),
        },

        ["right"] = {
            Vector2_new(0, -10),
            Vector2_new(15, 0),
            Vector2_new(0, 10),
        },

        ["backward"] = {
            Vector2_new(-10, 0),
            Vector2_new(0, 15),
            Vector2_new(10, 0),
        }
    }

    for k, v in pairs(offsets) do
        for j, l in ipairs(v) do
            offsets[k][j] = l + poses[k]
        end
    end

    return offsets, poses
end

manual_arrows.generated_arrow_poly, manual_arrows.arrows_base_pos = manual_arrows.generate_arrows_polygons()

manual_arrows.arrow_offset = 0
manual_arrows.dirs = {
    ["v"] = 0,
    [">"] = 0,
    ["<"] = 0
}

ui_handler.new_element("Visuals", "manual_arrows", true, Menu_ComboColor("Visuals", "Manual Arrows", {"Disabled", "Default", "Alternative"}, 0, Color_new(1, 1, 1, 1)), function()
    return ui_handler.elements["Visuals"]["global_switch"]
end)

ui_handler.new_element("Visuals", "manual_arrows_color", false, Menu_ColorEdit("Visuals", "Manual Line", Color_new(1, 1, 1, 1)), function()
    return ui_handler.elements["Visuals"]["global_switch"] and ui_handler.elements["Visuals"]["manual_arrows"] == 2
end)

ui_handler.new_element("Visuals", "manual_arrows_size", false, Menu_SliderInt("Visuals", "Manual Arrows Size", 12, 6, 24), function()
    return ui_handler.elements["Visuals"]["global_switch"] and ui_handler.elements["Visuals"]["manual_arrows"] == 1
end)

manual_arrows.font = font.get("Tahoma", 24, false, true, false)

manual_arrows.default = function(current_direction, color)


    local direction = ((current_direction == 3 and ">") or (current_direction == 4 and "<") or (current_direction == 2 and "v")) or "no"

    local center_pos = defines.screen_size / 2
    local offset = 4.3 / 2

    local arrow_offset = visual_controller.new_animation("arrow_offset", offset)

    local screen_percentage_offset = math_percent_to_pix(arrow_offset, "x")
    local size = ui_handler.elements["Visuals"]["manual_arrows_size"]

    for _, v in pairs(manual_arrows.dirs) do

        local temp_color = Color_new(color.r, color.g, color.b, color.a)

        if direction == _ then
            visual_controller.new_animation("manual_arrows" .. _, 1)
        end

        manual_arrows.dirs[_] = visual_controller.get_animation("manual_arrows" .. _).number
   

        local render_pos =
        (_ == ">" and center_pos + screen_percentage_offset)
        or
        (_ == "<" and center_pos - screen_percentage_offset)
        or
        -- синкаем кароче их размер
        (_ == "v" and center_pos + Vector2_new(0, screen_percentage_offset.x))


        temp_color.a = math_min(color.a, v)
       
        if temp_color.a > 0.1 then
            Render_Text(_, render_pos + 1, Color_new(0, 0, 0, temp_color.a), size, manual_arrows.font, false, true)
            Render_Text(_, render_pos, temp_color, size, manual_arrows.font, false, true)
        end
    end
end

manual_arrows.alternative = function(current_direction, color)
    local direction = ((current_direction == 3 and "right") or (current_direction == 4 and "left") or (current_direction == 2 and "backward")) or "no"
           
    local side = AntiAim_GetInverterState() and "left" or "right"

    local line_color = ui_handler.refs["Visuals"]["manual_arrows_color"].ref:GetColor()

    for key, poly in pairs(manual_arrows.generated_arrow_poly) do

        if key == "backward" then
            goto arrow_skip
        end

        Render_PolyFilled(Color_new(key == direction and color.r or 0, key == direction and color.g or 0, key == direction and color.b or 0, key == direction and color.a or 0.35), unpack(poly))

        local side_based = key == "right" and -1 or 1

        Render_BoxFilled(manual_arrows.arrows_base_pos[key] + Vector2_new(1 * side_based, -10), manual_arrows.arrows_base_pos[key] + Vector2_new(3 * side_based , 10), Color_new(key == side and line_color.r or 0, key == side and line_color.g or 0, key == side and line_color.b or 0, key == side and line_color.a or 0.35))


        ::arrow_skip::
    end
end

manual_arrows.handle = function()

    if ui_handler.elements["Visuals"]["manual_arrows"] == 0 or not ui_handler.elements["Visuals"]["global_switch"] then
        return
    end

    local direction = neverlose_refs.yaw_base:Get() + 1

    if ui_handler.elements["Visuals"]["manual_arrows"] == 1 then
        manual_arrows.default(direction, ui_handler.refs["Visuals"]["manual_arrows"].ref:GetColor())
    elseif ui_handler.elements["Visuals"]["manual_arrows"] == 2 then
        manual_arrows.alternative(direction, ui_handler.refs["Visuals"]["manual_arrows"].ref:GetColor())
    end

end

ui_handler.new_element("Visuals", "damage_marker", false, Menu_Switch("Visuals", "Damage Marker", false), function()
    return ui_handler.elements["Visuals"]["global_switch"]
end)

damage_marker.array = {}
damage_marker.show_time = 2

damage_marker.event = function(event)

    if event:GetName() ~= "player_hurt" then
        return
    end

    local victim = event:GetInt("userid", -1)
    local attacker = event:GetInt("attacker", -1)

    attacker = EntityList_GetPlayerForUserID(attacker)
    victim = EntityList_GetPlayerForUserID(victim)

    if attacker == nil or victim == nil then
        return
    end

    if attacker:EntIndex() ~= EngineClient_GetLocalPlayer() then
        return
    end

    local hitgroup = event:GetInt("hitgroup")
    local hitbox = defines.hitgroup_to_hitbox[hitgroup]

    if hitbox == nil then
        hitbox = 5
    end

    local position = victim:GetHitboxCenter(hitbox)

    local targetName = victim:GetName()

    if #targetName > 10 then
        targetName = targetName:sub(0, 10)
        targetName = targetName .. "..."
    end

    table_insert(hitlog.array, {
        name = targetName,
        time = GlobalVars.realtime + hitlog.show_time,
        damage = event:GetInt("dmg_health", -1),
        remains = event:GetInt("health"),
        state = 0.01,
        position = position,
        hitgroup = defines.hitgroups[hitgroup]
    })

    table_insert(damage_marker.array, {
        name = targetName,
        time = GlobalVars.realtime + damage_marker.show_time,
        damage = event:GetInt("dmg_health", -1),
        remains = event:GetInt("health"),
        state = 0.01,
        position = position,
        hitgroup = defines.hitgroups[hitgroup]
    })
end

damage_marker.font = font.get("Verdana", 13, false, false, false)
damage_marker.render = function()

    if not ui_handler.elements["Visuals"]["damage_marker"] then
        return
    end

    local realtime = GlobalVars.realtime
    local frametime = GlobalVars.frametime

    for k, v in ipairs(damage_marker.array) do

        if realtime < v.time then
            v.state = visual_controller.new_animation(v.name .. v.time, 1)
        else
            v.state = visual_controller.get_animation(v.name .. v.time).number
        end
   
        if v.state == 0 then
            table_remove(damage_marker.array, k)
        end

        v.position.z = v.position.z + 50 * frametime

        local color = defines.colors.copy(defines.colors.white)

        if v.remains <= 0 then
            color = defines.colors.copy(defines.colors.green)
        end

        color.a = v.state

        Render_Text("-" .. v.damage, Render_WorldToScreen(v.position) + 1, Color_new(0, 0, 0, v.state), math_round(v.state * 13), damage_marker.font, false, true)
        Render_Text("-" .. v.damage, Render_WorldToScreen(v.position), color, math_round(v.state * 13), damage_marker.font, false, true)

        ::skip::
    end

end

ui_handler.new_element("Configs", "export_config", false, Menu.Text("Config System", "апи пиздец"))

kill_say.get_phrase = function()
    return kill_say.phrases[Utils_RandomInt(1, #kill_say.phrases)]
end

ui_handler.new_element("Misc", "kill_say", false, Menu_Switch("Misc", "Kill Say", false), function()
    return ui_handler.elements["Misc"]["enabled"]
end)


kill_say.handle = function(event)

    if not ui_handler.elements["Misc"]["kill_say"] then
        return
    end

    if event:GetName() ~= "player_death" then
        return
    end

    local me = entity_helpers.local_player.pointer()
    local victim = EntityList.GetPlayerForUserID(event:GetInt("userid"))
    local attacker = EntityList.GetPlayerForUserID(event:GetInt("attacker"))

    if victim == attacker or attacker ~= me then return end

    EngineClient.ExecuteClientCmd(string.format("say %s", kill_say.get_phrase())) -- ЛДА БЯЛЧТ СУКА ИЕОРОГЛИВЫЫ ЕБАНЫЙЫКЕЕЕЕ
end

ui_handler.new_element("Visuals", "hitlog", false, Menu_Switch("Visuals", "Hit Log", false), function()
    return ui_handler.elements["Visuals"]["global_switch"]
end)

hitlog.indicators_offset = 13

hitlog.show_time = 10
hitlog.array = {}

hitlog.handle = function()

   if not ui_handler.elements["Visuals"]["hitlog"] then
       return
   end


   visual_controller.extend(hitlog.indicators_offset)

   local realtime = GlobalVars.realtime

   for i = #hitlog.array, 1, -1 do

       local v = hitlog.array[i]

       if realtime < v.time and not (#hitlog.array > 6 and i == 1) then
           v.state = visual_controller.new_animation(v.name .. v.time, 1)
       else
           v.state = visual_controller.get_animation(v.name .. v.time).number
       end
 
       if v.state == 0 then
           table_remove(hitlog.array, i)
           goto skip
       end


       local color = defines.colors.copy(defines.colors.white)

       if v.remains <= 0 then
           color = defines.colors.copy(defines.colors.red)
       end

       color.a = v.state

       if v.custom_text_override == true then
            color = v.custom_color
       end

        local text_for_render = string_format("%s %s -%s (%s)", v.name, v.hitgroup, v.damage, v.remains)
        if v.custom_text_override == true then
            text_for_render = v.custom_text
        end

       local render_pos = defines.screen_size/2 + Vector2_new(0, visual_controller.extend())

       Render_Text(text_for_render, render_pos + 1, Color_new(0, 0, 0, v.state), 13, damage_marker.font, false, true)
       Render_Text(text_for_render, render_pos, color, 13, damage_marker.font, false, true)

       visual_controller.extend(v.state * 13)
       ::skip::
   end


end



handlers.subscribe("events", "kill_say.handle", kill_say.handle)
handlers.subscribe("events", "anti_bruteforce.pre_bullet_impact", anti_bruteforce.pre_bullet_impact)
handlers.subscribe("events", "hitsound.handle", hitsound.handle)
handlers.subscribe("events", "damage_marker.event", damage_marker.event)

handlers.subscribe("createmove", "animation_breaker.handle_cmove", animation_breaker.handle_cmove)
handlers.subscribe("prediction", "animation_breaker.handle_prediction", animation_breaker.handle_prediction)

handlers.subscribe("destroy", "custom_scope.destroy", custom_scope.destroy)

-- НЕ ЗАБЫТЬ, ЧТО ФУНКЦИОНАЛ ДЛЯ РЕНДЕРА ДОБАВЛЯТЬ ОБЯЗАТЕЛЬНО МЕЖДУ СТАРТОМ И ЭНДОМ
handlers.subscribe("draw", "visual_controller.start_render", visual_controller.start_render)

handlers.subscribe("draw", "damage_marker.render", function() if visual_controller.is_rendering then damage_marker.render() end end)
handlers.subscribe("draw", "manual_arrows.handle", function() if visual_controller.is_rendering then manual_arrows.handle() end end)
handlers.subscribe("draw", "bind_system.parse", bind_system.parse)
handlers.subscribe("draw", "custom_scope.render", custom_scope.render)
handlers.subscribe("draw", "menu_effects.handle", menu_effects.handle)
handlers.subscribe("draw", "console_color.handle", console_color.handle)
handlers.subscribe("draw", "visual_controller.alternative_indicators", function() if visual_controller.is_rendering then visual_controller.alternative_indicators() end end)
handlers.subscribe("draw", "visual_controller.default_indicators", function() if visual_controller.is_rendering then visual_controller.default_indicators() end end)
handlers.subscribe("draw", "hitlog.handle", function() if visual_controller.is_rendering then hitlog.handle() end end)

handlers.subscribe("draw", "visual_controller.end_render", visual_controller.end_render)
handlers.subscribe("pre_prediction", "update_jitter_side", update_jitter_side)
handlers.subscribe("pre_prediction", "conditional_AntiAims.default_type", conditional_AntiAims.default_type)
handlers.subscribe("pre_prediction", "conditional_AntiAims.update_conditions", conditional_AntiAims.update_conditions)

handlers.subscribe("pre_prediction", "anti_bruteforce.prediction_handle", anti_bruteforce.prediction_handle)

handlers.subscribe("pre_prediction", "AntiAim_on_use.handle", AntiAim_on_use.handle)

handlers.subscribe("frame_stage", "viewmodel_in_scope.render_start", viewmodel_in_scope.render_start)

handlers.subscribe("destroy", "viewmodel_in_scope.destroy", viewmodel_in_scope.destroy)