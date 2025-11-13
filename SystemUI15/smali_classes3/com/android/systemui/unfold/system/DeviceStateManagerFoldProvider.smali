.class public final Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/unfold/updates/FoldProvider;


# instance fields
.field public final callbacks:Ljava/util/concurrent/ConcurrentHashMap;

.field public final context:Landroid/content/Context;

.field public final deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;


# direct methods
.method public constructor <init>(Landroid/hardware/devicestate/DeviceStateManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider;->deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    iput-object p2, p0, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider;->context:Landroid/content/Context;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider;->callbacks:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final registerCallback(Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;Ljava/util/concurrent/Executor;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider$FoldStateListener;

    iget-object v1, p0, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider$FoldStateListener;-><init>(Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider;Landroid/content/Context;Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;)V

    iget-object v1, p0, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider;->deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v1, p2, v0}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    iget-object p0, p0, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider;->callbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final unregisterCallback(Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider;->callbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider;->deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p0, p1}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    :cond_0
    return-void
.end method
