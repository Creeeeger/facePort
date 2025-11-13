.class public abstract Lcom/samsung/android/settings/batterywidget/BatteryManagerUtil;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static convertDeviceTypeIfNeeded(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "BatteryWidget/BatteryManagerUtil"

    const-string v0, "convertDeviceTypeIfNeeded batteryInfo is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/samsung/android/settings/batterywidget/DefaultTypeConverter;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/settings/batterywidget/BudsTypeConverter;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    invoke-interface {v0, p0}, Lcom/samsung/android/settings/batterywidget/DeviceTypeConverter;->convertDeviceType(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object p0

    return-object p0
.end method
