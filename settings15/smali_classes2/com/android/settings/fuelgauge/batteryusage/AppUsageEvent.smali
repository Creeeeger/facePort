.class public final Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

.field public static final INSTANCE_ID_FIELD_NUMBER:I = 0x4

.field public static final PACKAGE_NAME_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field

.field public static final TASK_ROOT_PACKAGE_NAME_FIELD_NUMBER:I = 0x5

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x1

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field public static final UID_FIELD_NUMBER:I = 0x7

.field public static final USER_ID_FIELD_NUMBER:I = 0x6


# instance fields
.field private bitField0_:I

.field private instanceId_:I

.field private packageName_:Ljava/lang/String;

.field private taskRootPackageName_:Ljava/lang/String;

.field private timestamp_:J

.field private type_:I

.field private uid_:J

.field private userId_:J


# direct methods
.method public static -$$Nest$msetInstanceId(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->bitField0_:I

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->instanceId_:I

    return-void
.end method

.method public static -$$Nest$msetPackageName(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->bitField0_:I

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->packageName_:Ljava/lang/String;

    return-void
.end method

.method public static -$$Nest$msetTaskRootPackageName(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->bitField0_:I

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->taskRootPackageName_:Ljava/lang/String;

    return-void
.end method

.method public static -$$Nest$msetTimestamp(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;J)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->bitField0_:I

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->timestamp_:J

    return-void
.end method

.method public static -$$Nest$msetType(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->type_:I

    iget p1, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->bitField0_:I

    return-void
.end method

.method public static -$$Nest$msetUid(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;J)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->bitField0_:I

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->uid_:J

    return-void
.end method

.method public static -$$Nest$msetUserId(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;J)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->bitField0_:I

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->userId_:J

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    const-class v1, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->packageName_:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->taskRootPackageName_:Ljava/lang/String;

    return-void
.end method

.method public static newBuilder()Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;
    .locals 1

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Lcom/google/protobuf/GeneratedMessageLite;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;

    sget-object p1, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;-><init>()V

    return-object p0

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "timestamp_"

    const-string v2, "type_"

    sget-object v3, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType$AppUsageEventTypeVerifier;->INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType$AppUsageEventTypeVerifier;

    const-string v4, "packageName_"

    const-string v5, "instanceId_"

    const-string v6, "taskRootPackageName_"

    const-string v7, "userId_"

    const-string v8, "uid_"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u100c\u0001\u0003\u1008\u0002\u0004\u1004\u0003\u0005\u1008\u0004\u0006\u1002\u0005\u0007\u1002\u0006"

    sget-object p2, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

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

.method public final getInstanceId()I
    .locals 0

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->instanceId_:I

    return p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->packageName_:Ljava/lang/String;

    return-object p0
.end method

.method public final getTaskRootPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->taskRootPackageName_:Ljava/lang/String;

    return-object p0
.end method

.method public final getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->timestamp_:J

    return-wide v0
.end method

.method public final getType()Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;
    .locals 0

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->type_:I

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;->forNumber(I)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;->UNKNOWN:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    :cond_0
    return-object p0
.end method

.method public final getUserId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->userId_:J

    return-wide v0
.end method
