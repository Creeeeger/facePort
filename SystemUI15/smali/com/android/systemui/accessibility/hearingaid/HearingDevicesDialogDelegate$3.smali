.class public final Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$3;->this$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$3;->this$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;

    iget-object p1, p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetsController:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;

    invoke-virtual {p1}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->getAllPresetInfo()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothHapPresetInfo;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothHapPresetInfo;->getIndex()I

    move-result p2

    iget-object p4, p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mActiveHearingDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez p4, :cond_0

    goto/16 :goto_2

    :cond_0
    iput p2, p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mSelectedPresetIndex:I

    iget-object p5, p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    iget-object p4, p4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object p5, p5, Lcom/android/settingslib/bluetooth/HapClientProfile;->mService:Landroid/bluetooth/BluetoothHapClient;

    if-nez p5, :cond_1

    const/4 p4, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p5, p4}, Landroid/bluetooth/BluetoothHapClient;->supportsSynchronizedPresets(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p4

    :goto_0
    iget-object p5, p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    iget-object v0, p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mActiveHearingDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object p5, p5, Lcom/android/settingslib/bluetooth/HapClientProfile;->mService:Landroid/bluetooth/BluetoothHapClient;

    const/4 v1, -0x1

    const-string v2, "HapClientProfile"

    if-nez p5, :cond_2

    const-string p5, "Proxy not attached to service. Cannot get hap group."

    invoke-static {v2, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p5, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p5, v0}, Landroid/bluetooth/BluetoothHapClient;->getHapGroup(Landroid/bluetooth/BluetoothDevice;)I

    move-result p5

    :goto_1
    if-eqz p4, :cond_6

    const-string p4, "HearingDevicesPresetsController"

    if-eq p5, v1, :cond_5

    iget-object v0, p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mActiveHearingDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "selectPresetSynchronously, presetIndex: "

    const-string v1, ", groupId: "

    const-string v3, ", device: "

    invoke-static {p2, p5, v0, v1, v3}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mActiveHearingDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/HapClientProfile;->mService:Landroid/bluetooth/BluetoothHapClient;

    if-nez p1, :cond_4

    const-string p1, "Proxy not attached to service. Cannot select preset for group."

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-virtual {p1, p5, p2}, Landroid/bluetooth/BluetoothHapClient;->selectPresetForGroup(II)V

    goto :goto_2

    :cond_5
    const-string/jumbo p5, "supportSynchronizedPresets but hapGroupId is invalid."

    invoke-static {p4, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->selectPresetIndependently(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1, p2}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->selectPresetIndependently(I)V

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$3;->this$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;

    iget-object p0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, p3}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
