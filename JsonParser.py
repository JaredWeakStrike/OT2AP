import json
import os
import re


# with open(self.game_communication_path + f"\kh2save{self.kh2seedname}{self.auth}.json", 'r') as f:
#    self.kh2seedsave = json.load(f)
#    self.locations_checked = set(self.kh2seedsave["LocationsChecked"])
def func(value):
    return ''.join(value.splitlines())


regions = {
    "Twn_Mnt_1_1": "Flamechurch",
    "Twn_Mnt_1_2": "Flamechurch: Cathedral",
    "Twn_Mnt_2_1": "Montwise",
    "Twn_Mnt_3_1": "Merry Hills",
    "Twn_Dst_1_1": "Ryu",
    "Twn_Dst_2_1": "Sai",
    "Twn_Dst_3_1": "Ku",
    "Twn_Cty_1_1": "New Delsta",
    "Twn_Cty_1_2": "Abandoned Village",
    "Twn_Cty_2_1": "Clockbank",
    "Twn_Cty_3_1": "Lostseed",
    "Twn_Isd_1_1": "Beasting Village",
    "Twn_Isd_2_1": "Tropu'hopu",
    "Twn_Isd_3_1": "Nameless Village",
    "Twn_Wld_1_1": "Oresrush",
    "Twn_Wld_2_1": "Crackridge",
    "Twn_Wld_3_1": "Gravell",
    "Twn_Sea_1_1": "Canalbrine",
    "Twn_Sea_2_1": "Conning Creek",
    "Twn_Sea_3_1": "Roque Island",
    "Twn_Fst_1_1": "Cropdale",
    "Twn_Fst_2_1": "Wellgrove",
    "Twn_Fst_3_1": "Timberain",
    "Twn_Fst_3_2": "Mother's Garden: Orphanage",
    "Twn_Snw_1_1": "Frigit Isle",
    "Twn_Snw_1_2": "Cape Cold",
    "Twn_Snw_2_1": "Winterbloom",
    "Twn_Snw_3_1": "Stormhail",
    "Twn_Snw_3_2": "Stormhail: Castle Mei",
    "Dng_Wld_3_1": "Duskruin Shrine",
    "Dng_Fst_3_1": "Timberain Castle",
    "Dng_Fst_2_2": "Animal Trail",
    "Dng_Isd_3_1": "Wandering Wood",
    "Dng_Isd_3_2": "Summit of Strife",
    "Dng_Snw_3_2": "Castle Mei: East Tower",
    "Dng_Mnt_3_1": "Shrine of Ul'sterra",
    "Dng_Cty_3_2": "Lostseed Castle",
    "Fld_Dst_3_1": "Southern Ku Sands",
    "Fld_Dst_2_5": "Sandflow Pass",
    "Fld_Wld_1_1": "Abandoned Silver Mine",
    "Dng_Sea_3_1": "The Roque Company",
    "Dng_Wld_2_1": "Bed of the Titan",
    "Dng_Cty_1_2": "Theater",
    "Dng_Snw_3_4": "Beneath the Wall",
    "Dng_Dst_3_2": "Five-Tiered Tower"
}
short_hand = {
    "Mnt": "Crestlands",
    "Dst": "Hinoeuma",
    "Cty": "Brightlands",
    "Wld": "Wildlands",
    "Sea": "Harborlands",
    "Fst": "Leaflands",
    "Snw": "Winterlands",
    "Isd": "Totohaha",
}
shorter_hand = {
    "Fld_Mnt_1_1":         "Flamechurch Pilgrims' Way",
    "Fld_Mnt_1_2":         "Eastern Flamechurch Pass",
    "Fld_Mnt_2_1":         "Western Montwise Pass",
    "Fld_Mnt_2_2":         "Borderfall",
    "Fld_Mnt_3_1":         "Northern Montwise Pass",
    "Fld_Mnt_3_2":         "Western Merry Hills Pass",
    "Fld_Mnt_3_3":         "Abandoned Traverse",
    "Dng_Mnt_1_1":         "Cathedral Cellars",
    "Dng_Mnt_2_1":         "Forsaken Graveyard",
    "Dng_Mnt_2_2":         "Seat of the Water Sprite",
    "Dng_Mnt_2_Job":       "Altar of the Flamebringer",
    "Dng_Mnt_3_1_A":       "Shrine of Ul'sterra",
    "Dng_Mnt_3_1_B":       "Stage of the Moon and Sun",
    "Dng_Mnt_3_3":         "Abandoned Church",
    "Twn_Mnt_1_1_A":       "Flamechurch",
    "Twn_Mnt_1_2_A":       "Flamechurch: Cathedral Entrance",
    "Twn_Mnt_1_2_B":       "Flamechurch: Cathedral",
    "Twn_Mnt_2_1_A":       "Montwise",
    "Twn_Mnt_2_1_B":       "Montwise: Library",
    "Twn_Mnt_2_1_C":       "Montwise: Underground Arena",
    "Twn_Mnt_3_1_A":       "Merry Hills",
    "Twn_Mnt_3_1_B":       "Merry Hills: Shrine Entrance",
    "Fld_Dst_1_1":         "Northern Ryu Sands",
    "Fld_Dst_2_2":         "Western Sai Sands",
    "Fld_Dst_2_3":         "Southern Sai Sands",
    "Fld_Dst_2_4":         "Eastern Sai Sands",
    "Fld_Dst_2_5_A":       "Sandflow Pass",
    "Fld_Dst_2_5_B":       "Old Campsite",
    "Fld_Dst_3_1_A":       "Battlefield",
    "Fld_Dst_3_1_B":       "Southern Ku Sands",
    "Fld_Dst_3_2":         "Eastern Ku Sands",
    "Dng_Dst_2_1":         "Dragonridge",
    "Dng_Dst_2_2":         "Quicksand Gaol",
    "Dng_Dst_2_3":         "Decaying Temple",
    "Dng_Dst_2_4":         "Sand Lion's Den",
    "Dng_Dst_2_Job":       "Altar of the Thunderblade",
    "Dng_Dst_3_1":         "Tranquil Grotto",
    "Dng_Dst_3_2_A":       "Five-Tiered Tower",
    "Dng_Dst_3_2_B":       "Five-Tiered Tower: Second Floor",
    "Dng_Dst_3_2_C":       "Five-Tiered Tower: Third Floor",
    "Dng_Dst_3_2_D":       "Five-Tiered Tower: Fourth Floor",
    "Dng_Dst_3_2_E":       "Five-Tiered Tower: Top Floor",
    "Twn_Dst_1_1_A":       "Ryu",
    "Twn_Dst_2_1_A":       "Sai",
    "Twn_Dst_2_1_B":       "Sai: East District",
    "Twn_Dst_3_1_A":       "Ku: Castle Town",
    "Twn_Dst_3_1_A_Fire":  "Ku: Castle Town",
    "Twn_Dst_3_1_A_Past":  "Ku: Castle Town",
    "Twn_Dst_3_1_B":       "Castle Ku: Entrance",
    "Twn_Dst_3_1_B_Past":  "Castle Ku: Entrance",
    "Twn_Dst_3_1_C":       "Castle Ku",
    "Twn_Dst_3_1_C_Past":  "Castle Ku",
    "Fld_Cty_1_1":         "New Delsta Harbor: Anchorage",
    "Fld_Cty_1_2":         "New Delsta Flats",
    "Fld_Cty_1_3":         "Eastern New Delsta Highroad",
    "Fld_Cty_1_4":         "Western Clockbank Highroad",
    "Fld_Cty_2_1":         "Southern Clockbank Highroad",
    "Fld_Cty_2_2":         "Path to Mount Liphia",
    "Fld_Cty_3_1":         "Deserted Highroad",
    "Dng_Cty_1_1":         "Diamante's Estate",
    "Dng_Cty_1_2_AreaA":   "Theater: Backstage",
    "Dng_Cty_1_2_AreaB":   "Theater: Backstage",
    "Dng_Cty_1_3":         "Abandoned Waterway",
    "Dng_Cty_1_4":         "Sunken Maw",
    "Dng_Cty_2_1":         "The Roque Company: Factory",
    "Dng_Cty_2_2":         "Mount Liphia",
    "Dng_Cty_2_3":         "Old Clock Tower",
    "Dng_Cty_2_Job":       "Altar of the Prince of Thieves",
    "Dng_Cty_3_1":         "Underground Waterway",
    "Dng_Cty_3_2_A":       "Lostseed Castle",
    "Dng_Cty_3_2_B":       "Lostseed Castle: Upper Level",
    "Twn_Cty_1_1_A":       "New Delsta",
    "Twn_Cty_1_1_B":       "New Delsta: Backstreets",
    "Twn_Cty_1_1_C":       "New Delsta: Game Parlor",
    "Twn_Cty_1_1_D_AreaA": "New Delsta: Theater",
    "Twn_Cty_1_1_D_AreaB": "Theater: Passageway",
    "Twn_Cty_1_1_D_AreaC": "New Delsta: Theater",
    "Twn_Cty_1_2_A":       "Abandoned Village",
    "Twn_Cty_1_2_B":       "Healeaks",
    "Twn_Cty_2_1_A":       "Clockbank",
    "Twn_Cty_2_1_B":       "Clockbank: Industrial District",
    "Twn_Cty_3_1_A":       "Lostseed",
    "Fld_Isd_1_1":         "Path to the Tombs of the Wardenbeasts",
    "Fld_Isd_1_2":         "North Beasting Traverse",
    "Fld_Isd_1_3":         "Beasting Bay: Anchorage",
    "Fld_Isd_2_1":         "Western Tropu'hopu Traverse",
    "Fld_Isd_3_3":         "Southern Nameless Village Traverse",
    "Dng_Isd_1_1":         "Tombs of the Wardenbeasts",
    "Dng_Isd_1_2":         "Cavern of Waves",
    "Dng_Isd_2_1":         "Sinking Ruins",
    "Dng_Isd_2_Job":       "Altar of the Huntress",
    "Dng_Isd_3_1_A":       "Wandering Wood",
    "Dng_Isd_3_1_B":       "Wandering Wood",
    "Dng_Isd_3_1_C":       "Rifted Rock",
    "Dng_Isd_3_2_A":       "Summit of Strife",
    "Dng_Isd_3_2_B":       "Verdant Wood",
    "Dng_Isd_3_2_C":       "Stormy Cape",
    "Dng_Isd_3_2_D":       "Moonview Cliff",
    "Dng_Isd_3_2_E":       "Abyssal Beach",
    "Twn_Isd_1_1_A":       "Beasting Village",
    "Twn_Isd_2_1_A":       "Tropu'hopu",
    "Twn_Isd_2_1_B":       "Tropu'hopu: Floating Theater",
    "Twn_Isd_2_1_C":       "Tropu'hopu: Shipyard",
    "Twn_Isd_3_1_A":       "Nameless Village",
    "Fld_Wld_1_1_A":       "Silver Mine",
    "Fld_Wld_1_1_B":       "Abandoned Silver Mine",
    "Fld_Wld_1_2":         "Crackridge Harbor: Anchorage",
    "Fld_Wld_1_3":         "Southern Oresrush Wilds",
    "Fld_Wld_2_1":         "Western Crackridge Wilds",
    "Fld_Wld_2_2":         "Southern Crackridge Wilds",
    "Fld_Wld_2_3":         "Abandoned Road",
    "Fld_Wld_3_1":         "Path to the Duskruin Shrine",
    "Fld_Wld_3_2":         "Western Gravell Wilds",
    "Dng_Wld_1_1":         "Giff's Manse",
    "Dng_Wld_1_2":         "Unfinished Tunnel",
    "Dng_Wld_2_1_A":       "Path to the Bed of the Titan",
    "Dng_Wld_2_1_B":       "Bed of the Titan",
    "Dng_Wld_2_2":         "Fellsun Ruins",
    "Dng_Wld_2_Job":       "Altar of the Trader",
    "Dng_Wld_3_1_A":       "Duskruin Shrine",
    "Dng_Wld_3_1_B":       "Duskruin Shrine: Depths",
    "Dng_Wld_3_2":         "Ivory Ravine",
    "Twn_Wld_1_1_A":       "Oresrush",
    "Twn_Wld_1_1_B":       "Oresrush",
    "Twn_Wld_1_1_C":       "Oresrush",
    "Twn_Wld_1_2_A":       "Oresrush: Foundry",
    "Twn_Wld_1_2_B":       "Oresrush: Foundry",
    "Twn_Wld_2_1_A":       "Crackridge",
    "Twn_Wld_3_1_A":       "Gravell",
    "Fld_Sea_1_1":         "Canalbrine: Path to the Water Source",
    "Fld_Sea_1_2":         "Canalbrine Bridge",
    "Fld_Sea_1_3":         "Western Canalbrine Coast",
    "Fld_Sea_2_2":         "Northern Conning Creek Coast",
    "Fld_Sea_2_3":         "Western Conning Creek Coast",
    "Fld_Sea_3_1":         "Roque Island: Anchorage",
    "Dng_Sea_1_1":         "Canalbrine: Water Source",
    "Dng_Sea_1_2":         "Sacred Guard Ship",
    "Dng_Sea_1_3":         "Lair of the Usurper",
    "Dng_Sea_2_1":         "Cavern of the Sea God",
    "Dng_Sea_2_2":         "Guard Outpost",
    "Dng_Sea_2_3":         "Cavern of the Moon and Sun",
    "Dng_Sea_2_Job":       "Altar of the Charitable",
    "Dng_Sea_3_1_A":       "The Roque Company: West Tower",
    "Dng_Sea_3_1_B":       "The Roque Company: East Tower",
    "Twn_Sea_1_1_A":       "Canalbrine",
    "Twn_Sea_2_1_A":       "Conning Creek",
    "Twn_Sea_2_1_B":       "Conning Creek: Harbor",
    "Twn_Sea_2_1_C":       "Conning Creek: Outskirts",
    "Twn_Sea_2_1_C_Past":  "Conning Creek: Outskirts",
    "Twn_Sea_2_1_C_Fire":  "Conning Creek: Outskirts",
    "Twn_Sea_3_1_A":       "Roque Island",
    "Twn_Sea_3_1_B":       "Roque Island: Headquarters",
    "Twn_Sea_3_1_B_AreaA": "Roque Island: Headquarters",
    "Twn_Sea_3_1_B_AreaB": "Roque Island: Headquarters",
    "Twn_Sea_3_1_B_AreaC": "Roque Island: Headquarters",
    "Twn_Sea_3_1_B_AreaD": "Roque Island: Headquarters",
    "Fld_Fst_1_1":         "Forest Path",
    "Fld_Fst_1_2":         "Festival Grounds",
    "Fld_Fst_1_3":         "Eastern Cropdale Trail",
    "Fld_Fst_1_4":         "Southern Cropdale Trail",
    "Fld_Fst_2_1":         "Northern Wellgrove Trail",
    "Fld_Fst_2_2":         "Eastern Wellgrove Trail",
    "Fld_Fst_3_1":         "Road to Mother's Garden",
    "Fld_Fst_3_2":         "Southern Timberain Trail",
    "Dng_Fst_1_1":         "Veil of Trees",
    "Dng_Fst_1_2":         "Starfall Spring",
    "Dng_Fst_2_1":         "Secret Forest",
    "Dng_Fst_2_2_A":       "Animal Trail",
    "Dng_Fst_2_2_B":       "Dark Night",
    "Dng_Fst_2_Job":       "Altar of the Lady of Grace",
    "Dng_Fst_3_1_A":       "Timberain Castle",
    "Dng_Fst_3_1_B":       "Timberain Castle: Roof",
    "Dng_Fst_3_2":         "Mother's Garden",
    "Dng_Fst_3_3":         "House Wellows Manor",
    "Twn_Fst_1_1_A":       "Cropdale",
    "Twn_Fst_2_1_A":       "Wellgrove",
    "Twn_Fst_2_1_B":       "Wellgrove: Alrond's Estate",
    "Twn_Fst_2_1_C_AreaA": "Wellgrove: Empty House",
    "Twn_Fst_2_1_C_AreaB": "Wellgrove: Department Store",
    "Twn_Fst_3_1_A":       "Timberain",
    "Twn_Fst_3_1_B":       "Timberain Castle: Town Square",
    "Twn_Fst_3_2_A":       "Mother's Garden: Orphanage",
    "Fld_Snw_1_1_A":       "Frigit Isle: Entrance",
    "Fld_Snw_1_1_B":       "Frigit Isle: Anchorage",
    "Fld_Snw_1_2":         "Southern Cape Cold Snows",
    "Fld_Snw_1_3":         "Eastern Cape Cold Snows",
    "Fld_Snw_2_2":         "Western Winterbloom Snows",
    "Fld_Snw_3_1":         "Southern Stormhail Snows",
    "Dng_Snw_1_1":         "Prison: Underground Passage",
    "Dng_Snw_1_2":         "Ruffians' Hideout",
    "Dng_Snw_2_1":         "Snowhares' Den",
    "Dng_Snw_2_Job":       "Altar of the Scholarking",
    "Dng_Snw_3_1":         "Forbidden Shrine",
    "Dng_Snw_3_2_A":       "Castle Mei: East Tower",
    "Dng_Snw_3_2_B":       "Castle Mei: Gallows",
    "Dng_Snw_3_3":         "Sacred Peak Altahe",
    "Dng_Snw_3_4_A":       "Beneath the Wall",
    "Dng_Snw_3_4_B":       "Infernal Castle",
    "Twn_Snw_1_1_A":       "Frigit Isle: Prison",
    "Twn_Snw_1_1_B":       "Frigit Isle: Yard",
    "Twn_Snw_1_1_C":       "Frigit Isle: Mining Site",
    "Twn_Snw_1_2_A":       "Cape Cold",
    "Twn_Snw_2_1_A":       "Winterbloom",
    "Twn_Snw_2_1_B":       "Winterbloom: Thieves' Quarter",
    "Twn_Snw_3_1_A":       "Stormhail",
    "Twn_Snw_3_1_B":       "Stormhail: Sacred Guard Headquarters",
    "Twn_Snw_3_1_C":       "Stormhail: Bridge",
    "Twn_Snw_3_2_A":       "Stormhail: Castle Mei",
    "Fld_Ocn_1_1":         "On the Water",
    "Fld_Ocn_1_2":         "Lighthouse Island",
    "Fld_Ocn_1_3":         "The Lost Isle",
    "Fld_Ocn_1_4":         "???",
    "Dng_Ocn_1_1":         "Shipwreck of the Empress",
    "Dng_Ocn_1_2":         "Curious Nest",
    "Dng_Ocn_1_3":         "Nameless Isle",
    "Dng_Ocn_1_4":         "Gate of \u3300\u3301\u3302\u3303\u3304",
    "Dng_Mnt_2_3":         "Underground Laboratory",
    "Fld_Atl_3_1":         "Vidania",
    "Dng_Atl_3_1":         "Castle Vidania",
    "Dng_Atl_3_1_Past":    "Castle Vidania"
}


