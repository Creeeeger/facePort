.class public final Lcom/google/android/material/textfield/ClearTextEndIconDelegate;
.super Lcom/google/android/material/textfield/EndIconDelegate;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final animationFadeDuration:I

.field public final animationFadeInterpolator:Landroid/animation/TimeInterpolator;

.field public final animationScaleDuration:I

.field public final animationScaleInterpolator:Landroid/animation/TimeInterpolator;

.field public editText:Landroid/widget/EditText;

.field public iconInAnim:Landroid/animation/AnimatorSet;

.field public iconOutAnim:Landroid/animation/ValueAnimator;

.field public final onFocusChangeListener:Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda1;

.field public final onIconClickListener:Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/EndIconDelegate;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    new-instance v0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->onIconClickListener:Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->onFocusChangeListener:Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda1;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040453

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animationFadeDuration:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x96

    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animationScaleDuration:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    const v2, 0x7f04045c

    invoke-static {v0, v2, v1}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animationFadeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    const v1, 0x7f04045a

    invoke-static {p1, v1, v0}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animationScaleInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method


# virtual methods
.method public final afterEditTextChanged()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->shouldBeVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animateIcon(Z)V

    return-void
.end method

.method public final animateIcon(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->isEndIconVisible()Z

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final getIconContentDescriptionResId()I
    .locals 0

    const p0, 0x7f140953

    return p0
.end method

.method public final getIconDrawableResId()I
    .locals 0

    const p0, 0x7f08076e

    return p0
.end method

.method public final getOnEditTextFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->onFocusChangeListener:Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda1;

    return-object p0
.end method

.method public final getOnIconClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->onIconClickListener:Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda0;

    return-object p0
.end method

.method public final getOnIconViewFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->onFocusChangeListener:Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda1;

    return-object p0
.end method

.method public final onEditTextAttached(Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->editText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->shouldBeVisible()Z

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconVisible(Z)V

    return-void
.end method

.method public final onSuffixVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animateIcon(Z)V

    return-void
.end method

.method public final setUp()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animationScaleInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v4, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animationScaleDuration:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animationFadeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v5, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animationFadeDuration:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, v1}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;I)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Landroid/animation/AnimatorSet;

    new-array v7, v2, [Landroid/animation/Animator;

    aput-object v3, v7, v1

    aput-object v4, v7, v0

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$1;

    invoke-direct {v4, p0, v1}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$1;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;I)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animationFadeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v2, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconOutAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$1;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;I)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final shouldBeVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->editText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final tearDown()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
