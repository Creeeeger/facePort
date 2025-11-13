.class public final Lcom/android/systemui/log/LogBuffer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/log/core/MessageBuffer;


# instance fields
.field public final buffer:Lcom/android/systemui/common/buffer/RingBuffer;

.field public frozen:Z

.field public final logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;

.field public final maxSize:I

.field public final name:Ljava/lang/String;

.field public final systrace:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/android/systemui/log/LogcatEchoTracker;)V
    .locals 7

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/log/LogBuffer;-><init>(Ljava/lang/String;ILcom/android/systemui/log/LogcatEchoTracker;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/android/systemui/log/LogcatEchoTracker;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/LogBuffer;->name:Ljava/lang/String;

    iput p2, p0, Lcom/android/systemui/log/LogBuffer;->maxSize:I

    iput-object p3, p0, Lcom/android/systemui/log/LogBuffer;->logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;

    iput-boolean p4, p0, Lcom/android/systemui/log/LogBuffer;->systrace:Z

    new-instance p1, Lcom/android/systemui/common/buffer/RingBuffer;

    sget-object p3, Lcom/android/systemui/log/LogBuffer$buffer$1;->INSTANCE:Lcom/android/systemui/log/LogBuffer$buffer$1;

    invoke-direct {p1, p2, p3}, Lcom/android/systemui/common/buffer/RingBuffer;-><init>(ILkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lcom/android/systemui/log/LogBuffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/android/systemui/log/LogcatEchoTracker;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/log/LogBuffer;-><init>(Ljava/lang/String;ILcom/android/systemui/log/LogcatEchoTracker;Z)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized commit(Lcom/android/systemui/log/core/LogMessage;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/log/LogBuffer;->frozen:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/log/LogBuffer;->maxSize:I

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->echoToDesiredEndpoints(Lcom/android/systemui/log/core/LogMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final echoToDesiredEndpoints(Lcom/android/systemui/log/core/LogMessage;)V
    .locals 7

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getLevel()Lcom/android/systemui/log/core/LogLevel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/log/LogBuffer;->logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;

    iget-object v2, p0, Lcom/android/systemui/log/LogBuffer;->name:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/log/LogcatEchoTracker;->isBufferLoggable(Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getLevel()Lcom/android/systemui/log/core/LogLevel;

    move-result-object v5

    invoke-interface {v1, v5, v0}, Lcom/android/systemui/log/LogcatEchoTracker;->isTagLoggable(Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    iget-boolean p0, p0, Lcom/android/systemui/log/LogBuffer;->systrace:Z

    const-wide/16 v5, 0x1000

    if-eqz p0, :cond_2

    invoke-static {v5, v6}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    if-nez v0, :cond_3

    if-eqz v3, :cond_5

    :cond_3
    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getMessagePrinter()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getLevel()Lcom/android/systemui/log/core/LogLevel;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/log/LogBuffer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v0, p0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :pswitch_1
    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v0, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :pswitch_2
    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v0, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :pswitch_3
    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v0, p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :pswitch_4
    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v0, p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :pswitch_5
    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getTag()Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getException()Ljava/lang/Throwable;

    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getLevel()Lcom/android/systemui/log/core/LogLevel;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/systemui/log/core/LogLevel;->getShortString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-static {v1, p1, p0}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "UI Events"

    invoke-static {v5, v6, p1, p0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized freeze()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/log/LogBuffer;->frozen:Z

    if-nez v0, :cond_0

    const-string v0, "LogBuffer"

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/log/LogBuffer$freeze$2;->INSTANCE:Lcom/android/systemui/log/LogBuffer$freeze$2;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/log/LogBuffer;->name:Ljava/lang/String;

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/log/LogBuffer;->frozen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/log/LogBuffer$log$2;->INSTANCE:Lcom/android/systemui/log/LogBuffer$log$2;

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p3, p2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final declared-synchronized obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/log/LogBuffer;->frozen:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/log/LogBuffer;->maxSize:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/log/LogBuffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    invoke-virtual {v0}, Lcom/android/systemui/common/buffer/RingBuffer;->advance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/log/LogMessageImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/log/LogMessageImpl;->reset(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;JLkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object p1, Lcom/android/systemui/log/LogBufferKt;->FROZEN_MESSAGE:Lcom/android/systemui/log/LogMessageImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized unfreeze()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/log/LogBuffer;->frozen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/log/LogBuffer;->frozen:Z

    const-string v0, "LogBuffer"

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/log/LogBuffer$unfreeze$2;->INSTANCE:Lcom/android/systemui/log/LogBuffer$unfreeze$2;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/log/LogBuffer;->name:Ljava/lang/String;

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
