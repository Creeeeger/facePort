.class public final Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$4;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$4;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
