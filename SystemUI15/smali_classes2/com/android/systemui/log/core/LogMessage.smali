.class public interface abstract Lcom/android/systemui/log/core/LogMessage;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 10

    invoke-static {}, Lcom/android/systemui/log/core/LogMessageKt;->access$getDATE_FORMAT$p()Landroid/icu/text/SimpleDateFormat;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/systemui/log/core/LogMessage;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/android/systemui/log/core/LogMessage;->getLevel()Lcom/android/systemui/log/core/LogLevel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/log/core/LogLevel;->getShortString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lcom/android/systemui/log/core/LogMessage;->getMessagePrinter()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    invoke-interface {p0}, Lcom/android/systemui/log/core/LogMessage;->getThreadId()J

    move-result-wide v0

    const-wide/16 v7, 0x0

    cmp-long v0, v0, v7

    if-gtz v0, :cond_1

    invoke-interface {p0}, Lcom/android/systemui/log/core/LogMessage;->getTagSeparator()Ljava/lang/Character;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/android/systemui/log/core/LogMessage;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v4, v0, v6}, Lcom/android/systemui/log/core/LogMessageKt;->access$printLikeLogcat(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/android/systemui/log/core/LogMessage;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/android/systemui/log/core/LogMessage;->getThreadId()J

    move-result-wide v7

    invoke-interface {p0}, Lcom/android/systemui/log/core/LogMessage;->getTagSeparator()Ljava/lang/Character;

    move-result-object v9

    move-object v2, p1

    invoke-static/range {v2 .. v9}, Lcom/android/systemui/log/core/LogMessageKt;->access$printLikeLogcat(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Character;)V

    :goto_1
    invoke-interface {p0}, Lcom/android/systemui/log/core/LogMessage;->getException()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_2
    return-void
.end method

.method public abstract getBool1()Z
.end method

.method public abstract getBool2()Z
.end method

.method public abstract getBool3()Z
.end method

.method public abstract getBool4()Z
.end method

.method public abstract getBool5()Z
.end method

.method public abstract getDouble1()D
.end method

.method public abstract getException()Ljava/lang/Throwable;
.end method

.method public abstract getInt1()I
.end method

.method public abstract getInt2()I
.end method

.method public abstract getLevel()Lcom/android/systemui/log/core/LogLevel;
.end method

.method public abstract getLong1()J
.end method

.method public abstract getLong2()J
.end method

.method public abstract getMessagePrinter()Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end method

.method public abstract getStr1()Ljava/lang/String;
.end method

.method public abstract getStr2()Ljava/lang/String;
.end method

.method public abstract getStr3()Ljava/lang/String;
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract getTagSeparator()Ljava/lang/Character;
.end method

.method public abstract getThreadId()J
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract setBool1(Z)V
.end method

.method public abstract setBool2(Z)V
.end method

.method public abstract setBool3(Z)V
.end method

.method public abstract setBool4(Z)V
.end method

.method public abstract setBool5(Z)V
.end method

.method public abstract setDouble1(D)V
.end method

.method public abstract setInt1(I)V
.end method

.method public abstract setInt2(I)V
.end method

.method public abstract setLong1(J)V
.end method

.method public abstract setLong2(J)V
.end method

.method public abstract setStr1(Ljava/lang/String;)V
.end method

.method public abstract setStr2(Ljava/lang/String;)V
.end method

.method public abstract setStr3(Ljava/lang/String;)V
.end method

.method public abstract setTagSeparator(Ljava/lang/Character;)V
.end method

.method public abstract setThreadId(J)V
.end method
