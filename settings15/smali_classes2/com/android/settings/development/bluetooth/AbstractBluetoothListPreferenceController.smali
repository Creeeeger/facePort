.class public abstract Lcom/android/settings/development/bluetooth/AbstractBluetoothListPreferenceController;
.super Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

.field public final mDefaultEntry:Ljava/lang/String;

.field public final mDefaultValue:Ljava/lang/String;

.field public mListPreference:Landroidx/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "AbstrBtListPrefCtrl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/development/bluetooth/AbstractBluetoothListPreferenceController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p2, 0x7f1406a5

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothListPreferenceController;->mDefaultEntry:Ljava/lang/String;

    const/16 p1, 0x3e8

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothListPreferenceController;->mDefaultValue:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothListPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "bluetooth_audio_codec_settings_list"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothListPreferenceController;->mListPreference:Landroidx/preference/ListPreference;

    return-void
.end method

.method public final onBluetoothServiceConnected(Landroid/bluetooth/BluetoothA2dp;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;->onBluetoothServiceConnected(Landroid/bluetooth/BluetoothA2dp;)V

    iget-object p1, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    const-string v0, "AbstrBtListPrefCtrl"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "getBluetoothCodecStatus: Unable to get codec status. Bluetooth A2dp is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object p1, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;->getA2dpActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p1, "getBluetoothCodecStatus: Unable to get codec status. No active device."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "getBluetoothCodecStatus: Codec status is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    const-string p1, "getCurrentCodecConfig: Unable to get current codec config. Codec status is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_4

    const-string p0, "initConfigStore: Current codec config is null."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothListPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    if-nez p0, :cond_5

    const-string p0, "initConfigStore: Bluetooth A2dp Config Store is null."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->getExtendedCodecType()Landroid/bluetooth/BluetoothCodecType;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mSampleRate:I

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->getBitsPerSample()I

    move-result p1

    iput p1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mBitsPerSample:I

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->getChannelMode()I

    move-result p1

    iput p1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mChannelMode:I

    const p1, 0xf4240

    iput p1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecPriority:I

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific1()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecSpecific1Value:J

    :goto_3
    return-void
.end method

.method public final onDeveloperOptionsSwitchDisabled()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    sget-boolean v0, Lcom/android/settings/development/bluetooth/AbstractBluetoothListPreferenceController;->DEBUG:Z

    const-string v1, "AbstrBtListPrefCtrl"

    if-eqz v0, :cond_0

    const-string v0, "onDeveloperOptionsSwitchDisabled"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothListPreferenceController;->mListPreference:Landroidx/preference/ListPreference;

    if-nez v0, :cond_1

    const-string p0, "onDeveloperOptionsSwitchDisabled: List preference is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    check-cast p0, Lcom/android/settings/development/bluetooth/BluetoothCodecListPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothListPreferenceController;->setupDefaultListPreference()V

    return-void
.end method

.method public final setupDefaultListPreference()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothListPreferenceController;->mDefaultValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothListPreferenceController;->mDefaultEntry:Ljava/lang/String;

    sget-boolean v2, Lcom/android/settings/development/bluetooth/AbstractBluetoothListPreferenceController;->DEBUG:Z

    const-string v3, "AbstrBtListPrefCtrl"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "setupDefaultListPreference: mDefaultEntry="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mDefaultValue="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothListPreferenceController;->mListPreference:Landroidx/preference/ListPreference;

    if-nez v2, :cond_1

    const-string p0, "setupListPreference: List preference is null"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothListPreferenceController;->mListPreference:Landroidx/preference/ListPreference;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothListPreferenceController;->mListPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
