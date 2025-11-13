.class public final Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;
.super Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field public final mRestrictAppTip:Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;->mRestrictAppTip:Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;->mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    return-void
.end method


# virtual methods
.method public final handlePositiveAction(I)V
    .locals 12

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;->mRestrictAppTip:Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->mRestrictAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    iget-object v10, v3, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget v5, v3, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v7, v6, v10}, Lcom/android/settings/fuelgauge/BatteryUtils;->setForceAppStandby(IIILjava/lang/String;)V

    iget-object v4, v3, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->anomalyTypes:Landroid/util/ArraySet;

    invoke-static {v4}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    iget-object v11, p0, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    if-eqz v4, :cond_0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x552

    move-object v4, v11

    move v7, p1

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    goto :goto_2

    :cond_0
    iget-object v3, v3, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->anomalyTypes:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v5, 0x0

    const/16 v6, 0x552

    move-object v4, v11

    move v7, p1

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;->mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->updateAnomalies(Ljava/util/List;)V

    return-void
.end method
