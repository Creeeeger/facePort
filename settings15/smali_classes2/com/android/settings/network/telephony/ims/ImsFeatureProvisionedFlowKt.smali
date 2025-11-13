.class public abstract Lcom/android/settings/network/telephony/ims/ImsFeatureProvisionedFlowKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final imsFeatureProvisionedFlow(IIILandroid/telephony/ims/ProvisioningManager;)Lkotlinx/coroutines/flow/Flow;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Landroid/telephony/ims/ProvisioningManager;",
            ")",
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation

    const-string v0, "provisioningManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/network/telephony/ims/ImsFeatureProvisionedFlowKt$imsFeatureProvisionedFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p1, p2, v1}, Lcom/android/settings/network/telephony/ims/ImsFeatureProvisionedFlowKt$imsFeatureProvisionedFlow$1;-><init>(Landroid/telephony/ims/ProvisioningManager;IILkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p3

    new-instance v0, Lcom/android/settings/network/telephony/ims/ImsFeatureProvisionedFlowKt$imsFeatureProvisionedFlow$2;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/telephony/ims/ImsFeatureProvisionedFlowKt$imsFeatureProvisionedFlow$2;-><init>(ILkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;

    invoke-direct {v2, p3, v0}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    const/4 p3, -0x1

    invoke-static {v2, p3}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    new-instance v0, Lcom/android/settings/network/telephony/ims/ImsFeatureProvisionedFlowKt$imsFeatureProvisionedFlow$3;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/settings/network/telephony/ims/ImsFeatureProvisionedFlowKt$imsFeatureProvisionedFlow$3;-><init>(IIILkotlin/coroutines/Continuation;)V

    invoke-static {p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    move-result-object p0

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
