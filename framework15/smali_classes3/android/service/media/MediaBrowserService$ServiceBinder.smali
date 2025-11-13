.class Landroid/service/media/MediaBrowserService$ServiceBinder;
.super Landroid/service/media/IMediaBrowserService$Stub;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/MediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceBinder"
.end annotation


# instance fields
.field private final blacklist mServiceState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/media/MediaBrowserService$ServiceState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Landroid/service/media/MediaBrowserService$ServiceState;)V
    .locals 1

    invoke-direct {p0}, Landroid/service/media/IMediaBrowserService$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->mServiceState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService$ServiceBinder;->setServiceState(Landroid/service/media/MediaBrowserService$ServiceState;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/media/MediaBrowserService$ServiceState;Landroid/service/media/MediaBrowserService$ServiceBinder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/media/MediaBrowserService$ServiceBinder;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;)V

    return-void
.end method

.method static synthetic blacklist lambda$addSubscription$2(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/service/media/MediaBrowserService$ServiceState;->addSubscriptionOnHandler(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic blacklist lambda$connect$0(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;IILandroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Landroid/service/media/MediaBrowserService$ServiceState;->connectOnHandler(Ljava/lang/String;IILandroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    return-void
.end method

.method static synthetic blacklist lambda$disconnect$1(Landroid/service/media/MediaBrowserService$ServiceState;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService$ServiceState;->removeConnectionRecordOnHandler(Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    return-void
.end method

.method static synthetic blacklist lambda$getMediaItem$4(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/ResultReceiver;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/service/media/MediaBrowserService$ServiceState;->performLoadItemOnHandler(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic blacklist lambda$removeSubscription$3(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/IBinder;)V
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Landroid/service/media/MediaBrowserService$ServiceState;->removeSubscriptionOnHandler(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeSubscription for id with no subscription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaBrowserService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public greylist-max-o addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 8

    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->mServiceState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/media/MediaBrowserService$ServiceState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v7, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda4;

    move-object v1, v7

    move-object v2, v0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda4;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v0, v7}, Landroid/service/media/MediaBrowserService$ServiceState;->postOnHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public greylist-max-o addSubscriptionDeprecated(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 11

    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->mServiceState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/media/MediaBrowserService$ServiceState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v0, p1, v9}, Landroid/service/media/MediaBrowserService$ServiceState;->isValidPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v10, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda1;

    move-object v1, v10

    move-object v2, v0

    move-object v3, p1

    move v4, v8

    move v5, v9

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda1;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;IILandroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    invoke-virtual {v0, v10}, Landroid/service/media/MediaBrowserService$ServiceState;->postOnHandler(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package/uid mismatch: uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o disconnect(Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 2

    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->mServiceState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/media/MediaBrowserService$ServiceState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p1}, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda3;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/service/media/MediaBrowserService$ServiceState;->postOnHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public greylist-max-o getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 2

    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->mServiceState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/media/MediaBrowserService$ServiceState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1, p3, p2}, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda2;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Landroid/service/media/MediaBrowserService$ServiceState;->postOnHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public greylist-max-o removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 2

    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->mServiceState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/media/MediaBrowserService$ServiceState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1, p3, p2}, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda0;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/service/media/MediaBrowserService$ServiceState;->postOnHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public greylist-max-o removeSubscriptionDeprecated(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 0

    return-void
.end method

.method public blacklist setServiceState(Landroid/service/media/MediaBrowserService$ServiceState;)V
    .locals 2

    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->mServiceState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
