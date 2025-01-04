#include <Mod/CppUserModBase.hpp>
using namespace RC;
using namespace RC::Unreal;
struct FMJUICommonDialogParamOnSelectCallback {

};
struct FMJUICommonDialogParamOnCloseFinishCallback {

};
class UUSerWidget {

};
struct FMJUICommonDialogParam
{
    FText CaptionText;                                                                // 0x0000 (size: 0x18)
    FText DetailText;                                                                 // 0x0018 (size: 0x18)
    TArray<FText> ButtonText;                                                         // 0x0030 (size: 0x10)
    int32 DefaultButton;                                                              // 0x0040 (size: 0x4)
    bool EnableCancelKey;                                                             // 0x0044 (size: 0x1)
    int32 CancelKeyValue;                                                             // 0x0048 (size: 0x4)
    bool AutoSelectClose;                                                             // 0x004C (size: 0x1)
    FMJUICommonDialogParamOnSelectCallback OnSelectCallback;                          // 0x0050 (size: 0x10)
    void SelectCallback(int32 SelectIndex);
    FMJUICommonDialogParamOnCloseFinishCallback OnCloseFinishCallback;                // 0x0060 (size: 0x10)
    void CloseFinishCallback(int32 SelectIndex);
    class UUserWidget* AttachDetailWidget;                                            // 0x0070 (size: 0x8)
    bool DetailOnTop;                                                                 // 0x0078 (size: 0x1)
    class UUserWidget* AttachCaptionWidget;                                           // 0x0080 (size: 0x8)
    bool CaptionOnTop;                                                                // 0x0088 (size: 0x1)
    bool UseCaptionSeparation;                                                        // 0x0089 (size: 0x1)
    bool RequestFlag;                                                                 // 0x008A (size: 0x1)
    bool DuplicationFlag;                                                             // 0x008B (size: 0x1)
    bool InputReceptionFlag;                                                          // 0x008C (size: 0x1)
    bool UseSelectWidget;                                                             // 0x008D (size: 0x1)
    bool SelectWidgetOnTop;                                                           // 0x008E (size: 0x1)
    TArray<class UUserWidget*> SelectWidgetList;                                      // 0x0090 (size: 0x10)
    bool BloodFlag;                                                                   // 0x00A0 (size: 0x1)
    TArray<bool> BloodList;                                                           // 0x00A8 (size: 0x10)
    bool EnableOpenSe;                                                                // 0x00B8 (size: 0x1)
    FName OpenSeLabel;                                                                // 0x00BC (size: 0x8)

}; // Size: 0xC8
//enum class EFrameNumberDisplayFormats {
//    NonDropFrameTimecode = 0,
//    DropFrameTimecode = 1,
//    Seconds = 2,
//    Frames = 3,
//    MAX_Count = 4,
//    EFrameNumberDisplayFormats_MAX = 5,
//};
//
//enum class ETimedDataInputEvaluationType {
//    None = 0,
//    Timecode = 1,
//    PlatformTime = 2,
//    ETimedDataInputEvaluationType_MAX = 3,
//};
//
//enum class ETimedDataInputState {
//    Connected = 0,
//    Unresponsive = 1,
//    Disconnected = 2,
//    ETimedDataInputState_MAX = 3,
//};
auto PostSetTextHookFunction(Unreal::UnrealScriptFunctionCallableContext& context, void* yas) -> void;
void OpenDefaultChest();
void SetChestText();
void GetChestInfo();
void lock_time();
auto SetTextHookFunction(Unreal::UnrealScriptFunctionCallableContext& context, void* yas) -> void;
void SetChestText();