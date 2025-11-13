.class public Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# static fields
.field private static final ANOMALY_KEY:Ljava/lang/String; = "anomaly_key"

.field private static final APP_LIST_PREFERENCE_KEY:Ljava/lang/String; = "app_list"

.field private static final EMPTY_ENTRY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final FOOTER_PREFERENCE_KEY:Ljava/lang/String; = "battery_usage_footer"

.field private static final PACKAGE_NAME_NONE:Ljava/lang/String; = "none"

.field private static final ROOT_PREFERENCE_KEY:Ljava/lang/String; = "battery_usage_breakdown"

.field private static final SLOT_TIMESTAMP:Ljava/lang/String; = "slot_timestamp"

.field private static final SPINNER_PREFERENCE_KEY:Ljava/lang/String; = "battery_usage_spinner"

.field private static final TAG:Ljava/lang/String; = "BatteryUsageBreakdownController"

.field private static sUiMode:I


# instance fields
.field private final mActivity:Lcom/android/settings/SettingsActivity;

.field mAnomalyEntryKey:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mAnomalyHintPrefKey:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mAnomalyHintString:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mAnomalyKeyNumber:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mAppListPreferenceGroup:Landroidx/preference/PreferenceGroup;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mBatteryDiffData:Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mBatteryUsageBreakdownTitleLastFullChargeText:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field private final mHandler:Landroid/os/Handler;

.field mIsHighlightSlot:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field mPercentLessThanThresholdContentDescription:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPercentLessThanThresholdText:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPrefContext:Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mPreferenceCache:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field mRootPreference:Landroidx/preference/PreferenceCategory;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSlotInformation:Ljava/lang/String;

.field private mSpinnerPosition:I

