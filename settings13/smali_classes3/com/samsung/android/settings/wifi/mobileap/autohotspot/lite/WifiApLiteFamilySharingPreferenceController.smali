.class public Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "WifiApLiteFamilySharingPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiApLiteFamilySharingPreferenceController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mOnFamilySharingSwitchChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;

.field private mSettingsPreferenceFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field mThisPreferenceScreen:Landroidx/preference/SecPreferenceScreen;

.field private mWifiApFamilySharingSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->mOnFamilySharingSwitchChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;

    .line 78
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 101
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 102
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->TAG:Ljava/lang/String;

    const-string v1, "displayPreference()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->mThisPreferenceScreen:Landroidx/preference/SecPreferenceScreen;

    .line 104
    sget v0, Lcom/android/settings/R$string;->family_switch_title:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 105
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->mThisPreferenceScreen:Landroidx/preference/SecPreferenceScreen;

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 106
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->mSettingsPreferenceFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->mWifiApFamilySharingSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->mOnFamilySharingSwitchChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->setOnStateChangeListener(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;)V

    .line 108
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->mWifiApFamilySharingSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->updateSwitchState()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 5

    .line 88
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isAutoHotspotSupported(Landroid/content/Context;)Z

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isAutoHotspotLiteSupported(Landroid/content/Context;)Z

    move-result v1

    .line 90
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isAutoHotspotWifiOnlyLiteSupported(Landroid/content/Context;)Z

    move-result p0

    .line 91
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAutoHotspotAvailable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isAutoHotspotLiteSupported:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isAutoHotspotWifiOnlyLiteSupported:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

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

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 119
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 122
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->TAG:Ljava/lang/String;

    const-string v1, "handlePreferenceTreeClick - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
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

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setHost(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->mSettingsPreferenceFragment:Lcom/android/settings/SettingsPreferenceFragment;

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 113
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 114
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->TAG:Ljava/lang/String;

    const-string p1, "updateState()"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
