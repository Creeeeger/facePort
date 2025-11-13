.class public final Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public color:I

.field public dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

.field public widthDp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->widthDp:I

    const/high16 v0, -0x1000000

    iput v0, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->color:I

    sget-object v0, Landroidx/window/embedding/DividerAttributes$DragRange;->DRAG_RANGE_SYSTEM_DEFAULT:Landroidx/window/embedding/DividerAttributes$DragRange$Companion$DRAG_RANGE_SYSTEM_DEFAULT$1;

    iput-object v0, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

    return-void
.end method

.method public constructor <init>(Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;)V
    .locals 1

    invoke-direct {p0}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;-><init>()V

    iget v0, p1, Landroidx/window/embedding/DividerAttributes;->widthDp:I

    iput v0, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->widthDp:I

    iget-object v0, p1, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

    iput-object v0, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

    iget p1, p1, Landroidx/window/embedding/DividerAttributes;->color:I

    iput p1, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->color:I

    return-void
.end method
