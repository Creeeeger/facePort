.class public final Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final APP_LABEL_FIELD_NUMBER:I = 0x7

.field public static final BACKGROUND_USAGE_CONSUME_POWER_FIELD_NUMBER:I = 0x12

.field public static final BACKGROUND_USAGE_TIME_IN_MS_FIELD_NUMBER:I = 0xf

.field public static final BOOT_TIMESTAMP_FIELD_NUMBER:I = 0x3

.field public static final CACHED_USAGE_CONSUME_POWER_FIELD_NUMBER:I = 0x13

.field public static final CONSUME_POWER_FIELD_NUMBER:I = 0xb

.field private static final DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

.field public static final DEVICE_BATTERY_STATE_FIELD_NUMBER:I = 0x1

.field public static final DRAIN_TYPE_FIELD_NUMBER:I = 0xd

.field public static final FOREGROUND_SERVICE_USAGE_CONSUME_POWER_FIELD_NUMBER:I = 0x11

.field public static final FOREGROUND_SERVICE_USAGE_TIME_IN_MS_FIELD_NUMBER:I = 0x14

.field public static final FOREGROUND_USAGE_CONSUME_POWER_FIELD_NUMBER:I = 0x10

.field public static final FOREGROUND_USAGE_TIME_IN_MS_FIELD_NUMBER:I = 0xe

.field public static final IS_HIDDEN_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field

.field public static final PERCENT_OF_TOTAL_FIELD_NUMBER:I = 0xc

.field public static final TOTAL_POWER_FIELD_NUMBER:I = 0xa

.field public static final ZONE_ID_FIELD_NUMBER:I = 0x4


# instance fields
.field private appLabel_:Ljava/lang/String;

.field private backgroundUsageConsumePower_:D

.field private backgroundUsageTimeInMs_:J

.field private bitField0_:I

.field private bootTimestamp_:J

.field private cachedUsageConsumePower_:D

.field private consumePower_:D

.field private deviceBatteryState_:Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;

.field private drainType_:I

.field private foregroundServiceUsageConsumePower_:D

.field private foregroundServiceUsageTimeInMs_:J

.field private foregroundUsageConsumePower_:D

.field private foregroundUsageTimeInMs_:J

.field private isHidden_:Z

.field private percentOfTotal_:D

.field private totalPower_:D

.field private zoneId_:Ljava/lang/String;


