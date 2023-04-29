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
zzMultiClass = 0
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
					kittbl[#kittbl+1] = {id=0, currchar=nil, char=nil, name=v[1], desc=v[3], scriptname=v[7], classId=id}
					zZchargenClass[#zZchargenClass+1] = {id=id, currchar=nil, char=nil, name=v[1], desc=v[3], kit=kittbl, scriptname=v[7]}
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
						v2.kit[#v2.kit+1] = {id=kid, currchar=nil, char=nil, name=v[1], desc=v[3], scriptname=v[7], classId=id}
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
function zZgetCurrentClassIDDual(namez)
	local remove = function (txt)
		txt = string.gsub(txt, ' ', '')
		txt = string.gsub(txt, '/', '')
		txt = string.gsub(txt, ':', '')
		txt = string.gsub(txt, '-', '')
		return txt
	end
	local cucu = ''
	local strz = remove(namez)
	for k, v in pairs(clastxtList) do
		local str = remove(Infinity_FetchString(v[1]))
		if string.lower(strz) == string.lower(str) then
			cucu = v[7]
end
	end
	return cucu
end
function zZgetKitEnabled(kitName, clsId)
	local currchar = 1
	local KitClass = ''
	if zzMultiClass == 0 then
		if zZdualKitToKit == 0 then
			local locName = 16384
			locName = zZcheckKit[zZgetCurrentClassIDDual(nameFirst)].kitid
			if locName ~= 16384 then
				for k, v in pairs(clastxtList) do
					if (v[7] == kitName) and (v[6] ~= 16384) then
						currchar = nil
						break
					end
				end
			end
		end
	end
	-- not barbarian or wildmage
	if currchar ~= nil then
		if zzMultiClass == 0 then
			if (kitName == 'WILD_MAGE') or (kitName == 'BARBARIAN') then currchar = nil end
		end
	end
	-- accessed kit
	if currchar ~= nil then
		if zZcheckKit[kitName].kitaccess == 0 then currchar = nil end
	end
	--get race
	local currRace = ''
	if zzMultiClass == 0 then
		local currA = Infinity_FetchString(characters[currentID].race)
		currA = string.gsub(currA, ' ', '')
		currA = string.gsub(currA, '/', '')
		currA = string.gsub(currA, ':', '')
		currA = string.gsub(currA, '-', '')
		for k, v in pairs(racetextList) do
			local currB = Infinity_FetchString(v[2])
				currB = string.gsub(currB, ' ', '')
				currB = string.gsub(currB, '/', '')
				currB = string.gsub(currB, ':', '')
				currB = string.gsub(currB, '-', '')
			if string.lower(currA) == string.lower(currB) then currRace = v[6]; break end
		end
	else
		for k, v in pairs(racetextList) do
			if v[1] == chargen.races[currentChargenRace].id then
				currRace = v[6]; break
			end
		end
	end
	--get origClass
	local origClass = ''
	for k, v in pairs(clastxtList) do
		if (v[5] == clsId) and (v[6] == 16384) then origClass = v[7]; break end
	end
	--race
	if currchar ~= nil then
		if zZcheckKit[kitName].racerestrict ~= nil then KitClass = kitName else KitClass = origClass end
		if zZcheckKit[KitClass].racerestrict[currRace] ~= 1 then currchar = nil end
	end
	--abils
	if zzMultiClass == 0 then
		if currchar ~= nil then
			local checkstr = tonumber(string.gsub(characters[currentID].attr.str.base, '/[0-9]+', ''), 10)
			local checkdex = tonumber(string.gsub(characters[currentID].attr.dex.base, '/[0-9]+', ''), 10)
			local checkcon = tonumber(string.gsub(characters[currentID].attr.con.base, '/[0-9]+', ''), 10)
			local checkint = tonumber(string.gsub(characters[currentID].attr.int.base, '/[0-9]+', ''), 10)
			local checkwis = tonumber(string.gsub(characters[currentID].attr.wis.base, '/[0-9]+', ''), 10)
			local checkcha = tonumber(string.gsub(characters[currentID].attr.cha.base, '/[0-9]+', ''), 10)
			if zZcheckKit[kitName].abilrestrict ~= nil then KitClass = kitName else KitClass = origClass end
			if (checkstr < zZcheckKit[KitClass].abilrestrict.str) or
			   (checkdex < zZcheckKit[KitClass].abilrestrict.dex) or
			   (checkcon < zZcheckKit[KitClass].abilrestrict.con) or
			   (checkint < zZcheckKit[KitClass].abilrestrict.int) or
			   (checkwis < zZcheckKit[KitClass].abilrestrict.wis) or
			   (checkcha < zZcheckKit[KitClass].abilrestrict.cha) then
				currchar = nil
			end
		end
	end
	--magescool
	if currchar ~= nil then
				if zZcheckKit[kitName].magescoolrestrict ~= nil then KitClass = kitName else KitClass = origClass end
		if zzMultiClass == 0 then
			if (clsId == 1) then
				if zZcheckKit[KitClass].magescoolrestrict[currRace] ~= 1 then currchar = nil end
			end
		else
			if (clsId == 7) or (clsId == 10) or (clsId == 13) or (clsId == 14) or (clsId == 17) then
				local idkiy = zZcheckKit[kitName].kitid
				if currRace == 'GNOME' then
					if idkiy ~= 16384 then currchar = nil end
				else
					for k, v in pairs(zZclassKitCheck) do if idkiy == v then idkiy = tonumber(k) end end
					for k, v in pairs(clastxtList) do
						if (v[6] == idkiy) and (idkiy ~= 16384) then
							if v[5] == 1 then
								if zZcheckKit[KitClass].magescoolrestrict[currRace] ~= 1 then currchar = nil end
								break
							end
						end
					end
				end
			end
		end
	end
	--Alignment
	local currAlign = ''
	if zzMultiClass == 0 then
		local currAa = Infinity_FetchString(characters[currentID].alignment)
			currAa = string.gsub(currAa, ' ', '')
			currAa = string.gsub(currAa, '/', '')
			currAa = string.gsub(currAa, ':', '')
			currAa = string.gsub(currAa, '-', '')
	for k, v in pairs(zZalignmentTable) do
			local currBa = Infinity_FetchString(v.name)
				currBa = string.gsub(currBa, ' ', '')
				currBa = string.gsub(currBa, '/', '')
				currBa = string.gsub(currBa, ':', '')
				currBa = string.gsub(currBa, '-', '')
			if string.lower(currAa) == string.lower(currBa) then
				currAlign = v.title; break
			end
			end
		if currchar ~= nil then
			if zZcheckKit[kitName].alignrestrict ~= nil then KitClass = kitName else KitClass = origClass end
			if zZcheckKit[KitClass].alignrestrict[currAlign] ~= 1 then currchar = nil end
		end
	end
	return currchar
end
function zZcreateKitTableMulti(charCls, id)
	--local id = charCls.id
	zZchargenKits[#zZchargenKits+1] = {id=0, currchar=1, char=charCls, name=charCls.name, desc=charCls.desc, scriptname=charCls.scriptname, classId=id}
	--fighter - 7, 8, 9, 10, 17 - 2
	local kittbl = {}
	if (id == 7) or (id == 8) or (id == 9) or (id == 10) or (id == 17) then
		for k, v in pairs(zZchargenClass) do
			if v.id == 2 then kittbl = v.kit; break end
		end
		if #kittbl > 1 then
			for i = 2, #kittbl do zZchargenKits[#zZchargenKits+1] = kittbl[i] end
		end
	end
	--mage - 7, 10, 13, 14, 17 - 1
	local kittbl = {}
	if (id == 7) or (id == 10) or (id == 13) or (id == 14) or (id == 17) then
		for k, v in pairs(zZchargenClass) do
			if v.id == 1 then kittbl = v.kit; break end
		end
		if #kittbl > 1 then
			for i = 2, #kittbl do zZchargenKits[#zZchargenKits+1] = kittbl[i] end
		end
	end
	--cleric - 8, 14, 15, 17, 18 - 3
	local kittbl = {}
	if (id == 8) or (id == 14) or (id == 15) or (id == 17) or (id == 18) then
		for k, v in pairs(zZchargenClass) do
			if v.id == 3 then kittbl = v.kit; break end
		end
		if #kittbl > 1 then
			for i = 2, #kittbl do zZchargenKits[#zZchargenKits+1] = kittbl[i] end
		end
	end
	--thief - 9, 10, 13, 15 - 4
	local kittbl = {}
	if (id == 9) or (id == 10) or (id == 13) or (id == 15) then
		for k, v in pairs(zZchargenClass) do
			if v.id == 4 then kittbl = v.kit; break end
		end
		if #kittbl > 1 then
			for i = 2, #kittbl do zZchargenKits[#zZchargenKits+1] = kittbl[i] end
		end
	end
	--druid - 16 - 11
	local kittbl = {}
	if (id == 16) then
		for k, v in pairs(zZchargenClass) do
			if v.id == 11 then kittbl = v.kit; break end
		end
		if #kittbl > 1 then
			for i = 2, #kittbl do zZchargenKits[#zZchargenKits+1] = kittbl[i] end
		end
	end
	--ranger - 18 - 12
	local kittbl = {}
	if (id == 18) then
		for k, v in pairs(zZchargenClass) do
			if v.id == 12 then kittbl = v.kit; break end
		end
		if #kittbl > 1 then
			for i = 2, #kittbl do zZchargenKits[#zZchargenKits+1] = kittbl[i] end
		end
	end
	zZcreateKitTableEx(id)
end
function zZcreateKitTableEx(clsId)
	for i=1, #zZchargenKits do
		zZchargenKits[i].currchar = zZgetKitEnabled(zZchargenKits[i].scriptname, clsId)
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
zZminMaxAbil = {}
function zZsetDefAbilTbl()
	zZminMaxAbil = {}
	for i = 1, 6 do
		table.insert(zZminMaxAbil, { change=false, minorig=0, maxorig=0, minkit=0, maxkit=0 })
	end
end
function zZgetOriginalMinMaxAbilPoints()
	for i = 1, 6 do
		local abil = chargen.ability[i]
		if abil and abil.desc ~= -1 then
			local strMn, strMx = '', ''
			local s, e, pos, enp = 0, 0
			createCharScreen:SetAbilityHelpInfo(i)
			local str = Infinity_FetchString(abil.desc)
			pos, enp = string.find(str, ":%s*%d+", 1)
			if pos ~= nil then
				strMn = string.sub(str, pos, enp)
				s, e = string.find(strMn, '%d')
				if s ~= nil then
					zZminMaxAbil[i].minorig = tonumber(string.sub(strMn, s))
					zZminMaxAbil[i].minkit  = tonumber(string.sub(strMn, s))
				end
			end
			pos, enp = string.find(str, ":%s*%d+", enp)
			if pos ~= nil then
				strMx = string.sub(str, pos, enp)
				s, e = string.find(strMx, '%d')
				if s ~= nil then
					zZminMaxAbil[i].maxorig = tonumber(string.sub(strMx, s))
					zZminMaxAbil[i].maxkit  = tonumber(string.sub(strMx, s))
				end
			end
		end
	end
end
function zZgetKitMinMaxAbilPoints()
	local kitName = zZchargenKits[currentChargenKit].scriptname
	local origClass = ''
	local clsId = 0
	for k, v in pairs(clastxtList) do
		if v[7] == kitName then clsId = v[5]; break end
	end
	for k, v in pairs(clastxtList) do
		if (v[5] == clsId) and (v[6] == 16384) then origClass = v[7]; break end
	end
	if zZcheckKit[kitName].minimumstats.minstats ~= nil then KitClass = kitName else KitClass = origClass end
	if zZcheckKit[KitClass].minimumstats.minstats.str > zZminMaxAbil[1].minorig then zZminMaxAbil[1].minkit = zZcheckKit[KitClass].minimumstats.minstats.str; zZminMaxAbil[1].change = true end
	if zZcheckKit[KitClass].minimumstats.minstats.dex > zZminMaxAbil[2].minorig then zZminMaxAbil[2].minkit = zZcheckKit[KitClass].minimumstats.minstats.dex; zZminMaxAbil[2].change = true end
	if zZcheckKit[KitClass].minimumstats.minstats.con > zZminMaxAbil[3].minorig then zZminMaxAbil[3].minkit = zZcheckKit[KitClass].minimumstats.minstats.con; zZminMaxAbil[3].change = true end
	if zZcheckKit[KitClass].minimumstats.minstats.int > zZminMaxAbil[4].minorig then zZminMaxAbil[4].minkit = zZcheckKit[KitClass].minimumstats.minstats.int; zZminMaxAbil[4].change = true end
	if zZcheckKit[KitClass].minimumstats.minstats.wis > zZminMaxAbil[5].minorig then zZminMaxAbil[5].minkit = zZcheckKit[KitClass].minimumstats.minstats.wis; zZminMaxAbil[5].change = true end
	if zZcheckKit[KitClass].minimumstats.minstats.cha > zZminMaxAbil[6].minorig then zZminMaxAbil[6].minkit = zZcheckKit[KitClass].minimumstats.minstats.cha; zZminMaxAbil[6].change = true end
	if zZcheckKit[kitName].minimumstats.statmod ~= nil then KitClass = kitName else KitClass = origClass end
	if zZcheckKit[KitClass].minimumstats.statmod.str ~= 0 then
		if zZcheckKit[KitClass].minimumstats.statmod.str > 0 then
			zZminMaxAbil[1].minkit = zZminMaxAbil[1].minkit + zZcheckKit[KitClass].minimumstats.statmod.str
			zZminMaxAbil[1].change = true
		end
		if zZcheckKit[KitClass].minimumstats.statmod.str < 0 then
			zZminMaxAbil[1].maxkit = zZminMaxAbil[1].maxkit + zZcheckKit[KitClass].minimumstats.statmod.str
			zZminMaxAbil[1].change = true
		end
	end
	if zZcheckKit[KitClass].minimumstats.statmod.dex ~= 0 then
		if zZcheckKit[KitClass].minimumstats.statmod.str > 0 then
			zZminMaxAbil[2].minkit = zZminMaxAbil[2].minkit + zZcheckKit[KitClass].minimumstats.statmod.str
			zZminMaxAbil[2].change = true
		end
		if zZcheckKit[KitClass].minimumstats.statmod.str < 0 then
			zZminMaxAbil[2].maxkit = zZminMaxAbil[2].maxkit + zZcheckKit[KitClass].minimumstats.statmod.str
			zZminMaxAbil[2].change = true
		end
	end
	if zZcheckKit[KitClass].minimumstats.statmod.con ~= 0 then
		if zZcheckKit[KitClass].minimumstats.statmod.str > 0 then
			zZminMaxAbil[3].minkit = zZminMaxAbil[3].minkit + zZcheckKit[KitClass].minimumstats.statmod.str
			zZminMaxAbil[3].change = true
		end
		if zZcheckKit[KitClass].minimumstats.statmod.str < 0 then
			zZminMaxAbil[3].maxkit = zZminMaxAbil[3].maxkit + zZcheckKit[KitClass].minimumstats.statmod.str
			zZminMaxAbil[3].change = true
		end
	end
	if zZcheckKit[KitClass].minimumstats.statmod.int ~= 0 then
		if zZcheckKit[KitClass].minimumstats.statmod.str > 0 then
			zZminMaxAbil[4].minkit = zZminMaxAbil[4].minkit + zZcheckKit[KitClass].minimumstats.statmod.str
			zZminMaxAbil[4].change = true
		end
		if zZcheckKit[KitClass].minimumstats.statmod.str < 0 then
			zZminMaxAbil[4].maxkit = zZminMaxAbil[4].maxkit + zZcheckKit[KitClass].minimumstats.statmod.str
			zZminMaxAbil[4].change = true
		end
	end
	if zZcheckKit[KitClass].minimumstats.statmod.wis ~= 0 then
		if zZcheckKit[KitClass].minimumstats.statmod.str > 0 then
			zZminMaxAbil[5].minkit = zZminMaxAbil[5].minkit + zZcheckKit[KitClass].minimumstats.statmod.str
			zZminMaxAbil[5].change = true
		end
		if zZcheckKit[KitClass].minimumstats.statmod.str < 0 then
			zZminMaxAbil[5].maxkit = zZminMaxAbil[5].maxkit + zZcheckKit[KitClass].minimumstats.statmod.str
			zZminMaxAbil[5].change = true
		end
	end
	if zZcheckKit[KitClass].minimumstats.statmod.cha ~= 0 then
		if zZcheckKit[KitClass].minimumstats.statmod.str > 0 then
			zZminMaxAbil[6].minkit = zZminMaxAbil[6].minkit + zZcheckKit[KitClass].minimumstats.statmod.str
			zZminMaxAbil[6].change = true
		end
		if zZcheckKit[KitClass].minimumstats.statmod.str < 0 then
			zZminMaxAbil[6].maxkit = zZminMaxAbil[6].maxkit + zZcheckKit[KitClass].minimumstats.statmod.str
			zZminMaxAbil[6].change = true
		end
	end
end
function zZupdateKitAbilities()
	local checkAbil = { [1]={abil=0, done=false},
	                    [2]={abil=0, done=false},
	                    [3]={abil=0, done=false},
	                    [4]={abil=0, done=false},
	                    [5]={abil=0, done=false},
	                    [6]={abil=0, done=false} }
	for i = 1, 6 do 
		checkAbil[i].abil = tonumber(string.gsub(chargen.ability[i].roll, '/[0-9]+', ''), 10)
	end
	local nodone = true
	while nodone do
		for i = 1, 6 do
			if not checkAbil[i].done then
				if zZminMaxAbil[i].change then
					if checkAbil[i].abil < zZminMaxAbil[i].minkit then
						for j = 1, 6 do
							if i ~= j then
								if checkAbil[j].abil > zZminMaxAbil[j].minkit then
									createCharScreen:OnAbilityPlusMinusButtonClick(j, false)
									createCharScreen:OnAbilityPlusMinusButtonClick(i, true)
									checkAbil[j].abil = checkAbil[j].abil - 1
									checkAbil[i].abil = checkAbil[i].abil + 1
									break
								end
							end
						end
					elseif checkAbil[i].abil > zZminMaxAbil[i].maxkit then
						for j = 1, 6 do
							if i ~= j then
								if checkAbil[j].abil < zZminMaxAbil[j].maxkit then
									createCharScreen:OnAbilityPlusMinusButtonClick(i, false)
									createCharScreen:OnAbilityPlusMinusButtonClick(j, true)
									checkAbil[i].abil = checkAbil[i].abil - 1
									checkAbil[j].abil = checkAbil[j].abil + 1
									break
								end
							end
						end
					else
						checkAbil[i].done = true	
					end
				else
					checkAbil[i].done = true	
				end
			end
		end
		local checks = 0
		for i = 1, 6 do
			if checkAbil[i].done then
				checks = checks + 1
			end
		end
		if checks == 6 then
			nodone = false
		end
	end
end
function zZabilPlusButtonClickable(row)
	local clickable = true
	if (zzMultiClass ~= 0) then
		local roll = tonumber(string.gsub(chargen.ability[row].roll, '/[0-9]+', ''), 10)
		if roll >= zZminMaxAbil[row].maxkit then clickable = false end
	end
	return clickable
end
function zZabilMinusButtonClickable(row)
	local clickable = true
	if (zzMultiClass ~= 0) then
		local roll = tonumber(string.gsub(chargen.ability[row].roll, '/[0-9]+', ''), 10)
		if roll <= zZminMaxAbil[row].minkit then clickable = false end
	end
	return clickable
end
function zZabilityOrGeneralHelp()
	local idx = currentChargenAbility
	ability = chargen.ability[idx]
	local str = ''
	if ability and ability.desc ~= -1 then
		createCharScreen:SetAbilityHelpInfo(idx)
		str = Infinity_FetchString(ability.desc)
		if (zZKitMulticlass ~= 0) and (zzMultiClass ~= 0) then
			if zZminMaxAbil[idx].change == true then
				str = string.gsub(str, ':%s*' .. zZminMaxAbil[idx].minorig, ': ' .. zZminMaxAbil[idx].minkit)
				str = string.gsub(str, ':%s*' .. zZminMaxAbil[idx].maxorig, ': ' .. zZminMaxAbil[idx].maxkit)
			end
		end
	else
		str = Infinity_FetchString(17247)
	end
	return str
end
function zZcreateAlignTableEx()
	local kitName = zZchargenKits[currentChargenKit].scriptname
	local origClass = ''
	local clsId = 0
	for k, v in pairs(clastxtList) do
		if v[7] == kitName then clsId = v[5]; break end
	end
	for k, v in pairs(clastxtList) do
		if (v[5] == clsId) and (v[6] == 16384) then origClass = v[7]; break end
	end
	if zZcheckKit[kitName].alignrestrict ~= nil then KitClass = kitName else KitClass = origClass end
	for k, v in pairs(zZalignmentTable) do
		if zZcheckKit[KitClass].alignrestrict[v.title] ~= 1 then
			v.currchar = nil
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
	if (zZKitMulticlass ~= 0) and (zzMultiClass ~= 0) then
		zZcreateAlignTableEx()
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

















