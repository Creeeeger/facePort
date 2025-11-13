.class public Lcom/android/settings/network/telephony/Enable2gPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "Enable2gPreferenceController.java"


# static fields
.field private static final BITMASK_2G:J = 0x804bL

.field private static final LOG_TAG:Ljava/lang/String; = "Enable2gPreferenceController"


# instance fields
.field private mCarrierConfigCache:Lcom/android/settings/network/CarrierConfigCache;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    invoke-static {p1}, Lcom/android/settings/network/CarrierConfigCache;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/CarrierConfigCache;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/network/telephony/Enable2gPreferenceController;->mCarrierConfigCache:Lcom/android/settings/network/CarrierConfigCache;

    .line 63
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/network/telephony/Enable2gPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 64
    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/Enable2gPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-void
.end method

.method private getCarrierName()Ljava/lang/String;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/android/settings/network/telephony/Enable2gPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-static {v0, p0}, Lcom/android/settings/network/SubscriptionUtil;->getSubById(Landroid/telephony/SubscriptionManager;I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 106
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object p0

    .line 107
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getAvailabilityStatus(I)I
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/android/settings/network/telephony/Enable2gPreferenceController;->mCarrierConfigCache:Lcom/android/settings/network/CarrierConfigCache;

    invoke-virtual {v0, p1}, Lcom/android/settings/network/CarrierConfigCache;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/android/settings/network/telephony/Enable2gPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    const-string v1, "Enable2gPreferenceController"

    const-string v2, "Telephony manager not yet initialized"

    .line 114
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/network/telephony/Enable2gPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 118
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/network/telephony/Enable2gPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string p1, "CAPABILITY_USES_ALLOWED_NETWORK_TYPES_BITMASK"

    .line 120
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->isRadioInterfaceCapabilitySupported(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    :goto_1
    return v1
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

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

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

.method public init(I)Lcom/android/settings/network/telephony/Enable2gPreferenceController;
    .locals 1

    .line 74
    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 75
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 76
    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/Enable2gPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public isChecked()Z
    .locals 4

    .line 127
    iget-object p0, p0, Lcom/android/settings/network/telephony/Enable2gPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v0

    const-wide/32 v2, 0x804b

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 11

    .line 134
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/Enable2gPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v3

    const-wide/32 v5, 0x804b

    and-long v7, v3, v5

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-ne v0, p1, :cond_2

    return v1

    :cond_2
    const-string v0, "Enable2gPreferenceController"

    if-eqz p1, :cond_3

    or-long/2addr v3, v5

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enabling 2g. Allowed network types: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-wide/32 v5, -0x804c

    and-long/2addr v3, v5

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disabling 2g. Allowed network types: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/Enable2gPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v2, v3, v4}, Landroid/telephony/TelephonyManager;->setAllowedNetworkTypesForReason(IJ)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/network/telephony/Enable2gPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v1, 0x6e1

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    return v7
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    if-eqz p1, :cond_3

    .line 83
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/Enable2gPreferenceController;->mCarrierConfigCache:Lcom/android/settings/network/CarrierConfigCache;

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/CarrierConfigCache;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v3, "hide_enable_2g_bool"

    .line 89
    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    xor-int/lit8 v3, v0, 0x1

    .line 90
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->enable_2g_summary_disabled_carrier:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 94
    invoke-direct {p0}, Lcom/android/settings/network/telephony/Enable2gPreferenceController;->getCarrierName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    .line 93
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 96
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->enable_2g_summary:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 98
    :goto_1
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
