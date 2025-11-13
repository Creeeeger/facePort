.class public final Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field public final synthetic $this_loadIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/facebook/shimmer/ShimmerFrameLayout;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1;->$this_loadIcon:Landroid/widget/ImageView;

    iput-object p2, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1;->$shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroid/graphics/drawable/Drawable;

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    new-instance v1, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;

    iget-object v2, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1;->$this_loadIcon:Landroid/widget/ImageView;

    iget-object p0, p0, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1;->$shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p0, v3}, Landroidx/picker/helper/ImageViewHelperKt$loadIcon$job$1$1$1;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/facebook/shimmer/ShimmerFrameLayout;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-object p0
.end method
