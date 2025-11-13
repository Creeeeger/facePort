.class public final enum Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

.field public static final enum APPLY:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

.field public static final enum BACKUP:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

.field public static final enum EXPIRATION_RESET:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

.field public static final enum EXTERNAL_UPDATE:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

.field public static final enum FORCE_RESET:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

.field public static final enum LEAVE:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

.field public static final enum RESET:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

.field public static final enum RESTORE:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

.field public static final enum UNKNOWN:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->UNKNOWN:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    new-instance v1, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    const-string v2, "LEAVE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->LEAVE:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    new-instance v2, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    const-string v3, "APPLY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->APPLY:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    new-instance v3, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    const-string v4, "RESET"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->RESET:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    new-instance v4, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    const-string v5, "RESTORE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->RESTORE:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    new-instance v5, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    const-string v6, "BACKUP"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->BACKUP:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    new-instance v6, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    const-string v7, "FORCE_RESET"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->FORCE_RESET:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    new-instance v7, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    const-string v8, "EXTERNAL_UPDATE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->EXTERNAL_UPDATE:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    new-instance v8, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    const-string v9, "EXPIRATION_RESET"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->EXPIRATION_RESET:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    filled-new-array/range {v0 .. v8}, [Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->$VALUES:[Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;
    .locals 1

    const-class v0, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;
    .locals 1

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->$VALUES:[Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    invoke-virtual {v0}, [Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->value:I

    return p0
.end method
