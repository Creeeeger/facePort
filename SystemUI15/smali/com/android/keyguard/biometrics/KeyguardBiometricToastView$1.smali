.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->dismiss(Z)V

    :cond_0
    return-void
.end method
