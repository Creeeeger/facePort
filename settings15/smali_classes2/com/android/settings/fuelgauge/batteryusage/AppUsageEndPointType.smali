.class public final enum Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;

.field public static final enum END:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;

.field public static final enum START:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;

    const-string v1, "START"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;->START:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;

    const-string v2, "END"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;->END:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;

    filled-new-array {v0, v1}, [Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;->$VALUES:[Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;
    .locals 1

    const-class v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;
    .locals 1

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;->$VALUES:[Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;

    invoke-virtual {v0}, [Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;->value:I

    return p0
.end method
