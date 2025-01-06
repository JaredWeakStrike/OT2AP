#include <Mod/CppUserModBase.hpp>
#include <iostream>
#include <string>
#include <map>
using std::map;
using std::wstring;
using namespace RC;
using namespace RC::Unreal;
//function prototypes 
auto PreTextHookFunction(Unreal::UnrealScriptFunctionCallableContext& context, void*) -> void;
auto PostSetTextHookFunction(Unreal::UnrealScriptFunctionCallableContext& context, void*) -> void;
void OpenDefaultChest();
void SetChestText();
void GetChestInfo();
void GivePlayerItem(wstring ItemLabel, int32 Num);