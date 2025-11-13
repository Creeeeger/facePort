.class public final Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $distanceX:I

.field public final synthetic $distanceY:I

.field public final synthetic $duration:J

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;IIJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->$distanceX:I

    iput p3, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->$distanceY:I

    iput-wide p4, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->$duration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    iget v3, v2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->currentHintId:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->getHintView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_c

    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    iget v4, v3, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->navigationMode:I

    invoke-static {v4}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->isBottomGesture(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/high16 v4, 0x43520000    # 210.0f

    :goto_0
    invoke-virtual {v3, v4}, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->dipToPixel(F)F

    move-result v3

    goto :goto_1

    :cond_0
    const/high16 v4, 0x42d20000    # 105.0f

    goto :goto_0

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    iget v5, v4, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->navigationMode:I

    invoke-static {v5}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->isBottomGesture(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/high16 v5, 0x41880000    # 17.0f

    :goto_2
    invoke-virtual {v4, v5}, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->dipToPixel(F)F

    move-result v4

    goto :goto_3

    :cond_1
    const/high16 v5, 0x41080000    # 8.5f

    goto :goto_2

    :goto_3
    iget-object v5, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    iget v6, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->$distanceX:I

    iget v7, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->$distanceY:I

    iget-object v8, v5, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v8, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v8, v8, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget v8, v8, Lcom/android/systemui/navigationbar/model/NavBarStates;->rotation:I

    iget-boolean v5, v5, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->isCanMove:Z

    const/4 v9, 0x2

    if-eqz v5, :cond_3

    if-eqz v8, :cond_3

    if-ne v8, v9, :cond_2

    goto :goto_4

    :cond_2
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    goto :goto_5

    :cond_3
    :goto_4
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v5

    :goto_5
    int-to-float v6, v5

    mul-float v7, v4, v6

    div-float/2addr v7, v3

    if-lez v5, :cond_4

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_6

    :cond_4
    neg-float v4, v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :goto_6
    iget-object v5, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    iget v5, v5, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->navigationMode:I

    invoke-static {v5}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->isBottomGesture(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const v5, 0x3f947ae1    # 1.16f

    goto :goto_7

    :cond_5
    const v5, 0x3f8ccccd    # 1.1f

    :goto_7
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v8, v5, v7

    mul-float/2addr v8, v6

    div-float/2addr v8, v3

    add-float/2addr v8, v7

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    iget-object v6, v5, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v6, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v6, v6, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget v6, v6, Lcom/android/systemui/navigationbar/model/NavBarStates;->rotation:I

    iget-boolean v5, v5, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->isCanMove:Z

    const-string/jumbo v8, "scaleY"

    if-eqz v5, :cond_9

    if-eqz v6, :cond_9

    if-ne v6, v9, :cond_6

    goto :goto_9

    :cond_6
    const/4 v5, 0x3

    if-ne v6, v5, :cond_7

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setTranslationX(F)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setScaleY(F)V

    goto :goto_8

    :cond_7
    if-ne v6, v1, :cond_8

    neg-float v4, v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setTranslationX(F)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_8
    :goto_8
    move-object v3, v8

    goto :goto_a

    :cond_9
    :goto_9
    neg-float v4, v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setTranslationY(F)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setScaleX(F)V

    const-string/jumbo v3, "scaleX"

    :goto_a
    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    iget v4, v4, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->currentHintId:I

    if-ne v4, v1, :cond_c

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_c

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->$duration:J

    const-wide/16 v9, 0x0

    cmp-long v4, v4, v9

    if-nez v4, :cond_a

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->holdingViAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_c

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->holdingViAnimator:Landroid/animation/AnimatorSet;

    goto :goto_b

    :cond_a
    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    iget-object v4, v4, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->holdingViAnimator:Landroid/animation/AnimatorSet;

    if-nez v4, :cond_c

    new-array v4, v1, [F

    aput v7, v4, v0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, v5, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->holdingViAnimator:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->holdingViAnimator:Landroid/animation/AnimatorSet;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v4, v1, v0

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->holdingViAnimator:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->holdingViAnimator:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e2e147b    # 0.17f

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v4, v4, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->holdingViAnimator:Landroid/animation/AnimatorSet;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {v2, v7}, Landroid/view/View;->setScaleX(F)V

    goto :goto_b

    :cond_b
    invoke-virtual {v2, v7}, Landroid/view/View;->setScaleY(F)V

    :cond_c
    :goto_b
    return-void
.end method
