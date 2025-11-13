.class final synthetic Lokio/Okio__JvmOkioKt;
.super Ljava/lang/Object;
.source "JvmOkio.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJvmOkio.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmOkio.kt\nokio/Okio__JvmOkioKt\n*L\n1#1,199:1\n*E\n"
.end annotation


# direct methods
.method public static final isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .locals 4
    .param p0    # Ljava/lang/AssertionError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$isAndroidGetsocknameError"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    const/4 v2, 0x0

    const-string v3, "getsockname failed"

    invoke-static {p0, v3, v1, v0, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static final sink(Ljava/net/Socket;)Lokio/Sink;
    .locals 3
    .param p0    # Ljava/net/Socket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$sink"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    new-instance v0, Lokio/SocketAsyncTimeout;

    invoke-direct {v0, p0}, Lokio/SocketAsyncTimeout;-><init>(Ljava/net/Socket;)V

    .line 123
    new-instance v1, Lokio/OutputStreamSink;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    const-string v2, "getOutputStream()"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lokio/OutputStreamSink;-><init>(Ljava/io/OutputStream;Lokio/Timeout;)V

    .line 124
    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->sink(Lokio/Sink;)Lokio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public static final source(Ljava/io/InputStream;)Lokio/Source;
    .locals 2
    .param p0    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$source"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lokio/InputStreamSource;

    new-instance v1, Lokio/Timeout;

    invoke-direct {v1}, Lokio/Timeout;-><init>()V

    invoke-direct {v0, p0, v1}, Lokio/InputStreamSource;-><init>(Ljava/io/InputStream;Lokio/Timeout;)V

    return-object v0
.end method

.method public static final source(Ljava/net/Socket;)Lokio/Source;
    .locals 3
    .param p0    # Ljava/net/Socket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$source"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    new-instance v0, Lokio/SocketAsyncTimeout;

    invoke-direct {v0, p0}, Lokio/SocketAsyncTimeout;-><init>(Ljava/net/Socket;)V

    .line 135
    new-instance v1, Lokio/InputStreamSource;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-string v2, "getInputStream()"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lokio/InputStreamSource;-><init>(Ljava/io/InputStream;Lokio/Timeout;)V

    .line 136
    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->source(Lokio/Source;)Lokio/Source;

    move-result-object p0

    return-object p0
.end method
