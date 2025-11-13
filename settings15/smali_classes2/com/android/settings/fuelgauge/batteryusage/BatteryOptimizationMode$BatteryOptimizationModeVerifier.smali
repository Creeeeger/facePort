.class public final Lcom/android/settings/fuelgauge/batteryusage/BatteryOptimizationMode$BatteryOptimizationModeVerifier;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# static fields
.field public static final INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/BatteryOptimizationMode$BatteryOptimizationModeVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryOptimizationMode$BatteryOptimizationModeVerifier;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryOptimizationMode$BatteryOptimizationModeVerifier;->INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/BatteryOptimizationMode$BatteryOptimizationModeVerifier;

    return-void
.end method


# virtual methods
.method public final isInRange(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, p0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryOptimizationMode;->MODE_OPTIMIZED:Lcom/android/settings/fuelgauge/batteryusage/BatteryOptimizationMode;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryOptimizationMode;->MODE_UNRESTRICTED:Lcom/android/settings/fuelgauge/batteryusage/BatteryOptimizationMode;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryOptimizationMode;->MODE_RESTRICTED:Lcom/android/settings/fuelgauge/batteryusage/BatteryOptimizationMode;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryOptimizationMode;->MODE_UNKNOWN:Lcom/android/settings/fuelgauge/batteryusage/BatteryOptimizationMode;

    :goto_0
    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
