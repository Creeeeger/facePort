.class public final Lcom/android/settingslib/media/RouterInfoMediaManager$TransferCallback;
.super Landroid/media/MediaRouter2$TransferCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/media/RouterInfoMediaManager;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/media/RouterInfoMediaManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/media/RouterInfoMediaManager$TransferCallback;->this$0:Lcom/android/settingslib/media/RouterInfoMediaManager;

    invoke-direct {p0}, Landroid/media/MediaRouter2$TransferCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/settingslib/media/RouterInfoMediaManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/media/RouterInfoMediaManager$TransferCallback;-><init>(Lcom/android/settingslib/media/RouterInfoMediaManager;)V

    return-void
.end method


# virtual methods
.method public final onRequestFailed(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager$TransferCallback;->this$0:Lcom/android/settingslib/media/RouterInfoMediaManager;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/InfoMediaManager;->dispatchOnRequestFailed(I)V

    return-void
.end method

.method public final onStop(Landroid/media/MediaRouter2$RoutingController;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager$TransferCallback;->this$0:Lcom/android/settingslib/media/RouterInfoMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->refreshDevices()V

    return-void
.end method

.method public final onTransfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settingslib/media/RouterInfoMediaManager$TransferCallback;->this$0:Lcom/android/settingslib/media/RouterInfoMediaManager;

    invoke-virtual {p1}, Lcom/android/settingslib/media/InfoMediaManager;->rebuildDeviceList()V

    iget-object p0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager$TransferCallback;->this$0:Lcom/android/settingslib/media/RouterInfoMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->notifyCurrentConnectedDeviceChanged()V

    return-void
.end method

.method public final onTransferFailure(Landroid/media/MediaRoute2Info;)V
    .locals 0

    return-void
.end method
