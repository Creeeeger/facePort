.class Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListenerDelegate;
.super Lcom/samsung/android/multicontrol/IInputFilterInstallListener$Stub;
.source "SemMultiControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multicontrol/SemMultiControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputFilterInstallListenerDelegate"
.end annotation


# instance fields
.field private blacklist mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/multicontrol/IInputFilterInstallListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListenerDelegate;->mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;

    return-void
.end method


# virtual methods
.method blacklist nullOutListenerLocked()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListenerDelegate;->mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;

    return-void
.end method

.method public blacklist onInstalled()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/multicontrol/SemMultiControlManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListenerDelegate;->mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;->onInstalled()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist onUninstalled()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/multicontrol/SemMultiControlManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListenerDelegate;->mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;->onUninstalled()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/multicontrol/SemMultiControlManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListenerDelegate;->mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
