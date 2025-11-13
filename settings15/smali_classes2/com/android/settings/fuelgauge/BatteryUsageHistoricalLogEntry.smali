.class public final Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ACTION_DESCRIPTION_FIELD_NUMBER:I = 0x3

.field public static final ACTION_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x1


# instance fields
.field private actionDescription_:Ljava/lang/String;

.field private action_:I

.field private bitField0_:I

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry;

    const-class v1, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry;->actionDescription_:Ljava/lang/String;

    return-void
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
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry;

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Builder;

    sget-object p1, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry;

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry;

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "timestamp_"

    const-string p2, "action_"

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action$ActionVerifier;->INSTANCE:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action$ActionVerifier;

    const-string v1, "actionDescription_"

    filled-new-array {p0, p1, p2, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u100c\u0001\u0003\u1008\u0002"

    sget-object p2, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry;

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

.method public final getAction()Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;
    .locals 0

    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry;->action_:I

    invoke-static {p0}, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;->forNumber(I)Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;->UNKNOWN:Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry$Action;

    :cond_0
    return-object p0
.end method

.method public final getActionDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry;->actionDescription_:Ljava/lang/String;

    return-object p0
.end method

.method public final getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryUsageHistoricalLogEntry;->timestamp_:J

    return-wide v0
.end method
