.class public final Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;

.field public static final EXPIRATION_TIME_FIELD_NUMBER:I = 0x4

.field public static final PACKAGE_NAME_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field

.field public static final RESET_OPTIMIZATION_MODE_FIELD_NUMBER:I = 0x3

.field public static final UID_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private expirationTime_:J

.field private packageName_:Ljava/lang/String;

.field private resetOptimizationMode_:I

.field private uid_:I


# direct methods
.method public static -$$Nest$msetExpirationTime(Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;J)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->bitField0_:I

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->expirationTime_:J

    return-void
.end method

.method public static -$$Nest$msetPackageName(Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->bitField0_:I

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->packageName_:Ljava/lang/String;

    return-void
.end method

.method public static -$$Nest$msetResetOptimizationMode(Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->bitField0_:I

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->resetOptimizationMode_:I

    return-void
.end method

.method public static -$$Nest$msetUid(Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->bitField0_:I

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->uid_:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;

    const-class v1, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->packageName_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;
    .locals 1

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent$Builder;
    .locals 1

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent$Builder;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Lcom/google/protobuf/GeneratedMessageLite;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent$Builder;

    sget-object p1, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "uid_"

    const-string p2, "packageName_"

    const-string v0, "resetOptimizationMode_"

    const-string v1, "expirationTime_"

    filled-new-array {p0, p1, p2, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1208\u0001\u0003\u1004\u0002\u0004\u1002\u0003"

    sget-object p2, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;

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

.method public final getResetOptimizationMode()I
    .locals 0

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->resetOptimizationMode_:I

    return p0
.end method

.method public final getUid()I
    .locals 0

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppOptimizationModeEvent;->uid_:I

    return p0
.end method
