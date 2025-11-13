.class final Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1;
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
.field final synthetic $$this$repeatWhenAttached:Landroidx/lifecycle/LifecycleOwner;

.field final synthetic $this_apply:Landroidx/compose/ui/platform/ComposeView;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/shade/GlanceableHubContainerController;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/ComposeView;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/shade/GlanceableHubContainerController;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/platform/ComposeView;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lcom/android/systemui/shade/GlanceableHubContainerController;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1;->$this_apply:Landroidx/compose/ui/platform/ComposeView;

    iput-object p2, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1;->$$this$repeatWhenAttached:Landroidx/lifecycle/LifecycleOwner;

    iput-object p3, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1;->this$0:Lcom/android/systemui/shade/GlanceableHubContainerController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1;

    iget-object v0, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1;->$this_apply:Landroidx/compose/ui/platform/ComposeView;

    iget-object v1, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1;->$$this$repeatWhenAttached:Landroidx/lifecycle/LifecycleOwner;

    iget-object p0, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1;->this$0:Lcom/android/systemui/shade/GlanceableHubContainerController;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1;-><init>(Landroidx/compose/ui/platform/ComposeView;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/shade/GlanceableHubContainerController;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1;->$this_apply:Landroidx/compose/ui/platform/ComposeView;

    new-instance v0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1$1;

    iget-object v1, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1;->$$this$repeatWhenAttached:Landroidx/lifecycle/LifecycleOwner;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1$1;-><init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/compose/ui/platform/ComposeView;)V

    invoke-static {p1, v0}, Landroidx/activity/ViewTreeOnBackPressedDispatcherOwner;->set(Landroid/view/View;Landroidx/activity/OnBackPressedDispatcherOwner;)V

    iget-object p1, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1;->$this_apply:Landroidx/compose/ui/platform/ComposeView;

    new-instance v0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1$2;

    iget-object p0, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1;->this$0:Lcom/android/systemui/shade/GlanceableHubContainerController;

    invoke-direct {v0, p0}, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1$2;-><init>(Lcom/android/systemui/shade/GlanceableHubContainerController;)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, 0x56cfbcc9

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {p1, p0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
