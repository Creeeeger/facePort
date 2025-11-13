.class public final Lcom/android/server/criticalevents/nano/CriticalEventProto;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "CriticalEventProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;,
        Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;,
        Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;,
        Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;,
        Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;,
        Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;,
        Lcom/android/server/criticalevents/nano/CriticalEventProto$InstallPackages;,
        Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;
    }
.end annotation


# static fields
.field public static final blacklist ANR_FIELD_NUMBER:I = 0x4

.field public static final blacklist DATA_APP:I = 0x1

.field public static final blacklist EXCESSIVE_BINDER_CALLS_FIELD_NUMBER:I = 0x9

.field public static final blacklist HALF_WATCHDOG_FIELD_NUMBER:I = 0x3

.field public static final blacklist INSTALL_PACKAGES_FIELD_NUMBER:I = 0x8

.field public static final blacklist JAVA_CRASH_FIELD_NUMBER:I = 0x5

.field public static final blacklist NATIVE_CRASH_FIELD_NUMBER:I = 0x6

.field public static final blacklist PROCESS_CLASS_UNKNOWN:I = 0x0

.field public static final blacklist SYSTEM_APP:I = 0x2

.field public static final blacklist SYSTEM_SERVER:I = 0x3

.field public static final blacklist SYSTEM_SERVER_STARTED_FIELD_NUMBER:I = 0x7

.field public static final blacklist WATCHDOG_FIELD_NUMBER:I = 0x2

.field private static volatile blacklist _emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto;


# instance fields
.field private blacklist eventCase_:I

.field private blacklist event_:Ljava/lang/Object;

.field public blacklist timestampMs:J


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->clear()Lcom/android/server/criticalevents/nano/CriticalEventProto;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 2

    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/criticalevents/nano/CriticalEventProto;

    sput-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->clearEvent()Lcom/android/server/criticalevents/nano/CriticalEventProto;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->cachedSize:I

    return-object p0
.end method

.method public blacklist clearEvent()Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-wide v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    return v0
.end method

.method public blacklist getAnr()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;
    .locals 2

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEventCase()I
    .locals 1

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    return v0
.end method

.method public blacklist getExcessiveBinderCalls()Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;
    .locals 2

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHalfWatchdog()Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;
    .locals 2

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInstallPackages()Lcom/android/server/criticalevents/nano/CriticalEventProto$InstallPackages;
    .locals 2

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$InstallPackages;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getJavaCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;
    .locals 2

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNativeCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;
    .locals 2

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSystemServerStarted()Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;
    .locals 2

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWatchdog()Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;
    .locals 2

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasAnr()Z
    .locals 2

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasExcessiveBinderCalls()Z
    .locals 2

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasHalfWatchdog()Z
    .locals 2

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasInstallPackages()Z
    .locals 2

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasJavaCrash()Z
    .locals 2

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasNativeCrash()Z
    .locals 2

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasSystemServerStarted()Z
    .locals 2

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasWatchdog()Z
    .locals 2

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    nop

    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_8

    return-object p0

    :sswitch_0
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    new-instance v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;

    invoke-direct {v1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;-><init>()V

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    goto/16 :goto_1

    :sswitch_1
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    new-instance v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$InstallPackages;

    invoke-direct {v1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$InstallPackages;-><init>()V

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    goto/16 :goto_1

    :sswitch_2
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    new-instance v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;

    invoke-direct {v1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;-><init>()V

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    goto/16 :goto_1

    :sswitch_3
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    new-instance v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    invoke-direct {v1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;-><init>()V

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    goto :goto_1

    :sswitch_4
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    new-instance v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    invoke-direct {v1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;-><init>()V

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    goto :goto_1

    :sswitch_5
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    new-instance v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    invoke-direct {v1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;-><init>()V

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    :cond_5
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    goto :goto_1

    :sswitch_6
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    new-instance v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    invoke-direct {v1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;-><init>()V

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    :cond_6
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    goto :goto_1

    :sswitch_7
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    new-instance v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    invoke-direct {v1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;-><init>()V

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    :cond_7
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    goto :goto_1

    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    goto :goto_1

    :sswitch_9
    return-object p0

    :cond_8
    :goto_1
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_9
        0x8 -> :sswitch_8
        0x12 -> :sswitch_7
        0x1a -> :sswitch_6
        0x22 -> :sswitch_5
        0x2a -> :sswitch_4
        0x32 -> :sswitch_3
        0x3a -> :sswitch_2
        0x42 -> :sswitch_1
        0x4a -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist setAnr(Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    iput-object p1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setExcessiveBinderCalls(Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    iput-object p1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setHalfWatchdog(Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    iput-object p1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setInstallPackages(Lcom/android/server/criticalevents/nano/CriticalEventProto$InstallPackages;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    iput-object p1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setJavaCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    iput-object p1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setNativeCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    iput-object p1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setSystemServerStarted(Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    iput-object p1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setWatchdog(Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    iput-object p1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_0
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_1
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_2
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_3
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_4
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_5
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_6
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_7
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_8
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
