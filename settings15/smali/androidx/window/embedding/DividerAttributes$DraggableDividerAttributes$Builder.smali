.class public final Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation build Landroidx/window/RequiresWindowSdkExtension;
    version = 0x6
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u000b\u001a\u00020\u0003H\u0007J\u0012\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\r\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tH\u0007J\u0012\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0001\u0010\n\u001a\u00020\u0007H\u0007R\u0012\u0010\u0006\u001a\u00020\u00078\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;",
        "",
        "original",
        "Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;",
        "(Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;)V",
        "()V",
        "color",
        "",
        "dragRange",
        "Landroidx/window/embedding/DividerAttributes$DragRange;",
        "widthDp",
        "build",
        "setColor",
        "setDragRange",
        "setWidthDp",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private color:I

.field private dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

.field private widthDp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->widthDp:I

    const/high16 v0, -0x1000000

    iput v0, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->color:I

    sget-object v0, Landroidx/window/embedding/DividerAttributes$DragRange;->DRAG_RANGE_SYSTEM_DEFAULT:Landroidx/window/embedding/DividerAttributes$DragRange;

    iput-object v0, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

    return-void
.end method

.method public constructor <init>(Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;)V
    .locals 1
    .annotation build Landroidx/window/RequiresWindowSdkExtension;
        version = 0x6
    .end annotation

    const-string v0, "original"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;-><init>()V

    invoke-virtual {p1}, Landroidx/window/embedding/DividerAttributes;->getWidthDp()I

    move-result v0

    iput v0, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->widthDp:I

    invoke-virtual {p1}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->getDragRange()Landroidx/window/embedding/DividerAttributes$DragRange;

    move-result-object v0

    iput-object v0, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

    invoke-virtual {p1}, Landroidx/window/embedding/DividerAttributes;->getColor()I

    move-result p1

    iput p1, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->color:I

    return-void
.end method


# virtual methods
.method public final build()Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;
    .locals 4
    .annotation build Landroidx/window/RequiresWindowSdkExtension;
        version = 0x6
    .end annotation

    new-instance v0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;

    iget v1, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->widthDp:I

    iget v2, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->color:I

    iget-object p0, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;-><init>(IILandroidx/window/embedding/DividerAttributes$DragRange;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final setColor(I)Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;
    .locals 1
    .annotation build Landroidx/window/RequiresWindowSdkExtension;
        version = 0x6
    .end annotation

    sget-object v0, Landroidx/window/embedding/DividerAttributes;->Companion:Landroidx/window/embedding/DividerAttributes$Companion;

    invoke-static {v0, p1}, Landroidx/window/embedding/DividerAttributes$Companion;->access$validateColor(Landroidx/window/embedding/DividerAttributes$Companion;I)V

    iput p1, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->color:I

    return-object p0
.end method

.method public final setDragRange(Landroidx/window/embedding/DividerAttributes$DragRange;)Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;
    .locals 1
    .annotation build Landroidx/window/RequiresWindowSdkExtension;
        version = 0x6
    .end annotation

    const-string v0, "dragRange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

    return-object p0
.end method

.method public final setWidthDp(I)Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;
    .locals 1
    .annotation build Landroidx/window/RequiresWindowSdkExtension;
        version = 0x6
    .end annotation

    sget-object v0, Landroidx/window/embedding/DividerAttributes;->Companion:Landroidx/window/embedding/DividerAttributes$Companion;

    invoke-static {v0, p1}, Landroidx/window/embedding/DividerAttributes$Companion;->access$validateWidth(Landroidx/window/embedding/DividerAttributes$Companion;I)V

    iput p1, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->widthDp:I

    return-object p0
.end method
