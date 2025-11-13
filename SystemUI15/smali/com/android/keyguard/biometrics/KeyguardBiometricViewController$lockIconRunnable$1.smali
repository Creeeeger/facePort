.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lockIconRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lockIconRunnable$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lockIconRunnable$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/SecLockIconView;->updateScanningFaceAnimation(Lcom/android/systemui/widget/SystemUIImageView;)V

    return-void
.end method