def make_gametext():
    yourdad = {}
    with open("C:\Programming-stuff\OT2AP\\UsefulJsons/GameTextEN.json", 'rb') as f:
        print(f)
        yourmom = json.load(f)
        for i in yourmom["Exports"]:
            for k in i["Table"]["Data"]:
                if not k['Value'][1]['CultureInvariantString'] == None:
                    if "\n\n" in k['Value'][1]['CultureInvariantString']:
                        print(f"{k['Name']}: {func(k['Value'][1]['CultureInvariantString'])}")
                        yourdad[k['Name']] = func(k['Value'][1]['CultureInvariantString'])
                    else:
                        yourdad[k['Name']] = k['Value'][1]['CultureInvariantString']
    print(yourdad)
    with open(os.path.join("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP", "GameTextENMap.json"),
            'wt') as f:
        f.write(json.dumps(yourdad, indent=4))


def get_itemdb_map():
    yourdad = {}
    yas = []
    game_text = open("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP\Jsons/GameTextENMap.json", 'rb')
    loaded_game_text = json.load(game_text)
    with open("C:\Programming-stuff\OT2AP\\UsefulJsons/ItemDB.json", 'rb') as f:
        print(f)
        yourmom = json.load(f)
        for i in yourmom["Exports"]:
            for k in i["Table"]["Data"]:
                print(k["Name"])
                yourdad[k["Name"]] = []
                objectdata = {}
                buffer_list = {}
                for dic in k["Value"]:
                    if dic["Name"] in {"ID", "ItemNameID", "DetailTextID", "MaxNum"}:
                        objectdata[dic["Name"]] = dic["Value"]
                        if dic["Name"] == "ItemNameID":
                            if objectdata[dic["Name"]] in loaded_game_text.keys():
                                buffer_list["ItemName"] = loaded_game_text[dic["Value"]]
                            else:
                                buffer_list["ItemName"] = dic["Value"]
                # objectdata[k["Value"][0]["Name"]] = k["Value"][0]["Value"]
                if buffer_list:
                    objectdata["ItemName"] = buffer_list["ItemName"]
                yourdad[k["Name"]].append(objectdata)
    for k, v in yourdad.items():
        yas.append(f"{k}: ObjectData:{v}\n")
    with open(os.path.join("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP", "ItemData.json"),
            'wt') as f:
        f.write(json.dumps(yourdad, indent=4))


