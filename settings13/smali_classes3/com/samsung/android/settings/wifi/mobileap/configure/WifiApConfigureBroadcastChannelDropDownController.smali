.class public Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "WifiApConfigureBroadcastChannelDropDownController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final BUNDLE_KEY_BROADCAST_CHANNEL_DROPDOWN_VALUE:Ljava/lang/String; = "bundle_key_broadcast_channel_dropdown_value"

.field public static final KEY_PREFERENCE:Ljava/lang/String; = "broadcast_channel_dropdown_preference"

.field private static final TAG:Ljava/lang/String; = "WifiApConfigureBroadcastChannelDropDownController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mThisDropDownPreference:Landroidx/preference/DropDownPreference;

.field private mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->mThisDropDownPreference:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 39
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->TAG:Ljava/lang/String;

    const-string v1, "displayPreference()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/DropDownPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->mThisDropDownPreference:Landroidx/preference/DropDownPreference;

    .line 41
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->wifi_ap_primary_text_color:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    .line 42
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->mThisDropDownPreference:Landroidx/preference/DropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->wifi_ap_broadcast_channel_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 43
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->mThisDropDownPreference:Landroidx/preference/DropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->wifi_ap_broadcast_channel_entry_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 44
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getBroadcastChannel(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->setValueIndex(I)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDropDownValue()I
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->mThisDropDownPreference:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public isValueModified()Z
    .locals 5

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getBroadcastChannel(Landroid/content/Context;)I

    move-result v0

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->getDropDownValue()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 v1, 0x1

    .line 92
    :cond_0
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Values, Old: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", New: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "Is value modified: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 67
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 68
    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChange New value :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->mThisDropDownPreference:Landroidx/preference/DropDownPreference;

    invoke-virtual {p2}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p2

    aget-object p1, p2, p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bundle_key_broadcast_channel_dropdown_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->mThisDropDownPreference:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->setValueIndex(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->mThisDropDownPreference:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, "bundle_key_broadcast_channel_dropdown_value"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public saveValue()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->getBandPreferenceConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand2Ghz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getBroadcastChannel(Landroid/content/Context;)I

    move-result v0

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->isValueModified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->getDropDownValue()I

    move-result v0

    .line 103
    :cond_0
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating new value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->setBroadcastChannel(Landroid/content/Context;I)V

    .line 105
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x4

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->insertMHSBigData(II)V

    :cond_1
    return-void
.end method

.method public setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public setValueIndex(I)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->mThisDropDownPreference:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->mThisDropDownPreference:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 49
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState() -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->getBandPreferenceConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand2Ghz()Z

    move-result p1

    .line 54
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->isWifiSharingEnabled()Z

    move-result v1

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating state: isWifiSharingEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", wifiApBandConfig(is2Ghz) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBroadcastChannelDropDownController;->mThisDropDownPreference:Landroidx/preference/DropDownPreference;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
