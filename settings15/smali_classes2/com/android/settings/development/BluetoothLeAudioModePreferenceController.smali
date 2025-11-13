.class public final Lcom/android/settings/development/BluetoothLeAudioModePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public mChanged:Z

.field public final mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

.field public final mListSummaries:[Ljava/lang/String;

.field public final mListValues:[Ljava/lang/String;

.field mNewMode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/development/BluetoothLeAudioModePreferenceController;->mChanged:Z

    iput-object p2, p0, Lcom/android/settings/development/BluetoothLeAudioModePreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    const-class p2, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/development/BluetoothLeAudioModePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f030057

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/development/BluetoothLeAudioModePreferenceController;->mListValues:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030056

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/BluetoothLeAudioModePreferenceController;->mListSummaries:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_leaudio_mode"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 1

    invoke-static {}, Landroid/sysprop/BluetoothProperties;->isProfileBapBroadcastSourceEnabled()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/android/settings/development/BluetoothLeAudioModePreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-static {v0}, Lcom/android/settings/development/BluetoothRebootDialog;->show(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/development/BluetoothLeAudioModePreferenceController;->mChanged:Z

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/development/BluetoothLeAudioModePreferenceController;->mNewMode:Ljava/lang/String;

    return p1
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/development/BluetoothLeAudioModePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isLeAudioBroadcastSourceSupported()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    const-string v0, "broadcast"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/development/BluetoothLeAudioModePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isLeAudioSupported()I

    move-result v0

    if-ne v0, v1, :cond_2

    const-string v0, "unicast"

    goto :goto_0

    :cond_2
    const-string v0, "disabled"

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/android/settings/development/BluetoothLeAudioModePreferenceController;->mListValues:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_4

    aget-object v4, v3, v2

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_2
    check-cast p1, Landroidx/preference/ListPreference;

    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/development/BluetoothLeAudioModePreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/development/BluetoothLeAudioModePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_5
    return-void
.end method
