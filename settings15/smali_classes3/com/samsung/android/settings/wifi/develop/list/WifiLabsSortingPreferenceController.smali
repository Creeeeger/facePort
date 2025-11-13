.class public Lcom/samsung/android/settings/wifi/develop/list/WifiLabsSortingPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentStyle:I

.field private mPreference:Landroidx/preference/SecDropDownPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsSortingPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->getDeveloperSortingStyle(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsSortingPreferenceController;->mCurrentStyle:I

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecDropDownPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsSortingPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsSortingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030177

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsSortingPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsSortingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030178

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsSortingPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->getDeveloperSortingStyle(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsSortingPreferenceController;->mCurrentStyle:I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsSortingPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsSortingPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    iget-object v0, v0, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsSortingPreferenceController;->mCurrentStyle:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsSortingPreferenceController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_wifi_developer_sorting_style"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsSortingPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsSortingPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->getDeveloperSortingStyle(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsSortingPreferenceController;->mCurrentStyle:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsSortingPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsSortingPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsSortingPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->getDeveloperSortingStyle(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsSortingPreferenceController;->mCurrentStyle:I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsSortingPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
