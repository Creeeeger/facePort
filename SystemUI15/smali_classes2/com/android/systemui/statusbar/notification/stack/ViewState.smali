.class public Lcom/android/systemui/statusbar/notification/stack/ViewState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/ViewState$1;

.field public static final SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/ViewState$2;

.field public static final SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/ViewState$3;

.field public static final TAG_ANIMATOR_ALPHA:I

.field public static final TAG_ANIMATOR_TRANSLATION_X:I

.field public static final TAG_ANIMATOR_TRANSLATION_Y:I

.field public static final TAG_ANIMATOR_TRANSLATION_Z:I

.field public static final TAG_END_ALPHA:I

.field public static final TAG_END_TRANSLATION_X:I

.field public static final TAG_END_TRANSLATION_Y:I

.field public static final TAG_END_TRANSLATION_Z:I

.field public static final TAG_START_ALPHA:I

.field public static final TAG_START_TRANSLATION_X:I

.field public static final TAG_START_TRANSLATION_Y:I

.field public static final TAG_START_TRANSLATION_Z:I


# instance fields
.field public gone:Z

.field public hidden:Z

.field public mAlpha:F

.field public mScaleX:F

.field public mScaleY:F

.field public mXTranslation:F

.field public mYTranslation:F

.field public mZTranslation:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ViewState$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/ViewState$1;

    const v0, 0x7f0a0d95

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_X:I

    const v0, 0x7f0a0d99

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    const v0, 0x7f0a0d9d

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Z:I

    const v0, 0x7f0a00cc

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_ALPHA:I

    const v0, 0x7f0a0d93

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_X:I

    const v0, 0x7f0a0d97

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Y:I

    const v0, 0x7f0a0d9b

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Z:I

    const v0, 0x7f0a00ca

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_ALPHA:I

    const v0, 0x7f0a0d94

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_X:I

    const v0, 0x7f0a0d98

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_Y:I

    const v0, 0x7f0a0d9c

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_Z:I

    const v0, 0x7f0a00cb

    sput v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_ALPHA:I

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ViewState$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState$2;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/ViewState$2;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ViewState$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState$3;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/ViewState$3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleX:F

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleY:F

    return-void
.end method

