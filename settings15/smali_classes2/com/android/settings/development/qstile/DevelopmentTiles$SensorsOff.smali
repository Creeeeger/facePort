.class public Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;
.super Lcom/android/settings/development/qstile/DevelopmentTiles;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mIsEnabled:Z

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

.field public mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->mIsEnabled:Z

    return p0
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->mContext:Landroid/content/Context;

    const-string v1, "sensor_privacy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorPrivacyManager;

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v0}, Landroid/hardware/SensorPrivacyManager;->isAllSensorPrivacyEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->mIsEnabled:Z

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setIsEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x63e

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    iput-boolean p1, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->mIsEnabled:Z

    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p0, p1}, Landroid/hardware/SensorPrivacyManager;->setAllSensorPrivacy(Z)V

    return-void
.end method
