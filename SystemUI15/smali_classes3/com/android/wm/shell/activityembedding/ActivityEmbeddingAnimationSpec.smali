.class public final Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public final mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field public final mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

.field public mTransitionAnimationScaleSetting:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/policy/TransitionAnimation;

    const/4 v1, 0x0

    const-string v2, "ActivityEmbeddingAnimSpec"

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/policy/TransitionAnimation;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    const v0, 0x10c001a

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    return-void
.end method


# virtual methods
.method public final loadCustomAnimation(Landroid/window/TransitionInfo;Z)Landroid/view/animation/Animation;
    .locals 2

    invoke-static {}, Lcom/android/window/flags/Flags;->moveAnimationOptionsToChange()Z

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$AnimationOptions;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/window/TransitionInfo$AnimationOptions;->getEnterResId()I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/window/TransitionInfo$AnimationOptions;->getExitResId()I

    move-result p1

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
