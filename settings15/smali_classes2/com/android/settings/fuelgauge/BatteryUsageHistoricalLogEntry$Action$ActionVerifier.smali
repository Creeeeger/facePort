.class public final Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action$ActionVerifier;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# static fields
.field public static final INSTANCE:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action$ActionVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action$ActionVerifier;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action$ActionVerifier;->INSTANCE:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action$ActionVerifier;

    return-void
.end method


# virtual methods
.method public final isInRange(I)Z
    .locals 0

    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;->forNumber(I)Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
