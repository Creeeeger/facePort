.class public final Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $callback:Ljava/util/function/Consumer;

.field public final synthetic $componentName:Landroid/content/ComponentName;

.field public final synthetic $instanceId:Lcom/android/internal/logging/InstanceId;

.field public final synthetic $packageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/qs/external/TileServiceRequestController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/external/TileServiceRequestController;Landroid/content/ComponentName;Ljava/lang/String;Lcom/android/internal/logging/InstanceId;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/external/TileServiceRequestController;",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Lcom/android/internal/logging/InstanceId;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;->this$0:Lcom/android/systemui/qs/external/TileServiceRequestController;

    iput-object p2, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;->$componentName:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;->$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;->$instanceId:Lcom/android/internal/logging/InstanceId;

    iput-object p5, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;->$callback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;->this$0:Lcom/android/systemui/qs/external/TileServiceRequestController;

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;->$componentName:Landroid/content/ComponentName;

    iget-object v1, v1, Lcom/android/systemui/qs/external/TileServiceRequestController;->qsHost:Lcom/android/systemui/qs/QSHost;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/qs/QSHost;->addTile(Landroid/content/ComponentName;Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;->this$0:Lcom/android/systemui/qs/external/TileServiceRequestController;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/systemui/qs/external/TileServiceRequestController;->dialogCanceller:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;->$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;->$instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v1, v1, Lcom/android/systemui/qs/external/TileServiceRequestController;->eventLogger:Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/systemui/qs/external/TileRequestDialogEvent;->TILE_REQUEST_DIALOG_DISMISSED:Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "User response not valid: "

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    sget-object v0, Lcom/android/systemui/qs/external/TileRequestDialogEvent;->TILE_REQUEST_DIALOG_TILE_ADDED:Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/systemui/qs/external/TileRequestDialogEvent;->TILE_REQUEST_DIALOG_TILE_NOT_ADDED:Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    :goto_0
    iget-object v1, v1, Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const/4 v4, 0x0

    invoke-interface {v1, v0, v4, v2, v3}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;->$callback:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
