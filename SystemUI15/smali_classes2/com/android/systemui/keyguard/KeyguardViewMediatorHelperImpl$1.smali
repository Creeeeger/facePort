.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/DesktopManager$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isRemoteLockMode()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Need update for remoteLock "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result p1

    const/16 v1, 0x65

    if-ne p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const-string p1, "DeX standalone enabled"

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->resetStateLocked$2()V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x2

    if-ne v0, p1, :cond_3

    const-string p1, "DeX mode disabled"

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->resetStateLocked$2()V

    :cond_3
    :goto_0
    return-void
.end method