def make_objectdata():
    yourdad = {}
    yas = []
    with open("C:\Programming-stuff\OT2AP\\UsefulJsons/ObjectData.json", 'rb') as f:
        print(f)
        yourmom = json.load(f)
        for i in yourmom["Exports"]:
            for k in i["Table"]["Data"]:
                print(k["Name"])
                yourdad[k["Name"]] = []
                objectdata = {}
                yourmom = 0
                for dic in k["Value"]:
                    print(k["Value"][5])
                    if dic["Name"] == "HaveItemLabel" and not k["Value"][5]["Value"]:
                        objectdata[dic["Name"]] = dic["Value"]
                    elif dic["Name"] == "IsMoney":
                        if dic["Value"]:
                            objectdata["Money:"] = f"{k['Value'][7]['Value']}"
                    yourmom += 1
                objectdata[k["Value"][0]["Name"]] = k["Value"][0]["Value"]
                yourdad[k["Name"]].append(objectdata)
    for k, v in yourdad.items():
        yas.append(f"{k}: ObjectData:{v}\n")
    with open(os.path.join("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP", "ChestData.json"),
            'wt') as f:
        f.write(json.dumps(yourdad, indent=4))


def make_chest_to_item():

    yas = []
    output = {}
    game_text = open("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP/ItemData.json", 'rb')
    object_data = open("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP\Jsons/ChestData.json", 'rb')
    loaded_game_text = json.load(game_text)
    loaded_object_data = json.load(object_data)
    for k, v in loaded_object_data.items():
        if "HaveItemLabel" in v[0]:
            if v[0]["HaveItemLabel"] in loaded_game_text.keys():
                output[k] = loaded_game_text[v[0]["HaveItemLabel"]][0]["ItemName"]
        elif "Money:" in v[0]:
            output[k] = f"{v[0]['Money:']} L"
    with open(os.path.join("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP", "Chest_to_ItemText.json"),
            'wt') as f:
        f.write(json.dumps(output, indent=4))

    print(output)


