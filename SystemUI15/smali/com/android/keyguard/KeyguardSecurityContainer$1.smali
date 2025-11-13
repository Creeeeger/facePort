.class public final Lcom/android/keyguard/KeyguardSecurityContainer$1;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mFinalBounds:Landroid/graphics/Rect;

.field public final mInitialBounds:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainer;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-direct {p0, p2}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->mInitialBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->mFinalBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardSecurityContainer;->mDisappearAnimRunning:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateChildren(FI)V

    return-void
.end method

.method public final onPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->mInitialBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/widget/ViewFlipper;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDisappearAnimRunning:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->mFinalBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->mInitialBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    :goto_0
    int-to-float v1, v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->mInitialBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->mFinalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->mFinalBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->mInitialBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v0, v2

    neg-float v0, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    move v4, v2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v5}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v6

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v7

    and-int/2addr v6, v7

    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    move-result v4

    invoke-static {v1, v0, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    goto :goto_3

    :cond_3
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-boolean v0, p2, Lcom/android/keyguard/KeyguardSecurityContainer;->mDisappearAnimRunning:Z

    if-eqz v0, :cond_4

    sub-float/2addr v2, v4

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p2

    invoke-static {v4, p2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :goto_4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateChildren(FI)V

    return-object p1
.end method

.method public final onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 2

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-boolean v0, p1, Lcom/android/keyguard/KeyguardSecurityContainer;->mDisappearAnimRunning:Z

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardInputView;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardInputView;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->mFinalBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/widget/ViewFlipper;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    return-object p2
.end method
