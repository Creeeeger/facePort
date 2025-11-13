.class public final Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$reset$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$reset$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    const/4 v0, 0x0

    const/4 v1, 0x1

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$reset$1;->this$0:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    iget-object v3, v2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->hintList:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->getHintView(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object v7, v6

    :goto_1
    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v7, :cond_2

    invoke-virtual {v5, v8}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    invoke-virtual {v2, v4}, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->getHintView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, v6

    :goto_2
    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->holdingViAnimator:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v6, v2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->holdingViAnimator:Landroid/animation/AnimatorSet;

    :cond_4
    iget-object v5, v2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v5, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v5, v5, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget v5, v5, Lcom/android/systemui/navigationbar/model/NavBarStates;->rotation:I

    iget-boolean v6, v2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->isCanMove:Z

    const/4 v7, 0x3

    const-string/jumbo v9, "scaleY"

    const-string/jumbo v10, "scaleX"

    const/4 v11, 0x0

    if-nez v6, :cond_5

    :goto_3
    move-object v6, v10

    :goto_4
    move v5, v11

    goto :goto_5

    :cond_5
    if-eq v5, v1, :cond_7

    if-eq v5, v7, :cond_6

    goto :goto_3

    :cond_6
    const/high16 v5, -0x80000000

    move-object v6, v9

    goto :goto_5

    :cond_7
    move-object v6, v9

    goto :goto_4

    :goto_5
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const-wide/16 v13, 0xc8

    if-lez v12, :cond_8

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    new-array v15, v1, [F

    aput v11, v15, v0

    invoke-static {v12, v6, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v15, v1, [Landroid/animation/Animator;

    aput-object v6, v15, v0

    invoke-virtual {v12, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v12, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v15, 0x3e2e147b    # 0.17f

    const v13, 0x3dcccccd    # 0.1f

    invoke-direct {v6, v15, v15, v13, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v12, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    :cond_8
    new-array v6, v1, [F

    aput v8, v6, v0

    invoke-static {v4, v10, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-array v10, v1, [F

    aput v8, v10, v0

    invoke-static {v4, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-string/jumbo v9, "translationX"

    new-array v10, v1, [F

    aput v5, v10, v0

    invoke-static {v4, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-string/jumbo v9, "translationY"

    new-array v10, v1, [F

    aput v11, v10, v0

    invoke-static {v4, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v10, 0x4

    new-array v10, v10, [Landroid/animation/Animator;

    aput-object v6, v10, v0

    aput-object v8, v10, v1

    const/4 v6, 0x2

    aput-object v5, v10, v6

    aput-object v4, v10, v7

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v9, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3f4ccccd    # 0.8f

    const v6, 0x3f547ae1    # 0.83f

    invoke-direct {v4, v5, v11, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v9, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_9
    return-void
.end method
