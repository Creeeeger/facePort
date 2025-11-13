.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:[J


# direct methods
.method public synthetic constructor <init>(J[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda2;->f$0:J

    iput-object p3, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda2;->f$1:[J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda2;->f$0:J

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda2;->f$1:[J

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x0

    aget-wide v5, p0, v4

    cmp-long v2, v2, v5

    if-lez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, p0, v4

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    aget-wide v3, p0, v2

    cmp-long v0, v0, v3

    if-gez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    aput-wide v0, p0, v2

    :cond_1
    return-void
.end method
