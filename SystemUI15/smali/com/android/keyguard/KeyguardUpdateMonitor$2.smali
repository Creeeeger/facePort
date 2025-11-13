.class public final Lcom/android/keyguard/KeyguardUpdateMonitor$2;
.super Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor$2;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
