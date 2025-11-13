.class public final Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$2;
.super Landroid/os/IRemoteCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$2;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendResult(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "secureState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "mSecureLockChangedCallback sendResult : secureState "

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$2;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchSecureState(I)V

    return-void
.end method
