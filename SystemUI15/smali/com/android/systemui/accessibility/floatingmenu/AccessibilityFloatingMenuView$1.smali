.class public final Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-object v0, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

    invoke-virtual {p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->transformCurrentPercentageXToEdge()F

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    invoke-virtual {v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->calculateCurrentPercentageY()F

    move-result v1

    iput p1, v0, Lcom/android/systemui/accessibility/floatingmenu/Position;->mPercentageX:F

    iput v1, v0, Lcom/android/systemui/accessibility/floatingmenu/Position;->mPercentageY:F

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-object v0, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

    iget v0, v0, Lcom/android/systemui/accessibility/floatingmenu/Position;->mPercentageX:F

    invoke-static {v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->transformToAlignment(F)I

    move-result v0

    iput v0, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-boolean v0, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

    invoke-virtual {p1, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateHideHandleLocationWith(Lcom/android/systemui/accessibility/floatingmenu/Position;)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

    invoke-virtual {p1, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateLocationWith(Lcom/android/systemui/accessibility/floatingmenu/Position;)V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget v0, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    :goto_1
    iput v0, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadiusType:I

    iget v3, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSizeType:I

    iget-object v4, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    invoke-virtual {p1, v3, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateRadiusWith(II)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    iget-object v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget v3, v3, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    and-int/lit8 v0, v0, 0x30

    const/16 v4, 0x20

    if-ne v0, v4, :cond_2

    iget v0, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mInset:I

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-nez v3, :cond_3

    move v4, v0

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    if-ne v3, v2, :cond_4

    move v1, v0

    :cond_4
    invoke-virtual {p1, v4, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setInset(II)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    invoke-virtual {p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeOut()V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-object p1, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mOnDragEndListener:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
