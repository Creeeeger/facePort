.class abstract Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;
.super Landroid/os/ResultReceiver;
.source "IRemoteInputConnectionInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/IRemoteInputConnectionInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "OnceResultReceiver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/ResultReceiver;"
    }
.end annotation


# instance fields
.field private blacklist mConsumer:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method protected constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "TC;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;->mConsumer:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected abstract blacklist dispatch(Ljava/util/concurrent/Executor;Ljava/lang/Object;ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "TC;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method protected final whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;->mConsumer:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object v2, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;->mConsumer:Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;->dispatch(Ljava/util/concurrent/Executor;Ljava/lang/Object;ILandroid/os/Bundle;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
