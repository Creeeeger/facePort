.class public Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;
.super Lcom/android/systemui/widget/SystemUITextView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAlwaysAnnounceText:Z

.field public mAnimationsEnabled:Z

.field public mKeyguardIndicationInfo:Lcom/android/systemui/keyguard/KeyguardIndication;

.field public mLastAnimator:Landroid/animation/Animator;

.field public mMessage:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    return-void
.end method


# virtual methods
.method public final clearMessages()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mLastAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final getOutAnimator()Landroid/animation/AnimatorSet;
    .locals 13

    const/4 v0, 0x2

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v3, v5, v6

    invoke-static {p0, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    const-wide/16 v7, 0xa7

    const-wide/16 v9, 0x0

    if-nez v5, :cond_0

    move-wide v11, v9

    goto :goto_0

    :cond_0
    move-wide v11, v7

    :goto_0
    invoke-virtual {v2, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v5, Lcom/android/app/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget-object v11, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0704de

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    new-array v12, v0, [F

    aput v3, v12, v6

    aput v11, v12, v4

    invoke-static {p0, v5, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    if-nez p0, :cond_1

    move-wide v7, v9

    :cond_1
    invoke-virtual {v3, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-array p0, v0, [Landroid/animation/Animator;

    aput-object v2, p0, v6

    aput-object v3, p0, v4

    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v1
.end method

.method public final onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/widget/SystemUITextView;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mOriginalFontSizeDp:F

    div-float/2addr v2, v1

    iput v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mOriginalFontSizeDp:F

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    return-void
.end method

.method public final setNextIndication()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mKeyguardIndicationInfo:Lcom/android/systemui/keyguard/KeyguardIndication;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardIndication;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mKeyguardIndicationInfo:Lcom/android/systemui/keyguard/KeyguardIndication;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardIndication;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mKeyguardIndicationInfo:Lcom/android/systemui/keyguard/KeyguardIndication;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardIndication;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    instance-of v2, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mKeyguardIndicationInfo:Lcom/android/systemui/keyguard/KeyguardIndication;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardIndication;->mForceAccessibilityLiveRegionAssertive:Z

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAlwaysAnnounceText:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public final switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V
    .locals 11

    const/4 v0, 0x2

    sget-boolean v1, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    invoke-virtual {v1, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    iget-boolean v4, v1, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->lastShouldPlay:Z

    if-nez v4, :cond_1

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->skipAnimationInOthers:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mMessage:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mKeyguardIndicationInfo:Lcom/android/systemui/keyguard/KeyguardIndication;

    const/4 p1, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_9

    if-eqz p2, :cond_2

    iget-object p2, p2, Lcom/android/systemui/keyguard/KeyguardIndication;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    move p2, v3

    goto :goto_2

    :cond_2
    move p2, v2

    :goto_2
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getOutAnimator()Landroid/animation/AnimatorSet;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_7

    :cond_4
    :goto_3
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v3, [F

    aput v5, v7, v2

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    const-wide/16 v7, 0x0

    if-nez v6, :cond_5

    move-wide v9, v7

    goto :goto_4

    :cond_5
    const-wide/16 v9, 0x96

    :goto_4
    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    if-nez v6, :cond_6

    move-wide v9, v7

    goto :goto_5

    :cond_6
    const-wide/16 v9, 0x13d

    :goto_5
    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v6, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget-object v9, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0704de

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    new-array v10, v0, [F

    aput v9, v10, v2

    aput v4, v10, v3

    invoke-static {p0, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    if-nez v6, :cond_7

    goto :goto_6

    :cond_7
    const-wide/16 v7, 0x258

    :goto_6
    invoke-virtual {v4, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v6, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$4;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v6, v0, [Landroid/animation/Animator;

    aput-object v4, v6, v2

    aput-object v5, v6, v3

    invoke-virtual {p2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$1;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p1, v0, [Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getOutAnimator()Landroid/animation/AnimatorSet;

    move-result-object v0

    aput-object v0, p1, v2

    aput-object p2, p1, v3

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    :goto_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mLastAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_8
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mLastAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_8

    :cond_9
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setNextIndication()V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mLastAnimator:Landroid/animation/Animator;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mLastAnimator:Landroid/animation/Animator;

    :cond_a
    :goto_8
    return-void
.end method
