.class public final synthetic Landroidx/picker/helper/ImageViewHelperKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# instance fields
.field public final synthetic f$0:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field public final synthetic f$1:Lkotlinx/coroutines/Job;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/shimmer/ShimmerFrameLayout;Lkotlinx/coroutines/Job;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/helper/ImageViewHelperKt$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/shimmer/ShimmerFrameLayout;

    iput-object p2, p0, Landroidx/picker/helper/ImageViewHelperKt$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    iget-object v0, p0, Landroidx/picker/helper/ImageViewHelperKt$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->stopShimmer()V

    iget-object p0, p0, Landroidx/picker/helper/ImageViewHelperKt$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/Job;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method
