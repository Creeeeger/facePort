.class Lcom/android/systemui/util/DesktopManagerImpl$5;
.super Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/DesktopManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/DesktopManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectedDeviceListForGroup()V
    .locals 2

    const-string v0, "DesktopManager"

    const-string v1, "getConnectedDeviceListForGroup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmHandler(Lcom/android/systemui/util/DesktopManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v1, 0x30000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmHandler(Lcom/android/systemui/util/DesktopManagerImpl;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public getFailedUnlockAttempt()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmUpdateMonitor(Lcom/android/systemui/util/DesktopManagerImpl;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmSelectedUserInteractor(Lcom/android/systemui/util/DesktopManagerImpl;)Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result p0

    return p0
.end method

.method public getLockoutAttemptDeadline()J
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmUpdateMonitor(Lcom/android/systemui/util/DesktopManagerImpl;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemainingAttemptBeforeWipe()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmUpdateMonitor(Lcom/android/systemui/util/DesktopManagerImpl;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemainingAttemptsBeforeWipe()I

    move-result p0

    return p0
.end method

.method public requestPrivacyItems()V
    .locals 2

    const-string v0, "DesktopManager"

    const-string/jumbo v1, "requestPrivacyItems"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmHandler(Lcom/android/systemui/util/DesktopManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v1, 0x90000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmHandler(Lcom/android/systemui/util/DesktopManagerImpl;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public requestStatusIcons()V
    .locals 2

    const-string v0, "DesktopManager"

    const-string/jumbo v1, "requestStatusIcons"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmHandler(Lcom/android/systemui/util/DesktopManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmHandler(Lcom/android/systemui/util/DesktopManagerImpl;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public requestUnlock(Ljava/lang/String;)V
    .locals 2

    const-string v0, "DesktopManager"

    const-string/jumbo v1, "requestUnlock called!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmHandler(Lcom/android/systemui/util/DesktopManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmHandler(Lcom/android/systemui/util/DesktopManagerImpl;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showControls()V
    .locals 2

    const-string v0, "DesktopManager"

    const-string/jumbo v1, "showControls"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmHandler(Lcom/android/systemui/util/DesktopManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v1, 0x70000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$5;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmHandler(Lcom/android/systemui/util/DesktopManagerImpl;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
