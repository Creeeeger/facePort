.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$remoteLockMonitorCallback$1;
.super Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$remoteLockMonitorCallback$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-direct {p0}, Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$remoteLockMonitorCallback$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemoteLockType()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$remoteLockMonitorCallback$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    iget-boolean v3, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    const-string v4, "changeRemoteLockState data="

    const-string v5, " -> "

    const-string v6, " enableLock="

    invoke-static {v0, v2, v4, v5, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$remoteLockMonitorCallback$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateRemoteLockInfo(Lcom/android/internal/widget/RemoteLockInfo;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$remoteLockMonitorCallback$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->access$notifyRemoteLockRequested(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Ljava/lang/Object;)V

    return-void
.end method

.method public final checkRemoteLockPassword([B)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