def chest_to_region():
    yas = {}
    not_loaded_game_text = open("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP\Jsons/GameTextENMap.json", 'rb')
    not_loaded_chest_to_item = open("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP/Chest_to_ItemText.json", 'rb')
    chest_to_item = json.load(not_loaded_chest_to_item)
    yourmom = ""
    game_text = json.load(not_loaded_game_text)
    for region in shorter_hand.keys():
        for chest, item in chest_to_item.items():
            for k, v in shorter_hand.items():
                if k in chest and item != "TX_NA_ITM_CSM_0890":
                    for region_name in short_hand.keys():
                        if region_name in chest:
                            yourmom = short_hand[region_name]
                    if "AP" in chest:
                        yas[chest] = {"Item": item, "region": k, "Hidden Item": True, "Name": v, "Parent": yourmom}
                    else:
                        yas[chest] = {"Item": item, "region": k, "Hidden Item": False, "Name": v, "Parent": yourmom}

    with open(os.path.join("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP", "Location_to_Chest.json"),
            'wt') as f:
        f.write(json.dumps(yas, indent=4))


def make_location_list():
    yas = {}
    item_to_filename = {}
    not_loaded_game_text = open("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP/Jsons/GameTextENMap.json", 'rb')
    not_loaded_chest_to_item = open("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP/Chest_to_ItemText.json", 'rb')
    not_location_to_chest = open("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP/Location_to_Chest.json", 'rb')
    not_loaded_sheetdump = open("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP\Jsons/SheetDump.json", 'rb')
    item_data = json.load(open("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP/ItemData.json", 'rb'))
    chest_data = json.load(open("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP/Jsons/ChestData.json", 'rb'))
    for file_name, data in item_data.items():
        if "ItemName" in data[0]:
            item_to_filename[data[0]["ItemName"]] = file_name
    chest_to_item = json.load(not_loaded_chest_to_item)
    game_text = json.load(not_loaded_game_text)
    loc_to_chest = json.load(not_location_to_chest)
    sheetdump = json.load(not_loaded_sheetdump)
    for chest, data in loc_to_chest.items():
        for dic in sheetdump:
            if chest == "Treasure_Twn_Snw_2_1_A_AP_020":
                print()
            if (data["Name"] == dic["Sub Area"] or data["Parent"] == dic["a"]) and data["Item"] == dic["Item"]:
                if chest == "Treasure_Twn_Snw_2_1_A_AP_020":
                    print()
                yas[chest] = data
                if data["Item"] not in item_to_filename:
                    yas[chest]["ItemFileName"] = "None"
                else:
                    yas[chest]["ItemFileName"] = item_to_filename[data["Item"]]
                yas[chest]["ChestID"] = chest_data[chest][0]["ID"]
                break

    with open(os.path.join("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP\Jsons", "Pruned_Locations.json"),
            'wt') as f:
        f.write(json.dumps(yas, indent=4))


