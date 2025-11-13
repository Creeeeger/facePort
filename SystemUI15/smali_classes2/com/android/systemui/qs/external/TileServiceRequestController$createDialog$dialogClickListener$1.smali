.class public final Lcom/android/systemui/qs/external/TileServiceRequestController$createDialog$dialogClickListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $responseHandler:Lcom/android/systemui/qs/external/TileServiceRequestController$SingleShotConsumer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/external/TileServiceRequestController$SingleShotConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/external/TileServiceRequestController$SingleShotConsumer;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$createDialog$dialogClickListener$1;->$responseHandler:Lcom/android/systemui/qs/external/TileServiceRequestController$SingleShotConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$createDialog$dialogClickListener$1;->$responseHandler:Lcom/android/systemui/qs/external/TileServiceRequestController$SingleShotConsumer;

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServiceRequestController$SingleShotConsumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$createDialog$dialogClickListener$1;->$responseHandler:Lcom/android/systemui/qs/external/TileServiceRequestController$SingleShotConsumer;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServiceRequestController$SingleShotConsumer;->accept(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
