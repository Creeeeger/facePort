.class public final Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final APP_USAGE_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;

.field public static final END_BATTERY_LEVEL_FIELD_NUMBER:I = 0x4

.field public static final END_TIMESTAMP_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field

.field public static final SCREEN_ON_TIME_FIELD_NUMBER:I = 0x5

.field public static final START_BATTERY_LEVEL_FIELD_NUMBER:I = 0x3

.field public static final START_TIMESTAMP_FIELD_NUMBER:I = 0x1

.field public static final SYSTEM_USAGE_FIELD_NUMBER:I = 0x7


# instance fields
.field private appUsage_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private endBatteryLevel_:I

.field private endTimestamp_:J

.field private screenOnTime_:J

.field private startBatteryLevel_:I

.field private startTimestamp_:J

.field private systemUsage_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;

    const-class v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    sget-object v0, Lcom/google/protobuf/ProtobufArrayList;->EMPTY_LIST:Lcom/google/protobuf/ProtobufArrayList;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->appUsage_:Lcom/google/protobuf/Internal$ProtobufList;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->systemUsage_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;
    .locals 1

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Lcom/google/protobuf/GeneratedMessageLite;)Ljava/lang/Object;
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-object p0

    :pswitch_1
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot$Builder;

    sget-object p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;-><init>()V

    return-object p0

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "startTimestamp_"

    const-string v2, "endTimestamp_"

    const-string v3, "startBatteryLevel_"

    const-string v4, "endBatteryLevel_"

    const-string v5, "screenOnTime_"

    const-string v6, "appUsage_"

    const-class v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    const-string v8, "systemUsage_"

    const-class v9, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0002\u0000\u0001\u1002\u0000\u0002\u1002\u0001\u0003\u1004\u0002\u0004\u1004\u0003\u0005\u1002\u0004\u0006\u001b\u0007\u001b"

    sget-object p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;

    new-instance v0, Lcom/google/protobuf/RawMessageInfo;

    invoke-direct {v0, p2, p1, p0}, Lcom/google/protobuf/RawMessageInfo;-><init>(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :pswitch_5
    const/4 p0, 0x0

    return-object p0

    :pswitch_6
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

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

.method public final getAppUsageList()Lcom/google/protobuf/Internal$ProtobufList;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->appUsage_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public final getEndBatteryLevel()I
    .locals 0

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->endBatteryLevel_:I

    return p0
.end method

.method public final getEndTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->endTimestamp_:J

    return-wide v0
.end method

.method public final getScreenOnTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->screenOnTime_:J

    return-wide v0
.end method

.method public final getStartBatteryLevel()I
    .locals 0

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->startBatteryLevel_:I

    return p0
.end method

.method public final getStartTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->startTimestamp_:J

    return-wide v0
.end method

.method public final getSystemUsageList()Lcom/google/protobuf/Internal$ProtobufList;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageSlot;->systemUsage_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method