# def make_better_loc_to_chest():
#    yas = {}
#    item_to_filename = {}
#    not_loaded_game_text = open("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP\Jsons/GameTextENMap.json", 'rb')
#    not_loaded_chest_to_item = open("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP/Chest_to_ItemText.json", 'rb')
#    chest_to_item = json.load(not_loaded_chest_to_item)
#    aidhfiadus=json.load(open("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP\Jsons/ItemData.json", 'rb'))
#    item_data = json.load(open("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP/ItemData.json", 'rb'))
#    for file_name, data in item_data.items():
#        if "ItemName" in data[0]:
#            item_to_filename[data[0]["ItemName"]] = file_name
#    yourmom = ""
#    print(item_to_filename)
#    game_text = json.load(not_loaded_game_text)
#    for region in shorter_hand.keys():
#        for chest, item in chest_to_item.items():
#            for k, v in shorter_hand.items():
#                if k in chest and item != "TX_NA_ITM_CSM_0890":
#                    for region_name in short_hand.keys():
#                        if region_name in chest:
#                            yourmom = short_hand[region_name]
#                    if "AP" in chest:
#                        yas[chest] = {"ItemName": item, "Item": item_to_filename[item], "region": k, "Hidden Item": True, "Name": v, "Parent": yourmom}
#                    else:
#                        print()
#                        yas[chest] = {"ItemName": item, "Item": item_to_filename[item], "region": k, "Hidden Item": False, "Name": v, "Parent": yourmom}
#                        print()
#
#    with open(os.path.join("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP", "Location_to_Chest.json"),
#            'wt') as f:
#        f.write(json.dumps(yas, indent=4))


