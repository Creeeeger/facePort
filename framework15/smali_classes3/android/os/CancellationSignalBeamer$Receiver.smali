.class public Landroid/os/CancellationSignalBeamer$Receiver;
.super Ljava/lang/Object;
.source "CancellationSignalBeamer.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CancellationSignalBeamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Receiver"
.end annotation


# instance fields
.field private final blacklist mCancelOnSenderDeath:Z

.field private final blacklist mTokenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Landroid/os/CancellationSignal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/CancellationSignalBeamer$Receiver;->mTokenMap:Ljava/util/HashMap;

    iput-boolean p1, p0, Landroid/os/CancellationSignalBeamer$Receiver;->mCancelOnSenderDeath:Z

    return-void
.end method

.method private blacklist dead(Landroid/os/IBinder;)V
    .locals 1

    iget-boolean v0, p0, Landroid/os/CancellationSignalBeamer$Receiver;->mCancelOnSenderDeath:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/CancellationSignalBeamer$Receiver;->cancel(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/CancellationSignalBeamer$Receiver;->forget(Landroid/os/IBinder;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unreachable"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist binderDied(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/CancellationSignalBeamer$Receiver;->dead(Landroid/os/IBinder;)V

    return-void
.end method

.method public blacklist cancel(Landroid/os/IBinder;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/CancellationSignalBeamer$Receiver;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/CancellationSignalBeamer$Receiver;->forget(Landroid/os/IBinder;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    return-void

    :cond_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist forget(Landroid/os/IBinder;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/CancellationSignalBeamer$Receiver;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist unbeam(Landroid/os/IBinder;)Landroid/os/CancellationSignal;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/CancellationSignalBeamer$Receiver;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Landroid/os/CancellationSignalBeamer$Receiver;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-direct {p0, p1}, Landroid/os/CancellationSignalBeamer$Receiver;->dead(Landroid/os/IBinder;)V

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
