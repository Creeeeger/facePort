.class public final Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager$deathRecipient$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager$deathRecipient$1;->this$0:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    return-void
.end method

.method public final binderDied(Landroid/os/IBinder;)V
    .locals 5

    const/4 v0, -0x1

    iget-object p0, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager$deathRecipient$1;->this$0:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;

    iget-object v1, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->providers:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->providers:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->providers:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/INearbyMediaDevicesProvider;

    invoke-interface {v3}, Landroid/media/INearbyMediaDevicesProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p1, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->providers:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->logger:Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger;

    iget-object p0, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->providers:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger$logProviderBinderDied$2;->INSTANCE:Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger$logProviderBinderDied$2;

    iget-object p1, p1, Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "NearbyMediaDevices"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v0, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput p0, v2, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    add-int/2addr v2, v0

    goto :goto_0

    :cond_1
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1

    throw p0
.end method
