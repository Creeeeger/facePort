.class public final Landroid/companion/virtual/VirtualDeviceManager;
.super Ljava/lang/Object;
.source "VirtualDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;,
        Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;,
        Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;,
        Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;,
        Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;,
        Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;,
        Landroid/companion/virtual/VirtualDeviceManager$PendingIntentLaunchStatus;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_VIRTUAL_DEVICE_REMOVED:Ljava/lang/String; = "android.companion.virtual.action.VIRTUAL_DEVICE_REMOVED"

.field public static final blacklist EXTRA_VIRTUAL_DEVICE_ID:Ljava/lang/String; = "android.companion.virtual.extra.VIRTUAL_DEVICE_ID"

.field public static final whitelist LAUNCH_FAILURE_NO_ACTIVITY:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LAUNCH_FAILURE_PENDING_INTENT_CANCELED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LAUNCH_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PERSISTENT_DEVICE_ID_DEFAULT:Ljava/lang/String; = "default:0"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "VirtualDeviceManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/companion/virtual/IVirtualDeviceManager;

.field private final blacklist mVirtualDeviceListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mVirtualDeviceListeners:Ljava/util/List;

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    iput-object p2, p0, Landroid/companion/virtual/VirtualDeviceManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public whitelist createVirtualDevice(ILandroid/companion/virtual/VirtualDeviceParams;)Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;
    .locals 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string/jumbo v0, "params must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    new-instance v0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    move-object v1, v0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;-><init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;ILandroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice-IA;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAllPersistentDeviceIds()Ljava/util/Set;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_0

    const-string v0, "VirtualDeviceManager"

    const-string v1, "Failed to retrieve persistent ids; no virtual device manager service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v1}, Landroid/companion/virtual/IVirtualDeviceManager;->getAllPersistentDeviceIds()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAudioPlaybackSessionId(I)I
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDeviceManager;->getAudioPlaybackSessionId(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAudioRecordingSessionId(I)I
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDeviceManager;->getAudioRecordingSessionId(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getDeviceIdForDisplayId(I)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v1, :cond_1

    const-string v1, "VirtualDeviceManager"

    const-string v2, "Failed to retrieve virtual devices; no virtual device manager service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDeviceManager;->getDeviceIdForDisplayId(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_2
    :goto_0
    return v0
.end method

.method public blacklist getDevicePolicy(II)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v1, :cond_1

    const-string v1, "VirtualDeviceManager"

    const-string v2, "Failed to retrieve device policy; no virtual device manager service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0, p1, p2}, Landroid/companion/virtual/IVirtualDeviceManager;->getDevicePolicy(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDisplayNameForPersistentDeviceId(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_0

    const-string v0, "VirtualDeviceManager"

    const-string v1, "Failed to retrieve virtual devices; no virtual device manager service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/companion/virtual/IVirtualDeviceManager;->getDisplayNameForPersistentDeviceId(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getVirtualDevice(I)Landroid/companion/virtual/VirtualDevice;
    .locals 3

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "VirtualDeviceManager"

    const-string v2, "Failed to retrieve virtual devices; no virtual device manager service."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDeviceManager;->getVirtualDevice(I)Landroid/companion/virtual/VirtualDevice;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public whitelist getVirtualDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/virtual/VirtualDevice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_0

    const-string v0, "VirtualDeviceManager"

    const-string v1, "Failed to retrieve virtual devices; no virtual device manager service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDeviceManager;->getVirtualDevices()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isValidVirtualDeviceId(I)Z
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_0

    const-string v0, "VirtualDeviceManager"

    const-string v1, "Failed to retrieve virtual devices; no virtual device manager service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDeviceManager;->isValidVirtualDeviceId(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isVirtualDeviceOwnedMirrorDisplay(I)Z
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_0

    const-string v0, "VirtualDeviceManager"

    const-string v1, "Failed to retrieve virtual devices; no virtual device manager service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDeviceManager;->isVirtualDeviceOwnedMirrorDisplay(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist playSoundEffect(II)V
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_0

    const-string v0, "VirtualDeviceManager"

    const-string v1, "Failed to dispatch sound effect; no virtual device manager service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0, p1, p2}, Landroid/companion/virtual/IVirtualDeviceManager;->playSoundEffect(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerVirtualDeviceListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;)V
    .locals 4

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_0

    const-string v0, "VirtualDeviceManager"

    const-string v1, "Failed to register listener; no virtual device manager service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate-IA;)V

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceManager;->mVirtualDeviceListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v2, v0}, Landroid/companion/virtual/IVirtualDeviceManager;->registerVirtualDeviceListener(Landroid/companion/virtual/IVirtualDeviceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager;->mVirtualDeviceListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public whitelist unregisterVirtualDeviceListener(Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;)V
    .locals 5

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_0

    const-string v0, "VirtualDeviceManager"

    const-string v1, "Failed to unregister listener; no virtual device manager service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mVirtualDeviceListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceManager;->mVirtualDeviceListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;

    invoke-static {v2}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;->-$$Nest$fgetmListener(Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;)Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_1

    :try_start_1
    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v3, v2}, Landroid/companion/virtual/IVirtualDeviceManager;->unregisterVirtualDeviceListener(Landroid/companion/virtual/IVirtualDeviceListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
