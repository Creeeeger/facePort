.class public Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "OpenNetworkSelectPagePreferenceController.java"

# interfaces
.implements Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

.field private mCacheOfModeStatus:I

.field private mPreference:Landroidx/preference/Preference;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$tLjNX2rJiP3rTs_tmM8ytCklwVs(Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 p2, -0x1

    .line 55
    iput p2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    const/4 p2, 0x0

    .line 56
    iput p2, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mCacheOfModeStatus:I

    .line 57
    new-instance p2, Lcom/android/settings/network/AllowedNetworkTypesListener;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/settings/network/AllowedNetworkTypesListener;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

    .line 59
    new-instance p1, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;)V

    invoke-virtual {p2, p1}, Lcom/android/settings/network/AllowedNetworkTypesListener;->setAllowedNetworkTypesListener(Lcom/android/settings/network/AllowedNetworkTypesListener$OnAllowedNetworkTypesListener;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->updatePreference()V

    return-void
.end method

.method private updatePreference()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 93
    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->shouldDisplayNetworkSelectOptions(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-static {v0, p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getCurrentCarrierNameForDisplay(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 116
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->network_disconnected:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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

.method public init(I)Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;
    .locals 1

    .line 124
    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 125
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 126
    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
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

.method public onNetworkSelectModeUpdated(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mCacheOfModeStatus:I

    .line 133
    iget-object p1, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/network/AllowedNetworkTypesListener;->register(Landroid/content/Context;I)V

    return-void
.end method

.method public onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/network/AllowedNetworkTypesListener;->unregister(Landroid/content/Context;I)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 99
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 100
    iget v0, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mCacheOfModeStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$NetworkSelectActivity"

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    const-string v1, "android.provider.extra.SUB_ID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
