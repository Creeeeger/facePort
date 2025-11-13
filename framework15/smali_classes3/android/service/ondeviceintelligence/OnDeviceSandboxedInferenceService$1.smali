.class Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;
.super Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService$Stub;
.source "OnDeviceSandboxedInferenceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;


# direct methods
.method constructor blacklist <init>(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    invoke-direct {p0}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist processRequest(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IResponseCallback;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    :cond_0
    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/app/ondeviceintelligence/ProcessingSignal;->createTransport()Landroid/app/ondeviceintelligence/IProcessingSignal;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    :cond_1
    iget-object v5, v0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    invoke-static {v5}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->-$$Nest$fgetmHandler(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1$$ExternalSyntheticLambda3;-><init>()V

    iget-object v7, v0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v3}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v12

    invoke-static {v4}, Landroid/app/ondeviceintelligence/ProcessingSignal;->fromTransport(Landroid/app/ondeviceintelligence/IProcessingSignal;)Landroid/app/ondeviceintelligence/ProcessingSignal;

    move-result-object v13

    iget-object v9, v0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    move-object/from16 v15, p7

    invoke-static {v9, v15}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->-$$Nest$mwrapResponseCallback(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;Landroid/app/ondeviceintelligence/IResponseCallback;)Landroid/app/ondeviceintelligence/ProcessingCallback;

    move-result-object v14

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-static/range {v6 .. v14}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/OctConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist processRequestStreaming(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    :cond_0
    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/app/ondeviceintelligence/ProcessingSignal;->createTransport()Landroid/app/ondeviceintelligence/IProcessingSignal;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    :cond_1
    iget-object v5, v0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    invoke-static {v5}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->-$$Nest$fgetmHandler(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v7, v0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v3}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v12

    invoke-static {v4}, Landroid/app/ondeviceintelligence/ProcessingSignal;->fromTransport(Landroid/app/ondeviceintelligence/IProcessingSignal;)Landroid/app/ondeviceintelligence/ProcessingSignal;

    move-result-object v13

    iget-object v9, v0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    move-object/from16 v15, p7

    invoke-static {v9, v15}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->-$$Nest$mwrapStreamingResponseCallback(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)Landroid/app/ondeviceintelligence/StreamingProcessingCallback;

    move-result-object v14

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-static/range {v6 .. v14}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/OctConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist registerRemoteStorageService(Landroid/service/ondeviceintelligence/IRemoteStorageService;Landroid/os/IRemoteCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    invoke-static {v0, p1}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->-$$Nest$fputmRemoteStorageService(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;Landroid/service/ondeviceintelligence/IRemoteStorageService;)V

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public blacklist requestTokenInfo(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/ITokenInfoCallback;)V
    .locals 9

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    invoke-static {v1}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->-$$Nest$fgetmHandler(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v3, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v7

    iget-object v5, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    invoke-static {v5, p5}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->-$$Nest$mwrapTokenInfoCallback(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;Landroid/app/ondeviceintelligence/ITokenInfoCallback;)Landroid/os/OutcomeReceiver;

    move-result-object v8

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist updateProcessingState(Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)V
    .locals 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    invoke-static {v0}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->-$$Nest$fgetmHandler(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    invoke-static {p2}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->-$$Nest$smwrapOutcomeReceiver(Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)Landroid/os/OutcomeReceiver;

    move-result-object v3

    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    return-void
.end method
