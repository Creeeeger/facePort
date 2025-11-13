.class public final Landroid/app/appfunctions/AppFunctionManager;
.super Ljava/lang/Object;
.source "AppFunctionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;,
        Landroid/app/appfunctions/AppFunctionManager$EnabledState;
    }
.end annotation


# static fields
.field public static final blacklist APP_FUNCTION_STATE_DEFAULT:I = 0x0

.field public static final blacklist APP_FUNCTION_STATE_DISABLED:I = 0x2

.field public static final blacklist APP_FUNCTION_STATE_ENABLED:I = 0x1


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/app/appfunctions/IAppFunctionManager;


# direct methods
.method public constructor blacklist <init>(Landroid/app/appfunctions/IAppFunctionManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/appfunctions/AppFunctionManager;->mService:Landroid/app/appfunctions/IAppFunctionManager;

    iput-object p2, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist isAppFunctionEnabledInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/appsearch/AppSearchManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/AppSearchManager;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get AppSearchManager."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-static {p1, p2, v0, p3, p4}, Landroid/app/appfunctions/AppFunctionManagerHelper;->isAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method


# virtual methods
.method public blacklist executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appfunctions/ExecuteAppFunctionRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/CancellationSignal;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/appfunctions/ExecuteAppFunctionResponse;",
            "Landroid/app/appfunctions/AppFunctionException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;-><init>(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Landroid/os/UserHandle;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionManager;->mService:Landroid/app/appfunctions/IAppFunctionManager;

    new-instance v2, Landroid/app/appfunctions/AppFunctionManager$1;

    invoke-direct {v2, p0, p2, p4}, Landroid/app/appfunctions/AppFunctionManager$1;-><init>(Landroid/app/appfunctions/AppFunctionManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v1, v0, v2}, Landroid/app/appfunctions/IAppFunctionManager;->executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)Landroid/os/ICancellationSignal;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p3, v1}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist isAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/appfunctions/AppFunctionManager;->isAppFunctionEnabledInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method public blacklist isAppFunctionEnabled(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/app/appfunctions/AppFunctionManager;->isAppFunctionEnabledInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method public blacklist setAppFunctionEnabled(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;

    invoke-direct {v5, p3, p4}, Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    :try_start_0
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager;->mService:Landroid/app/appfunctions/IAppFunctionManager;

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    move-object v2, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/appfunctions/IAppFunctionManager;->setAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
