.class public abstract Landroid/app/appfunctions/AppFunctionService;
.super Landroid/app/Service;
.source "AppFunctionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;
    }
.end annotation


# static fields
.field public static final blacklist SERVICE_INTERFACE:Ljava/lang/String; = "android.app.appfunctions.AppFunctionService"


# instance fields
.field private final blacklist mBinder:Landroid/os/Binder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smbuildCancellationSignal(Landroid/app/appfunctions/ICancellationCallback;)Landroid/os/CancellationSignal;
    .locals 0

    invoke-static {p0}, Landroid/app/appfunctions/AppFunctionService;->buildCancellationSignal(Landroid/app/appfunctions/ICancellationCallback;)Landroid/os/CancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smtoErrorCode(Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0}, Landroid/app/appfunctions/AppFunctionService;->toErrorCode(Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/app/appfunctions/AppFunctionService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/app/appfunctions/AppFunctionService$$ExternalSyntheticLambda0;-><init>(Landroid/app/appfunctions/AppFunctionService;)V

    invoke-static {p0, v0}, Landroid/app/appfunctions/AppFunctionService;->createBinder(Landroid/content/Context;Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;)Landroid/os/Binder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appfunctions/AppFunctionService;->mBinder:Landroid/os/Binder;

    return-void
.end method

.method private static blacklist buildCancellationSignal(Landroid/app/appfunctions/ICancellationCallback;)Landroid/os/CancellationSignal;
    .locals 4

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    nop

    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v1

    :try_start_0
    invoke-interface {p0, v0}, Landroid/app/appfunctions/ICancellationCallback;->sendCancellationTransport(Landroid/os/ICancellationSignal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public static blacklist createBinder(Landroid/content/Context;Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;)Landroid/os/Binder;
    .locals 1

    new-instance v0, Landroid/app/appfunctions/AppFunctionService$1;

    invoke-direct {v0, p0, p1}, Landroid/app/appfunctions/AppFunctionService$1;-><init>(Landroid/content/Context;Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;)V

    return-object v0
.end method

.method private static blacklist toErrorCode(Ljava/lang/Throwable;)I
    .locals 1

    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_0

    const/16 v0, 0x3e9

    return v0

    :cond_0
    const/16 v0, 0xbb8

    return v0
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionService;->mBinder:Landroid/os/Binder;

    return-object v0
.end method

.method public abstract blacklist onExecuteFunction(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/lang/String;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appfunctions/ExecuteAppFunctionRequest;",
            "Ljava/lang/String;",
            "Landroid/os/CancellationSignal;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/appfunctions/ExecuteAppFunctionResponse;",
            "Landroid/app/appfunctions/AppFunctionException;",
            ">;)V"
        }
    .end annotation
.end method
