.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/database/Cursor;

    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->newBuilder()Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;

    move-result-object p0

    const-string v0, "timestamp"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-wide/16 v1, 0x0

    if-ltz v0, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    invoke-static {v0, v3, v4}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->-$$Nest$msetTimestamp(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;J)V

    const-string v0, "appUsageEventType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x0

    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;->forNumber(I)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v4, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    invoke-static {v4, v0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->-$$Nest$msetType(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;)V

    const-string v0, "packageName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v4, ""

    if-ltz v0, :cond_2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v4

    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v5, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    invoke-static {v5, v0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->-$$Nest$msetPackageName(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;Ljava/lang/String;)V

    const-string v0, "instanceId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    invoke-static {v0, v3}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->-$$Nest$msetInstanceId(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;I)V

    const-string v0, "taskRootPackageName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    invoke-static {v0, v4}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->-$$Nest$msetTaskRootPackageName(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    goto :goto_3

    :cond_5
    move-wide v3, v1

    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    invoke-static {v0, v3, v4}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->-$$Nest$msetUserId(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;J)V

    const-string v0, "uid"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p1, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    invoke-static {p1, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->-$$Nest$msetUid(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;J)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/database/Cursor;

    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->getDefaultInstance()Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;

    move-result-object p0

    const-string v0, "batteryUsageSlot"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/settings/fuelgauge/BatteryUtils;->parseProtoFromString(Ljava/lang/String;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;

    :goto_4
    return-object p0

    :pswitch_2
    check-cast p1, Landroid/database/Cursor;

    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->newBuilder()Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent$Builder;

    move-result-object p0

    const-string v0, "timestamp"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_5

    :cond_8
    const-wide/16 v0, 0x0

    :goto_5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;

    invoke-static {v2, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->-$$Nest$msetTimestamp(Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;J)V

    const-string v0, "batteryEventType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_6

    :cond_9
    move v0, v1

    :goto_6
    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;->forNumber(I)Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;

    invoke-static {v2, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->-$$Nest$msetType(Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;)V

    const-string v0, "batteryLevel"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p1, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;

    invoke-static {p1, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->-$$Nest$msetBatteryLevel(Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;I)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;->getNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Landroid/database/Cursor;

    new-instance p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;-><init>(Landroid/database/Cursor;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
