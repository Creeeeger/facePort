.class public final Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreferenceController;
.super Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCallback:Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController$Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    iput-object p4, p0, Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreferenceController;->mCallback:Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController$Callback;

    return-void
.end method


# virtual methods
.method public convertCfgToBtnIndex(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getDefaultIndex()I

    move-result p0

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const-string v0, "Unsupported config:"

    const-string v1, "BtCodecCtr"

    invoke-static {p1, v0, v1}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p1, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;

    iput-object p0, p1, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mCallback:Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;

    return-void
.end method

.method public final getCurrentIndexByConfig(Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreferenceController;->convertCfgToBtnIndex(I)I

    move-result p0

    return p0
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_audio_codec_settings"

    return-object p0
.end method

.method public final getSelectableIndex()Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getDefaultIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;->getA2dpActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "BtCodecCtr"

    const-string v1, "Unable to get selectable index. No Active Bluetooth device"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothA2dp;->isOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v3, 0x0

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsSelectableCapabilities()Ljava/util/List;

    move-result-object v3

    :cond_3
    :goto_0
    if-eqz v3, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothCodecConfig;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreferenceController;->convertCfgToBtnIndex(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreferenceController;->convertCfgToBtnIndex(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onHDAudioEnabled()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreferenceController;->writeConfigurationValues(I)V

    return-void
.end method

.method public final onIndexUpdated(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->onIndexUpdated(I)V

    iget-object p0, p0, Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreferenceController;->mCallback:Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController$Callback;

    check-cast p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    instance-of v0, p1, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreferenceController;

    if-nez v0, :cond_0

    check-cast p1, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;->onBluetoothCodecUpdated()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final writeConfigurationValues(I)V
    .locals 4

    const v0, 0xf4240

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq p1, v2, :cond_1

    if-eq p1, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    iput v1, p1, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecTypeNative:I

    iput v0, p1, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecPriority:I

    invoke-virtual {p0, v1}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getSelectableByCodecType(I)Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p0

    if-nez p0, :cond_4

    const-string v0, "BtCodecCtr"

    const-string v1, "Selectable config is null. Unable to reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getHighestSampleRate(Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result v0

    iput v0, p1, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mSampleRate:I

    invoke-static {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getHighestBitsPerSample(Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result v0

    iput v0, p1, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mBitsPerSample:I

    invoke-static {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getHighestChannelMode(Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result p0

    iput p0, p1, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mChannelMode:I

    return-void
.end method
