.class public final synthetic Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :pswitch_0
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->DEACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkScale:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :pswitch_1
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->DEACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mProgress:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
