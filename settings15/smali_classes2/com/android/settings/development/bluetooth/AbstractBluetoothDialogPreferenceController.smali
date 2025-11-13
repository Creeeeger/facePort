.class public abstract Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;
.super Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final BITS_PER_SAMPLES:[I

.field public static final CHANNEL_MODES:[I

.field public static final SAMPLE_RATES:[I


# instance fields
.field public final mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    sput-object v4, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->SAMPLE_RATES:[I

    filled-new-array {v3, v2, v0, v1}, [I

    move-result-object v2

    sput-object v2, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->BITS_PER_SAMPLES:[I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->CHANNEL_MODES:[I

    return-void

    :array_0
    .array-data 4
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p3, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    return-void
.end method

.method public static getHighestBitsPerSample(Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "AbstractBtDlgCtr"

    const-string v1, "Unable to get highest bits per sample. Config is empty"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecConfig;->getBitsPerSample()I

    move-result p0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    sget-object v2, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->BITS_PER_SAMPLES:[I

    aget v2, v2, v1

    and-int v3, p0, v2

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static getHighestChannelMode(Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "AbstractBtDlgCtr"

    const-string v1, "Unable to get highest channel mode. Config is empty"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecConfig;->getChannelMode()I

    move-result p0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    sget-object v2, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->CHANNEL_MODES:[I

    aget v2, v2, v1

    and-int v3, p0, v2

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static getHighestSampleRate(Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "AbstractBtDlgCtr"

    const-string v1, "Unable to get highest sample rate. Config is empty"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecConfig;->getSampleRate()I

    move-result p0

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    sget-object v2, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->SAMPLE_RATES:[I

    aget v2, v2, v1

    and-int v3, p0, v2

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public final getCurrentCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;->getA2dpActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const-string v2, "AbstractBtDlgCtr"

    if-nez p0, :cond_1

    const-string p0, "Unable to get current codec config. No active device."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "Unable to get current codec config. Codec status is null"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p0

    return-object p0
.end method

.method public abstract getCurrentIndexByConfig(Landroid/bluetooth/BluetoothCodecConfig;)I
.end method

.method public final getDefaultIndex()I
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->getDefaultIndex()I

    move-result p0

    return p0
.end method

.method public final getSelectableByCodecType(I)Landroid/bluetooth/BluetoothCodecConfig;
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;->getA2dpActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "AbstractBtDlgCtr"

    if-nez v0, :cond_0

    const-string p0, "Unable to get selectable config. No active device."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-nez p0, :cond_2

    :cond_1
    move-object p0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsSelectableCapabilities()Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothCodecConfig;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v3

    if-ne v3, p1, :cond_3

    return-object v0

    :cond_4
    const-string p0, "Unable to find matching codec config, type is "

    invoke-static {p1, p0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public abstract getSelectableIndex()Ljava/util/List;
.end method

.method public final getSummary()Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getCurrentCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "AbstractBtDlgCtr"

    const-string v2, "Unable to get current config index. Current codec Config is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getDefaultIndex()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getCurrentIndexByConfig(Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result p0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->generateSummary(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onBluetoothServiceConnected(Landroid/bluetooth/BluetoothA2dp;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;->onBluetoothServiceConnected(Landroid/bluetooth/BluetoothA2dp;)V

    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getCurrentCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v0

    iget-object p0, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    iput v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecTypeNative:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getSampleRate()I

    move-result v0

    iput v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mSampleRate:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getBitsPerSample()I

    move-result v0

    iput v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mBitsPerSample:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getChannelMode()I

    move-result v0

    iput v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mChannelMode:I

    const v0, 0xf4240

    iput v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecPriority:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific1()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecSpecific1Value:J

    :goto_0
    return-void
.end method

.method public onHDAudioEnabled()V
    .locals 0

    return-void
.end method

.method public onIndexUpdated(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->writeConfigurationValues(I)V

    iget-object v1, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/bluetooth/BluetoothCodecConfig$Builder;

    invoke-direct {v2}, Landroid/bluetooth/BluetoothCodecConfig$Builder;-><init>()V

    iget v3, v1, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecTypeNative:I

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecType(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object v2

    iget v3, v1, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecPriority:I

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecPriority(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object v2

    iget v3, v1, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mSampleRate:I

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setSampleRate(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object v2

    iget v3, v1, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mBitsPerSample:I

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setBitsPerSample(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object v2

    iget v3, v1, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mChannelMode:I

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setChannelMode(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object v2

    iget-wide v3, v1, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecSpecific1Value:J

    invoke-virtual {v2, v3, v4}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecSpecific1(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecSpecific2(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecSpecific3(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecSpecific4(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->build()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;->getA2dpActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothA2dp;->setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;)V

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    move-object v0, p0

    check-cast v0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->generateSummary(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public abstract writeConfigurationValues(I)V
.end method
