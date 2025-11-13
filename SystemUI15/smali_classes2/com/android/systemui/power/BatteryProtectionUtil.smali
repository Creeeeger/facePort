.class public final Lcom/android/systemui/power/BatteryProtectionUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/power/BatteryProtectionUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/power/BatteryProtectionUtil;

    invoke-direct {v0}, Lcom/android/systemui/power/BatteryProtectionUtil;-><init>()V

    sput-object v0, Lcom/android/systemui/power/BatteryProtectionUtil;->INSTANCE:Lcom/android/systemui/power/BatteryProtectionUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getProtectBatteryValue(Landroid/content/Context;)I
    .locals 3

    sget-object v0, Lcom/android/systemui/power/BatteryProtectionUtil;->INSTANCE:Lcom/android/systemui/power/BatteryProtectionUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_protection_default_value"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "protect_battery"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static final isMaximumProtectionEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/android/systemui/power/BatteryProtectionUtil;->getProtectBatteryValue(Landroid/content/Context;)I

    move-result p0

    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->PROTECT_BATTERY_CUTOFF:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static final isProtectedFullyByMaximum(I)Z
    .locals 1

    const/high16 v0, 0x1000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isSleepChargingOn(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lcom/android/systemui/power/BatteryProtectionUtil;->INSTANCE:Lcom/android/systemui/power/BatteryProtectionUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_sleep_charging"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static final setSleepChargingStatus(ILandroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_sleep_charging"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/systemui/power/BatteryProtectionUtil;->INSTANCE:Lcom/android/systemui/power/BatteryProtectionUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "sleep_charging_finish_time"

    const-string v0, ""

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
