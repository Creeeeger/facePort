.class public final Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;
.super Landroid/widget/RelativeLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final ALPHA:[F

.field public final ALPHA_IN_DURATION:[I

.field public final ALPHA_OUT_DELAY:[I

.field public final LINE_HEIGHT:[F

.field public final mAnimList:Ljava/util/ArrayList;

.field public mAnimatorSet:Landroid/animation/AnimatorSet;

.field public final mAnimtorListener:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;

.field public final mLeftLine:Ljava/util/ArrayList;

.field public final mRightLine:Ljava/util/ArrayList;

.field public mScreenHeight:I

.field public mScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mRightLine:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mLeftLine:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimList:Ljava/util/ArrayList;

    const/4 p1, 0x3

    new-array v0, p1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->LINE_HEIGHT:[F

    const/16 v0, 0x190

    const/16 v1, 0x12c

    filled-new-array {v0, v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA_IN_DURATION:[I

    const/16 v0, 0x320

    const/16 v1, 0x384

    filled-new-array {v0, v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA_OUT_DELAY:[I

    new-array p1, p1, [F

    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA:[F

    new-instance p1, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimtorListener:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f2b851f    # 0.67f
        0x3f051eb8    # 0.52f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3ecccccd    # 0.4f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mRightLine:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mLeftLine:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimList:Ljava/util/ArrayList;

    const/4 p1, 0x3

    new-array p2, p1, [F

    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->LINE_HEIGHT:[F

    const/16 p2, 0x190

    const/16 v0, 0x12c

    filled-new-array {p2, v0, v0}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA_IN_DURATION:[I

    const/16 p2, 0x320

    const/16 v0, 0x384

    filled-new-array {p2, v0, v0}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA_OUT_DELAY:[I

    new-array p1, p1, [F

    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA:[F

    new-instance p1, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimtorListener:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f2b851f    # 0.67f
        0x3f051eb8    # 0.52f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3ecccccd    # 0.4f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mRightLine:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mLeftLine:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimList:Ljava/util/ArrayList;

    const/4 p1, 0x3

    new-array p2, p1, [F

    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->LINE_HEIGHT:[F

    const/16 p2, 0x190

    const/16 p3, 0x12c

    filled-new-array {p2, p3, p3}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA_IN_DURATION:[I

    const/16 p2, 0x320

    const/16 p3, 0x384

    filled-new-array {p2, p3, p3}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA_OUT_DELAY:[I

    new-array p1, p1, [F

    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA:[F

    new-instance p1, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimtorListener:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f2b851f    # 0.67f
        0x3f051eb8    # 0.52f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3ecccccd    # 0.4f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-class p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mRightLine:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mLeftLine:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimList:Ljava/util/ArrayList;

    const/4 p1, 0x3

    new-array p2, p1, [F

    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->LINE_HEIGHT:[F

    const/16 p2, 0x190

    const/16 p3, 0x12c

    filled-new-array {p2, p3, p3}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA_IN_DURATION:[I

    const/16 p2, 0x320

    const/16 p3, 0x384

    filled-new-array {p2, p3, p3}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA_OUT_DELAY:[I

    new-array p1, p1, [F

    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA:[F

    new-instance p1, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimtorListener:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f2b851f    # 0.67f
        0x3f051eb8    # 0.52f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3ecccccd    # 0.4f
    .end array-data
.end method

.method public static makeGradientBg(I)Landroid/graphics/drawable/Drawable;
    .locals 7

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/16 v5, 0x1e

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v5, v3, v4, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    filled-new-array {v2, p0, v3}, [I

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/high16 p0, 0x42b40000    # 90.0f

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method


# virtual methods
.method public final getAnim(Landroid/view/View;I)Landroid/animation/Animator;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x2

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    mul-int/lit16 v6, v2, 0x12c

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v4, :cond_0

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Animator;

    iget-object v9, v0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA:[F

    aget v9, v9, v2

    const/4 v10, 0x0

    new-array v11, v4, [F

    aput v10, v11, v6

    aput v9, v11, v3

    const-string v9, "alpha"

    invoke-static {v1, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    mul-int/lit16 v12, v7, 0x578

    int-to-long v13, v12

    invoke-virtual {v11, v13, v14}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v15, v0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA_IN_DURATION:[I

    aget v15, v15, v2

    int-to-long v3, v15

    invoke-virtual {v11, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const v3, 0x3e2e147b    # 0.17f

    const v4, 0x3f547ae1    # 0.83f

    invoke-static {v3, v3, v4, v4, v11}, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    aput-object v11, v8, v6

    iget-object v11, v0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA:[F

    aget v11, v11, v2

    const/4 v15, 0x2

    new-array v3, v15, [F

    aput v11, v3, v6

    const/4 v11, 0x1

    aput v10, v3, v11

    invoke-static {v1, v9, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v9, 0x190

    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v9, v0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->ALPHA_OUT_DELAY:[I

    aget v9, v9, v2

    add-int/2addr v12, v9

    int-to-long v9, v12

    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const v9, 0x3e2e147b    # 0.17f

    invoke-static {v9, v9, v4, v4, v3}, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    aput-object v3, v8, v11

    const/4 v3, 0x2

    new-array v10, v3, [F

    fill-array-data v10, :array_0

    const-string/jumbo v11, "scaleY"

    invoke-static {v1, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v10, v13, v14}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v11, 0x1f4

    invoke-virtual {v10, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-static {v9, v9, v4, v4, v10}, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    aput-object v10, v8, v3

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 v4, 0x1

    add-int/2addr v7, v4

    move/from16 v16, v4

    move v4, v3

    move/from16 v3, v16

    goto :goto_0

    :cond_0
    return-object v5

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final startAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mLeftLine:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->getAnim(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mRightLine:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->getAnim(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimtorListener:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView$1;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
