.class public final Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;
.super Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

.field public final mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field public final mRestrictAppTip:Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;


# direct methods
.method public constructor <init>(Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;->mRestrictAppTip:Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;->mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    return-void
.end method


# virtual methods
.method public final handlePositiveAction(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;->mContext:Landroid/content/Context;

    const/16 v2, 0x551

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;->mRestrictAppTip:Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mRestrictAppList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-static {v0, p1}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->startRestrictedAppDetails(Lcom/android/settings/core/InstrumentedPreferenceFragment;Ljava/util/List;)V

    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;Ljava/util/List;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
