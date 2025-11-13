.class public final Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsInternalService;
.super Ljava/lang/Object;
.source "SmartThingsInternalService.java"


# direct methods
.method public static synthetic $r8$lambda$QLpJasJElwurdLzhZF4C7VOtgYo(Landroid/content/Context;Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;)Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsInternalService;->lambda$acquire0$1(Landroid/content/Context;Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;)Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget-boolean v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/DebugHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsInternalService$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsInternalService$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;->setLogPrinter(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger$LogPrinter;)V

    :cond_0
    return-void
.end method

.method public static acquire(Landroid/content/Context;Lcom/samsung/android/sdk/smartthings/headless/companionservice/Query;)Lio/reactivex/Single;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/smartthings/headless/companionservice/Query<",
            "TR;>;)",
            "Lio/reactivex/Single<",
            "TR;>;"
        }
    .end annotation

    .line 99
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsInternalService;->acquire0(Landroid/content/Context;Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method public static acquire(Landroid/content/Context;Lcom/samsung/android/sdk/smartthings/headless/companionservice/Update;)Lio/reactivex/Single;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/smartthings/headless/companionservice/Update<",
            "TR;>;)",
            "Lio/reactivex/Single<",
            "TR;>;"
        }
    .end annotation

    .line 111
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsInternalService;->acquire0(Landroid/content/Context;Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method private static acquire0(Landroid/content/Context;Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request<",
            "TR;>;)",
            "Lio/reactivex/Single<",
            "TR;>;"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "caller-package"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;->putParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    new-instance v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsInternalService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsInternalService$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;)V

    new-instance p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsInternalService$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsInternalService$$ExternalSyntheticLambda1;-><init>()V

    new-instance p1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsInternalService$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsInternalService$$ExternalSyntheticLambda2;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lio/reactivex/Single;->using(Ljava/util/concurrent/Callable;Lio/reactivex/functions/Function;Lio/reactivex/functions/Consumer;Z)Lio/reactivex/Single;

    move-result-object p0

    .line 121
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$acquire0$1(Landroid/content/Context;Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;)Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->createExecutor(Landroid/content/Context;Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;)Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;

    move-result-object p0

    return-object p0
.end method
