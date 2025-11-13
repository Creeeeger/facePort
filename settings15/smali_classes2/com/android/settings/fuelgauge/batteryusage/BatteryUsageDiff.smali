.class public final Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final APP_OPTIMIZATION_MODE_FIELD_NUMBER:I = 0x12

.field public static final BACKGROUND_USAGE_CONSUME_POWER_FIELD_NUMBER:I = 0xb

.field public static final BACKGROUND_USAGE_TIME_FIELD_NUMBER:I = 0xf

.field public static final CACHED_USAGE_CONSUME_POWER_FIELD_NUMBER:I = 0xd

.field public static final COMPONENT_ID_FIELD_NUMBER:I = 0x7

.field public static final CONSUMER_TYPE_FIELD_NUMBER:I = 0x8

.field public static final CONSUME_POWER_FIELD_NUMBER:I = 0x9

.field private static final DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

.field public static final FOREGROUND_SERVICE_USAGE_CONSUME_POWER_FIELD_NUMBER:I = 0xc

.field public static final FOREGROUND_SERVICE_USAGE_TIME_FIELD_NUMBER:I = 0x11

.field public static final FOREGROUND_USAGE_CONSUME_POWER_FIELD_NUMBER:I = 0xa

.field public static final FOREGROUND_USAGE_TIME_FIELD_NUMBER:I = 0xe

.field public static final IS_HIDDEN_FIELD_NUMBER:I = 0x6

.field public static final KEY_FIELD_NUMBER:I = 0x5

.field public static final LABEL_FIELD_NUMBER:I = 0x4

.field public static final PACKAGE_NAME_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field

.field public static final SCREEN_ON_TIME_FIELD_NUMBER:I = 0x10

.field public static final UID_FIELD_NUMBER:I = 0x1

.field public static final USER_ID_FIELD_NUMBER:I = 0x2


# instance fields
.field private appOptimizationMode_:I

.field private backgroundUsageConsumePower_:D

.field private backgroundUsageTime_:J

.field private bitField0_:I

.field private cachedUsageConsumePower_:D

.field private componentId_:I

.field private consumePower_:D

.field private consumerType_:I

.field private foregroundServiceUsageConsumePower_:D

.field private foregroundServiceUsageTime_:J

.field private foregroundUsageConsumePower_:D

.field private foregroundUsageTime_:J

.field private isHidden_:Z

.field private key_:Ljava/lang/String;

.field private label_:Ljava/lang/String;

.field private packageName_:Ljava/lang/String;

.field private screenOnTime_:J

.field private uid_:J

.field private userId_:J


# direct methods
.method public static -$$Nest$msetBackgroundUsageConsumePower(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;D)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->backgroundUsageConsumePower_:D

    return-void
.end method

.method public static -$$Nest$msetBackgroundUsageTime(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;J)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->backgroundUsageTime_:J

    return-void
.end method

.method public static -$$Nest$msetCachedUsageConsumePower(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;D)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->cachedUsageConsumePower_:D

    return-void
.end method

