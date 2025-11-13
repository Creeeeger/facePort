.class Landroid/app/appfunctions/AppFunctionService$1$1;
.super Ljava/lang/Object;
.source "AppFunctionService.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/appfunctions/AppFunctionService$1;->executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/lang/String;Landroid/app/appfunctions/ICancellationCallback;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Landroid/app/appfunctions/ExecuteAppFunctionResponse;",
        "Landroid/app/appfunctions/AppFunctionException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/appfunctions/AppFunctionService$1;

.field final synthetic blacklist val$safeCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;


# direct methods
.method constructor blacklist <init>(Landroid/app/appfunctions/AppFunctionService$1;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/appfunctions/AppFunctionService$1$1;->this$0:Landroid/app/appfunctions/AppFunctionService$1;

    iput-object p2, p0, Landroid/app/appfunctions/AppFunctionService$1$1;->val$safeCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/app/appfunctions/AppFunctionException;)V
    .locals 1

    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionService$1$1;->val$safeCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    invoke-virtual {v0, p1}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    return-void
.end method

.method public bridge synthetic whitelist onError(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/app/appfunctions/AppFunctionException;

    invoke-virtual {p0, p1}, Landroid/app/appfunctions/AppFunctionService$1$1;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    return-void
.end method

.method public blacklist onResult(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V
    .locals 1

    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionService$1$1;->val$safeCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    invoke-virtual {v0, p1}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onResult(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V

    return-void
.end method

.method public bridge synthetic whitelist onResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/app/appfunctions/ExecuteAppFunctionResponse;

    invoke-virtual {p0, p1}, Landroid/app/appfunctions/AppFunctionService$1$1;->onResult(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V

    return-void
.end method
