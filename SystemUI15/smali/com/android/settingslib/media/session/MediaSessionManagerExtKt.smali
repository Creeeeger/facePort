.class public abstract Lcom/android/settingslib/media/session/MediaSessionManagerExtKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final getActiveMediaChanges(Landroid/media/session/MediaSessionManager;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    new-instance v0, Lcom/android/settingslib/media/session/MediaSessionManagerExtKt$activeMediaChanges$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/media/session/MediaSessionManagerExtKt$activeMediaChanges$1;-><init>(Landroid/media/session/MediaSessionManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final getDefaultRemoteSessionChanged(Landroid/media/session/MediaSessionManager;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    new-instance v0, Lcom/android/settingslib/media/session/MediaSessionManagerExtKt$defaultRemoteSessionChanged$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/media/session/MediaSessionManagerExtKt$defaultRemoteSessionChanged$1;-><init>(Landroid/media/session/MediaSessionManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
