.class public final Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;
.implements Landroid/bluetooth/BluetoothHapClient$Callback;


# instance fields
.field public mActiveHearingDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field public final mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

.field public final mPresetCallback:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController$PresetCallback;

.field public final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field public mSelectedPresetIndex:I


# direct methods
.method public constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController$PresetCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    iput-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    iput-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mPresetCallback:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController$PresetCallback;

    return-void
.end method


# virtual methods
.method public final getActivePresetIndex()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mActiveHearingDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HapClientProfile;->mService:Landroid/bluetooth/BluetoothHapClient;

    if-nez p0, :cond_1

    const-string p0, "HapClientProfile"

    const-string v0, "Proxy not attached to service. Cannot get active preset index."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothHapClient;->getActivePresetIndex(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public final getAllPresetInfo()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mActiveHearingDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HapClientProfile;->mService:Landroid/bluetooth/BluetoothHapClient;

    if-nez p0, :cond_1

    const-string p0, "HapClientProfile"

    const-string v0, "Proxy not attached to service. Cannot get all preset info."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothHapClient;->getAllPresetInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final onPresetInfoChanged(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mActiveHearingDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPresetInfoChanged, device: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", reason: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", infoList: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HearingDevicesPresetsController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mPresetCallback:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController$PresetCallback;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->getAllPresetInfo()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->getActivePresetIndex()I

    move-result p0

    check-cast p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;

    iget-object p3, p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;->this$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;

    iget-object p3, p3, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;Ljava/util/List;II)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final onPresetSelected(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mActiveHearingDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPresetSelected, device: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", presetIndex: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", reason: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "HearingDevicesPresetsController"

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mPresetCallback:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController$PresetCallback;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->getAllPresetInfo()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->getActivePresetIndex()I

    move-result p0

    check-cast p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;

    iget-object p3, p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;->this$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;

    iget-object p3, p3, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;Ljava/util/List;II)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final onPresetSelectionFailed(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mActiveHearingDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPresetSelectionFailed, device: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", reason: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HearingDevicesPresetsController"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mPresetCallback:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController$PresetCallback;

    check-cast p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;->onPresetCommandFailed()V

    :cond_1
    return-void
.end method

.method public final onPresetSelectionForGroupFailed(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mActiveHearingDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/HapClientProfile;->mService:Landroid/bluetooth/BluetoothHapClient;

    if-nez v1, :cond_1

    const-string v0, "HapClientProfile"

    const-string v1, "Proxy not attached to service. Cannot get hap group."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHapClient;->getHapGroup(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    :goto_0
    if-ne p1, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPresetSelectionForGroupFailed, group: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", reason: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HearingDevicesPresetsController"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mSelectedPresetIndex:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->selectPresetIndependently(I)V

    :cond_2
    return-void
.end method

.method public final onServiceConnected()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/settingslib/bluetooth/HapClientProfile;->mIsProfileReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->registerHapCallback()V

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mPresetCallback:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController$PresetCallback;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->getAllPresetInfo()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->getActivePresetIndex()I

    move-result p0

    check-cast v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;

    iget-object v2, v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;->this$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;

    iget-object v2, v2, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, p0, v4}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;Ljava/util/List;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onSetPresetNameFailed(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mActiveHearingDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSetPresetNameFailed, device: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", reason: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HearingDevicesPresetsController"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mPresetCallback:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController$PresetCallback;

    check-cast p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;->onPresetCommandFailed()V

    :cond_1
    return-void
.end method

.method public final onSetPresetNameForGroupFailed(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mActiveHearingDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/HapClientProfile;->mService:Landroid/bluetooth/BluetoothHapClient;

    if-nez v1, :cond_1

    const-string v0, "HapClientProfile"

    const-string v1, "Proxy not attached to service. Cannot get hap group."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHapClient;->getHapGroup(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    :goto_0
    if-ne p1, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSetPresetNameForGroupFailed, group: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", reason: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HearingDevicesPresetsController"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mPresetCallback:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController$PresetCallback;

    check-cast p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;->onPresetCommandFailed()V

    return-void
.end method

.method public final registerHapCallback()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getBackgroundExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v1

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/HapClientProfile;->mService:Landroid/bluetooth/BluetoothHapClient;

    if-nez v0, :cond_0

    const-string p0, "HapClientProfile"

    const-string v0, "Proxy not attached to service. Cannot register callback."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p0}, Landroid/bluetooth/BluetoothHapClient;->registerCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothHapClient$Callback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot register callback: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HearingDevicesPresetsController"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final selectPresetIndependently(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mActiveHearingDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "selectPresetIndependently, presetIndex: "

    const-string v1, ", device: "

    invoke-static {p1, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mActiveHearingDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HearingDevicesPresetsController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    iget-object v2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mActiveHearingDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v2, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2, p1}, Lcom/android/settingslib/bluetooth/HapClientProfile;->selectPreset(Landroid/bluetooth/BluetoothDevice;I)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mActiveHearingDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "selectPreset for subDevice, device: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0, p1}, Lcom/android/settingslib/bluetooth/HapClientProfile;->selectPreset(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mActiveHearingDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "selectPreset for memberDevice, device: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    iget-object v2, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v2, p1}, Lcom/android/settingslib/bluetooth/HapClientProfile;->selectPreset(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    :cond_2
    return-void
.end method