# def npc_to_data():
def quest_to_reward():
    not_loaded_game_text = open("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP\Jsons/csvjson.json", 'rb')
    # not_loaded_chest_to_item = open("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP/Chest_to_ItemText.json", 'rb')
    chest_to_item = json.load(not_loaded_game_text)
    yourmom = ""
    print(chest_to_item)
    yas = {}
    for dic in chest_to_item:
        yas[dic['']] = {}
        yas[dic['']]["Region"] = dic["__1"]
        yas[dic['']]["Location"] = dic["__2"]
        yas[dic['']]["Client"] = dic["__3"]
        yas[dic['']]["Objective"] = dic["__4"]
        yas[dic['']]["Unlock Criteria"] = dic["__5"]
        yas[dic['']]["Money"] = dic["__6"]
        if "__7" in dic:
            dic["__7"] = re.sub(r'\sx\s\d+', ' ', dic["__7"])
            if "x1" in dic["__7"]:
                dic["__7"] = dic["__7"].replace(" x1", "")
        if "," in dic["__7"]:
            yourmom = dic["__7"].split(",")
            for _ in range(len(yourmom)):
                if yourmom[_][0] == " ":
                    yourmom[_] = yourmom[_][1:]
                    # ah=item.replace(r'^\s', "")
                    # print(ah)
            yas[dic['']]["Items"] = yourmom
        else:
            yas[dic['']]["Items"] = [dic["__7"]]

    print(yas)
    yourmom = yas["The Cave Monster"]
    print(yourmom)
    with open(os.path.join("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP", "Quest_to_Rewards.json"),
            'wt') as f:
        f.write(json.dumps(yas, indent=4))


