.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public aodShowing:Z

.field public showing:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const-string v0, "KeyguardViewMediator"

    const-string/jumbo v1, "setLockScreenShown "

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1;->showing:Z

    iget-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1;->aodShowing:Z

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityTaskManager;->setLockScreenShown(ZZ)V

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1;->showing:Z

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1;->aodShowing:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    move v3, v0

    goto :goto_1

    :catch_0
    const-string/jumbo v1, "setLockScreenShown is failed"

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1;->showing:Z

    iget-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1;->aodShowing:Z

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardDumpLog;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardDumpLog;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/16 v8, 0x30

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->state$default(Lcom/android/systemui/keyguard/KeyguardDumpLog;IZZZIII)V

    return-void
.end method
