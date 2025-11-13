.class final Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$inflate$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$inflate$2;->this$0:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;

    iput-object p2, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$inflate$2;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$inflate$2;

    iget-object v0, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$inflate$2;->this$0:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;

    iget-object p0, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$inflate$2;->$context:Landroid/content/Context;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$inflate$2;-><init>(Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$inflate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$inflate$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$inflate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$inflate$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$inflate$2;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$inflate$2;->this$0:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;

    iget-object p1, p1, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->asyncLayoutInflaterFactory:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$inflate$2;->$context:Landroid/content/Context;

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iput-object v3, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$inflate$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$inflate$2;->label:I

    new-instance p1, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {p1, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v6, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$inflate$2$view$1$1;

    invoke-direct {v6, p1}, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$inflate$2$view$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object v7, v3, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mInflater:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;

    const v4, 0x7f0d0305

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->inflateInternal(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;Landroid/view/LayoutInflater;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Landroid/view/View;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$inflate$2;->this$0:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;

    iget-object v1, v1, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->_qsImpl:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSImpl;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSImpl;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$inflate$2;->this$0:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;

    iget-object v1, v1, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->_qsImpl:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSImpl;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSImpl;->onDestroy()V

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$inflate$2;->this$0:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;

    iget-object v1, v1, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->qsSceneComponentFactory:Lcom/android/systemui/qs/dagger/QSSceneComponent$Factory;

    invoke-interface {v1, p1}, Lcom/android/systemui/qs/dagger/QSSceneComponent$Factory;->create(Landroid/view/View;)Lcom/android/systemui/qs/dagger/QSSceneComponent;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$inflate$2;->this$0:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;

    iget-object v1, v1, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->qsImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSImpl;

    iget-object v2, v1, Lcom/android/systemui/qs/QSImpl;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "QSImpl"

    invoke-static {v2, v3, v1}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/qs/QSImpl;->onComponentCreated(Lcom/android/systemui/qs/dagger/QSComponent;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$inflate$2;->this$0:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;

    iget-object p1, p1, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->_qsImpl:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p1, v1, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$inflate$2;->this$0:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/QSImpl;->setContainerController(Lcom/android/systemui/plugins/qs/QSContainerController;)V

    iget-object p1, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$inflate$2;->this$0:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;

    iget-object v0, p1, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State;

    invoke-static {p1, v1, v0}, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->access$applyState(Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;Lcom/android/systemui/qs/QSImpl;Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State;)V

    iget-object p0, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$inflate$2;->this$0:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;

    iget-object p1, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->_qsImpl:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/QSImpl;

    iget-object p0, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State;

    if-eqz p1, :cond_5

    invoke-interface {p0}, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State;->getExpansion()F

    move-result v0

    invoke-interface {p0}, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State;->getSquishiness()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/android/systemui/qs/QSImpl;->setQsExpansion(FFFF)V

    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
