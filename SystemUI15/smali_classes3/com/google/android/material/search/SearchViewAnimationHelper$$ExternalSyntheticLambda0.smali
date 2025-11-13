.class public final synthetic Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/search/SearchViewAnimationHelper;FFLandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    iput p2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda0;->f$1:F

    iput p3, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda0;->f$2:F

    iput-object p4, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    iget v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda0;->f$1:F

    iget v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda0;->f$2:F

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v1, v2, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v8

    iget-object v3, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v4, p1

    iget p1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v5, p1

    iget p1, p0, Landroid/graphics/Rect;->right:I

    int-to-float v6, p1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, p0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->updateClipBoundsAndCornerRadius(FFFFF)V

    return-void
.end method
