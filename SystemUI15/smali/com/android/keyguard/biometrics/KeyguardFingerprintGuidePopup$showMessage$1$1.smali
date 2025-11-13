.class public final Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$showMessage$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$showMessage$1$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$showMessage$1$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->isAnimating:Z

    return-void
.end method
