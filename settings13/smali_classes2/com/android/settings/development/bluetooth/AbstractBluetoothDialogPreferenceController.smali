.class public abstract Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;
.super Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;
.source "AbstractBluetoothDialogPreferenceController.java"

# interfaces
.implements Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference$Callback;


# static fields
.field protected static final BITS_PER_SAMPLES:[I

.field protected static final CHANNEL_MODES:[I

.field protected static final CODEC_TYPES:[I

.field protected static final SAMPLE_RATES:[I


# instance fields
.field protected final mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 43
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->CODEC_TYPES:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 48
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->SAMPLE_RATES:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 54
    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->BITS_PER_SAMPLES:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 58
    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->CHANNEL_MODES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x3
        0x2
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x8
        0x2
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    .line 66
    iput-object p3, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    return-void
.end method

.method static getHighestBitsPerSample(Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "AbstractBtDlgCtr"

    const-string v1, "Unable to get highest bits per sample. Config is empty"

    .line 258
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 261
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecConfig;->getBitsPerSample()I

    move-result p0

    move v1, v0

    .line 262
    :goto_0
    sget-object v2, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->BITS_PER_SAMPLES:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 263
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

.method static getHighestChannelMode(Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "AbstractBtDlgCtr"

    const-string v1, "Unable to get highest channel mode. Config is empty"

    .line 272
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 275
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecConfig;->getChannelMode()I

    move-result p0

    move v1, v0

    .line 276
    :goto_0
    sget-object v2, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->CHANNEL_MODES:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 277
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

.method static getHighestSampleRate(Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "AbstractBtDlgCtr"

    const-string v1, "Unable to get highest sample rate. Config is empty"

    .line 244
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 247
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecConfig;->getSampleRate()I

    move-result p0

    move v1, v0

    .line 248
    :goto_0
    sget-object v2, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->SAMPLE_RATES:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 249
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

.method private initConfigStore()V
    .locals 3

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getCurrentCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setCodecType(I)V

    .line 118
    iget-object v1, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getSampleRate()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setSampleRate(I)V

    .line 119
    iget-object v1, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getBitsPerSample()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setBitsPerSample(I)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getChannelMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setChannelMode(I)V

    .line 121
    iget-object v1, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    const v2, 0xf4240

    invoke-virtual {v1, v2}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setCodecPriority(I)V

    .line 122
    iget-object p0, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific1()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setCodecSpecific1Value(J)V

    return-void
.end method


# virtual methods
.method protected getCurrentCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;->getA2dpActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const-string v2, "AbstractBtDlgCtr"

    if-nez p0, :cond_1

    const-string p0, "Unable to get current codec config. No active device."

    .line 159
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 163
    :cond_1
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "Unable to get current codec config. Codec status is null"

    .line 165
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 168
    :cond_2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentConfigIndex()I
    .locals 2

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getCurrentCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "AbstractBtDlgCtr"

    const-string v1, "Unable to get current config index. Current codec Config is null."

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getDefaultIndex()I

    move-result p0

    return p0

    .line 103
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getCurrentIndexByConfig(Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result p0

    return p0
.end method

.method protected abstract getCurrentIndexByConfig(Landroid/bluetooth/BluetoothCodecConfig;)I
.end method

.method protected getDefaultIndex()I
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->getDefaultIndex()I

    move-result p0

    return p0
.end method

.method protected getSelectableByCodecType(I)Landroid/bluetooth/BluetoothCodecConfig;
    .locals 4

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;->getA2dpActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "AbstractBtDlgCtr"

    if-nez v0, :cond_0

    const-string p0, "Unable to get selectable config. No active device."

    .line 201
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 204
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getSelectableConfigs(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object p0

    .line 205
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothCodecConfig;

    .line 206
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v3

    if-ne v3, p1, :cond_1

    return-object v0

    .line 210
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to find matching codec config, type is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method protected getSelectableConfigs(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;->getA2dpActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    return-object v1

    .line 186
    :cond_2
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 188
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsSelectableCapabilities()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getCurrentConfigIndex()I

    move-result p0

    .line 76
    invoke-virtual {v0, p0}, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->generateSummary(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onBluetoothServiceConnected(Landroid/bluetooth/BluetoothA2dp;)V
    .locals 0

    .line 108
    invoke-super {p0, p1}, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;->onBluetoothServiceConnected(Landroid/bluetooth/BluetoothA2dp;)V

    .line 109
    invoke-direct {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->initConfigStore()V

    return-void
.end method

.method public onHDAudioEnabled(Z)V
    .locals 0

    return-void
.end method

.method public onIndexUpdated(I)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->writeConfigurationValues(I)V

    .line 87
    iget-object v1, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {v1}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->createCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v1

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;->getA2dpActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 90
    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothA2dp;->setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;)V

    .line 92
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    move-object v0, p0

    check-cast v0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->generateSummary(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method protected abstract writeConfigurationValues(I)V
.end method
