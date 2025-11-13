.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;

    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->newBuilder()Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->getStartTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;

    invoke-static {v2, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->-$$Nest$msetTimestamp(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;J)V

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;->START:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;

    invoke-static {v1, v0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->-$$Nest$msetType(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;

    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->newBuilder()Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->getEndTime()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;

    invoke-static {p1, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->-$$Nest$msetTimestamp(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;J)V

    sget-object p1, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;->END:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;

    invoke-static {v1, p1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->-$$Nest$msetType(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;)V

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;

    filled-new-array {p0, p1}, [Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;

    move-result-object p0

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    return-object p1

    :pswitch_1
    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->getTimestamp()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Ljava/lang/String;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :pswitch_4
    check-cast p1, Ljava/lang/Long;

    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    return-object p0

    :pswitch_5
    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->getStartTime()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getTimestamp()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
