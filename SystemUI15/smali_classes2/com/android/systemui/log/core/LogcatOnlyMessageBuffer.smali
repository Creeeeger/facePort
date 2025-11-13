.class public final Lcom/android/systemui/log/core/LogcatOnlyMessageBuffer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/log/core/MessageBuffer;


# instance fields
.field private isObtained:Z

.field private final singleMessage:Lcom/android/systemui/log/LogMessageImpl;

.field private final targetLogLevel:Lcom/android/systemui/log/core/LogLevel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/core/LogLevel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/core/LogcatOnlyMessageBuffer;->targetLogLevel:Lcom/android/systemui/log/core/LogLevel;

    sget-object p1, Lcom/android/systemui/log/LogMessageImpl;->Factory:Lcom/android/systemui/log/LogMessageImpl$Factory;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/log/LogMessageImpl$Factory;->create()Lcom/android/systemui/log/LogMessageImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/log/core/LogcatOnlyMessageBuffer;->singleMessage:Lcom/android/systemui/log/LogMessageImpl;

    return-void
.end method


# virtual methods
.method public declared-synchronized commit(Lcom/android/systemui/log/core/LogMessage;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/log/core/LogcatOnlyMessageBuffer;->singleMessage:Lcom/android/systemui/log/LogMessageImpl;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/log/core/LogcatOnlyMessageBuffer;->isObtained:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getLevel()Lcom/android/systemui/log/core/LogLevel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/log/core/LogcatOnlyMessageBuffer;->targetLogLevel:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getMessagePrinter()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getLevel()Lcom/android/systemui/log/core/LogLevel;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/log/core/LogcatOnlyMessageBuffer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v1, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :pswitch_1
    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_2
    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_3
    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v1, v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_4
    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_5
    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getTag()Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getException()Ljava/lang/Throwable;

    :cond_0
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/log/core/LogcatOnlyMessageBuffer;->isObtained:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Message has not been obtained. Call order is incorrect."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message argument is not the expected message."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1

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

.method public final getTargetLogLevel()Lcom/android/systemui/log/core/LogLevel;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/log/core/LogcatOnlyMessageBuffer;->targetLogLevel:Lcom/android/systemui/log/core/LogLevel;

    return-object p0
.end method

.method public declared-synchronized obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/systemui/log/core/LogLevel;",
            "Lkotlin/jvm/functions/Function1;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/android/systemui/log/core/LogMessage;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/log/core/LogcatOnlyMessageBuffer;->isObtained:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/log/core/LogcatOnlyMessageBuffer;->singleMessage:Lcom/android/systemui/log/LogMessageImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/log/LogMessageImpl;->reset(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;JLkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/log/core/LogcatOnlyMessageBuffer;->isObtained:Z

    iget-object p1, p0, Lcom/android/systemui/log/core/LogcatOnlyMessageBuffer;->singleMessage:Lcom/android/systemui/log/LogMessageImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Message has already been obtained. Call order is incorrect."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method
