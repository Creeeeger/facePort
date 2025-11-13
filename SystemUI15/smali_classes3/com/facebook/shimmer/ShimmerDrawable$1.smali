.class public final Lcom/facebook/shimmer/ShimmerDrawable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/facebook/shimmer/ShimmerDrawable;


# direct methods
.method public constructor <init>(Lcom/facebook/shimmer/ShimmerDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/shimmer/ShimmerDrawable$1;->this$0:Lcom/facebook/shimmer/ShimmerDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/facebook/shimmer/ShimmerDrawable$1;->this$0:Lcom/facebook/shimmer/ShimmerDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
