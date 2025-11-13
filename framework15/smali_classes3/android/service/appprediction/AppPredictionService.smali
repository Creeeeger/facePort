.class public abstract Landroid/service/appprediction/AppPredictionService;
.super Landroid/app/Service;
.source "AppPredictionService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/appprediction/AppPredictionService$CallbackWrapper;,
        Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;
    }
.end annotation


# static fields
.field public static final blacklist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.appprediction.AppPredictionService"

.field private static final blacklist TAG:Ljava/lang/String; = "AppPredictionService"


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mInterface:Landroid/service/appprediction/IPredictionService;

.field private final blacklist mSessionCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/prediction/AppPredictionSessionId;",
            "Ljava/util/ArrayList<",
            "Landroid/service/appprediction/AppPredictionService$CallbackWrapper;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$IcTUs_jsHwL9h4WHwRusV7rpb28(Landroid/service/appprediction/AppPredictionService;Ljava/util/ArrayList;Landroid/service/appprediction/AppPredictionService$CallbackWrapper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/appprediction/AppPredictionService;->lambda$doRegisterPredictionUpdates$1(Ljava/util/ArrayList;Landroid/service/appprediction/AppPredictionService$CallbackWrapper;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tpbS7acrTcBfqLBdGgtcKM0l01A(Landroid/service/appprediction/AppPredictionService;Ljava/util/ArrayList;Landroid/service/appprediction/AppPredictionService$CallbackWrapper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/appprediction/AppPredictionService;->lambda$doRegisterPredictionUpdates$0(Ljava/util/ArrayList;Landroid/service/appprediction/AppPredictionService$CallbackWrapper;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/appprediction/AppPredictionService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/appprediction/AppPredictionService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdoCreatePredictionSession(Landroid/service/appprediction/AppPredictionService;Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/appprediction/AppPredictionService;->doCreatePredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoDestroyPredictionSession(Landroid/service/appprediction/AppPredictionService;Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/appprediction/AppPredictionService;->doDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoRegisterPredictionUpdates(Landroid/service/appprediction/AppPredictionService;Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/appprediction/AppPredictionService;->doRegisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoRequestPredictionUpdate(Landroid/service/appprediction/AppPredictionService;Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/appprediction/AppPredictionService;->doRequestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoUnregisterPredictionUpdates(Landroid/service/appprediction/AppPredictionService;Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/appprediction/AppPredictionService;->doUnregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/appprediction/AppPredictionService;->mSessionCallbacks:Landroid/util/ArrayMap;

    new-instance v0, Landroid/service/appprediction/AppPredictionService$1;

    invoke-direct {v0, p0}, Landroid/service/appprediction/AppPredictionService$1;-><init>(Landroid/service/appprediction/AppPredictionService;)V

    iput-object v0, p0, Landroid/service/appprediction/AppPredictionService;->mInterface:Landroid/service/appprediction/IPredictionService;

    return-void
.end method

.method private blacklist doCreatePredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 2

    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService;->mSessionCallbacks:Landroid/util/ArrayMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Landroid/service/appprediction/AppPredictionService;->onCreatePredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method private blacklist doDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 2

    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService;->mSessionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/service/appprediction/AppPredictionService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/appprediction/AppPredictionService$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/service/appprediction/AppPredictionService;->onDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method private blacklist doRegisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 4

    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService;->mSessionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register for updates for unknown session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppPredictionService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, v0, p2}, Landroid/service/appprediction/AppPredictionService;->findCallbackWrapper(Ljava/util/ArrayList;Landroid/app/prediction/IPredictionCallback;)Landroid/service/appprediction/AppPredictionService$CallbackWrapper;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v2, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;

    new-instance v3, Landroid/service/appprediction/AppPredictionService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Landroid/service/appprediction/AppPredictionService$$ExternalSyntheticLambda0;-><init>(Landroid/service/appprediction/AppPredictionService;Ljava/util/ArrayList;)V

    invoke-direct {v2, p2, v3}, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;-><init>(Landroid/app/prediction/IPredictionCallback;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/service/appprediction/AppPredictionService;->onStartPredictionUpdates()V

    :cond_1
    return-void
.end method

.method private blacklist doRequestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 2

    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService;->mSessionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/service/appprediction/AppPredictionService;->onRequestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V

    :cond_0
    return-void
.end method

.method private blacklist doUnregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 3

    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService;->mSessionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to unregister for updates for unknown session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppPredictionService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, v0, p2}, Landroid/service/appprediction/AppPredictionService;->findCallbackWrapper(Ljava/util/ArrayList;Landroid/app/prediction/IPredictionCallback;)Landroid/service/appprediction/AppPredictionService$CallbackWrapper;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/service/appprediction/AppPredictionService;->removeCallbackWrapper(Ljava/util/ArrayList;Landroid/service/appprediction/AppPredictionService$CallbackWrapper;)V

    return-void
