.class public Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoCapacityPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BatteryInfoCapacityPreferenceController"


# instance fields
.field public final BATTERY_CAPACITY_VALUE_TYPE_RATED:I

.field public final BATTERY_CAPACITY_VALUE_TYPE_TYPICAL:I

.field public final BATTERY_CAPACITY_VALUE_UNKNOWN:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoCapacityPreferenceController;->BATTERY_CAPACITY_VALUE_UNKNOWN:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoCapacityPreferenceController;->BATTERY_CAPACITY_VALUE_TYPE_RATED:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoCapacityPreferenceController;->BATTERY_CAPACITY_VALUE_TYPE_TYPICAL:I

    return-void
.end method

.method private getBatteryCapacitySummary()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoCapacityPreferenceController;->isTypicalType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoCapacityPreferenceController;->getBatteryCapacityByType(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f140c82

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoCapacityPreferenceController;->getBatteryCapacityByType(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f140c81

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoCapacityPreferenceController;->supportBatteryCapacity()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
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

.method public getBatteryCapacityByType(I)I
    .locals 1

    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getBatteryTypicalCapacity()D

    move-result-wide p0

    :goto_0
    double-to-int p0, p0

    return p0

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide p0

    goto :goto_0
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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoCapacityPreferenceController;->getBatteryCapacitySummary()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
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

.method public isTypicalType()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoCapacityPreferenceController;->getBatteryCapacityByType(I)I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "BatteryInfoCapacityPreferenceController"

    const-string/jumbo v0, "powerProfile.getBatteryTypicalCapacity() == 0"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
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

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public supportBatteryCapacity()Z
    .locals 2

    sget p0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_BATTERY_CAPACITY:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_ELECTRIC_RATED_VALUE"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
