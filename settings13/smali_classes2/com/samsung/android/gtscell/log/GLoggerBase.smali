.class public abstract Lcom/samsung/android/gtscell/log/GLoggerBase;
.super Ljava/lang/Object;
.source "GLogger.kt"

# interfaces
.implements Lcom/samsung/android/gtscell/log/GLogger;


# instance fields
.field private final debugLevel:Lcom/samsung/android/gtscell/log/GLogger$DebugLevel;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gtscell/log/GLogger$DebugLevel;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/samsung/android/gtscell/log/GLogger$DebugLevel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "debugLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/log/GLoggerBase;->debugLevel:Lcom/samsung/android/gtscell/log/GLogger$DebugLevel;

    iput-object p2, p0, Lcom/samsung/android/gtscell/log/GLoggerBase;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "obj"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/gtscell/log/GLoggerBase;->debugLevel:Lcom/samsung/android/gtscell/log/GLogger$DebugLevel;

    invoke-interface {v0}, Lcom/samsung/android/gtscell/log/GLogger$DebugLevel;->getLevel()Lcom/samsung/android/gtscell/log/GLogger$Level;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/gtscell/log/GLogger$Level;->DEBUG:Lcom/samsung/android/gtscell/log/GLogger$Level;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/gtscell/log/GLoggerBase;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x64

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x36

    const/4 v11, 0x0

    const-string v4, " "

    move-object v3, p2

    .line 180
    invoke-static/range {v3 .. v11}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 178
    invoke-virtual {p0, v1, p1, p2}, Lcom/samsung/android/gtscell/log/GLoggerBase;->message(Lcom/samsung/android/gtscell/log/GLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "obj"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/gtscell/log/GLoggerBase;->debugLevel:Lcom/samsung/android/gtscell/log/GLogger$DebugLevel;

    invoke-interface {v0}, Lcom/samsung/android/gtscell/log/GLogger$DebugLevel;->getLevel()Lcom/samsung/android/gtscell/log/GLogger$Level;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/gtscell/log/GLogger$Level;->ERROR:Lcom/samsung/android/gtscell/log/GLogger$Level;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/gtscell/log/GLoggerBase;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x64

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x36

    const/4 v11, 0x0

    const-string v4, " "

    move-object v3, p2

    .line 129
    invoke-static/range {v3 .. v11}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 127
    invoke-virtual {p0, v1, p1, p2}, Lcom/samsung/android/gtscell/log/GLoggerBase;->message(Lcom/samsung/android/gtscell/log/GLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 12
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "obj"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/gtscell/log/GLoggerBase;->debugLevel:Lcom/samsung/android/gtscell/log/GLogger$DebugLevel;

    invoke-interface {v0}, Lcom/samsung/android/gtscell/log/GLogger$DebugLevel;->getLevel()Lcom/samsung/android/gtscell/log/GLogger$Level;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/gtscell/log/GLogger$Level;->ERROR:Lcom/samsung/android/gtscell/log/GLogger$Level;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/gtscell/log/GLoggerBase;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x64

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x36

    const/4 v11, 0x0

    const-string v4, " "

    move-object v3, p3

    .line 116
    invoke-static/range {v3 .. v11}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 114
    invoke-virtual {p0, v1, p2, p1}, Lcom/samsung/android/gtscell/log/GLoggerBase;->message(Lcom/samsung/android/gtscell/log/GLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "obj"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/gtscell/log/GLoggerBase;->debugLevel:Lcom/samsung/android/gtscell/log/GLogger$DebugLevel;

    invoke-interface {v0}, Lcom/samsung/android/gtscell/log/GLogger$DebugLevel;->getLevel()Lcom/samsung/android/gtscell/log/GLogger$Level;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/gtscell/log/GLogger$Level;->INFO:Lcom/samsung/android/gtscell/log/GLogger$Level;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/gtscell/log/GLoggerBase;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x64

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x36

    const/4 v11, 0x0

    const-string v4, " "

    move-object v3, p2

    .line 168
    invoke-static/range {v3 .. v11}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 166
    invoke-virtual {p0, v1, p1, p2}, Lcom/samsung/android/gtscell/log/GLoggerBase;->message(Lcom/samsung/android/gtscell/log/GLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public abstract message(Lcom/samsung/android/gtscell/log/GLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .param p1    # Lcom/samsung/android/gtscell/log/GLogger$Level;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public setLevel(Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger;
    .locals 1
    .param p1    # Lcom/samsung/android/gtscell/log/GLogger$Level;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/gtscell/log/GLoggerBase;->debugLevel:Lcom/samsung/android/gtscell/log/GLogger$DebugLevel;

    invoke-interface {v0, p1}, Lcom/samsung/android/gtscell/log/GLogger$DebugLevel;->setLevel(Lcom/samsung/android/gtscell/log/GLogger$Level;)V

    return-object p0
.end method

.method public varargs warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "obj"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/gtscell/log/GLoggerBase;->debugLevel:Lcom/samsung/android/gtscell/log/GLogger$DebugLevel;

    invoke-interface {v0}, Lcom/samsung/android/gtscell/log/GLogger$DebugLevel;->getLevel()Lcom/samsung/android/gtscell/log/GLogger$Level;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/gtscell/log/GLogger$Level;->WARNING:Lcom/samsung/android/gtscell/log/GLogger$Level;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/gtscell/log/GLoggerBase;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x64

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x36

    const/4 v11, 0x0

    const-string v4, " "

    move-object v3, p2

    .line 155
    invoke-static/range {v3 .. v11}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 153
    invoke-virtual {p0, v1, p1, p2}, Lcom/samsung/android/gtscell/log/GLoggerBase;->message(Lcom/samsung/android/gtscell/log/GLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs warning(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 12
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "obj"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/gtscell/log/GLoggerBase;->debugLevel:Lcom/samsung/android/gtscell/log/GLogger$DebugLevel;

    invoke-interface {v0}, Lcom/samsung/android/gtscell/log/GLogger$DebugLevel;->getLevel()Lcom/samsung/android/gtscell/log/GLogger$Level;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/gtscell/log/GLogger$Level;->WARNING:Lcom/samsung/android/gtscell/log/GLogger$Level;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/gtscell/log/GLoggerBase;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x64

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x36

    const/4 v11, 0x0

    const-string v4, " "

    move-object v3, p3

    .line 142
    invoke-static/range {v3 .. v11}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 140
    invoke-virtual {p0, v1, p2, p1}, Lcom/samsung/android/gtscell/log/GLoggerBase;->message(Lcom/samsung/android/gtscell/log/GLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
