.class public final Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1$requestAddTile$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $callback:Lcom/android/internal/statusbar/IAddTileResultCallback;


# direct methods
.method public constructor <init>(Lcom/android/internal/statusbar/IAddTileResultCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1$requestAddTile$1;->$callback:Lcom/android/internal/statusbar/IAddTileResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1$requestAddTile$1;->$callback:Lcom/android/internal/statusbar/IAddTileResultCallback;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TileServiceRequestController"

    const-string v0, "Couldn\'t respond to request"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
