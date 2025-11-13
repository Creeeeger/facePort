.class Landroid/app/appfunctions/AppFunctionService$1;
.super Landroid/app/appfunctions/IAppFunctionService$Stub;
.source "AppFunctionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/appfunctions/AppFunctionService;->createBinder(Landroid/content/Context;Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;)Landroid/os/Binder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$context:Landroid/content/Context;

.field final synthetic blacklist val$onExecuteFunction:Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;)V
    .locals 0

    iput-object p1, p0, Landroid/app/appfunctions/AppFunctionService$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/appfunctions/AppFunctionService$1;->val$onExecuteFunction:Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;

    invoke-direct {p0}, Landroid/app/appfunctions/IAppFunctionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/lang/String;Landroid/app/appfunctions/ICancellationCallback;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V
    .locals 5

    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionService$1;->val$context:Landroid/content/Context;

    const-string v1, "android.permission.BIND_APP_FUNCTION_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    invoke-direct {v0, p4}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;-><init>(Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V

    :try_start_0
    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionService$1;->val$onExecuteFunction:Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;

    invoke-static {p3}, Landroid/app/appfunctions/AppFunctionService;->-$$Nest$smbuildCancellationSignal(Landroid/app/appfunctions/ICancellationCallback;)Landroid/os/CancellationSignal;

    move-result-object v2

    new-instance v3, Landroid/app/appfunctions/AppFunctionService$1$1;

    invoke-direct {v3, p0, v0}, Landroid/app/appfunctions/AppFunctionService$1$1;-><init>(Landroid/app/appfunctions/AppFunctionService$1;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;)V

    invoke-interface {v1, p1, p2, v2, v3}, Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;->perform(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/lang/String;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Landroid/app/appfunctions/AppFunctionException;

    invoke-static {v1}, Landroid/app/appfunctions/AppFunctionService;->-$$Nest$smtoErrorCode(Ljava/lang/Throwable;)I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by the system server."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