.end method

.method private blacklist findCallbackWrapper(Ljava/util/ArrayList;Landroid/app/prediction/IPredictionCallback;)Landroid/service/appprediction/AppPredictionService$CallbackWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/service/appprediction/AppPredictionService$CallbackWrapper;",
            ">;",
            "Landroid/app/prediction/IPredictionCallback;",
            ")",
            "Landroid/service/appprediction/AppPredictionService$CallbackWrapper;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;

    invoke-virtual {v1, p2}, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;->isCallback(Landroid/app/prediction/IPredictionCallback;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic blacklist lambda$doRegisterPredictionUpdates$0(Ljava/util/ArrayList;Landroid/service/appprediction/AppPredictionService$CallbackWrapper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/appprediction/AppPredictionService;->removeCallbackWrapper(Ljava/util/ArrayList;Landroid/service/appprediction/AppPredictionService$CallbackWrapper;)V

    return-void
.end method

.method private synthetic blacklist lambda$doRegisterPredictionUpdates$1(Ljava/util/ArrayList;Landroid/service/appprediction/AppPredictionService$CallbackWrapper;)V
    .locals 2

    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/appprediction/AppPredictionService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/appprediction/AppPredictionService$$ExternalSyntheticLambda1;-><init>(Landroid/service/appprediction/AppPredictionService;Ljava/util/ArrayList;Landroid/service/appprediction/AppPredictionService$CallbackWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist removeCallbackWrapper(Ljava/util/ArrayList;Landroid/service/appprediction/AppPredictionService$CallbackWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/service/appprediction/AppPredictionService$CallbackWrapper;",
            ">;",
            "Landroid/service/appprediction/AppPredictionService$CallbackWrapper;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;->destroy()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/service/appprediction/AppPredictionService;->onStopPredictionUpdates()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract whitelist onAppTargetEvent(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "android.service.appprediction.AppPredictionService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService;->mInterface:Landroid/service/appprediction/IPredictionService;

    invoke-interface {v0}, Landroid/service/appprediction/IPredictionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to bind to wrong intent (should be android.service.appprediction.AppPredictionService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppPredictionService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/appprediction/AppPredictionService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public whitelist onCreatePredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 0

    return-void
.end method

.method public whitelist onDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 0

    return-void
.end method

.method public abstract whitelist onLaunchLocationShown(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/prediction/AppPredictionSessionId;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTargetId;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onRequestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V
.end method

.method public blacklist onRequestServiceFeatures(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/prediction/AppPredictionSessionId;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract whitelist onSortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/List;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/prediction/AppPredictionSessionId;",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public whitelist onStartPredictionUpdates()V
    .locals 0

    return-void
.end method

.method public whitelist onStopPredictionUpdates()V
    .locals 0

    return-void
.end method

.method public final whitelist updatePredictions(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/prediction/AppPredictionSessionId;",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService;->mSessionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;

    invoke-virtual {v2, p2}, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;->accept(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method
