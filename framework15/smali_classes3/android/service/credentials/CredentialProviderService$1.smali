.class Landroid/service/credentials/CredentialProviderService$1;
.super Landroid/service/credentials/ICredentialProviderService$Stub;
.source "CredentialProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/credentials/CredentialProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/credentials/CredentialProviderService;


# direct methods
.method constructor blacklist <init>(Landroid/service/credentials/CredentialProviderService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/credentials/CredentialProviderService$1;->this$0:Landroid/service/credentials/CredentialProviderService;

    invoke-direct {p0}, Landroid/service/credentials/ICredentialProviderService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onBeginCreateCredential(Landroid/service/credentials/BeginCreateCredentialRequest;Landroid/service/credentials/IBeginCreateCredentialCallback;)V
    .locals 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    :try_start_0
    invoke-interface {p2, v0}, Landroid/service/credentials/IBeginCreateCredentialCallback;->onCancellable(Landroid/os/ICancellationSignal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    iget-object v1, p0, Landroid/service/credentials/CredentialProviderService$1;->this$0:Landroid/service/credentials/CredentialProviderService;

    invoke-static {v1}, Landroid/service/credentials/CredentialProviderService;->-$$Nest$fgetmHandler(Landroid/service/credentials/CredentialProviderService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/service/credentials/CredentialProviderService$1$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/service/credentials/CredentialProviderService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v3, p0, Landroid/service/credentials/CredentialProviderService$1;->this$0:Landroid/service/credentials/CredentialProviderService;

    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    new-instance v5, Landroid/service/credentials/CredentialProviderService$1$2;

    invoke-direct {v5, p0, p2}, Landroid/service/credentials/CredentialProviderService$1$2;-><init>(Landroid/service/credentials/CredentialProviderService$1;Landroid/service/credentials/IBeginCreateCredentialCallback;)V

    invoke-static {v2, v3, p1, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist onBeginGetCredential(Landroid/service/credentials/BeginGetCredentialRequest;Landroid/service/credentials/IBeginGetCredentialCallback;)V
    .locals 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    :try_start_0
    invoke-interface {p2, v0}, Landroid/service/credentials/IBeginGetCredentialCallback;->onCancellable(Landroid/os/ICancellationSignal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    iget-object v1, p0, Landroid/service/credentials/CredentialProviderService$1;->this$0:Landroid/service/credentials/CredentialProviderService;

    invoke-static {v1}, Landroid/service/credentials/CredentialProviderService;->-$$Nest$fgetmHandler(Landroid/service/credentials/CredentialProviderService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/service/credentials/CredentialProviderService$1$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/service/credentials/CredentialProviderService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v3, p0, Landroid/service/credentials/CredentialProviderService$1;->this$0:Landroid/service/credentials/CredentialProviderService;

    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    new-instance v5, Landroid/service/credentials/CredentialProviderService$1$1;

    invoke-direct {v5, p0, p2}, Landroid/service/credentials/CredentialProviderService$1$1;-><init>(Landroid/service/credentials/CredentialProviderService$1;Landroid/service/credentials/IBeginGetCredentialCallback;)V

    invoke-static {v2, v3, p1, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist onClearCredentialState(Landroid/service/credentials/ClearCredentialStateRequest;Landroid/service/credentials/IClearCredentialStateCallback;)V
    .locals 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    :try_start_0
    invoke-interface {p2, v0}, Landroid/service/credentials/IClearCredentialStateCallback;->onCancellable(Landroid/os/ICancellationSignal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    iget-object v1, p0, Landroid/service/credentials/CredentialProviderService$1;->this$0:Landroid/service/credentials/CredentialProviderService;

    invoke-static {v1}, Landroid/service/credentials/CredentialProviderService;->-$$Nest$fgetmHandler(Landroid/service/credentials/CredentialProviderService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/service/credentials/CredentialProviderService$1$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/service/credentials/CredentialProviderService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v3, p0, Landroid/service/credentials/CredentialProviderService$1;->this$0:Landroid/service/credentials/CredentialProviderService;

    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    new-instance v5, Landroid/service/credentials/CredentialProviderService$1$3;

    invoke-direct {v5, p0, p2}, Landroid/service/credentials/CredentialProviderService$1$3;-><init>(Landroid/service/credentials/CredentialProviderService$1;Landroid/service/credentials/IClearCredentialStateCallback;)V

    invoke-static {v2, v3, p1, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
