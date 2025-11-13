.class final Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;
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
.field final synthetic $drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic $shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field final synthetic $this_loadIcon:Landroid/widget/ImageView;

.field label:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/facebook/shimmer/ShimmerFrameLayout;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/facebook/shimmer/ShimmerFrameLayout;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;->$this_loadIcon:Landroid/widget/ImageView;

    iput-object p2, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;->$drawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;->$shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;

    iget-object v0, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;->$this_loadIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;->$drawable:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;->$shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-direct {p1, v0, v1, p0, p2}, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/facebook/shimmer/ShimmerFrameLayout;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;->$this_loadIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;->$drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;->$shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;->$shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {p0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->stopShimmer()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
