.class public final Lcom/android/systemui/doze/PluginAODManager$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/PluginAODManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/PluginAODManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$2;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$2;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAOD;->onFinishedGoingToSleep()V

    :cond_0
    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$2;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverScreenManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/cover/CoverScreenManager;

    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->prepareCoverHomeActivity()Z

    :cond_0
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 3

    const-string v0, "PluginAODManager"

    const-string v1, "onStartedWakingUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$2;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget v0, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    const-string v1, "PluginAODManager"

    const-string v2, "onStartedWakingUp why="

    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager$2;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_0

    const-string v0, "PluginAODManager"

    const-string v2, "clearNotiMapIfNeeded() clear"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/systemui/doze/PluginAODManager;->mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->setNotiMap(Ljava/util/HashMap;)V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_AOD_BY_FOLDER_EVENT:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$2;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, v0, Lcom/android/systemui/keyguard/SecLifecycle;->mMsgForLifecycle:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/keyguard/SecLifecycle;->mMsgForLifecycle:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/keyguard/SecLifecycle$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/systemui/keyguard/SecLifecycle$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$2;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p0, v2}, Lcom/android/systemui/doze/PluginAODManager;->setStartedByFolderClosed(Z)V

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_2
    return-void
.end method
