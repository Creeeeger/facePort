.class public abstract Lcom/android/internal/infra/RemoteStream;
.super Lcom/android/internal/infra/AndroidFuture;
.source "RemoteStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RES:",
        "Ljava/lang/Object;",
        "IOSTREAM::",
        "Ljava/io/Closeable;",
        ">",
        "Lcom/android/internal/infra/AndroidFuture<",
        "TRES;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final blacklist mHandleStream:Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<",
            "TIOSTREAM;TRES;>;"
        }
    .end annotation
.end field

.field private volatile blacklist mLocalPipe:Landroid/os/ParcelFileDescriptor;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/util/concurrent/Executor;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<",
            "TIOSTREAM;TRES;>;",
            "Ljava/util/concurrent/Executor;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    iput-object p2, p0, Lcom/android/internal/infra/RemoteStream;->mHandleStream:Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;

    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    aget-object v3, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {p1, v3}, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;->acceptOrThrow(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_1
    if-eqz p4, :cond_2

    move v1, v2

    :cond_2
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/infra/RemoteStream;->mLocalPipe:Landroid/os/ParcelFileDescriptor;

    invoke-interface {p3, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/internal/infra/RemoteStream;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v1

    if-eqz v3, :cond_3

    :try_start_3
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/RemoteStream;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_2
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/util/concurrent/Executor;ZLcom/android/internal/infra/RemoteStream-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/infra/RemoteStream;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/util/concurrent/Executor;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$sendBytes$0(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/io/OutputStream;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;->acceptOrThrow(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic blacklist lambda$sendBytes$1([BLjava/io/OutputStream;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist readAll(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x4000

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    nop

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static blacklist receiveBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)Lcom/android/internal/infra/AndroidFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/RemoteStream$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/infra/RemoteStream$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, v0}, Lcom/android/internal/infra/RemoteStream;->receiveBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist receiveBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Lcom/android/internal/infra/AndroidFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<",
            "Ljava/io/InputStream;",
            "TR;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/RemoteStream$1;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/internal/infra/RemoteStream$1;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method

.method public static blacklist sendBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)Lcom/android/internal/infra/AndroidFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Ljava/io/OutputStream;",
            ">;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/RemoteStream$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/internal/infra/RemoteStream$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    invoke-static {p0, v0}, Lcom/android/internal/infra/RemoteStream;->sendBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist sendBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Lcom/android/internal/infra/AndroidFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<",
            "Ljava/io/OutputStream;",
            "TR;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/RemoteStream$2;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/internal/infra/RemoteStream$2;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method

.method public static blacklist sendBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;[B)Lcom/android/internal/infra/AndroidFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;[B)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/RemoteStream$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/internal/infra/RemoteStream$$ExternalSyntheticLambda0;-><init>([B)V

    invoke-static {p0, v0}, Lcom/android/internal/infra/RemoteStream;->sendBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract blacklist createStream(Landroid/os/ParcelFileDescriptor;)Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")TIOSTREAM;"
        }
    .end annotation
.end method

.method protected blacklist onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRES;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/internal/infra/RemoteStream;->mLocalPipe:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method public whitelist test-api run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/infra/RemoteStream;->mLocalPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/RemoteStream;->createStream(Landroid/os/ParcelFileDescriptor;)Ljava/io/Closeable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/infra/RemoteStream;->mHandleStream:Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;

    invoke-interface {v1, v0}, Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;->applyOrThrow(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/RemoteStream;->complete(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/RemoteStream;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_1
    return-void
.end method