.method public static abortAnimation(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public static cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-wide p0
.end method

.method public static isAnimating$1(Landroid/view/View;)Z
    .locals 3

    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_X:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return v2

    :cond_1
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Z:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_ALPHA:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/ViewState$2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f0a0a18

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    return v2

    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/ViewState$3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f0a0a1c

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    return v1
.end method

.method public static isValidFloat(Ljava/lang/String;F)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot set property "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to NaN"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StackViewState"

    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method


# virtual methods
.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v3, v3, v0

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mWillBeGone:Z

    xor-int/2addr v0, v2

    and-int/2addr v1, v0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_1

    :cond_5
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_X:I

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_2

    :cond_6
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mZTranslation:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_3

    :cond_7
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Z:I

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleX:F

    cmpl-float v0, v0, v2

    sget-object v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/ViewState$2;

    if-eqz v0, :cond_8

    invoke-static {p1, v3, v2, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f0a0a18

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleY:F

    cmpl-float v0, v0, v2

    sget-object v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/ViewState$3;

    if-eqz v0, :cond_9

    invoke-static {p1, v3, v2, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_5

    :cond_9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f0a0a1c

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    :goto_5
    if-eqz v1, :cond_a

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_6

    :cond_a
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_ALPHA:I

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    :goto_6
    return-void
.end method

.method public applyToView(Landroid/view/View;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_X:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    sget-object v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/ViewState$1;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_3

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    :cond_3
    :goto_1
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_5

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    :goto_2
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Z:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mZTranslation:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_7

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationZ(F)V

    :cond_7
    :goto_3
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/ViewState$2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x7f0a0a18

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleX:F

    invoke-static {p1, v0, v4, v3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleX:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_9

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    :cond_9
    :goto_4
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/ViewState$3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x7f0a0a1c

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a

    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleY:F

    invoke-static {p1, v0, v4, v3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleY:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_b

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    :cond_b
    :goto_5
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-eqz v4, :cond_c

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating$1(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_d

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    move v4, v1

    goto :goto_7

    :cond_d
    :goto_6
    move v4, v2

    :goto_7
    sget v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_ALPHA:I

    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_d

    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v3

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_15

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v5, v3

    if-nez v3, :cond_f

    move v3, v2

    goto :goto_8

    :cond_f
    move v3, v1

    :goto_8
    if-nez v4, :cond_10

    if-nez v3, :cond_10

    move v3, v2

    goto :goto_9

    :cond_10
    move v3, v1

    :goto_9
    instance-of v5, p1, Lcom/android/systemui/statusbar/notification/NotificationFadeAware$FadeOptimizedNotification;

    if-eqz v5, :cond_11

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/notification/NotificationFadeAware$FadeOptimizedNotification;

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v5, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsFaded:Z

    if-eq v5, v3, :cond_14

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setNotificationFaded(Z)V

    goto :goto_c

    :cond_11
    if-eqz v3, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_a

    :cond_12
    move v2, v1

    :goto_a
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v3

    if-eqz v2, :cond_13

    const/4 v2, 0x2

    goto :goto_b

    :cond_13
    move v2, v1

    :goto_b
    if-eq v3, v2, :cond_14

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_14
    :goto_c
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_15
    :goto_d
    if-eqz v4, :cond_16

    const/4 v1, 0x4

    :cond_16
    if-eq v1, v0, :cond_18

    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p0, :cond_17

    move-object p0, p1

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mWillBeGone:Z

    if-nez p0, :cond_18

    :cond_17
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    return-void
.end method

.method public cancelAnimations(Landroid/view/View;)V
    .locals 0

    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_X:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Z:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    sget p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_ALPHA:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_3
    return-void
.end method

.method public copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V
    .locals 1

    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mZTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mZTranslation:F

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleX:F

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleX:F

    iget p1, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleY:F

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleY:F

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    const-string p2, "ViewState { "

    invoke-static {p2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_3

    aget-object v7, v3, v6

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    if-nez v2, :cond_1

    const-string v2, ", "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move v2, v5

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string p0, " }"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public initFrom(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mZTranslation:F

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleX:F

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleY:F

    return-void
.end method

.method public onYTranslationAnimationFinished(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    if-nez p0, :cond_0

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final setAlpha(F)V
    .locals 1

    const-string v0, "alpha"

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isValidFloat(Ljava/lang/String;F)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    :cond_0
    return-void
.end method

.method public final setScaleX(F)V
    .locals 1

    const-string/jumbo v0, "scaleX"

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isValidFloat(Ljava/lang/String;F)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleX:F

    :cond_0
    return-void
.end method

.method public final setXTranslation(F)V
    .locals 1

    const-string/jumbo v0, "xTranslation"

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isValidFloat(Ljava/lang/String;F)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    :cond_0
    return-void
.end method

.method public final setYTranslation(F)V
    .locals 1

    const-string/jumbo v0, "yTranslation"

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isValidFloat(Ljava/lang/String;F)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    :cond_0
    return-void
.end method

.method public final setZTranslation(F)V
    .locals 1

    const-string/jumbo v0, "zTranslation"

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isValidFloat(Ljava/lang/String;F)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mZTranslation:F

    :cond_0
    return-void
.end method

.method public final startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    sget v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_ALPHA:I

    invoke-virtual {v1, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    sget v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_ALPHA:I

    invoke-virtual {v1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    iget v10, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v11

    cmpl-float v11, v11, v10

    if-nez v11, :cond_0

    return-void

    :cond_0
    sget v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_ALPHA:I

    invoke-virtual {v1, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/ObjectAnimator;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v13

    iget-boolean v13, v13, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    const/4 v14, 0x0

    if-nez v13, :cond_2

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v2, v10, v2

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v7, v2

    aget-object v0, v0, v5

    new-array v2, v4, [F

    aput v7, v2, v5

    aput v10, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v12}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void

    :cond_1
    invoke-virtual {v1, v10}, Landroid/view/View;->setAlpha(F)V

    cmpl-float v7, v10, v14

    if-nez v7, :cond_2

    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v9

    new-array v13, v4, [F

    aput v9, v13, v5

    aput v10, v13, v3

    invoke-static {v1, v7, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    sget-object v5, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/ViewState$4;

    invoke-direct {v4, v0, v1, v10}, Lcom/android/systemui/statusbar/notification/stack/ViewState$4;-><init>(Lcom/android/systemui/statusbar/notification/stack/ViewState;Landroid/view/View;F)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-wide v4, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    invoke-static {v4, v5, v12}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-wide v4, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 v15, 0x0

    cmp-long v0, v4, v15

    if-lez v0, :cond_4

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v0

    cmpl-float v0, v0, v14

    if-nez v0, :cond_4

    :cond_3
    iget-wide v4, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_4
    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener(Landroid/util/Property;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {v1, v11, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_X:I

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    sget v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_X:I

    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    iget v7, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v8, v7

    if-nez v8, :cond_0

    return-void

    :cond_0
    sget v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_X:I

    invoke-virtual {p1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v10

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateX:Z

    if-nez v10, :cond_2

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sub-float p2, v7, p2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v4, p2

    aget-object p0, p0, v2

    new-array p2, v1, [F

    aput v4, p2, v2

    aput v7, p2, v0

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v5, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide p0

    invoke-virtual {v9, p0, p1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void

    :cond_1
    invoke-virtual {p1, v7}, Landroid/view/View;->setTranslationX(F)V

    return-void

    :cond_2
    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v6

    new-array v1, v1, [F

    aput v6, v1, v2

    aput v7, v1, v0

    invoke-static {p1, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v1, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    invoke-static {v1, v2, v9}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-wide v1, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 v10, 0x0

    cmp-long v1, v1, v10

    if-lez v1, :cond_6

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    :cond_5
    iget-wide v1, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_6
    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener(Landroid/util/Property;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_7
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/ViewState$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState$6;-><init>(Lcom/android/systemui/statusbar/notification/stack/ViewState;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {p1, v8, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v5, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_Y:I

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    sget v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Y:I

    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    iget v7, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v8, v7

    if-nez v8, :cond_0

    return-void

    :cond_0
    sget v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    invoke-virtual {p1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v10

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    if-nez v10, :cond_2

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sub-float p2, v7, p2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v4, p2

    aget-object p0, p0, v2

    new-array p2, v1, [F

    aput v4, p2, v2

    aput v7, p2, v0

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v5, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide p0

    invoke-virtual {v9, p0, p1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void

    :cond_1
    invoke-virtual {p1, v7}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_2
    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v6

    new-array v1, v1, [F

    aput v6, v1, v2

    aput v7, v1, v0

    invoke-static {p1, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v1, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    invoke-static {v1, v2, v9}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-wide v1, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 v10, 0x0

    cmp-long v1, v1, v10

    if-lez v1, :cond_6

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    :cond_5
    iget-wide v1, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_6
    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener(Landroid/util/Property;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_7
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/ViewState$7;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState$7;-><init>(Lcom/android/systemui/statusbar/notification/stack/ViewState;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {p1, v8, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v5, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_Z:I

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    sget v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Z:I

    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    iget v7, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mZTranslation:F

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v8, v7

    if-nez v8, :cond_0

    return-void

    :cond_0
    sget v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Z:I

    invoke-virtual {p1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v10

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    if-nez v10, :cond_2

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sub-float p2, v7, p2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v4, p2

    aget-object p0, p0, v2

    new-array p2, v1, [F

    aput v4, p2, v2

    aput v7, p2, v0

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v5, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide p0

    invoke-virtual {v9, p0, p1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void

    :cond_1
    invoke-virtual {p1, v7}, Landroid/view/View;->setTranslationZ(F)V

    :cond_2
    sget-object v4, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v6

    new-array v1, v1, [F

    aput v6, v1, v2

    aput v7, v1, v0

    invoke-static {p1, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v1, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    invoke-static {v1, v2, v9}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-wide v1, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 v10, 0x0

    cmp-long v1, v1, v10

    if-lez v1, :cond_4

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    :cond_3
    iget-wide v1, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_4
    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener(Landroid/util/Property;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;-><init>(Lcom/android/systemui/statusbar/notification/stack/ViewState;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {p1, v8, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v5, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
