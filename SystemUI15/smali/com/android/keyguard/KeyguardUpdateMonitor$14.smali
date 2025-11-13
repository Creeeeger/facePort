.class public final Lcom/android/keyguard/KeyguardUpdateMonitor$14;
.super Landroid/hardware/face/FaceManager$AuthenticationCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthenticationAcquired(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceAcquired(I)V

    return-void
.end method

.method public final onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceError(ILjava/lang/String;)V

    return-void
.end method

.method public final onAuthenticationFailed()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceAuthFailed()V

    return-void
.end method

.method public final onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceHelp(ILjava/lang/String;)V

    return-void
.end method

.method public final onAuthenticationSucceeded(Landroid/hardware/face/FaceManager$AuthenticationResult;)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Landroid/hardware/face/FaceManager$AuthenticationResult;->getUserId()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/face/FaceManager$AuthenticationResult;->isStrongBiometric()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceAuthenticated(IZ)V

    return-void
.end method