.field mSpinnerPreference:Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$BjMHagqCAjDC35GyBHmjWPW59Qk(Ljava/util/Set;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->lambda$removeAndCacheAllUnusedPreferences$2(Ljava/util/Set;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZVLjYa9rY86kSHJJ8vn5PsVvooI(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->lambda$showSpinnerAndAppList$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$dEZrjd4ytl1wxzXxdgXUrn61TqE(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->lambda$showSpinnerAndAppList$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMetricsFeatureProvider(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSpinnerPosition(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mSpinnerPosition:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmSpinnerPosition(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mSpinnerPosition:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->EMPTY_ENTRY_LIST:Ljava/util/List;

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->sUiMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)V
    .locals 1

    const-string v0, "battery_usage_breakdown"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mHandler:Landroid/os/Handler;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPreferenceCache:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mActivity:Lcom/android/settings/SettingsActivity;

    iput-object p4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getBatteryDiffEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mBatteryDiffData:Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->EMPTY_ENTRY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mSpinnerPosition:I

    if-nez p0, :cond_1

    iget-object p0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mAppEntries:Ljava/util/List;

    goto :goto_0

    :cond_1
    iget-object p0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mSystemEntries:Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method private isAnomalyBatteryDiffEntry(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mIsHighlightSlot:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAnomalyEntryKey:Ljava/lang/String;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static lambda$removeAndCacheAllUnusedPreferences$2(Ljava/util/Set;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V
    .locals 0

    iget-object p1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mKey:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$showSpinnerAndAppList$0()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->removeAndCacheAllUnusedPreferences()V

    return-void
.end method

.method private synthetic lambda$showSpinnerAndAppList$1()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->removeAndCacheAllUnusedPreferences()V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->addAllPreferences()V

    return-void
.end method

.method private logPreferenceClickedMetrics(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->isSystemEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6e9

    goto :goto_0

    :cond_0
    const/16 v0, 0x6e8

    :goto_0
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "none"

    :goto_1
    move-object v6, v1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :goto_2
    iget-wide v1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mPercentage:D

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v5, v1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mBatteryDiffData:Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    iget-wide v1, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mStartTimestamp:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v7, v1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v2, 0x758

    const/16 v4, 0x758

    move v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const-string v6, "slot_timestamp"

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->isAnomalyBatteryDiffEntry(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const-string v6, "anomaly_key"

    iget v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAnomalyKeyNumber:I

    const/16 v2, 0x758

    const/16 v4, 0x758

    move v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method private showCategoryTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f140624

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mBatteryUsageBreakdownTitleLastFullChargeText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPrefContext:Landroid/content/Context;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mBatteryUsageBreakdownTitleLastFullChargeText:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPrefContext:Landroid/content/Context;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mRootPreference:Landroidx/preference/PreferenceCategory;

    invoke-static {p2, p1}, Lcom/android/settings/Utils;->createAccessibleSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mRootPreference:Landroidx/preference/PreferenceCategory;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private showFooterPreference(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPrefContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const p1, 0x7f140631

    goto :goto_0

    :cond_0
    const p1, 0x7f140630

    :goto_0
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private showSpinnerAndAppList()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mBatteryDiffData:Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mSpinnerPreference:Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAppListPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addAllPreferences()V
    .locals 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mBatteryDiffData:Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->getBatteryDiffEntries()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAppListPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "BatteryUsageBreakdownController"

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getAppLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->loadLabelAndIcon()V

    iget-object v7, v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object v7, v8

    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    if-nez v7, :cond_2

    goto :goto_3

    :cond_2
    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAppListPreferenceGroup:Landroidx/preference/PreferenceGroup;

    iget-object v9, v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/fuelgauge/batteryusage/AnomalyAppItemPreference;

    const/4 v10, 0x1

    if-eqz v5, :cond_3

    move v11, v10

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPreferenceCache:Ljava/util/Map;

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/fuelgauge/batteryusage/AnomalyAppItemPreference;

    const/4 v11, 0x0

    :goto_2
    if-nez v5, :cond_4

    new-instance v5, Lcom/android/settings/fuelgauge/batteryusage/AnomalyAppItemPreference;

    iget-object v12, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPrefContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-direct {v5, v12, v13}, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v12, 0x7f0d0044

    invoke-virtual {v5, v12}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {v5, v9}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPreferenceCache:Ljava/util/Map;

    invoke-interface {v12, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v5, v7}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {v5, v10}, Landroidx/preference/Preference;->setSingleLineTitle(Z)V

    invoke-direct {p0, v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->isAnomalyBatteryDiffEntry(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v8, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAnomalyHintString:Ljava/lang/String;

    :cond_5
    iget-object v6, v5, Lcom/android/settings/fuelgauge/batteryusage/AnomalyAppItemPreference;->mAnomalyHintText:Ljava/lang/CharSequence;

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    iput-object v8, v5, Lcom/android/settings/fuelgauge/batteryusage/AnomalyAppItemPreference;->mAnomalyHintText:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_6
    iput-object v4, v5, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->mBatteryDiffEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->loadLabelAndIcon()V

    iget-boolean v6, v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mValidForRestriction:Z

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setSelectable(Z)V

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->setPreferencePercentage(Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->setPreferenceSummary(Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V

    if-nez v11, :cond_7

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAppListPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cannot find app resource for:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/BatterySettingsStorage$OptimizationModeEntity$$ExternalSyntheticOutline0;->m(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "addAllPreferences() is finished in %d/ms"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPrefContext:Landroid/content/Context;

    const-string v0, "battery_usage_breakdown"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mRootPreference:Landroidx/preference/PreferenceCategory;

    const-string v0, "battery_usage_spinner"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mSpinnerPreference:Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;

    const-string v0, "app_list"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAppListPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const-string v0, "battery_usage_footer"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/FooterPreference;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPrefContext:Landroid/content/Context;

    const v0, 0x7f140625

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mBatteryUsageBreakdownTitleLastFullChargeText:Ljava/lang/String;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 p1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPrefContext:Landroid/content/Context;

    const v2, 0x7f14062d

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPercentLessThanThresholdText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPrefContext:Landroid/content/Context;

    const v2, 0x7f14062e

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPercentLessThanThresholdContentDescription:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAppListPreferenceGroup:Landroidx/preference/PreferenceGroup;

    iput-boolean p1, v0, Landroidx/preference/PreferenceGroup;->mOrderingAsAdded:Z

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mSpinnerPreference:Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPrefContext:Landroid/content/Context;

    const v1, 0x7f140635

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPrefContext:Landroid/content/Context;

    const v2, 0x7f140636

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController$1;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;)V

    iput-object v0, p1, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;->mItems:[Ljava/lang/String;

    iput-object v1, p1, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

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

.method public handleBatteryUsageUpdated(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/Optional<",
            "Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mBatteryDiffData:Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mSlotInformation:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mIsHighlightSlot:Z

    if-eqz p6, :cond_5

    const/4 p1, 0x0

    invoke-virtual {p6, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;

    if-eqz p5, :cond_0

    iget-object p6, p5, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mPowerAnomalyEvent:Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;

    invoke-virtual {p6}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->getKey()Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyKey;

    move-result-object p6

    invoke-virtual {p6}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyKey;->getNumber()I

    move-result p6

    goto :goto_0

    :cond_0
    const/4 p6, -0x1

    :goto_0
    iput p6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAnomalyKeyNumber:I

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->getAnomalyEntryKey()Ljava/lang/String;

    move-result-object p6

    goto :goto_1

    :cond_1
    move-object p6, p1

    :goto_1
    iput-object p6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAnomalyEntryKey:Ljava/lang/String;

    if-eqz p5, :cond_2

    new-instance p6, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p6, v0}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p5, p1, p6}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->getInfo(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p6, 0x7f030139

    iget v0, p5, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mResourceIndex:I

    invoke-virtual {p5, p6, v0}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->getStringFromArrayResource(II)Ljava/lang/String;

    move-result-object p6

    goto :goto_2

    :cond_2
    move-object p6, p1

    :cond_3
    :goto_2
    iput-object p6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAnomalyHintString:Ljava/lang/String;

    if-eqz p5, :cond_4

    new-instance p6, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p6, v0}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p5, p1, p6}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->getInfo(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_4
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAnomalyHintPrefKey:Ljava/lang/String;

    :cond_5
    invoke-direct {p0, p2, p3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->showCategoryTitle(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->showSpinnerAndAppList()V

    invoke-direct {p0, p4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->showFooterPreference(Z)V

    return-void
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 8

    instance-of v0, p1, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;

    iget-object v2, p1, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->mBatteryDiffEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    invoke-direct {p0, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->logPreferenceClickedMetrics(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getAppLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "handleClick() label="

    const-string v4, " key="

    invoke-static {v3, v0, v4}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " package="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryUsageBreakdownController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->isAnomalyBatteryDiffEntry(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAnomalyHintPrefKey:Ljava/lang/String;

    move-object v6, v0

    goto :goto_0

    :cond_1
    move-object v6, v1

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->isAnomalyBatteryDiffEntry(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAnomalyHintString:Ljava/lang/String;

    move-object v7, v0

    goto :goto_1

    :cond_2
    move-object v7, v1

    :goto_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-interface {v1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v1

    iget-object p1, p1, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mSlotInformation:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v7}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/content/Context;ILcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
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

.method public isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPreferenceCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAppListPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    sget v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->sUiMode:I

    if-eq v1, v0, :cond_0

    sput v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->sUiMode:I

    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->clearCache()V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPreferenceCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    const-string p0, "BatteryUsageBreakdownController"

    const-string v0, "clear icon and label cache since uiMode is changed"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public removeAndCacheAllUnusedPreferences()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->getBatteryDiffEntries()Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAppListPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAppListPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPreferenceCache:Ljava/util/Map;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mAppListPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setPreferencePercentage(Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-wide v0, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mPercentage:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    iget-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPercentLessThanThresholdText:Ljava/lang/String;

    iput-object p2, p1, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    iput-object p2, p1, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->mProgressContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPercentLessThanThresholdContentDescription:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->mProgressContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    goto :goto_0

    :cond_0
    iget p0, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAdjustPercentageOffset:I

    int-to-double v2, p0

    add-double/2addr v0, v2

    const/4 p0, 0x1

    invoke-static {v0, v1, p0}, Lcom/android/settingslib/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->mProgressContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    :goto_0
    return-void
.end method

.method public setPreferenceSummary(Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->mPrefContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->isSystemEntry()Z

    move-result v0

    iget-wide v1, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    iget-wide v3, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    iget-wide v5, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundServiceUsageTimeInMs:J

    add-long/2addr v3, v5

    iget-wide v5, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mScreenOnTimeInMs:J

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v7, 0x0

    if-eqz v0, :cond_0

    add-long/2addr v1, v3

    cmp-long v0, v1, v7

    if-eqz v0, :cond_3

    const v0, 0x7f14063b

    const v3, 0x7f14062c

    invoke-static {p0, v1, v2, v0, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->buildBatteryUsageTimeInfo(Landroid/content/Context;JII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    cmp-long v0, v5, v7

    if-eqz v0, :cond_1

    const v1, 0x7f140633

    const v2, 0x7f140632

    invoke-static {p0, v5, v6, v1, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->buildBatteryUsageTimeInfo(Landroid/content/Context;JII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v0, :cond_2

    cmp-long v0, v3, v7

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    cmp-long v0, v3, v7

    if-eqz v0, :cond_3

    const v0, 0x7f140623

    const v1, 0x7f14062b

    invoke-static {p0, v3, v4, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->buildBatteryUsageTimeInfo(Landroid/content/Context;JII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

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
