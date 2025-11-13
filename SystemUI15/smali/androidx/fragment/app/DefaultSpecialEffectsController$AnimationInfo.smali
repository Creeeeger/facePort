.class public final Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;
.super Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public animation:Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

.field public isAnimLoaded:Z

.field public final isPop:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V

    iput-boolean p3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->isPop:Z

    return-void
.end method


# virtual methods
.method public final getAnimation(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    .locals 13

    iget-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->isAnimLoaded:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->animation:Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    goto/16 :goto_d

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iget-object v1, v0, Landroidx/fragment/app/SpecialEffectsController$Operation;->fragment:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/SpecialEffectsController$Operation;->finalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v2, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    iget v5, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mNextTransition:I

    :goto_1
    iget-boolean v6, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->isPop:Z

    if-eqz v6, :cond_6

    if-eqz v0, :cond_4

    if-nez v2, :cond_3

    :goto_2
    move v2, v4

    goto :goto_3

    :cond_3
    iget v2, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopEnterAnim:I

    goto :goto_3

    :cond_4
    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    iget v2, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopExitAnim:I

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_8

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    iget v2, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterAnim:I

    goto :goto_3

    :cond_8
    if-nez v2, :cond_9

    goto :goto_2

    :cond_9
    iget v2, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitAnim:I

    :goto_3
    invoke-virtual {v1, v4, v4, v4, v4}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    iget-object v6, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    if-eqz v6, :cond_a

    const v8, 0x7f0a0e2f

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_a

    iget-object v6, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8, v7}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_a
    iget-object v6, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v6

    if-eqz v6, :cond_c

    :cond_b
    move-object v4, v7

    goto/16 :goto_c

    :cond_c
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_16

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "current_sec_active_themepackage"

    invoke-static {v6, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez v6, :cond_d

    goto/16 :goto_9

    :cond_d
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    sget-object v9, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->Companion:Landroidx/fragment/app/SeslFragmentTransactionAnimationSet$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->values()[Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;

    move-result-object v9

    array-length v10, v9

    move v11, v4

    :goto_4
    if-ge v11, v10, :cond_f

    aget-object v12, v9, v11

    invoke-virtual {v12}, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->getExit$fragment_release()I

    move-result v12

    if-ne v12, v2, :cond_e

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationZ(F)V

    goto :goto_6

    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_f
    sget-object v9, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->Companion:Landroidx/fragment/app/SeslFragmentTransactionAnimationSet$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->values()[Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;

    move-result-object v9

    array-length v10, v9

    move v11, v4

    :goto_5
    if-ge v11, v10, :cond_11

    aget-object v12, v9, v11

    invoke-virtual {v12}, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->getEnter$fragment_release()I

    move-result v12

    if-ne v12, v2, :cond_10

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationZ(F)V

    goto :goto_6

    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_11
    :goto_6
    sget-object v9, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->Companion:Landroidx/fragment/app/SeslFragmentTransactionAnimationSet$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->values()[Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;

    move-result-object v9

    array-length v10, v9

    :goto_7
    if-ge v4, v10, :cond_15

    aget-object v11, v9, v4

    invoke-virtual {v11}, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->getEnter$fragment_release()I

    move-result v12

    if-eq v12, v2, :cond_13

    invoke-virtual {v11}, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->getExit$fragment_release()I

    move-result v12

    if-eq v12, v2, :cond_13

    invoke-virtual {v11}, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->getPopEnter$fragment_release()I

    move-result v12

    if-eq v12, v2, :cond_13

    invoke-virtual {v11}, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->getPopExit$fragment_release()I

    move-result v11

    if-ne v11, v2, :cond_12

    goto :goto_8

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_13
    :goto_8
    if-eqz v8, :cond_14

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06074f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_14
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f06074e

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_15
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v6, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda1;

    invoke-direct {v6, v1, v4}, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda1;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/ref/WeakReference;)V

    iput-object v6, v1, Landroidx/fragment/app/Fragment;->mDisposableHandle:Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda1;

    :cond_16
    :goto_9
    if-nez v2, :cond_21

    if-eqz v5, :cond_21

    const/16 v1, 0x1001

    if-eq v5, v1, :cond_1f

    const/16 v1, 0x2002

    if-eq v5, v1, :cond_1d

    const/16 v1, 0x2005

    if-eq v5, v1, :cond_1b

    const/16 v1, 0x1003

    if-eq v5, v1, :cond_19

    const/16 v1, 0x1004

    if-eq v5, v1, :cond_17

    const/4 v0, -0x1

    :goto_a
    move v2, v0

    goto :goto_b

    :cond_17
    if-eqz v0, :cond_18

    const v0, 0x10100b8

    invoke-static {v0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(ILandroid/content/Context;)I

    move-result v0

    goto :goto_a

    :cond_18
    const v0, 0x10100b9

    invoke-static {v0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(ILandroid/content/Context;)I

    move-result v0

    goto :goto_a

    :cond_19
    if-eqz v0, :cond_1a

    const v0, 0x7f020004

    goto :goto_a

    :cond_1a
    const v0, 0x7f020005

    goto :goto_a

    :cond_1b
    if-eqz v0, :cond_1c

    const v0, 0x10100ba

    invoke-static {v0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(ILandroid/content/Context;)I

    move-result v0

    goto :goto_a

    :cond_1c
    const v0, 0x10100bb

    invoke-static {v0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(ILandroid/content/Context;)I

    move-result v0

    goto :goto_a

    :cond_1d
    if-eqz v0, :cond_1e

    const v0, 0x7f020002

    goto :goto_a

    :cond_1e
    const v0, 0x7f020003

    goto :goto_a

    :cond_1f
    if-eqz v0, :cond_20

    const v0, 0x7f020006

    goto :goto_a

    :cond_20
    const v0, 0x7f020007

    goto :goto_a

    :cond_21
    :goto_b
    if-eqz v2, :cond_b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "anim"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :try_start_0
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v4, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v4, v1}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_c

    :catch_0
    move-exception p0

    throw p0

    :catch_1
    :cond_22
    :try_start_1
    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v4, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v4, v1}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_c

    :catch_2
    move-exception v1

    if-nez v0, :cond_23

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_b

    new-instance v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v0, p1}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    move-object v4, v0

    goto :goto_c

    :cond_23
    throw v1

    :goto_c
    iput-object v4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->animation:Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    iput-boolean v3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->isAnimLoaded:Z

    move-object p0, v4

    :goto_d
    return-object p0
.end method
