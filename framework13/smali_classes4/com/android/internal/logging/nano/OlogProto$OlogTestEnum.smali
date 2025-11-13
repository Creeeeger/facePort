.class public final Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "OlogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/logging/nano/OlogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OlogTestEnum"
.end annotation


# static fields
.field public static final blacklist PERFLOG_ACTIVITYSLOW:I = 0x8

.field public static final blacklist PERFLOG_AMPSS:I = 0x12

.field public static final blacklist PERFLOG_APPLAUNCH:I = 0x4

.field public static final blacklist PERFLOG_ARGOS:I = 0x3

.field public static final blacklist PERFLOG_BIGDATA:I = 0x19

.field public static final blacklist PERFLOG_BROADCAST:I = 0x9

.field public static final blacklist PERFLOG_CPU:I = 0xd

.field public static final blacklist PERFLOG_CPUFREQ:I = 0xf

.field public static final blacklist PERFLOG_CPUTOP:I = 0xb

.field public static final blacklist PERFLOG_CRI:I = 0x4

.field public static final blacklist PERFLOG_DEF:I = 0x0

.field public static final blacklist PERFLOG_EVT:I = 0x2

.field public static final blacklist PERFLOG_EXCESSIVECPUUSAGE:I = 0x7

.field public static final blacklist PERFLOG_INPUTD:I = 0x11

.field public static final blacklist PERFLOG_IPCSTARVE:I = 0x14

.field public static final blacklist PERFLOG_LCD:I = 0xc

.field public static final blacklist PERFLOG_LCDV:I = 0x2

.field public static final blacklist PERFLOG_LOADAPK:I = 0x5

.field public static final blacklist PERFLOG_LOCKCONTENTION:I = 0xe

.field public static final blacklist PERFLOG_LOG:I = 0x1

.field public static final blacklist PERFLOG_MAINLOOPER:I = 0x6

.field public static final blacklist PERFLOG_MEMPRESSURE:I = 0x10

.field public static final blacklist PERFLOG_MUTEX:I = 0x16

.field public static final blacklist PERFLOG_PERFETTOLOGGINGENABLED:I = 0x18

.field public static final blacklist PERFLOG_SCREENSHOT:I = 0x15

.field public static final blacklist PERFLOG_SERVICEMANAGERSLOW:I = 0x13

.field public static final blacklist PERFLOG_STORE:I = 0xa

.field public static final blacklist PERFLOG_SYSTEMSERVER:I = 0x17

.field public static final blacklist PERFLOG_UNKNOWN:I = 0x0

.field public static final blacklist PERFLOG_WRN:I = 0x3

.field private static volatile blacklist _emptyArray:[Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;->clear()Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;

    .line 61
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;
    .locals 2

    .line 48
    sget-object v0, Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;->_emptyArray:[Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;

    if-nez v0, :cond_1

    .line 49
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;->_emptyArray:[Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;

    if-nez v1, :cond_0

    .line 52
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;

    sput-object v1, Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;->_emptyArray:[Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;

    .line 54
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 56
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;->_emptyArray:[Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;

    invoke-direct {v0}, Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;

    invoke-direct {v0}, Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;
    .locals 1

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;->cachedSize:I

    .line 65
    return-object p0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 74
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_0

    .line 78
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    return-object p0

    .line 76
    :pswitch_0
    return-object p0

    .line 84
    .end local v0    # "tag":I
    :cond_0
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
