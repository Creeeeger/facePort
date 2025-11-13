.class Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1$1;
.super Ljava/lang/Object;
.source "RemoteLockscreenValidationService.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1;->validateLockscreenGuess([BLandroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Landroid/app/RemoteLockscreenValidationResult;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1;

.field final synthetic blacklist val$callback:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;


# direct methods
.method constructor blacklist <init>(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1;Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1$1;->this$1:Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1;

    iput-object p2, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1$1;->val$callback:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Ljava/lang/Exception;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1$1;->val$callback:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;->onFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
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

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1$1;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public blacklist onResult(Landroid/app/RemoteLockscreenValidationResult;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1$1;->val$callback:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;

    invoke-interface {v0, p1}, Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;->onSuccess(Landroid/app/RemoteLockscreenValidationResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
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

    check-cast p1, Landroid/app/RemoteLockscreenValidationResult;

    invoke-virtual {p0, p1}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1$1;->onResult(Landroid/app/RemoteLockscreenValidationResult;)V

    return-void
.end method