# for region in shorter_hand.keys():
#    for chest, item in chest_to_item.items():
#        for k, v in shorter_hand.items():
#            if k in chest and item != "TX_NA_ITM_CSM_0890":
#                for region_name in short_hand.keys():
#                    if region_name in chest:
#                        yourmom = short_hand[region_name]

# with open(os.path.join("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP", "Location_to_Chest.json"),
#        'wt') as f:
#    f.write(json.dumps(yas, indent=4))

# get_itemdb_map()
# make_chest_to_item()
# chest_to_region()
# make_chest_to_item()
#make_location_list()

def levelid_to_name():
    yourmom={}
    leveltable = json.load(open("C:\Programming-stuff\OT2AP\\UsefulJsons/LevelTable.json", 'rb'))
    for thing in leveltable["Exports"][0]["Table"]["Data"]:
        if thing["Name"] in shorter_hand.keys():
            yourmom[thing["Name"]]={}
            yourmom[thing["Name"]]["Level_Name"]=thing["Value"][0]["Value"]
            yourmom[thing["Name"]]["Level_ID"] =shorter_hand[thing["Name"]]
    with open(os.path.join("C:\\Users\jddoc\OneDrive\Documents\GitHub\OT2AP\Jsons", "levelname_to_id.json"),
            'wt') as f:
        f.write(json.dumps(yourmom, indent=4))
