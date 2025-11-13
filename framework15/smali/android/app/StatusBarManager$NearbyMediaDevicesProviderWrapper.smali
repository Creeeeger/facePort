.class final Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;
.super Landroid/media/INearbyMediaDevicesProvider$Stub;
.source "StatusBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/StatusBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NearbyMediaDevicesProviderWrapper"
.end annotation


# instance fields
.field private final blacklist mProvider:Landroid/media/NearbyMediaDevicesProvider;

.field private final blacklist mRegisteredCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/INearbyMediaDevicesUpdateCallback;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/media/NearbyDevice;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/media/NearbyMediaDevicesProvider;)V
    .locals 1

    invoke-direct {p0}, Landroid/media/INearbyMediaDevicesProvider$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;->mRegisteredCallbacks:Ljava/util/Map;

    iput-object p1, p0, Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;->mProvider:Landroid/media/NearbyMediaDevicesProvider;

    return-void
.end method

.method static synthetic blacklist lambda$registerNearbyDevicesCallback$0(Landroid/media/INearbyMediaDevicesUpdateCallback;Ljava/util/List;)V
    .locals 2

    :try_start_0
    invoke-interface {p0, p1}, Landroid/media/INearbyMediaDevicesUpdateCallback;->onDevicesUpdated(Ljava/util/List;)V
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


# virtual methods
.method public blacklist registerNearbyDevicesCallback(Landroid/media/INearbyMediaDevicesUpdateCallback;)V
    .locals 2

    new-instance v0, Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/media/INearbyMediaDevicesUpdateCallback;)V

    iget-object v1, p0, Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;->mRegisteredCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;->mProvider:Landroid/media/NearbyMediaDevicesProvider;

    invoke-interface {v1, v0}, Landroid/media/NearbyMediaDevicesProvider;->registerNearbyDevicesCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist unregisterNearbyDevicesCallback(Landroid/media/INearbyMediaDevicesUpdateCallback;)V
    .locals 2

    iget-object v0, p0, Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;->mRegisteredCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;->mProvider:Landroid/media/NearbyMediaDevicesProvider;

    iget-object v1, p0, Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;->mRegisteredCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    invoke-interface {v0, v1}, Landroid/media/NearbyMediaDevicesProvider;->unregisterNearbyDevicesCallback(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;->mRegisteredCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