.method public static -$$Nest$msetComponentId(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->componentId_:I

    return-void
.end method

.method public static -$$Nest$msetConsumePower(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;D)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->consumePower_:D

    return-void
.end method

.method public static -$$Nest$msetConsumerType(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->consumerType_:I

    return-void
.end method

.method public static -$$Nest$msetForegroundServiceUsageConsumePower(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;D)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->foregroundServiceUsageConsumePower_:D

    return-void
.end method

.method public static -$$Nest$msetForegroundServiceUsageTime(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;J)V
    .locals 2

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->foregroundServiceUsageTime_:J

    return-void
.end method

.method public static -$$Nest$msetForegroundUsageConsumePower(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;D)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->foregroundUsageConsumePower_:D

    return-void
.end method

.method public static -$$Nest$msetForegroundUsageTime(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;J)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->foregroundUsageTime_:J

    return-void
.end method

.method public static -$$Nest$msetIsHidden(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;Z)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->isHidden_:Z

    return-void
.end method

.method public static -$$Nest$msetKey(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->key_:Ljava/lang/String;

    return-void
.end method

.method public static -$$Nest$msetLabel(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->label_:Ljava/lang/String;

    return-void
.end method

.method public static -$$Nest$msetPackageName(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->packageName_:Ljava/lang/String;

    return-void
.end method

.method public static -$$Nest$msetScreenOnTime(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;J)V
    .locals 2

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->screenOnTime_:J

    return-void
.end method

.method public static -$$Nest$msetUid(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;J)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->uid_:J

    return-void
.end method

.method public static -$$Nest$msetUserId(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;J)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->bitField0_:I

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->userId_:J

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    const-class v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->packageName_:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->label_:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->key_:Ljava/lang/String;

    return-void
.end method

.method public static newBuilder()Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff$Builder;
    .locals 1

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff$Builder;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Lcom/google/protobuf/GeneratedMessageLite;)Ljava/lang/Object;
    .locals 21

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    invoke-direct {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff$Builder;

    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    invoke-direct {v0, v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;-><init>()V

    return-object v0

    :pswitch_4
    const-string v1, "bitField0_"

    const-string v2, "uid_"

    const-string v3, "userId_"

    const-string v4, "packageName_"

    const-string v5, "label_"

    const-string v6, "key_"

    const-string v7, "isHidden_"

    const-string v8, "componentId_"

    const-string v9, "consumerType_"

    const-string v10, "consumePower_"

    const-string v11, "foregroundUsageConsumePower_"

    const-string v12, "backgroundUsageConsumePower_"

    const-string v13, "foregroundServiceUsageConsumePower_"

    const-string v14, "cachedUsageConsumePower_"

    const-string v15, "foregroundUsageTime_"

    const-string v16, "backgroundUsageTime_"

    const-string v17, "screenOnTime_"

    const-string v18, "foregroundServiceUsageTime_"

    const-string v19, "appOptimizationMode_"

    sget-object v20, Lcom/android/settings/fuelgauge/batteryusage/BatteryOptimizationMode$BatteryOptimizationModeVerifier;->INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/BatteryOptimizationMode$BatteryOptimizationModeVerifier;

    filled-new-array/range {v1 .. v20}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\u0001\u0012\u0000\u0001\u0001\u0012\u0012\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1002\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1007\u0005\u0007\u1004\u0006\u0008\u1004\u0007\t\u1000\u0008\n\u1000\t\u000b\u1000\n\u000c\u1000\u000b\r\u1000\u000c\u000e\u1002\r\u000f\u1002\u000e\u0010\u1002\u000f\u0011\u1002\u0010\u0012\u100c\u0011"

    sget-object v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;

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

.method public final getBackgroundUsageConsumePower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->backgroundUsageConsumePower_:D

    return-wide v0
.end method

.method public final getBackgroundUsageTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->backgroundUsageTime_:J

    return-wide v0
.end method

.method public final getCachedUsageConsumePower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->cachedUsageConsumePower_:D

    return-wide v0
.end method

.method public final getComponentId()I
    .locals 0

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->componentId_:I

    return p0
.end method

.method public final getConsumePower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->consumePower_:D

    return-wide v0
.end method

.method public final getConsumerType()I
    .locals 0

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->consumerType_:I

    return p0
.end method

.method public final getForegroundServiceUsageConsumePower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->foregroundServiceUsageConsumePower_:D

    return-wide v0
.end method

.method public final getForegroundServiceUsageTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->foregroundServiceUsageTime_:J

    return-wide v0
.end method

.method public final getForegroundUsageConsumePower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->foregroundUsageConsumePower_:D

    return-wide v0
.end method

.method public final getForegroundUsageTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->foregroundUsageTime_:J

    return-wide v0
.end method

.method public final getIsHidden()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->isHidden_:Z

    return p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->key_:Ljava/lang/String;

    return-object p0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->label_:Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->packageName_:Ljava/lang/String;

    return-object p0
.end method

.method public final getScreenOnTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->screenOnTime_:J

    return-wide v0
.end method

.method public final getUid()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->uid_:J

    return-wide v0
.end method

.method public final getUserId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDiff;->userId_:J

    return-wide v0
.end method