levelid_to_name()
# make_better_loc_to_chest()

#
def npc_to_stuff():
    yas = {}
    item_to_filename = {}
    not_loaded_chest_to_item = open("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP/npc_to_data.json", 'rb')
    # not_loaded_chest_to_item = open("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP/Chest_to_ItemText.json", 'rb')
    chest_to_item = json.load(not_loaded_chest_to_item)
    # yourmom = ""
    # game_text = json.load(not_loaded_game_text)
    for npc in chest_to_item:
        npc_list_stuff = {}
        npc_list_stuff["Time"] = npc["__1"]
        if npc["X"] != "None" and npc["X"] != "n/a":
            npc_list_stuff["Gleaned"] = npc["X"]
        print(npc_list_stuff)
        lasy = {
            "Purchase / Steal": 1,
            "__4":              2,
            "__5":              3,
            "__6":              4,
            "__7":              5
        }
        for name in {"Purchase / Steal",
                     "__4",
                     "__5",
                     "__6",
                     "__7", }:
            if npc[name] != "n/a" and npc[name] != "none":
                npc_list_stuff[f"Item Steal {lasy[name]}"] = npc[name]

        npc_list_stuff["Items"] = npc["__23"]
        npc_list_stuff["Region"] = npc['ah']
        npc_list_stuff["Name"] = npc['Done - if you find any missing NPC or information, please add a commentary!']
        npc_list_stuff["EnemyID"] = npc["__25"]
        npc_list_stuff["Note"] = npc["__26"]
        yas[f"{npc['ah']} {npc['Done - if you find any missing NPC or information, please add a commentary!']}"] = [npc_list_stuff]

    with open(os.path.join("C:\\Users\........\OneDrive\Documents\GitHub\OT2AP", "npc_data.json"),
            'wt') as f:
        f.write(json.dumps(yas, indent=4))
    print(yas)

# npc_to_stuff()
