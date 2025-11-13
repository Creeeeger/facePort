.class public final Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager$commandQueueCallbacks$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager$commandQueueCallbacks$1;->this$0:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager$commandQueueCallbacks$1;->this$0:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;

    iget-object v0, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->providers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->activeCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/INearbyMediaDevicesUpdateCallback;

    invoke-interface {p1, v1}, Landroid/media/INearbyMediaDevicesProvider;->registerNearbyDevicesCallback(Landroid/media/INearbyMediaDevicesUpdateCallback;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->providers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->logger:Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger;

    iget-object v1, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->providers:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger$logProviderRegistered$2;->INSTANCE:Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger$logProviderRegistered$2;

    const-string v4, "NearbyMediaDevices"

    iget-object v0, v0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput v1, v3, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    invoke-interface {p1}, Landroid/media/INearbyMediaDevicesProvider;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->deathRecipient:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager$deathRecipient$1;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method public final unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager$commandQueueCallbacks$1;->this$0:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;

    iget-object v0, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->providers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->logger:Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger;

    iget-object p0, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->providers:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger$logProviderUnregistered$2;->INSTANCE:Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger$logProviderUnregistered$2;

    const-string v2, "NearbyMediaDevices"

    iget-object p1, p1, Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput p0, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_0
    return-void
.end method
