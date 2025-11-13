.class public Lcom/android/settings/network/NetworkProviderDownloadedSimListController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "NetworkProviderDownloadedSimListController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;


# instance fields
.field private mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field final mDataSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public static synthetic $r8$lambda$y1f3MgF_yLVq951-RL0GxSSmF0Y(Lcom/android/settings/network/NetworkProviderDownloadedSimListController;Landroid/telephony/SubscriptionInfo;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->lambda$update$0(Landroid/telephony/SubscriptionInfo;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdate(Lcom/android/settings/network/NetworkProviderDownloadedSimListController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->update()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v0, Lcom/android/settings/network/NetworkProviderDownloadedSimListController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/NetworkProviderDownloadedSimListController$1;-><init>(Lcom/android/settings/network/NetworkProviderDownloadedSimListController;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->mDataSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 66
    new-instance v0, Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    .line 67
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->mPreferences:Ljava/util/Map;

    .line 68
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private getAvailableDownloadedSubscriptions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->getAvailableSubscriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 173
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private synthetic lambda$update$0(Landroid/telephony/SubscriptionInfo;Landroidx/preference/Preference;)Z
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->launchMobileNetworkSettings(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)V

    const/4 p0, 0x1

    return p0
.end method

.method private update()V
    .locals 6

    .line 109
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->mPreferences:Ljava/util/Map;

    .line 114
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->mPreferences:Ljava/util/Map;

    .line 116
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->getAvailableDownloadedSubscriptions()Ljava/util/List;

    move-result-object v1

    .line 117
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 118
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 119
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/Preference;

    if-nez v4, :cond_1

    .line 121
    new-instance v4, Landroidx/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 122
    iget-object v5, p0, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 124
    :cond_1
    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 126
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p0, v3}, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->getSummary(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    new-instance v5, Lcom/android/settings/network/NetworkProviderDownloadedSimListController$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/network/NetworkProviderDownloadedSimListController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/NetworkProviderDownloadedSimListController;Landroid/telephony/SubscriptionInfo;)V

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 133
    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->mPreferences:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 135
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 136
    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "provider_model_downloaded_sim_category"

    .line 102
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "add_more"

    .line 103
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 104
    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->showEuiccSettings(Landroid/content/Context;)Z

    move-result v0

    .line 103
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 105
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->update()V

    return-void
.end method

.method protected getDefaultDataSubscriptionId()I
    .locals 0

    .line 208
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p0

    return p0
.end method

.method protected getDefaultSmsSubscriptionId()I
    .locals 0

    .line 203
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result p0

    return p0
.end method

.method protected getDefaultVoiceSubscriptionId()I
    .locals 0

    .line 198
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result p0

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "provider_model_downloaded_sim_list"

    return-object p0
.end method

.method public getSummary(I)Ljava/lang/CharSequence;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/network/SubscriptionUtil;->getDefaultSimConfig(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 143
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sim_category_active_sim:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_0

    return-object p0

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object v0

    .line 153
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->sim_category_inactive_sim:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 159
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->getAvailableDownloadedSubscriptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    .line 83
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->mDataSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 84
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->mDataSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->update()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 0

    .line 193
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->update()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 182
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 183
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 184
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->update()V

    return-void
.end method
