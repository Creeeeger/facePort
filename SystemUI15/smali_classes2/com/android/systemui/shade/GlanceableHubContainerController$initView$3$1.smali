.class final Lcom/android/systemui/shade/GlanceableHubContainerController$initView$3$1;
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
.field final synthetic $bottomEdgeSwipeRegionWidth:I

.field final synthetic $containerView:Landroid/view/View;

.field final synthetic $topEdgeSwipeRegionWidth:I

.field label:I


# direct methods
.method public constructor <init>(ILandroid/view/View;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "I",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput p1, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$3$1;->$topEdgeSwipeRegionWidth:I

    iput-object p2, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$3$1;->$containerView:Landroid/view/View;

    iput p3, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$3$1;->$bottomEdgeSwipeRegionWidth:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$3$1;

    iget v0, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$3$1;->$topEdgeSwipeRegionWidth:I

    iget-object v1, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$3$1;->$containerView:Landroid/view/View;

    iget p0, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$3$1;->$bottomEdgeSwipeRegionWidth:I

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$3$1;-><init>(ILandroid/view/View;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$3$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$3$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Landroid/graphics/Rect;

    iget v0, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$3$1;->$topEdgeSwipeRegionWidth:I

    iget-object v1, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$3$1;->$containerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$3$1;->$containerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$3$1;->$bottomEdgeSwipeRegionWidth:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-direct {p1, v3, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p0, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$3$1;->$containerView:Landroid/view/View;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
