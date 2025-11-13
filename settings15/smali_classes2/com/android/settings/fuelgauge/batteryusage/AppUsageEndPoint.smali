.class public final Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private timestamp_:J

.field private type_:I


# direct methods
.method public static -$$Nest$msetTimestamp(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;J)V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->bitField0_:I

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->timestamp_:J

    return-void
.end method

.method public static -$$Nest$msetType(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->type_:I

    iget p1, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->bitField0_:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;

    const-class v1, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->type_:I

    return-void
.end method

.method public static newBuilder()Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint$Builder;
    .locals 1

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint$Builder;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Lcom/google/protobuf/GeneratedMessageLite;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint$Builder;

    sget-object p1, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "type_"

    sget-object p2, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType$AppUsageEndPointTypeVerifier;->INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType$AppUsageEndPointTypeVerifier;

    const-string v0, "timestamp_"

    filled-new-array {p0, p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1002\u0001"

    sget-object p2, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;

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

.method public final getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->timestamp_:J

    return-wide v0
.end method

.method public final getType()Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;
    .locals 2

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->type_:I

    const/4 v0, 0x1

    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;->START:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;->END:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p0

    :goto_1
    return-object v1
.end method