# direct methods
.method public static -$$Nest$msetAppLabel(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->appLabel_:Ljava/lang/String;

    return-void
.end method

.method public static -$$Nest$msetBackgroundUsageConsumePower(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;D)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->backgroundUsageConsumePower_:D

    return-void
.end method

.method public static -$$Nest$msetBackgroundUsageTimeInMs(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;J)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->backgroundUsageTimeInMs_:J

    return-void
.end method

.method public static -$$Nest$msetBootTimestamp(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;)V
    .locals 2

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bootTimestamp_:J

    return-void
.end method

.method public static -$$Nest$msetCachedUsageConsumePower(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;D)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->cachedUsageConsumePower_:D

    return-void
.end method

.method public static -$$Nest$msetConsumePower(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;D)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->consumePower_:D

    return-void
.end method

.method public static -$$Nest$msetDeviceBatteryState(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->deviceBatteryState_:Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;

    iget p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    return-void
.end method

.method public static -$$Nest$msetDrainType(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->drainType_:I

    return-void
.end method

.method public static -$$Nest$msetForegroundServiceUsageConsumePower(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;D)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->foregroundServiceUsageConsumePower_:D

    return-void
.end method

.method public static -$$Nest$msetForegroundServiceUsageTimeInMs(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;J)V
    .locals 2

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->foregroundServiceUsageTimeInMs_:J

    return-void
.end method

.method public static -$$Nest$msetForegroundUsageConsumePower(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;D)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->foregroundUsageConsumePower_:D

    return-void
.end method

.method public static -$$Nest$msetForegroundUsageTimeInMs(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;J)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->foregroundUsageTimeInMs_:J

    return-void
.end method

.method public static -$$Nest$msetIsHidden(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;Z)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->isHidden_:Z

    return-void
.end method

.method public static -$$Nest$msetPercentOfTotal(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;D)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->percentOfTotal_:D

    return-void
.end method

.method public static -$$Nest$msetTotalPower(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;D)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->totalPower_:D

    return-void
.end method

.method public static -$$Nest$msetZoneId(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bitField0_:I

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->zoneId_:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    const-class v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->zoneId_:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->appLabel_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;
    .locals 1

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;
    .locals 1

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Lcom/google/protobuf/GeneratedMessageLite;)Ljava/lang/Object;
    .locals 18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    invoke-direct {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;

    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    invoke-direct {v0, v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;-><init>()V

    return-object v0

    :pswitch_4
    const-string v1, "bitField0_"

    const-string v2, "deviceBatteryState_"

    const-string v3, "isHidden_"

    const-string v4, "bootTimestamp_"

    const-string v5, "zoneId_"

    const-string v6, "appLabel_"

    const-string v7, "totalPower_"

    const-string v8, "consumePower_"

    const-string v9, "percentOfTotal_"

    const-string v10, "drainType_"

    const-string v11, "foregroundUsageTimeInMs_"

    const-string v12, "backgroundUsageTimeInMs_"

    const-string v13, "foregroundUsageConsumePower_"

    const-string v14, "foregroundServiceUsageConsumePower_"

    const-string v15, "backgroundUsageConsumePower_"

    const-string v16, "cachedUsageConsumePower_"

    const-string v17, "foregroundServiceUsageTimeInMs_"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\u0001\u0010\u0000\u0001\u0001\u0014\u0010\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1007\u0001\u0003\u1002\u0002\u0004\u1008\u0003\u0007\u1008\u0004\n\u1000\u0005\u000b\u1000\u0006\u000c\u1000\u0007\r\u1004\u0008\u000e\u1002\t\u000f\u1002\n\u0010\u1000\u000b\u0011\u1000\u000c\u0012\u1000\r\u0013\u1000\u000e\u0014\u1002\u000f"

    sget-object v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    new-instance v3, Lcom/google/protobuf/RawMessageInfo;

    invoke-direct {v3, v2, v1, v0}, Lcom/google/protobuf/RawMessageInfo;-><init>(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :pswitch_5
    const/4 v0, 0x0

    return-object v0

    :pswitch_6
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

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

.method public final getAppLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->appLabel_:Ljava/lang/String;

    return-object p0
.end method

.method public final getBackgroundUsageConsumePower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->backgroundUsageConsumePower_:D

    return-wide v0
.end method

.method public final getBackgroundUsageTimeInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->backgroundUsageTimeInMs_:J

    return-wide v0
.end method

.method public final getBootTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->bootTimestamp_:J

    return-wide v0
.end method

.method public final getCachedUsageConsumePower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->cachedUsageConsumePower_:D

    return-wide v0
.end method

.method public final getConsumePower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->consumePower_:D

    return-wide v0
.end method

.method public final getDeviceBatteryState()Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->deviceBatteryState_:Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;->getDefaultInstance()Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final getDrainType()I
    .locals 0

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->drainType_:I

    return p0
.end method

.method public final getForegroundServiceUsageConsumePower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->foregroundServiceUsageConsumePower_:D

    return-wide v0
.end method

.method public final getForegroundServiceUsageTimeInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->foregroundServiceUsageTimeInMs_:J

    return-wide v0
.end method

.method public final getForegroundUsageConsumePower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->foregroundUsageConsumePower_:D

    return-wide v0
.end method

.method public final getForegroundUsageTimeInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->foregroundUsageTimeInMs_:J

    return-wide v0
.end method

.method public final getIsHidden()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->isHidden_:Z

    return p0
.end method

.method public final getPercentOfTotal()D
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->percentOfTotal_:D

    return-wide v0
.end method

.method public final getTotalPower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->totalPower_:D

    return-wide v0
.end method

.method public final getZoneId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->zoneId_:Ljava/lang/String;

    return-object p0
.end method
