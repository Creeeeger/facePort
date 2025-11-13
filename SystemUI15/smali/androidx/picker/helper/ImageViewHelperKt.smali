.class public abstract Landroidx/picker/helper/ImageViewHelperKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static loadIcon$default(Landroid/widget/ImageView;Landroidx/picker/loader/AppIconFlow;Lcom/facebook/shimmer/ShimmerFrameLayout;)Landroidx/picker/helper/ImageViewHelperKt$$ExternalSyntheticLambda0;
    .locals 8

    sget-object v2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p2, Lcom/facebook/shimmer/ShimmerFrameLayout;->mShimmerDrawable:Lcom/facebook/shimmer/ShimmerDrawable;

    iget-object v1, v0, Lcom/facebook/shimmer/ShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/facebook/shimmer/ShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    :goto_0
    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v6

    new-instance v7, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1;-><init>(Landroidx/picker/loader/AppIconFlow;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/widget/ImageView;Lcom/facebook/shimmer/ShimmerFrameLayout;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v6, p1, p1, v7, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    new-instance p1, Landroidx/picker/helper/ImageViewHelperKt$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2, p0}, Landroidx/picker/helper/ImageViewHelperKt$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/shimmer/ShimmerFrameLayout;Lkotlinx/coroutines/Job;)V

    return-object p1
.end method
