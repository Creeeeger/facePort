.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryUsageSlotEntity;

    iget-object p0, p1, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryUsageSlotEntity;->batteryUsageSlot:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->getDefaultInstance()Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->parseProtoFromString(Ljava/lang/String;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventEntity;

    return-object p1

    :pswitch_1
    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;

    return-object p1

    :pswitch_2
    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
