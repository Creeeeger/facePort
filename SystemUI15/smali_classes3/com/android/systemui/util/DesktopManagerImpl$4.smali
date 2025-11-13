.class Lcom/android/systemui/util/DesktopManagerImpl$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$Callback;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/DesktopManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/DesktopManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/DesktopManagerImpl$4;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 5

    const-string v0, "DesktopManager"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl$4;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmDexOccluded(Lcom/android/systemui/util/DesktopManagerImpl;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/DesktopManagerImpl;->notifyOccluded(Z)V

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl$4;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmUpdateMonitor(Lcom/android/systemui/util/DesktopManagerImpl;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl$4;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManagerImpl;->notifyShowKeyguard()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl$4;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManagerImpl;->notifyDismissKeyguard()V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl$4;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmUpdateMonitor(Lcom/android/systemui/util/DesktopManagerImpl;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/DesktopManagerImpl;->notifyKeyguardLockout(Z)V

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$4;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/util/DesktopManagerImpl;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager$Callback;

    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager$Callback;->onServiceConnected()V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$4;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/util/DesktopManagerImpl;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager$Callback;

    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager$Callback;->onServiceDisconnected()V

    goto :goto_0

    :cond_0
    return-void
.end method
