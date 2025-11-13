.class public final Lcom/android/keyguard/KeyguardUpdateMonitor$10;
.super Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLockoutReset(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->BIOMETRIC_HELP_FINGERPRINT_NOT_RECOGNIZED:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintLockoutReset(I)V

    return-void
.end method
