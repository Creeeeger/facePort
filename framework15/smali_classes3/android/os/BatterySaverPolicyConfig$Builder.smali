.class public final Landroid/os/BatterySaverPolicyConfig$Builder;
.super Ljava/lang/Object;
.source "BatterySaverPolicyConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatterySaverPolicyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdjustBrightnessFactor:F

.field private blacklist mAdvertiseIsEnabled:Z

.field private blacklist mDeferFullBackup:Z

.field private blacklist mDeferKeyValueBackup:Z

.field private final blacklist mDeviceSpecificSettings:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDisableAnimation:Z

.field private blacklist mDisableAod:Z

.field private blacklist mDisableLaunchBoost:Z

.field private blacklist mDisableOptionalSensors:Z

.field private blacklist mDisableVibration:Z

.field private blacklist mEnableAdjustBrightness:Z

.field private blacklist mEnableDataSaver:Z

.field private blacklist mEnableFirewall:Z

.field private blacklist mEnableNightMode:Z

.field private blacklist mEnableQuickDoze:Z

.field private blacklist mForceAllAppsStandby:Z

.field private blacklist mForceBackgroundCheck:Z

.field private blacklist mLocationMode:I

.field private blacklist mSoundTriggerMode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdjustBrightnessFactor(Landroid/os/BatterySaverPolicyConfig$Builder;)F
    .locals 0

    iget p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mAdjustBrightnessFactor:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAdvertiseIsEnabled(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mAdvertiseIsEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeferFullBackup(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeferFullBackup:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeferKeyValueBackup(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeferKeyValueBackup:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceSpecificSettings(Landroid/os/BatterySaverPolicyConfig$Builder;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeviceSpecificSettings:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisableAnimation(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableAnimation:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisableAod(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableAod:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisableLaunchBoost(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableLaunchBoost:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisableOptionalSensors(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableOptionalSensors:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisableVibration(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableVibration:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnableAdjustBrightness(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableAdjustBrightness:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnableDataSaver(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableDataSaver:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnableFirewall(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableFirewall:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnableNightMode(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableNightMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnableQuickDoze(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableQuickDoze:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmForceAllAppsStandby(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mForceAllAppsStandby:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmForceBackgroundCheck(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mForceBackgroundCheck:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocationMode(Landroid/os/BatterySaverPolicyConfig$Builder;)I
    .locals 0

    iget p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mLocationMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSoundTriggerMode(Landroid/os/BatterySaverPolicyConfig$Builder;)I
    .locals 0

    iget p0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mSoundTriggerMode:I

    return p0
.end method

.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mAdjustBrightnessFactor:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mAdvertiseIsEnabled:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeferFullBackup:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeferKeyValueBackup:Z

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeviceSpecificSettings:Landroid/util/ArrayMap;

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableAnimation:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableAod:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableLaunchBoost:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableOptionalSensors:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableVibration:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableAdjustBrightness:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableDataSaver:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableFirewall:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableNightMode:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableQuickDoze:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mForceAllAppsStandby:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mForceBackgroundCheck:Z

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mLocationMode:I

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mSoundTriggerMode:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/BatterySaverPolicyConfig;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mAdjustBrightnessFactor:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mAdvertiseIsEnabled:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeferFullBackup:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeferKeyValueBackup:Z

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeviceSpecificSettings:Landroid/util/ArrayMap;

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableAnimation:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableAod:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableLaunchBoost:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableOptionalSensors:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableVibration:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableAdjustBrightness:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableDataSaver:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableFirewall:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableNightMode:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableQuickDoze:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mForceAllAppsStandby:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mForceBackgroundCheck:Z

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mLocationMode:I

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mSoundTriggerMode:I

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getAdjustBrightnessFactor()F

    move-result v0

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mAdjustBrightnessFactor:F

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getAdvertiseIsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mAdvertiseIsEnabled:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getDeferFullBackup()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeferFullBackup:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getDeferKeyValueBackup()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeferKeyValueBackup:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getDeviceSpecificSettings()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeviceSpecificSettings:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getDeviceSpecificSettings()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getDisableAnimation()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableAnimation:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getDisableAod()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableAod:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getDisableLaunchBoost()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableLaunchBoost:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getDisableOptionalSensors()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableOptionalSensors:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getDisableVibration()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableVibration:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getEnableAdjustBrightness()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableAdjustBrightness:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getEnableDataSaver()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableDataSaver:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getEnableFirewall()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableFirewall:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getEnableNightMode()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableNightMode:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getEnableQuickDoze()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableQuickDoze:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getForceAllAppsStandby()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mForceAllAppsStandby:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getForceBackgroundCheck()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mForceBackgroundCheck:Z

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getLocationMode()I

    move-result v0

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mLocationMode:I

    invoke-virtual {p1}, Landroid/os/BatterySaverPolicyConfig;->getSoundTriggerMode()I

    move-result v0

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mSoundTriggerMode:I

    return-void
.end method


# virtual methods
.method public whitelist addDeviceSpecificSetting(Ljava/lang/String;Ljava/lang/String;)Landroid/os/BatterySaverPolicyConfig$Builder;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeviceSpecificSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist build()Landroid/os/BatterySaverPolicyConfig;
    .locals 2

    new-instance v0, Landroid/os/BatterySaverPolicyConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/BatterySaverPolicyConfig;-><init>(Landroid/os/BatterySaverPolicyConfig$Builder;Landroid/os/BatterySaverPolicyConfig-IA;)V

    return-object v0
.end method

.method public whitelist setAdjustBrightnessFactor(F)Landroid/os/BatterySaverPolicyConfig$Builder;
    .locals 0

    iput p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mAdjustBrightnessFactor:F

    return-object p0
.end method

.method public whitelist setAdvertiseIsEnabled(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mAdvertiseIsEnabled:Z

    return-object p0
.end method

.method public whitelist setDeferFullBackup(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeferFullBackup:Z

    return-object p0
.end method

.method public whitelist setDeferKeyValueBackup(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeferKeyValueBackup:Z

    return-object p0
.end method

.method public whitelist setDisableAnimation(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableAnimation:Z

    return-object p0
.end method

.method public whitelist setDisableAod(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableAod:Z

    return-object p0
.end method

.method public whitelist setDisableLaunchBoost(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableLaunchBoost:Z

    return-object p0
.end method

.method public whitelist setDisableOptionalSensors(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableOptionalSensors:Z

    return-object p0
.end method

.method public whitelist setDisableSoundTrigger(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mSoundTriggerMode:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mSoundTriggerMode:I

    :goto_0
    return-object p0
.end method

.method public whitelist setDisableVibration(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableVibration:Z

    return-object p0
.end method

.method public whitelist setEnableAdjustBrightness(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableAdjustBrightness:Z

    return-object p0
.end method

.method public whitelist setEnableDataSaver(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableDataSaver:Z

    return-object p0
.end method

.method public whitelist setEnableFirewall(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableFirewall:Z

    return-object p0
.end method

.method public whitelist setEnableNightMode(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableNightMode:Z

    return-object p0
.end method

.method public whitelist setEnableQuickDoze(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableQuickDoze:Z

    return-object p0
.end method

.method public whitelist setForceAllAppsStandby(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mForceAllAppsStandby:Z

    return-object p0
.end method

.method public whitelist setForceBackgroundCheck(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mForceBackgroundCheck:Z

    return-object p0
.end method

.method public whitelist setLocationMode(I)Landroid/os/BatterySaverPolicyConfig$Builder;
    .locals 0

    iput p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mLocationMode:I

    return-object p0
.end method

.method public whitelist setSoundTriggerMode(I)Landroid/os/BatterySaverPolicyConfig$Builder;
    .locals 0

    iput p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mSoundTriggerMode:I

    return-object p0
.end method
