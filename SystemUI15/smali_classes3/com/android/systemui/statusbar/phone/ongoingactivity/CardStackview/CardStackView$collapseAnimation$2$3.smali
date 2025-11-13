.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$collapseAnimation$2$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $index:I

.field public final synthetic $sceneCollapse:Landroid/transition/Scene;

.field public final synthetic $topChipWidth:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;


# direct methods
.method public constructor <init>(Landroid/transition/Scene;Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;Lkotlin/jvm/internal/Ref$IntRef;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$collapseAnimation$2$3;->$sceneCollapse:Landroid/transition/Scene;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$collapseAnimation$2$3;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$collapseAnimation$2$3;->$topChipWidth:Lkotlin/jvm/internal/Ref$IntRef;

    iput p4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$collapseAnimation$2$3;->$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$collapseAnimation$2$3;->$sceneCollapse:Landroid/transition/Scene;

    invoke-virtual {v0}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0a0c02

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$collapseAnimation$2$3;->$sceneCollapse:Landroid/transition/Scene;

    invoke-virtual {v0}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    const v2, 0x7f0a0c03

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$collapseAnimation$2$3;->$index:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$collapseAnimation$2$3;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$collapseAnimation$2$3;->$topChipWidth:Lkotlin/jvm/internal/Ref$IntRef;

    sget-object v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->Companion:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$Companion;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v6

    const/4 v7, 0x0

    if-eq v3, v6, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v3, :cond_1

    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v3, :cond_1

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->Companion:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->expandContentsAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    iget v3, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->pendingWidth:I

    iget v4, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->pendingHeight:I

    invoke-static {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->changeLayoutSize(Landroid/view/View;II)V

    goto :goto_1

    :cond_2
    iget v3, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v4, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->pendingHeight:I

    invoke-static {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->changeLayoutSize(Landroid/view/View;II)V

    :goto_1
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setElevation(F)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$collapseAnimation$2$3;->$sceneCollapse:Landroid/transition/Scene;

    invoke-virtual {v0}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    const v3, 0x7f0a08e8

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$collapseAnimation$2$3;->$index:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$collapseAnimation$2$3;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    sget-object v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->Companion:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$Companion;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v5

    const/4 v6, 0x0

    if-ne v4, v5, :cond_4

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    invoke-direct {v1, v0, v4, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iget-object v4, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v5, 0x43480000    # 200.0f

    invoke-virtual {v4, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    iget-object v4, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const v7, 0x3f502c18

    invoke-virtual {v4, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    invoke-direct {v1, v0, v4, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iget-object v4, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v4, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    iget-object v4, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v4, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    invoke-static {v0, v6}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->changeLayoutMargin(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$collapseAnimation$2$3;->$sceneCollapse:Landroid/transition/Scene;

    invoke-virtual {v0}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0a03d7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$collapseAnimation$2$3;->$sceneCollapse:Landroid/transition/Scene;

    invoke-virtual {v1}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v1

    const v4, 0x7f0a03d6

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$collapseAnimation$2$3;->$sceneCollapse:Landroid/transition/Scene;

    invoke-virtual {v4}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v4

    const v5, 0x7f0a03d8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$collapseAnimation$2$3;->$sceneCollapse:Landroid/transition/Scene;

    invoke-virtual {v5}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$collapseAnimation$2$3;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iget-object v7, v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    if-eqz v7, :cond_5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    move-result-object v5

    if-eqz v5, :cond_5

    iget v5, v5, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_3

    :cond_5
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_3
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$collapseAnimation$2$3;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070c36

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    invoke-static {v7}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$collapseAnimation$2$3;->$topChipWidth:Lkotlin/jvm/internal/Ref$IntRef;

    iget v7, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-gt v7, v5, :cond_7

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$collapseAnimation$2$3;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v5, 0x7f070c24

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, p0, v6, p0, v6}, Landroid/view/View;->setPadding(IIII)V

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    if-lez p0, :cond_6

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    const/16 p0, 0x8

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->Companion:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->alphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
