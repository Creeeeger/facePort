.class public final synthetic Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 8

    iget v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->loadCustomAnimation(Landroid/window/TransitionInfo;Z)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {p1}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->getTransitionTypeFromInfo(Landroid/window/TransitionInfo;)I

    move-result v2

    iget-object v6, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->loadAttributeAnimation(ILandroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILcom/android/internal/policy/TransitionAnimation;Z)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getShowBackdrop()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    if-eqz v0, :cond_1

    const p2, 0x10a0162

    goto :goto_0

    :cond_1
    const p2, 0x10a0163

    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_3

    :cond_2
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_ANIMATION:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    if-eqz v0, :cond_3

    const p2, 0x10a002f

    goto :goto_1

    :cond_3
    const p2, 0x10a0030

    :goto_1
    invoke-virtual {p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    if-eqz v0, :cond_5

    const p2, 0x10a000d

    goto :goto_2

    :cond_5
    const p2, 0x10a000e

    :goto_2
    invoke-virtual {p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object v1

    :goto_3
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-virtual {v1, p1, p2, v0, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v1, p0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    return-object v1

    :pswitch_0
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->loadCustomAnimation(Landroid/window/TransitionInfo;Z)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_7

    :cond_6
    invoke-static {p1}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->getTransitionTypeFromInfo(Landroid/window/TransitionInfo;)I

    move-result v2

    iget-object v6, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->loadAttributeAnimation(ILandroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILcom/android/internal/policy/TransitionAnimation;Z)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getShowBackdrop()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    if-eqz v0, :cond_7

    const p2, 0x10a0164

    goto :goto_4

    :cond_7
    const p2, 0x10a0165

    :goto_4
    invoke-virtual {p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_7

    :cond_8
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_ANIMATION:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    if-eqz v0, :cond_9

    const p2, 0x10a0031

    goto :goto_5

    :cond_9
    const p2, 0x10a0032

    :goto_5
    invoke-virtual {p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_7

    :cond_a
    iget-object p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    if-eqz v0, :cond_b

    const p2, 0x10a000f

    goto :goto_6

    :cond_b
    const p2, 0x10a0010

    :goto_6
    invoke-virtual {p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object v1

    :goto_7
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-virtual {v1, p1, p2, v0, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v1, p0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
