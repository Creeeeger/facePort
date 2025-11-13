.class public final Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/external/TileServiceRequestController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/external/TileServiceRequestController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1;->this$0:Lcom/android/systemui/qs/external/TileServiceRequestController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancelRequestAddTile(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1;->this$0:Lcom/android/systemui/qs/external/TileServiceRequestController;

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->dialogCanceller:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final requestAddTile(ILandroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Lcom/android/internal/statusbar/IAddTileResultCallback;)V
    .locals 7

    new-instance v6, Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1$requestAddTile$1;

    invoke-direct {v6, p6}, Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1$requestAddTile$1;-><init>(Lcom/android/internal/statusbar/IAddTileResultCallback;)V

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1;->this$0:Lcom/android/systemui/qs/external/TileServiceRequestController;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/qs/external/TileServiceRequestController;->requestTileAdd$frameworks__base__packages__SystemUI__android_common__SystemUI_core(ILandroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    return-void
.end method
