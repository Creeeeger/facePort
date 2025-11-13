.class public final Lcom/android/keyguard/KeyguardUpdateMonitor$23;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$23;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskStackChangedBackground()V
    .locals 6

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$23;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Landroid/app/IActivityTaskManager;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAllowFingerprintOnCurrentOccludingActivity:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAllowFingerprintOnOccludingActivitiesFromPackage:Ljava/util/Set;

    iget-object v5, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v0, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->visible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAllowFingerprintOnCurrentOccludingActivity:Z

    if-eq v1, v2, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->allowFingerprintOnCurrentOccludingActivityChanged(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    const/4 v1, 0x4

    invoke-interface {v0, v3, v1}, Landroid/app/IActivityTaskManager;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    iget-boolean v2, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->visible:Z

    invoke-virtual {v1, v2}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logTaskStackChangedForAssistant(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    iget-boolean v0, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->visible:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v2, 0x14f

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    const-string/jumbo v1, "unable to check task stack "

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method
