.class public final Landroidx/compose/ui/draganddrop/DragAndDropTransferData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final clipData:Landroid/content/ClipData;

.field public final flags:I

.field public final localState:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/ClipData;Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/draganddrop/DragAndDropTransferData;->clipData:Landroid/content/ClipData;

    iput-object p2, p0, Landroidx/compose/ui/draganddrop/DragAndDropTransferData;->localState:Ljava/lang/Object;

    iput p3, p0, Landroidx/compose/ui/draganddrop/DragAndDropTransferData;->flags:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/ClipData;Ljava/lang/Object;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/draganddrop/DragAndDropTransferData;-><init>(Landroid/content/ClipData;Ljava/lang/Object;I)V

    return-void
.end method
