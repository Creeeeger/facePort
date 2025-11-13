.class Lcom/android/keyguard/KeyguardSecSecurityContainerController$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$4;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDualDarInnerLockScreenStateChanged(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$4;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->configureMode()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateLayoutMargins()V

    return-void
.end method

.method public final onLockModeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$4;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateLayoutMargins()V

    return-void
.end method
