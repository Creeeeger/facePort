.class Landroid/service/autofill/AutofillService$1;
.super Landroid/service/autofill/IAutoFillService$Stub;
.source "AutofillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/AutofillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/autofill/AutofillService;


# direct methods
.method constructor blacklist <init>(Landroid/service/autofill/AutofillService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-direct {p0}, Landroid/service/autofill/IAutoFillService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onConnectedStateChanged(Z)V
    .locals 3

    iget-object v0, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-static {v0}, Landroid/service/autofill/AutofillService;->-$$Nest$fgetmHandler(Landroid/service/autofill/AutofillService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz p1, :cond_0

    new-instance v1, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda5;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda6;-><init>()V

    :goto_0
    iget-object v2, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist onConvertCredentialRequest(Landroid/service/autofill/ConvertCredentialRequest;Landroid/service/autofill/IConvertCredentialCallback;)V
    .locals 4

    iget-object v0, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-static {v0}, Landroid/service/autofill/AutofillService;->-$$Nest$fgetmHandler(Landroid/service/autofill/AutofillService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    new-instance v3, Landroid/service/autofill/ConvertCredentialCallback;

    invoke-direct {v3, p2}, Landroid/service/autofill/ConvertCredentialCallback;-><init>(Landroid/service/autofill/IConvertCredentialCallback;)V

    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist onFillCredentialRequest(Landroid/service/autofill/FillRequest;Landroid/service/autofill/IFillCallback;Landroid/os/IBinder;)V
    .locals 8

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    :try_start_0
    invoke-interface {p2, v0}, Landroid/service/autofill/IFillCallback;->onCancellable(Landroid/os/ICancellationSignal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    iget-object v1, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-static {v1}, Landroid/service/autofill/AutofillService;->-$$Nest$fgetmHandler(Landroid/service/autofill/AutofillService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v3, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v5

    new-instance v6, Landroid/service/autofill/FillCallback;

    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v4

    invoke-direct {v6, p2, v4}, Landroid/service/autofill/FillCallback;-><init>(Landroid/service/autofill/IFillCallback;I)V

    move-object v4, p1

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist onFillRequest(Landroid/service/autofill/FillRequest;Landroid/service/autofill/IFillCallback;)V
    .locals 7

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    :try_start_0
    invoke-interface {p2, v0}, Landroid/service/autofill/IFillCallback;->onCancellable(Landroid/os/ICancellationSignal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    iget-object v1, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-static {v1}, Landroid/service/autofill/AutofillService;->-$$Nest$fgetmHandler(Landroid/service/autofill/AutofillService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v3, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    new-instance v5, Landroid/service/autofill/FillCallback;

    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v6

    invoke-direct {v5, p2, v6}, Landroid/service/autofill/FillCallback;-><init>(Landroid/service/autofill/IFillCallback;I)V

    invoke-static {v2, v3, p1, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist onSaveRequest(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/ISaveCallback;)V
    .locals 4

    iget-object v0, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-static {v0}, Landroid/service/autofill/AutofillService;->-$$Nest$fgetmHandler(Landroid/service/autofill/AutofillService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    new-instance v3, Landroid/service/autofill/SaveCallback;

    invoke-direct {v3, p2}, Landroid/service/autofill/SaveCallback;-><init>(Landroid/service/autofill/ISaveCallback;)V

    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist onSavedPasswordCountRequest(Lcom/android/internal/os/IResultReceiver;)V
    .locals 5

    iget-object v0, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-static {v0}, Landroid/service/autofill/AutofillService;->-$$Nest$fgetmHandler(Landroid/service/autofill/AutofillService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/autofill/AutofillService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    new-instance v3, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;

    const-string/jumbo v4, "passwords"

    invoke-direct {v3, p1, v4}, Landroid/service/autofill/SavedDatasetsInfoCallbackImpl;-><init>(Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
