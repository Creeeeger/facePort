.class public Lcom/android/keyguard/BouncerKeyguardMessageArea;
.super Lcom/android/keyguard/KeyguardMessageArea;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final HIDE_DURATION_MILLIS:J

.field public final SHOW_DURATION_MILLIS:J

.field public final animatorSet:Landroid/animation/AnimatorSet;

.field public textAboutToShow:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 p1, 0x96

    iput-wide p1, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;->SHOW_DURATION_MILLIS:J

    const-wide/16 p1, 0xc8

    iput-wide p1, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;->HIDE_DURATION_MILLIS:J

    return-void
.end method

.method public static final synthetic access$setMessage$s-1109913202(Lcom/android/keyguard/BouncerKeyguardMessageArea;Ljava/lang/CharSequence;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/widget/SystemUITextView;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mStyleResId:I

    const v1, 0x1010098

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final onThemeChanged()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mStyleResId:I

    const v2, 0x1010098

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x11200b6

    invoke-static {v1, v0}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update$6()V

    return-void
.end method

.method public final setMessage(Ljava/lang/CharSequence;Z)V
    .locals 5

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;->textAboutToShow:Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-void

    :cond_2
    if-nez p2, :cond_3

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_3
    iput-object p1, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;->textAboutToShow:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;->textAboutToShow:Ljava/lang/CharSequence;

    :cond_4
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;->HIDE_DURATION_MILLIS:J

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v3, Lcom/android/app/animation/Interpolators;->STANDARD_ACCELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/android/keyguard/BouncerKeyguardMessageArea$setMessage$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/keyguard/BouncerKeyguardMessageArea$setMessage$1;-><init>(Lcom/android/keyguard/BouncerKeyguardMessageArea;Ljava/lang/CharSequence;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p1, v0, [F

    fill-array-data p1, :array_1

    invoke-static {p0, v1, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-wide v3, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;->SHOW_DURATION_MILLIS:J

    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/android/app/animation/Interpolators;->STANDARD_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/android/keyguard/BouncerKeyguardMessageArea$setMessage$2;

    invoke-direct {p2, p0}, Lcom/android/keyguard/BouncerKeyguardMessageArea$setMessage$2;-><init>(Lcom/android/keyguard/BouncerKeyguardMessageArea;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
