.class Landroidx/fragment/app/FragmentAnim;
.super Ljava/lang/Object;
.source "FragmentAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;,
        Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static animateRemoveFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;Landroidx/fragment/app/FragmentTransition$Callback;)V
    .locals 11

    iget-object v6, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v7, p0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v0, Landroidx/core/os/CancellationSignal;

    invoke-direct {v0}, Landroidx/core/os/CancellationSignal;-><init>()V

    move-object v8, v0

    new-instance v0, Landroidx/fragment/app/FragmentAnim$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentAnim$1;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v8, v0}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    invoke-interface {p2, p0, v8}, Landroidx/fragment/app/FragmentTransition$Callback;->onStart(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    iget-object v0, p1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;

    iget-object v1, p1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-direct {v0, v1, v7, v6}, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    new-instance v1, Landroidx/fragment/app/FragmentAnim$2;

    invoke-direct {v1, v7, p0, p2, v8}, Landroidx/fragment/app/FragmentAnim$2;-><init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentTransition$Callback;Landroidx/core/os/CancellationSignal;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    iget-object v9, p1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    iget-object v0, p1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    new-instance v10, Landroidx/fragment/app/FragmentAnim$3;

    move-object v0, v10

    move-object v1, v7

    move-object v2, v6

    move-object v3, p0

    move-object v4, p2

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/FragmentAnim$3;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentTransition$Callback;Landroidx/core/os/CancellationSignal;)V

    invoke-virtual {v9, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method static loadAnimation(Landroid/content/Context;Landroidx/fragment/app/Fragment;Z)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    .locals 9

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    sget v4, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    sget v4, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {v2, v4, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_0
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {p1, v0, p2, v1}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v3, v2}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object v3

    :cond_2
    invoke-virtual {p1, v0, p2, v1}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v3, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v3, v4}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V

    return-object v3

    :cond_3
    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    invoke-static {v0, p2}, Landroidx/fragment/app/FragmentAnim;->transitToAnimResourceId(IZ)I

    move-result v1

    :cond_4
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "anim"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    :try_start_0
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    move-object v2, v8

    if-eqz v2, :cond_5

    new-instance v8, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v8, v2}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :cond_5
    const/4 v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v8

    goto :goto_0

    :catch_1
    move-exception v3

    throw v3

    :cond_6
    :goto_0
    if-nez v7, :cond_9

    :try_start_1
    invoke-static {p0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v8

    move-object v4, v8

    if-eqz v4, :cond_7

    new-instance v8, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v8, v4}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v8

    :cond_7
    goto :goto_1

    :catch_2
    move-exception v8

    if-nez v6, :cond_8

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v3, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v3, v2}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object v3

    :cond_8
    throw v8

    :cond_9
    :goto_1
    return-object v3
.end method

.method private static transitToAnimResourceId(IZ)I
    .locals 2

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    if-eqz p1, :cond_0

    sget v1, Landroidx/fragment/R$animator;->fragment_close_enter:I

    goto :goto_0

    :cond_0
    sget v1, Landroidx/fragment/R$animator;->fragment_close_exit:I

    :goto_0
    move v0, v1

    goto :goto_3

    :sswitch_1
    if-eqz p1, :cond_1

    sget v1, Landroidx/fragment/R$animator;->fragment_fade_enter:I

    goto :goto_1

    :cond_1
    sget v1, Landroidx/fragment/R$animator;->fragment_fade_exit:I

    :goto_1
    move v0, v1

    goto :goto_3

    :sswitch_2
    if-eqz p1, :cond_2

    sget v1, Landroidx/fragment/R$animator;->fragment_open_enter:I

    goto :goto_2

    :cond_2
    sget v1, Landroidx/fragment/R$animator;->fragment_open_exit:I

    :goto_2
    move v0, v1

    nop

    :goto_3
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_2
        0x1003 -> :sswitch_1
        0x2002 -> :sswitch_0
    .end sparse-switch
.end method
