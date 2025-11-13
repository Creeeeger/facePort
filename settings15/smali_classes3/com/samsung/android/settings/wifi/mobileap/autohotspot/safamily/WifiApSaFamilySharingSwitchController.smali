.class public Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiApSaFamilySharingSwitchController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mOnFamilySharingSwitchChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler$OnStateChangeListener;

.field private mOnFamilySwitchStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler$OnStateChangeListener;

.field private mWifiApAutoHotspotSettings:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSettings;

.field private mWifiApSaFamilySharingSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;

.field private mWifiApSaFamilySharingSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnFamilySwitchStateChangeListener(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;)Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler$OnStateChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->mOnFamilySwitchStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler$OnStateChangeListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWifiApSaFamilySharingSwitchPreference(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;)Landroidx/preference/SecSwitchPreferenceScreen;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->mWifiApSaFamilySharingSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->mOnFamilySharingSwitchChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler$OnStateChangeListener;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->mWifiApAutoHotspotSettings:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSettings;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->mWifiApSaFamilySharingSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->mWifiApAutoHotspotSettings:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSettings;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->mWifiApSaFamilySharingSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->mOnFamilySharingSwitchChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler$OnStateChangeListener;

    iput-object p0, p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler$OnStateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;->updateSwitchState()V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isSamsungAccountFamilySupported()V

    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->TAG:Ljava/lang/String;

    const-string v1, "Family Sharing switch preference screen clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isSamsungAccountLoggedOut(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->mContext:Landroid/content/Context;

    const v2, 0x7f14340b

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->mContext:Landroid/content/Context;

    const v2, 0x7f14340a

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const-string v1, "Launching Family Sharing SettingsActivity."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.samsungaccount.action.OPEN_FAMILY_GROUP_MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/SaFamilyUtils;->getFamilyGroupId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "launch_mode"

    const-string/jumbo v2, "request_create_group"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->mWifiApAutoHotspotSettings:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSettings;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isFamilySharingSetOn(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 6

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setChecked: "

    invoke-static {v1, v0, p1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->mWifiApSaFamilySharingSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiApSaFamilySharingSwitchEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/SaFamilyUtils;->setFamilySharingDB(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const-string p1, "Checking setCheck conditions."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isActiveNetworkHasInternet(Landroid/content/Context;)Z

    move-result p1

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isSamsungAccountLoggedOut(Landroid/content/Context;)Z

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/SaFamilyUtils;->getFamilyGroupId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isAutoHotspotSetOn(Landroid/content/Context;)Z

    move-result v5

    xor-int/2addr v5, v2

    if-eqz v5, :cond_1

    const-string p1, "Auto Hotspot On check condition failed."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setFamilySharingDB(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f14340b

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f14340a

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_2

    const-string p1, "Network check condition failed."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    const-string p1, "Samsung Account check condition failed."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setFamilySharingDB(Landroid/content/Context;Z)V

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->launchAddSamsungAccountActivity(Landroid/app/Activity;)V

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz v4, :cond_4

    const-string p1, "Family group Id check failed."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.samsung.android.samsungaccount.action.OPEN_FAMILY_GROUP_MAIN"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "launch_mode"

    const-string/jumbo v3, "request_create_group"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;->updateSwitchState()V

    return v0
.end method

.method public setFamilyStateListner(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler$OnStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->mOnFamilySwitchStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler$OnStateChangeListener;

    return-void
.end method

.method public setHost(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->mWifiApAutoHotspotSettings:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSettings;

    return-void
.end method

.method public updateStates()V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateStates()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->mWifiApSaFamilySharingSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;->updateSwitchState()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
