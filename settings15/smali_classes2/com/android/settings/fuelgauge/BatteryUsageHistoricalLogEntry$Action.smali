.class public final enum Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

.field public static final enum EXECUTE_JOB:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

.field public static final enum FETCH_USAGE_DATA:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

.field public static final enum INSERT_USAGE_DATA:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

.field public static final enum RECHECK_JOB:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

.field public static final enum SCHEDULE_JOB:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

.field public static final enum TIMEZONE_UPDATED:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

.field public static final enum TIME_UPDATED:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

.field public static final enum UNKNOWN:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;->UNKNOWN:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    new-instance v1, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    const-string v2, "SCHEDULE_JOB"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;->SCHEDULE_JOB:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    new-instance v2, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    const-string v3, "EXECUTE_JOB"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;->EXECUTE_JOB:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    new-instance v3, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    const-string v4, "RECHECK_JOB"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;->RECHECK_JOB:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    new-instance v4, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    const-string v5, "FETCH_USAGE_DATA"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;->FETCH_USAGE_DATA:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    new-instance v5, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    const-string v6, "INSERT_USAGE_DATA"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;->INSERT_USAGE_DATA:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    new-instance v6, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    const-string v7, "TIME_UPDATED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;->TIME_UPDATED:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    new-instance v7, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    const-string v8, "TIMEZONE_UPDATED"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;->TIMEZONE_UPDATED:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    filled-new-array/range {v0 .. v7}, [Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;->$VALUES:[Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;->TIMEZONE_UPDATED:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;->TIME_UPDATED:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;->INSERT_USAGE_DATA:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;->FETCH_USAGE_DATA:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;->RECHECK_JOB:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;->EXECUTE_JOB:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;->SCHEDULE_JOB:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;->UNKNOWN:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;
    .locals 1

    const-class v0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;
    .locals 1

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;->$VALUES:[Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    invoke-virtual {v0}, [Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;->value:I

    return p0
.end method
