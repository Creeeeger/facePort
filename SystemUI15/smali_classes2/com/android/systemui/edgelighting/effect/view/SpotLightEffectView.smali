.class public final Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;
.super Landroid/view/View;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAnimListener:Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect$1;

.field public mAnimatorSet:Landroid/animation/AnimatorSet;

.field public final mAnimtorListener:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;

.field public mCurrWidth:I

.field public final mSpotlightDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    new-instance p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;-><init>(Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimtorListener:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f08078e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mSpotlightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    new-instance p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;-><init>(Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimtorListener:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f08078e

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mSpotlightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    new-instance p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;-><init>(Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimtorListener:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f08078e

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mSpotlightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-class p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    new-instance p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;-><init>(Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimtorListener:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;

    return-void
.end method


# virtual methods
.method public final startAnimation()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x2

    iget-object v2, v0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget v2, v0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mCurrWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    iget-object v3, v0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v4, v0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimtorListener:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, v0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v4, 0x6

    new-array v4, v4, [Landroid/animation/Animator;

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/high16 v6, 0x3f800000    # 1.0f

    new-array v7, v1, [F

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$1;

    invoke-direct {v8, v0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v8, 0x64

    invoke-virtual {v5, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3ea8f5c3    # 0.33f

    const v10, 0x3eb851ec    # 0.36f

    const v11, 0x3f2b851f    # 0.67f

    invoke-direct {v8, v9, v10, v11, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 v7, 0x0

    aput-object v5, v4, v7

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v8, v1, [F

    fill-array-data v8, :array_1

    const-string/jumbo v12, "scaleX"

    invoke-static {v0, v12, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-array v13, v1, [F

    fill-array-data v13, :array_2

    const-string/jumbo v14, "scaleY"

    invoke-static {v0, v14, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    move-object/from16 v16, v3

    const-wide/16 v2, 0x48f

    invoke-virtual {v5, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v15, Landroid/view/animation/PathInterpolator;

    invoke-direct {v15, v9, v10, v11, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v5, v15}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v10, v1, [Landroid/animation/Animator;

    aput-object v8, v10, v7

    const/4 v8, 0x1

    aput-object v13, v10, v8

    invoke-virtual {v5, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    aput-object v5, v4, v8

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v10, v1, [F

    fill-array-data v10, :array_3

    invoke-static {v0, v12, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-array v13, v1, [F

    fill-array-data v13, :array_4

    invoke-static {v0, v14, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v5, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 v2, 0x23c

    invoke-virtual {v5, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v15, Landroid/view/animation/PathInterpolator;

    const v9, 0x3f266666    # 0.65f

    const v11, 0x3e851eb8    # 0.26f

    const/4 v2, 0x0

    invoke-direct {v15, v11, v2, v9, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object v2, v15

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v2, v1, [Landroid/animation/Animator;

    aput-object v10, v2, v7

    aput-object v13, v2, v8

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    aput-object v5, v4, v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v1, [F

    fill-array-data v3, :array_5

    invoke-static {v0, v12, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v5, v1, [F

    fill-array-data v5, :array_6

    invoke-static {v0, v14, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v9, 0x6c5

    invoke-virtual {v2, v9, v10}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 v9, 0x247

    invoke-virtual {v2, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v9, Landroid/view/animation/PathInterpolator;

    const v10, 0x3f28f5c3    # 0.66f

    const v11, 0x3f4a3d71    # 0.79f

    const v13, 0x3ea3d70a    # 0.32f

    const/4 v15, 0x0

    invoke-direct {v9, v13, v15, v10, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v9, v1, [Landroid/animation/Animator;

    aput-object v3, v9, v7

    aput-object v5, v9, v8

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 v3, 0x3

    aput-object v2, v4, v3

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v1, [F

    fill-array-data v3, :array_7

    invoke-static {v0, v12, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v5, v1, [F

    fill-array-data v5, :array_8

    invoke-static {v0, v14, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v9, 0x91d

    invoke-virtual {v2, v9, v10}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 v9, 0x23c

    invoke-virtual {v2, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v9, Landroid/view/animation/PathInterpolator;

    const v10, 0x3f8b851f    # 1.09f

    const v11, -0x41b33333    # -0.2f

    const v13, 0x3ea8f5c3    # 0.33f

    const v15, 0x3f2b851f    # 0.67f

    invoke-direct {v9, v13, v11, v15, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v9, v1, [Landroid/animation/Animator;

    aput-object v3, v9, v7

    aput-object v5, v9, v8

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 v3, 0x4

    aput-object v2, v4, v3

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v1, [F

    fill-array-data v3, :array_9

    invoke-static {v0, v12, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v5, v1, [F

    fill-array-data v5, :array_a

    invoke-static {v0, v14, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v9, 0xb54

    invoke-virtual {v2, v9, v10}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 v9, 0x25f

    invoke-virtual {v2, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v9, Landroid/view/animation/PathInterpolator;

    const v10, 0x3eb33333    # 0.35f

    const v11, -0x43dc28f6    # -0.01f

    const v12, 0x3f2b851f    # 0.67f

    invoke-direct {v9, v10, v11, v12, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v3, v1, v7

    aput-object v5, v1, v8

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 v1, 0x5

    aput-object v2, v4, v1

    move-object/from16 v1, v16

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f2147ae    # 0.63f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f2147ae    # 0.63f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f6e147b    # 0.93f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f6e147b    # 0.93f
    .end array-data

    :array_5
    .array-data 4
        0x3f6e147b    # 0.93f
        0x3f7ae148    # 0.98f
    .end array-data

    :array_6
    .array-data 4
        0x3f6e147b    # 0.93f
        0x3f7ae148    # 0.98f
    .end array-data

    :array_7
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3f6e147b    # 0.93f
    .end array-data

    :array_8
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3f6e147b    # 0.93f
    .end array-data

    :array_9
    .array-data 4
        0x3f6e147b    # 0.93f
        0x3f0a3d71    # 0.54f
    .end array-data

    :array_a
    .array-data 4
        0x3f6e147b    # 0.93f
        0x3f0a3d71    # 0.54f
    .end array-data
.end method

.method public final stopAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
