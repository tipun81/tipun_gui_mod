function randChar()
	math.randomseed(math.random(1, 500))
	local temp = zZchooseMemMage
	zZchooseMemMage = 1
	RandGender = 0
	choosePortrait = 0
	toggleMale = 0
	toggleFemale = 0
	currentChargenRace = 0
	currentChargenClass = 0
	currentChargenKit = 0
	currentChargenAlignment = 0
	if randomCharacter == 0 then
		randomCharacter = 1
	end
	
	-- Gender
	if createCharScreen:GetCurrentStep() == 0 then
		RandGender = math.random(2)
		createCharScreen:OnMenuButtonClick()
		
		if RandGender == 1 then
			toggleMale = 1
			toggleFemale = 0
			createCharScreen:OnGenderSelectButtonClick(1)
		elseif RandGender == 2 then
			toggleMale = 0
			toggleFemale = 1
			createCharScreen:OnGenderSelectButtonClick(2)
		end
		Infinity_PopMenu()
		createCharScreen:OnDoneButtonClick()
	end
	
	-- Portrait
	if createCharScreen:GetCurrentStep() == 1 then
		if RandGender == 1 then
			currentChargenPort = math.random(#zzPortraitTable)
			zzGetCurrentPortrait()
		elseif RandGender == 2 then
			currentChargenPort = math.random(#zzPortraitTable)
			zzGetCurrentPortrait()
		end
		Infinity_PopMenu()
		createCharScreen:OnDoneButtonClick()
	end
		
	if createCharScreen:GetCurrentStep() == 2 then
		-- do nothing
	end
	
	-- Race
	if createCharScreen:GetCurrentStep() == 3 then
		createCharScreen:OnMenuButtonClick()
		currentChargenRace = math.random(#chargen.races)
		createCharScreen:OnRaceSelectButtonClick(chargen.races[currentChargenRace].id)
		Infinity_PopMenu()
		createCharScreen:OnDoneButtonClick()
	end
	
	-- Class
	if createCharScreen:GetCurrentStep() == 4 then
		createCharScreen:OnMenuButtonClick()
		currentChargenClass = math.random(#chargen.class)
		createCharScreen:OnClassSelectButtonClick(chargen.class[currentChargenClass].id)
		Infinity_PopMenu('CHARGEN_CLASS')
		createCharScreen:OnDoneButtonClick()
	end
	
	if createCharScreen:GetCurrentStep() == 5 then
		-- do nothing
	end
	
	-- Kit
	if createCharScreen:GetCurrentStep() == 6 then
		currentChargenKit = math.random(#chargen.kit)
		createCharScreen:OnKitSelectButtonClick(chargen.kit[currentChargenKit].id)
		Infinity_PopMenu()
		createCharScreen:OnDoneButtonClick()
	end
	
	-- Alignment
	if createCharScreen:GetCurrentStep() == 7 then
		createCharScreen:OnMenuButtonClick()
		currentChargenAlignment = math.random(#chargen.alignment)
		createCharScreen:OnAlignmentSelectButtonClick(chargen.alignment[currentChargenAlignment].id)
		Infinity_PopMenu()
		createCharScreen:OnDoneButtonClick()
	end
	
	-- Abilities
	if createCharScreen:GetCurrentStep() == 8 then
		createCharScreen:OnMenuButtonClick()
		while chargen.totalRoll < 85 do
			createCharScreen:OnAbilityReRollButtonClick()
		end
		Infinity_PopMenu()
		createCharScreen:OnDoneButtonClick()
	end
	
	-- Skills
	if createCharScreen:GetCurrentStep() == 9 then
		createCharScreen:OnMenuButtonClick()
		while chargen.extraProficiencySlots > 0 do
			currentChargenProficiency = math.random(#chargen.proficiency)
			createCharScreen:OnProficiencyPlusMinusButtonClick(chargen.proficiency[currentChargenProficiency].id, true)
		end
		while chargen.extraSkillPoints > 0 do
			currentChargenThiefSkill = math.random(#chargen.thief_skill)
			for i=1,5,1 do
				createCharScreen:OnThiefSkillPlusMinusButtonClick(chargen.thief_skill[currentChargenThiefSkill].id, true)
			end
		end
		Infinity_PopMenu()
		createCharScreen:OnDoneButtonClick()
	end
	
	-- Mage Choose Learned Spells
	if createCharScreen:GetCurrentStep() == 11 then
		while createCharScreen:GetCurrentStep() == 11 do
			randLearnedMage()
		end
	end
	
	-- Mage Choose Active Spells
	if createCharScreen:GetCurrentStep() == 12 then
		while createCharScreen:GetCurrentStep() == 12 do
			randActiveMage()
		end
	end
	
	-- Priest
	if createCharScreen:GetCurrentStep() == 13 then
		while createCharScreen:GetCurrentStep() == 13 do
			randPriest()
		end
	end
	
	if createCharScreen:GetCurrentStep() == 14 then
		-- do nothing
	end
	
	-- Racial Enemy
	if createCharScreen:GetCurrentStep() == 10 then
		currentChargenHatedRace = math.random(#chargen.hatedRace)
		createCharScreen:OnRacialEnemySelectButtonClick(chargen.hatedRace[currentChargenHatedRace].id)
		createCharScreen:OnDoneButtonClick()
	end
	zZchooseMemMage = 1
	chargen.information = '^D' .. t("FC_RANDOM_CHAR") .. '^-:\n\n' .. chargen.information
end


function randLearnedMage()
	while chargen.extraSpells > 0 do
		currentChargenChooseMageSpell = math.random(#chargen.choose_spell)
		createCharScreen:OnLearnMageSpellButtonClick(currentChargenChooseMageSpell)
	end
	createCharScreen:OnDoneButtonClick()
end


function randActiveMage()
	while chargen.extraSpells > 0 do
		currentChargenMemorizeMageSpell = math.random(#chargen.choose_spell)
		createCharScreen:OnMemorizeMageSpellButtonClick(currentChargenMemorizeMageSpell, 1)
		if chargen.extraSpells == 0 and not createCharScreen:IsDoneButtonClickable() then
			createCharScreen:OnMemorizeMageSpellButtonClick(currentChargenMemorizeMageSpell, -1)
		end
	end
	createCharScreen:OnDoneButtonClick()
end


function randPriest()
	while chargen.extraSpells > 0 do
		currentChargenMemorizePriestSpell = math.random(#chargen.choose_spell)
		createCharScreen:OnMemorizePriestSpellButtonClick(currentChargenMemorizePriestSpell, 1)
	end
	createCharScreen:OnDoneButtonClick()
end


--unhide chargen data
zZchargenClass = {}
zZchargenKits = {}
zZclassKitCheck = {	
	['64'] = 22,
	['128'] = 23,
	['256'] = 24,
	['512'] = 25,
	['1024'] = 26,
	['2048'] = 27,
	['4096'] = 28,
	['8192'] = 29,
	['2147483648'] = 30,
	['1073741824'] = 31,
}
function zZchargenClassCreate()
	for k, v in pairs(clastxtList) do
		local id = v[5]
		local kid = v[6]
		local fallen = v[4]
		local done = true
		local kittbl = {}
		if fallen == 0 then
			if kid == 16384 then
				for k2, v2 in pairs(zZchargenClass) do
					if v2.id == id then
						done = false
						break
					end
				end
				if done then
					kittbl[#kittbl+1] = {id=0, currchar=nil, char=nil, name=v[1], desc=v[3]}
					zZchargenClass[#zZchargenClass+1] = {id=id, currchar=nil, char=nil, name=v[1], desc=v[3], kit=kittbl}
				end
			end
		end
	end
	for k, v in pairs(clastxtList) do
		local id = v[5]
		local kid = v[6]
		local fallen = v[4]
		if fallen == 0 and kid ~= 16384 then
			if zZclassKitCheck[tostring(kid)] ~= nil then kid = zZclassKitCheck[tostring(kid)] end
			for k2, v2 in pairs(zZchargenClass) do
				local done = true
				if v2.id == id then
					for k3, v3 in pairs(v2.kit) do
						if v3.id == kid then
							done = false
							break
						end
					end
					if done then
						v2.kit[#v2.kit+1] = {id=kid, currchar=nil, char=nil, name=v[1], desc=v[3]}
					end
				end
			end
		end
	end
end
zZchargenClassCreate()
function zZcreateClassTable(tbl)
	local currchar = 1
	zZchargenKits = {}
	for k, v in pairs(zZchargenClass) do
		v.currchar = nil
		v.char = nil
		for k2, v2 in pairs(tbl) do
			if v2.id == v.id then
				v.currchar = currchar
				v.char = v2
				currchar = currchar + 1
				break
			end
		end
	end
end
function zZcreateKitTable(tbl)
	local currchar = 1
	for k, v in pairs(zZchargenKits) do
		v.currchar = nil
		v.char = nil
		for k2, v2 in pairs(tbl) do
			if v2.id == v.id then
				v.currchar = currchar
				v.char = v2
				currchar = currchar + 1
				break
			end
		end
	end
end
zZalignmentTable = {
	{id=17, name=1102, desc=9603, currchar=nil, char=nil, title='LAWFUL_GOOD'},
	{id=33, name=1105, desc=9606, currchar=nil, char=nil, title='NEUTRAL_GOOD'},
	{id=49, name=1108, desc=9609, currchar=nil, char=nil, title='CHAOTIC_GOOD'},
	{id=18, name=1104, desc=9604, currchar=nil, char=nil, title='LAWFUL_NEUTRAL'},
	{id=34, name=1106, desc=9608, currchar=nil, char=nil, title='NEUTRAL'},
	{id=50, name=1109, desc=9610, currchar=nil, char=nil, title='CHAOTIC_NEUTRAL'},
	{id=19, name=1103, desc=9605, currchar=nil, char=nil, title='LAWFUL_EVIL'},
	{id=35, name=1107, desc=9607, currchar=nil, char=nil, title='NEUTRAL_EVIL'},
	{id=51, name=1110, desc=9611, currchar=nil, char=nil, title='CHAOTIC_EVIL'},
}
function zZcreateAlignTable(tbl)
	local currchar = 1
	for k, v in pairs(zZalignmentTable) do
		v.currchar = nil
		v.char = nil
		for k2, v2 in pairs(tbl) do
			if v2.id == v.id then
				v.currchar = currchar
				v.char = v2
				currchar = currchar + 1
				break
			end
		end
	end
end
function zZcreateProfTable(tbl)
	local currchar = 1
	for k, v in pairs(zzChargenProfStrrefs) do
		v.currchar = nil
		v.char = nil
		for k2, v2 in pairs(tbl) do
			if v2.id == v.id then
				v.currchar = currchar
				v.char = v2
				currchar = currchar + 1
				break
			end
		end
	end
end
zZthiefSkillTable = {
	{id=0, name=%str9463%,  description=%str9597%,  currchar=nil, char=nil, title='PICK_POCKETS'},
	{id=1, name=%str9460%,  description=%str9598%,  currchar=nil, char=nil, title='OPEN_LOCKS'},
	{id=2, name=%str9462%,  description=%str9599%,  currchar=nil, char=nil, title='FIND_TRAPS'},
	{id=3, name=%str9461%,  description=%str9600%,  currchar=nil, char=nil, title='MOVE_SILENTLY'},
	{id=4, name=%str34120%, description=%str9601%,  currchar=nil, char=nil, title='HIDE_IN_SHADOWS'},
	{id=5, name=%str34121%, description=%str34123%, currchar=nil, char=nil, title='DETECT_ILLUSION'},
	{id=6, name=%str34122%, description=%str34124%, currchar=nil, char=nil, title='SET_TRAPS'},
	{id=7, name=%str9464%,  description=%str34143%, currchar=nil, char=nil, title='STEALTH'},
}
function zZcreateSkillsTable(tbl)
	local currchar = 1
	for k, v in pairs(zZthiefSkillTable) do
		v.currchar = nil
		v.char = nil
		for k2, v2 in pairs(tbl) do
			if v2.id == v.id then
				v.currchar = currchar
				v.char = v2
				currchar = currchar + 1
				break
			end
		end
	end
end

















