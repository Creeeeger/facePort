.class Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FingerprintProgressEffectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->setCompleteImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->access$000(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    return-void
.end method
