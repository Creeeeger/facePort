.class public final Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/uwb/RangingSession$Callback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$1;->this$0:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;

    return-void
.end method


# virtual methods
.method public final onClosed(ILandroid/os/PersistableBundle;)V
    .locals 0

    const-string p1, "Ranging"

    const-string p2, "onClosed"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$1;->this$0:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;

    const/4 p1, 0x3

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mState:I

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mCallback:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$Callback;

    invoke-interface {p0}, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$Callback;->onClosed()V

    return-void
.end method

.method public final onOpenFailed(ILandroid/os/PersistableBundle;)V
    .locals 0

    const-string p1, "Ranging"

    const-string p2, "onOpenFailed"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$1;->this$0:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;

    const/4 p1, 0x3

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mState:I

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mCallback:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$Callback;

    invoke-interface {p0}, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$Callback;->onOpenFailed()V

    return-void
.end method

.method public final onOpened(Landroid/uwb/RangingSession;)V
    .locals 2

    const-string v0, "Ranging"

    const-string v1, "onOpened"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$1;->this$0:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mState:I

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mRangingSession:Landroid/uwb/RangingSession;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mCallback:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$Callback;

    invoke-interface {p0}, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$Callback;->onOpened()V

    return-void
.end method

.method public final onReconfigureFailed(ILandroid/os/PersistableBundle;)V
    .locals 0

    const-string p0, "Ranging"

    const-string p1, "onReconfigureFailed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onReconfigured(Landroid/os/PersistableBundle;)V
    .locals 0

    const-string p0, "Ranging"

    const-string p1, "onReconfigured"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onReportReceived(Landroid/uwb/RangingReport;)V
    .locals 2

    const-string v0, "Ranging"

    const-string v1, "onReportReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$1;->this$0:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mCallback:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$Callback;

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$Callback;->onReportReceived(Landroid/uwb/RangingReport;)V

    return-void
.end method

.method public final onStartFailed(ILandroid/os/PersistableBundle;)V
    .locals 0

    const-string p0, "Ranging"

    const-string p1, "onStartFailed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onStarted(Landroid/os/PersistableBundle;)V
    .locals 1

    const-string p1, "Ranging"

    const-string v0, "onStarted"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$1;->this$0:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;

    const/4 p1, 0x2

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mState:I

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mCallback:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$Callback;

    invoke-interface {p0}, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$Callback;->onStarted()V

    return-void
.end method

.method public final onStopFailed(ILandroid/os/PersistableBundle;)V
    .locals 0

    const-string p0, "Ranging"

    const-string p1, "onStopFailed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onStopped(ILandroid/os/PersistableBundle;)V
    .locals 0

    const-string p1, "Ranging"

    const-string p2, "onStopped"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$1;->this$0:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mState:I

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mCallback:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$Callback;

    invoke-interface {p0}, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$Callback;->onStopped()V

    return-void
.end method
