.class Landroid/service/credentials/CredentialProviderService$1$3;
.super Ljava/lang/Object;
.source "CredentialProviderService.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/credentials/CredentialProviderService$1;->onClearCredentialState(Landroid/service/credentials/ClearCredentialStateRequest;Landroid/service/credentials/IClearCredentialStateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Ljava/lang/Void;",
        "Landroid/credentials/ClearCredentialStateException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/service/credentials/CredentialProviderService$1;

.field final synthetic blacklist val$callback:Landroid/service/credentials/IClearCredentialStateCallback;


# direct methods
.method constructor blacklist <init>(Landroid/service/credentials/CredentialProviderService$1;Landroid/service/credentials/IClearCredentialStateCallback;)V
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

    iput-object p1, p0, Landroid/service/credentials/CredentialProviderService$1$3;->this$1:Landroid/service/credentials/CredentialProviderService$1;

    iput-object p2, p0, Landroid/service/credentials/CredentialProviderService$1$3;->val$callback:Landroid/service/credentials/IClearCredentialStateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/credentials/ClearCredentialStateException;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/service/credentials/CredentialProviderService$1$3;->val$callback:Landroid/service/credentials/IClearCredentialStateCallback;

    invoke-virtual {p1}, Landroid/credentials/ClearCredentialStateException;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/credentials/ClearCredentialStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/service/credentials/IClearCredentialStateCallback;->onFailure(Ljava/lang/String;Ljava/lang/CharSequence;)V
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

    check-cast p1, Landroid/credentials/ClearCredentialStateException;

    invoke-virtual {p0, p1}, Landroid/service/credentials/CredentialProviderService$1$3;->onError(Landroid/credentials/ClearCredentialStateException;)V

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

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/service/credentials/CredentialProviderService$1$3;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public blacklist onResult(Ljava/lang/Void;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/service/credentials/CredentialProviderService$1$3;->val$callback:Landroid/service/credentials/IClearCredentialStateCallback;

    invoke-interface {v0}, Landroid/service/credentials/IClearCredentialStateCallback;->onSuccess()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method
