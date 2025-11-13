.class public final Lcom/facebook/shimmer/ShimmerDrawable$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/facebook/shimmer/ShimmerDrawable;


# direct methods
.method public constructor <init>(Lcom/facebook/shimmer/ShimmerDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/shimmer/ShimmerDrawable$1;->this$0:Lcom/facebook/shimmer/ShimmerDrawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/facebook/shimmer/ShimmerDrawable$1;->this$0:Lcom/facebook/shimmer/ShimmerDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
