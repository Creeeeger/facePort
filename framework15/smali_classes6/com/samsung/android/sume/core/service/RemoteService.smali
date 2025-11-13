.class public abstract Lcom/samsung/android/sume/core/service/RemoteService;
.super Lcom/samsung/android/sume/core/service/ServiceStub;
.source "RemoteService.java"

# interfaces
.implements Lcom/samsung/android/sume/core/service/ServiceController;
.implements Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/service/RemoteService$IncommingHandler;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected blacklist exitTimer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/Timer;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist replyListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist requestMessenger:Landroid/os/Messenger;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/service/RemoteService;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/service/RemoteService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sume/core/service/ServiceStub;-><init>()V

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/samsung/android/sume/core/service/RemoteService$IncommingHandler;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/service/RemoteService$IncommingHandler;-><init>(Lcom/samsung/android/sume/core/service/RemoteService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/RemoteService;->requestMessenger:Landroid/os/Messenger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/RemoteService;->replyListeners:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/RemoteService;->exitTimer:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static synthetic blacklist access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/service/RemoteService;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/RemoteService;->exitTimer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sume/core/service/RemoteService;->exitTimer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object v2
.end method

.method public whitelist onRebind(Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/RemoteService;->exitTimer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sume/core/service/RemoteService;->exitTimer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/service/ServiceStub;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public whitelist onUnbind(Landroid/content/Intent;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/RemoteService;->mediaFilterControllers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/sume/core/service/RemoteService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "all clients are disconnected, run exit-timer["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to stop service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/Timer;

    const-string v2, "Self-stop SumeNNService"

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sume/core/service/RemoteService;->exitTimer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v2, Lcom/samsung/android/sume/core/service/RemoteService$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/sume/core/service/RemoteService$1;-><init>(Lcom/samsung/android/sume/core/service/RemoteService;)V

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/TimeUnit;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/service/ServiceStub;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public blacklist request(ILcom/samsung/android/sume/core/message/Request;)Lcom/samsung/android/sume/core/message/ResponseHolder;
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/service/ServiceStub;->request(ILcom/samsung/android/sume/core/message/Request;)Lcom/samsung/android/sume/core/message/ResponseHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/message/ResponseHolder;->contains()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/message/Request;->getCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/service/RemoteService;->releaseMediaFilterController(I)V

    invoke-static {p2}, Lcom/samsung/android/sume/core/message/Response;->of(Lcom/samsung/android/sume/core/message/Message;)Lcom/samsung/android/sume/core/message/Response;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/service/RemoteService;->replyListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/core/message/Response;->setResponseReceiver(Landroid/os/Messenger;)Lcom/samsung/android/sume/core/message/Message;

    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/message/ResponseHolder;->put(Lcom/samsung/android/sume/core/message/Response;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/service/RemoteService;->createMediaFilterController()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/service/RemoteService;->replyListeners:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/message/Request;->getResponseReceiver()Landroid/os/Messenger;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/samsung/android/sume/core/message/Response;->of(Lcom/samsung/android/sume/core/message/Message;)Lcom/samsung/android/sume/core/message/Response;

    move-result-object v2

    const-string v3, "id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sume/core/message/Response;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sume/core/message/ResponseHolder;->put(Lcom/samsung/android/sume/core/message/Response;)V

    nop

    :cond_1
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x389
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
