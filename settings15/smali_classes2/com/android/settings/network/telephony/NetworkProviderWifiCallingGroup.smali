.class public final Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;


# instance fields
.field protected mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field public mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field public mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field public mPreferenceGroupKey:Ljava/lang/String;

.field public mSimCallManagerList:Ljava/util/Map;

.field public mSubInfoListForWfc:Ljava/util/List;

.field public mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public mTelephonyCallback:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup$PhoneCallStateTelephonyCallback;

.field public mTelephonyManagerList:Ljava/util/Map;

.field public mWifiCallingForSubPreferences:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$RN47xIqNaj73GlT_prCIMisg8uw(Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;Landroid/telephony/SubscriptionInfo;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/Settings$WifiCallingSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.provider.extra.SUB_ID"

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mPreferenceGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->update$3$1()V

    return-void
.end method

.method public getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSimCallManagerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/PhoneAccountHandle;

    return-object p0
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "provider_model_wfc_group"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 2

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSubInfoListForWfc:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "NetworkProviderWifiCallingGroup"

    const-string v1, "No active subscriptions, hide the controller"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x1

    if-lt p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public final onAirplaneModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mTelephonyCallback:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup$PhoneCallStateTelephonyCallback;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup$PhoneCallStateTelephonyCallback;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->updateListener()V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->update$3$1()V

    return-void
.end method

.method public final onSubscriptionsChanged()V
    .locals 2

    const-string v0, "NetworkProviderWifiCallingGroup"

    const-string v1, "onSubscriptionsChanged:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->setSubscriptionInfoList(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->updateListener()V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->update$3$1()V

    return-void
.end method

.method public queryImsState(I)Lcom/android/settings/network/ims/WifiCallingQueryImsState;
    .locals 1

    new-instance v0, Lcom/android/settings/network/ims/WifiCallingQueryImsState;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public final setSubscriptionInfoList(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v1}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSubInfoListForWfc:Ljava/util/List;

    new-instance v1, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setSubscriptionInfoList: mSubInfoListForWfc size:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSubInfoListForWfc:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkProviderWifiCallingGroup"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public shouldShowWifiCallingForSub(I)Z
    .locals 2

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->queryImsState(I)Lcom/android/settings/network/ims/WifiCallingQueryImsState;

    move-result-object p0

    sget-object v1, Lcom/android/settings/network/telephony/MobileNetworkUtils;->EMPTY_DRAWABLE:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_0

    new-instance p0, Lcom/android/settings/network/ims/WifiCallingQueryImsState;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;-><init>(Landroid/content/Context;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;->isReadyToWifiCalling()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final update$3$1()V
    .locals 11

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    const-string p0, "NetworkProviderWifiCallingGroup"

    const-string v0, "mPreferenceGroup == null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mWifiCallingForSubPreferences:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mWifiCallingForSubPreferences:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mWifiCallingForSubPreferences:Ljava/util/Map;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mWifiCallingForSubPreferences:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSubInfoListForWfc:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/16 v2, 0xa

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->shouldShowWifiCallingForSub(I)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v6, v0

    check-cast v6, Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/preference/Preference;

    if-nez v5, :cond_4

    new-instance v5, Landroidx/preference/Preference;

    iget-object v6, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v6, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_4
    iget-object v6, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v4}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v9

    const-string v10, "android.telecom.action.CONFIGURE_PHONE_ACCOUNT"

    invoke-static {v7, v9, v10}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->buildConfigureIntent(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    if-nez v10, :cond_5

    const-string v10, "android.telecom.action.CONNECTION_SERVICE_CONFIGURE"

    invoke-static {v7, v9, v10}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->buildConfigureIntent(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    :cond_5
    if-eqz v10, :cond_6

    iget-object v6, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v10, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v7, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v10}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_6
    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v6, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;Landroid/telephony/SubscriptionInfo;)V

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v3, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mTelephonyManagerList:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallStateForSubscription()I

    move-result v3

    if-nez v3, :cond_7

    const/4 v8, 0x1

    :cond_7
    invoke-virtual {v5, v8}, Landroidx/preference/Preference;->setEnabled(Z)V

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {p0, v4}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->queryImsState(I)Lcom/android/settings/network/ims/WifiCallingQueryImsState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;->isEnabledByUser()Z

    move-result v2

    if-eqz v2, :cond_8

    const v2, 0x7f1408b1

    goto :goto_2

    :cond_8
    const v2, 0x1041093

    :goto_2
    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mWifiCallingForSubPreferences:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    goto/16 :goto_1

    :cond_9
    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    :cond_a
    return-void
.end method

.method public final updateListener()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSubInfoListForWfc:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mTelephonyCallback:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup$PhoneCallStateTelephonyCallback;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v4, v2, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup$PhoneCallStateTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;

    iget-object v4, v4, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mTelephonyManagerList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, v2, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup$PhoneCallStateTelephonyCallback;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->update$3$1()V

    return-void
.end method
