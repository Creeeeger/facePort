.class public final Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType$AppUsageEndPointTypeVerifier;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# static fields
.field public static final INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType$AppUsageEndPointTypeVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType$AppUsageEndPointTypeVerifier;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType$AppUsageEndPointTypeVerifier;->INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType$AppUsageEndPointTypeVerifier;

    return-void
.end method


# virtual methods
.method public final isInRange(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;->END:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;->START:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
