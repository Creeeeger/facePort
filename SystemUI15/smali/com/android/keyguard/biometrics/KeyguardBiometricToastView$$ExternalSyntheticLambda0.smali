.class public final synthetic Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    iput p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    iget p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$$ExternalSyntheticLambda0;->f$1:I

    iget-object v1, v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastViewMinWidth:I

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, p0

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastViewMinWidth:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    add-int/2addr v2, p0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
