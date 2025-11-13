.class public Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final ANOMALY_KEY:Ljava/lang/String; = "anomaly_key"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final CARD_PREFERENCE_KEY:Ljava/lang/String; = "battery_tips_card"

.field private static final ROOT_PREFERENCE_KEY:Ljava/lang/String; = "battery_tips_category"

.field private static final TAG:Ljava/lang/String; = "BatteryTipsController"


# instance fields
.field mAnomalyEventWrapper:Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mCardPreference:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mIsAcceptable:Ljava/lang/Boolean;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mOnAnomalyConfirmListener:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController$OnAnomalyConfirmListener;

.field private mOnAnomalyRejectListener:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController$OnAnomalyRejectListener;


# direct methods
.method public static synthetic $r8$lambda$j3e2OC_lNZlQeQLlGHFHIs5nnY8(Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->lambda$handleBatteryTipsCardUpdated$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yKsko-cUQrjRTXkYMx6OXw-rDTs(Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->lambda$handleBatteryTipsCardUpdated$1(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "battery_tips_category"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mAnomalyEventWrapper:Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mIsAcceptable:Ljava/lang/Boolean;

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private lambda$handleBatteryTipsCardUpdated$0(I)V
    .locals 7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mCardPreference:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mOnAnomalyConfirmListener:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController$OnAnomalyConfirmListener;

    if-eqz v1, :cond_3

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;

    iget-object p0, v1, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    iget v0, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyHighlightSlotIndex:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    iget v3, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyHighlightSlotIndex:I

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    if-ne v0, v1, :cond_1

    iget v1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    if-ne v3, v1, :cond_1

    goto :goto_0

    :cond_1
    iput v0, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    iput v3, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onDailyChartSelect:%d, onHourlyChartSelect:%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryChartPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->refreshUi()V

    iget-object v0, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mOnSelectedIndexUpdatedListener:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->onSelectedSlotDataUpdated()V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryTipsController:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->acceptTipsCard()V

    goto/16 :goto_5

    :cond_3
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mAnomalyEventWrapper:Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->getInfo(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v4, v3}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->getInfo(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "AnomalyEventWrapper"

    if-nez v5, :cond_5

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    :try_start_0
    iget-object v1, v1, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "Update settings name=%s to value=%d"

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v1

    const-string v5, "Failed to update settings name=%s to value=%d"

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_5
    :goto_1
    const-string v1, "Failed to update settings due to invalid key or value"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mAnomalyEventWrapper:Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;

    iget-object v2, v1, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mSubSettingLauncher:Lcom/android/settings/core/SubSettingLauncher;

    if-nez v2, :cond_9

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;

    const/16 v4, 0xb

    invoke-direct {v2, v4}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->getInfo(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    new-instance v4, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;

    const/16 v5, 0xc

    invoke-direct {v4, v5}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v4, v3}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->getInfo(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    new-instance v5, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v5, v3}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->getInfo(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v0}, Landroid/os/Bundle;-><init>(I)V

    const-string v0, ":settings:fragment_args_key"

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v3, v1, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object v3, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v2, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iput-object v5, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    iput-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mSubSettingLauncher:Lcom/android/settings/core/SubSettingLauncher;

    :cond_8
    iget-object v2, v1, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mSubSettingLauncher:Lcom/android/settings/core/SubSettingLauncher;

    :goto_3
    iput-object v2, v1, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mSubSettingLauncher:Lcom/android/settings/core/SubSettingLauncher;

    :cond_9
    iget-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mSubSettingLauncher:Lcom/android/settings/core/SubSettingLauncher;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :goto_4
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v2, 0x33

    const/16 v3, 0x745

    const/16 v4, 0x33

    const-string v6, "anomaly_key"

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    :cond_a
    :goto_5
    return-void
.end method

.method private lambda$handleBatteryTipsCardUpdated$1(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mCardPreference:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mAnomalyEventWrapper:Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mPowerAnomalyEvent:Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->getDismissRecordKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->BATTERY_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "battery_usage_shared_prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "dismissed_power_anomaly_keys"

    if-eqz v1, :cond_0

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v2, 0x33

    const/16 v3, 0x746

    const/16 v4, 0x33

    const-string v6, "anomaly_key"

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acceptTipsCard()V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mAnomalyEventWrapper:Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mIsAcceptable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mAnomalyEventWrapper:Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mPowerAnomalyEvent:Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->getDismissRecordKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->BATTERY_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "battery_usage_shared_prefs"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "dismissed_power_anomaly_keys"

    if-eqz v1, :cond_1

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mCardPreference:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mAnomalyEventWrapper:Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mPowerAnomalyEvent:Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->getKey()Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyKey;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyKey;->getNumber()I

    move-result v7

    const/16 v6, 0x33

    const-string v8, "anomaly_key"

    const/16 v4, 0x33

    const/16 v5, 0x745

    invoke-virtual/range {v3 .. v8}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "battery_tips_card"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mCardPreference:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;

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

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handleBatteryTipsCardUpdated(Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;Z)V
    .locals 6

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mAnomalyEventWrapper:Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mIsAcceptable:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mAnomalyEventWrapper:Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mCardPreference:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    :cond_0
    iget-object p1, p1, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mPowerAnomalyEvent:Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->getKey()Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyKey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyKey;->getNumber()I

    move-result v4

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mAnomalyEventWrapper:Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mCardPreference:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->getInfo(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    iget v3, p1, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mResourceIndex:I

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "string"

    const v2, 0x7f03013b

    invoke-virtual {p1, v2, v3, v1}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->getResourceId(IILjava/lang/String;)I

    move-result v1

    iget-object v2, p1, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mPowerAnomalyEvent:Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->hasWarningBannerInfo()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v2, p1, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->hasWarningItemInfo()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mRelatedBatteryDiffEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getAppLabel()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p1, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mContext:Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mCardPreference:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    :cond_4
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string p2, "drawable"

    const v1, 0x7f030038

    iget v2, p1, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mCardStyleId:I

    invoke-virtual {p1, v1, v2, p2}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->getResourceId(IILjava/lang/String;)I

    move-result p2

    iget v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;->mIconResourceId:I

    if-eq v1, p2, :cond_5

    iput p2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;->mIconResourceId:I

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_5
    const-string p2, "color"

    const v1, 0x7f030037

    invoke-virtual {p1, v1, v2, p2}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->getResourceId(IILjava/lang/String;)I

    move-result p2

    iget v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;->mButtonColorResourceId:I

    if-eq v1, p2, :cond_6

    iput p2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;->mButtonColorResourceId:I

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_6
    new-instance p2, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;

    const/16 v1, 0x9

    invoke-direct {p2, v1}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p1, p2, v1}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->getInfo(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const p2, 0x7f03013a

    invoke-virtual {p1, p2, v3}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->getStringFromArrayResource(II)Ljava/lang/String;

    move-result-object p2

    :cond_7
    iget-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;->mMainButtonLabel:Ljava/lang/CharSequence;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iput-object p2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;->mMainButtonLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_8
    new-instance p2, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;

    const/4 v1, 0x7

    invoke-direct {p2, v1}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p1, p2, v1}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->getInfo(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const p2, 0x7f030138

    invoke-virtual {p1, p2, v3}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->getStringFromArrayResource(II)Ljava/lang/String;

    move-result-object p2

    :cond_9
    iget-object p1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;->mDismissButtonLabel:Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    iput-object p2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;->mDismissButtonLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_a
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mCardPreference:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;

    new-instance p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;I)V

    iput-object p2, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;->mOnConfirmListener:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;I)V

    iput-object p2, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsCardPreference;->mOnRejectListener:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v1, 0x33

    const/16 v2, 0x744

    const/16 v3, 0x33

    const-string v5, "anomaly_key"

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    return-void
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

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setOnAnomalyConfirmListener(Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController$OnAnomalyConfirmListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController;->mOnAnomalyConfirmListener:Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController$OnAnomalyConfirmListener;

    return-void
.end method

.method public setOnAnomalyRejectListener(Lcom/android/settings/fuelgauge/batteryusage/BatteryTipsController$OnAnomalyRejectListener;)V
    .locals 0

    return-void
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
