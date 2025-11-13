.class public final Lcom/android/settings/fuelgauge/batterytip/actions/UnrestrictAppAction;
.super Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field public final mUnRestrictAppTip:Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/actions/UnrestrictAppAction;->mUnRestrictAppTip:Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/UnrestrictAppAction;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    return-void
.end method


# virtual methods
.method public final handlePositiveAction(I)V
    .locals 12

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/UnrestrictAppAction;->mUnRestrictAppTip:Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;->mAppInfo:Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/UnrestrictAppAction;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget v2, v0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    iget-object v3, v0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x9

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->setForceAppStandby(IIILjava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    iget-object v11, v0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v8, 0x553

    const/4 v10, 0x0

    move v9, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    return-void
.end method
