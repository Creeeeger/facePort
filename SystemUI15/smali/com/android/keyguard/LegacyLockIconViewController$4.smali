.class Lcom/android/keyguard/LegacyLockIconViewController$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/LegacyLockIconViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/LegacyLockIconViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/LegacyLockIconViewController$4;->this$0:Lcom/android/keyguard/LegacyLockIconViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    return-void
.end method

.method public final onKeyguardBouncerStateChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/LegacyLockIconViewController$4;->this$0:Lcom/android/keyguard/LegacyLockIconViewController;

    iput-boolean p1, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mIsBouncerShowing:Z

    invoke-virtual {p0}, Lcom/android/keyguard/LegacyLockIconViewController;->updateVisibility$1()V

    return-void
.end method
