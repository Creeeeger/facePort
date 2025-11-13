.class public abstract Lcom/samsung/android/sume/core/service/ServiceStub;
.super Landroid/app/Service;
.source "ServiceStub.java"


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

.field protected blacklist mediaFilterControllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sume/core/controller/MediaFilterController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/samsung/android/sume/core/service/ServiceStub;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/service/ServiceStub;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceStub;->exitTimer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceStub;->mediaFilterControllers:Ljava/util/Map;

    return-void
.end method

.method private blacklist onIntentReceived(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 75
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/service/ServiceStub$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/service/ServiceStub$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "n/a"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/sume/core/service/ServiceStub;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string/jumbo v1, "start-foreground"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const-string v1, "activity-intent"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 80
    .local v1, "activityIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/samsung/android/sume/core/service/ServiceStub;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .end local v1    # "activityIntent":Landroid/content/Intent;
    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/service/ServiceStub;->stopForegroundServiceStub()V

    goto :goto_1

    .line 81
    :cond_1
    :goto_0
    nop

    .line 84
    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceStub;->exitTimer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    .line 36
    .local v0, "timer":Ljava/util/Timer;
    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 38
    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sume/core/service/ServiceStub;->exitTimer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/service/ServiceStub;->onIntentReceived(Landroid/content/Intent;)V

    .line 42
    return-object v2
.end method

.method public whitelist onRebind(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceStub;->exitTimer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    .line 48
    .local v0, "timer":Ljava/util/Timer;
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 50
    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sume/core/service/ServiceStub;->exitTimer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/service/ServiceStub;->onIntentReceived(Landroid/content/Intent;)V

    .line 54
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 55
    return-void
.end method

.method public whitelist onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "startId"
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/samsung/android/sume/core/service/ServiceStub;->TAG:Ljava/lang/String;

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/service/ServiceStub;->onIntentReceived(Landroid/content/Intent;)V

    .line 29
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public whitelist onUnbind(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceStub;->mediaFilterControllers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    .local v0, "delay":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/util/concurrent/TimeUnit;>;"
    sget-object v1, Lcom/samsung/android/sume/core/service/ServiceStub;->TAG:Ljava/lang/String;

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

    .line 64
    new-instance v1, Ljava/util/Timer;

    const-string v2, "Self-stop SumeNNService"

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, "timer":Ljava/util/Timer;
    iget-object v2, p0, Lcom/samsung/android/sume/core/service/ServiceStub;->exitTimer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 66
    new-instance v2, Lcom/samsung/android/sume/core/service/ServiceStub$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/sume/core/service/ServiceStub$1;-><init>(Lcom/samsung/android/sume/core/service/ServiceStub;)V

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/TimeUnit;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 69
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    .line 66
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 71
    .end local v0    # "delay":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/util/concurrent/TimeUnit;>;"
    .end local v1    # "timer":Ljava/util/Timer;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected abstract blacklist startForegroundServiceStub(Landroid/content/Intent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation
.end method

.method protected abstract blacklist stopForegroundServiceStub()V
.end method
