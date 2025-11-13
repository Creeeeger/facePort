.class public final Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $currentOnBack$delegate:Landroidx/compose/runtime/State;

.field public final synthetic $onBackScope:Lkotlinx/coroutines/CoroutineScope;

.field public onBackInstance:Landroidx/activity/compose/OnBackInstance;


# direct methods
.method public constructor <init>(ZLkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    iput-object p2, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->$onBackScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->$currentOnBack$delegate:Landroidx/compose/runtime/State;

    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final handleOnBackCancelled()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->onBackInstance:Landroidx/activity/compose/OnBackInstance;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/compose/OnBackInstance;->cancel()V

    :cond_0
    return-void
.end method

.method public final handleOnBackPressed()V
    .locals 5

    iget-object v0, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->onBackInstance:Landroidx/activity/compose/OnBackInstance;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroidx/activity/compose/OnBackInstance;->isPredictiveBack:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroidx/activity/compose/OnBackInstance;->cancel()V

    iput-object v1, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->onBackInstance:Landroidx/activity/compose/OnBackInstance;

    :cond_0
    iget-object v0, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->onBackInstance:Landroidx/activity/compose/OnBackInstance;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/activity/compose/OnBackInstance;

    iget-object v2, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->$currentOnBack$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iget-object v3, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->$onBackScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Landroidx/activity/compose/OnBackInstance;-><init>(Lkotlinx/coroutines/CoroutineScope;ZLkotlin/jvm/functions/Function2;)V

    iput-object v0, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->onBackInstance:Landroidx/activity/compose/OnBackInstance;

    :cond_1
    iget-object p0, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->onBackInstance:Landroidx/activity/compose/OnBackInstance;

    if-eqz p0, :cond_2

    iget-object p0, p0, Landroidx/activity/compose/OnBackInstance;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->close(Ljava/lang/Throwable;)Z

    :cond_2
    return-void
.end method

.method public final handleOnBackProgressed(Landroidx/activity/BackEventCompat;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/activity/OnBackPressedCallback;->handleOnBackProgressed(Landroidx/activity/BackEventCompat;)V

    iget-object p0, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->onBackInstance:Landroidx/activity/compose/OnBackInstance;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/activity/compose/OnBackInstance;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final handleOnBackStarted(Landroidx/activity/BackEventCompat;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/activity/OnBackPressedCallback;->handleOnBackStarted(Landroidx/activity/BackEventCompat;)V

    iget-object p1, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->onBackInstance:Landroidx/activity/compose/OnBackInstance;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/activity/compose/OnBackInstance;->cancel()V

    :cond_0
    new-instance p1, Landroidx/activity/compose/OnBackInstance;

    iget-object v0, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->$currentOnBack$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->$onBackScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2, v0}, Landroidx/activity/compose/OnBackInstance;-><init>(Lkotlinx/coroutines/CoroutineScope;ZLkotlin/jvm/functions/Function2;)V

    iput-object p1, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;->onBackInstance:Landroidx/activity/compose/OnBackInstance;

    return-void
.end method
