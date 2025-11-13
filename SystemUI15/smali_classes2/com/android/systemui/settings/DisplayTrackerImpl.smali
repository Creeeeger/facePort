.class public final Lcom/android/systemui/settings/DisplayTrackerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/DisplayTracker;


# instance fields
.field public final backgroundHandler:Landroid/os/Handler;

.field public final brightnessCallbacks:Ljava/util/List;

.field public final displayBrightnessChangedListener:Lcom/android/systemui/settings/DisplayTrackerImpl$displayBrightnessChangedListener$1;

.field public final displayCallbacks:Ljava/util/List;

.field public final displayChangedListener:Lcom/android/systemui/settings/DisplayTrackerImpl$displayChangedListener$1;

.field public final displayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManager;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayManager:Landroid/hardware/display/DisplayManager;

    iput-object p2, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->backgroundHandler:Landroid/os/Handler;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayCallbacks:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->brightnessCallbacks:Ljava/util/List;

    new-instance p1, Lcom/android/systemui/settings/DisplayTrackerImpl$displayChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/settings/DisplayTrackerImpl$displayChangedListener$1;-><init>(Lcom/android/systemui/settings/DisplayTrackerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayChangedListener:Lcom/android/systemui/settings/DisplayTrackerImpl$displayChangedListener$1;

    new-instance p1, Lcom/android/systemui/settings/DisplayTrackerImpl$displayBrightnessChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/settings/DisplayTrackerImpl$displayBrightnessChangedListener$1;-><init>(Lcom/android/systemui/settings/DisplayTrackerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayBrightnessChangedListener:Lcom/android/systemui/settings/DisplayTrackerImpl$displayBrightnessChangedListener$1;

    return-void
.end method

.method public static final access$onDisplayChanged(Lcom/android/systemui/settings/DisplayTrackerImpl;ILjava/util/List;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;

    iget-object v0, p2, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/settings/DisplayTrackerImpl$onDisplayChanged$$inlined$notifySubscribers$1;

    invoke-direct {v1, p2, p1}, Lcom/android/systemui/settings/DisplayTrackerImpl$onDisplayChanged$$inlined$notifySubscribers$1;-><init>(Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic getDisplayBrightnessChangedListener$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getDisplayChangedListener$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final addBrightnessChangeCallback(Lcom/android/systemui/settings/DisplayTracker$Callback;Ljava/util/concurrent/Executor;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->brightnessCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->brightnessCallbacks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayBrightnessChangedListener:Lcom/android/systemui/settings/DisplayTrackerImpl$displayBrightnessChangedListener$1;

    iget-object v3, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->backgroundHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x8

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->brightnessCallbacks:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, p2}, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;-><init>(Ljava/lang/ref/WeakReference;Ljava/util/concurrent/Executor;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final addDisplayChangeCallback(Lcom/android/systemui/settings/DisplayTracker$Callback;Ljava/util/concurrent/Executor;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayCallbacks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayChangedListener:Lcom/android/systemui/settings/DisplayTrackerImpl$displayChangedListener$1;

    iget-object v3, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->backgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayCallbacks:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, p2}, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;-><init>(Ljava/lang/ref/WeakReference;Ljava/util/concurrent/Executor;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final removeCallback(Lcom/android/systemui/settings/DisplayTracker$Callback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayCallbacks:Ljava/util/List;

    new-instance v2, Lcom/android/systemui/settings/DisplayTrackerImpl$removeCallback$1$changed$1;

    invoke-direct {v2, p1}, Lcom/android/systemui/settings/DisplayTrackerImpl$removeCallback$1$changed$1;-><init>(Lcom/android/systemui/settings/DisplayTracker$Callback;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayCallbacks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayChangedListener:Lcom/android/systemui/settings/DisplayTrackerImpl$displayChangedListener$1;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->brightnessCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->brightnessCallbacks:Ljava/util/List;

    new-instance v2, Lcom/android/systemui/settings/DisplayTrackerImpl$removeCallback$2$changed$1;

    invoke-direct {v2, p1}, Lcom/android/systemui/settings/DisplayTrackerImpl$removeCallback$2$changed$1;-><init>(Lcom/android/systemui/settings/DisplayTracker$Callback;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->brightnessCallbacks:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayManager:Landroid/hardware/display/DisplayManager;

    iget-object p0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayBrightnessChangedListener:Lcom/android/systemui/settings/DisplayTrackerImpl$displayBrightnessChangedListener$1;

    invoke-virtual {p1, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0

    :goto_3
    monitor-exit v0

    throw p0
.end method
