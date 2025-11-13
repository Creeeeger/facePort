.class public final Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final activeCallbacks:Ljava/util/List;

.field public final commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final commandQueueCallbacks:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager$commandQueueCallbacks$1;

.field public final deathRecipient:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager$deathRecipient$1;

.field public final logger:Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger;

.field public final providers:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p2, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->logger:Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->providers:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->activeCallbacks:Ljava/util/List;

    new-instance p1, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager$commandQueueCallbacks$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager$commandQueueCallbacks$1;-><init>(Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;)V

    iput-object p1, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->commandQueueCallbacks:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager$commandQueueCallbacks$1;

    new-instance p1, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager$deathRecipient$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager$deathRecipient$1;-><init>(Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;)V

    iput-object p1, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->deathRecipient:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager$deathRecipient$1;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object p0, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->commandQueueCallbacks:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager$commandQueueCallbacks$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method
