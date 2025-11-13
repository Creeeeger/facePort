.class public Lcom/android/settings/network/telephony/NetworkProviderWifiCallingPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# static fields
.field private static final PREFERENCE_CATEGORY_KEY:Ljava/lang/String; = "provider_model_calling_category"

.field private static final TAG:Ljava/lang/String; = "NetworkProviderWfcController"


# instance fields
.field private mNetworkProviderWifiCallingGroup:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;

.field private mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createWifiCallingControllerForSub(Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;
    .locals 2

    new-instance v0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mTelephonyManagerList:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSimCallManagerList:Ljava/util/Map;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    iput-object v1, v0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->createForAllUserProfiles()Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-string v1, "provider_model_calling_category"

    iput-object v1, v0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mPreferenceGroupKey:Ljava/lang/String;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mWifiCallingForSubPreferences:Ljava/util/Map;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->setSubscriptionInfoList(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mTelephonyCallback:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup$PhoneCallStateTelephonyCallback;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup$PhoneCallStateTelephonyCallback;

    invoke-direct {v1, v0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup$PhoneCallStateTelephonyCallback;-><init>(Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;)V

    iput-object v1, v0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mTelephonyCallback:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup$PhoneCallStateTelephonyCallback;

    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    new-instance p1, Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object p1, v0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    return-object v0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "provider_model_calling_category"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingPreferenceController;->mNetworkProviderWifiCallingGroup:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingPreferenceController;->mNetworkProviderWifiCallingGroup:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x3

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

.method public init(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingPreferenceController;->createWifiCallingControllerForSub(Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingPreferenceController;->mNetworkProviderWifiCallingGroup:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;

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

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
