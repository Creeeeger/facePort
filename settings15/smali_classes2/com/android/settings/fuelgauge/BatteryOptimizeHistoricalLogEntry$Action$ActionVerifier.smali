.class public final Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action$ActionVerifier;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# static fields
.field public static final INSTANCE:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action$ActionVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action$ActionVerifier;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action$ActionVerifier;->INSTANCE:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action$ActionVerifier;

    return-void
.end method


# virtual methods
.method public final isInRange(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->EXPIRATION_RESET:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    goto :goto_0

    :pswitch_1
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->EXTERNAL_UPDATE:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    goto :goto_0

    :pswitch_2
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->FORCE_RESET:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    goto :goto_0

    :pswitch_3
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->BACKUP:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    goto :goto_0

    :pswitch_4
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->RESTORE:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    goto :goto_0

    :pswitch_5
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->RESET:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    goto :goto_0

    :pswitch_6
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->APPLY:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    goto :goto_0

    :pswitch_7
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->LEAVE:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    goto :goto_0

    :pswitch_8
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->UNKNOWN:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    :goto_0
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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
