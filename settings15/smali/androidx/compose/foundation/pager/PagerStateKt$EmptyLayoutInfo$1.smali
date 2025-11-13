.class public final Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/ui/layout/MeasureResult;


# instance fields
.field public final alignmentLines:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;->alignmentLines:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getAlignmentLines()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;->alignmentLines:Ljava/util/Map;

    return-object p0
.end method

.method public final getHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getWidth()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final placeChildren()V
    .locals 0

    return-void
.end method
