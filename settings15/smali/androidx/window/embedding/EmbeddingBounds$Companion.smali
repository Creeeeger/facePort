.class public final Landroidx/window/embedding/EmbeddingBounds$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/EmbeddingBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J%\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH\u0001\u00a2\u0006\u0002\u0008\u000fJ\u001d\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0011H\u0000\u00a2\u0006\u0002\u0008\u000fJ\u001c\u0010\u0012\u001a\u00020\n*\u00020\n2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/window/embedding/EmbeddingBounds$Companion;",
        "",
        "()V",
        "BOUNDS_EXPANDED",
        "Landroidx/window/embedding/EmbeddingBounds;",
        "BOUNDS_HINGE_BOTTOM",
        "BOUNDS_HINGE_LEFT",
        "BOUNDS_HINGE_RIGHT",
        "BOUNDS_HINGE_TOP",
        "translateEmbeddingBounds",
        "Landroidx/window/core/Bounds;",
        "embeddingBounds",
        "parentContainerBounds",
        "windowLayoutInfo",
        "Landroidx/window/layout/WindowLayoutInfo;",
        "translateEmbeddingBounds$window_release",
        "parentContainerInfo",
        "Landroidx/window/embedding/ParentContainerInfo;",
        "offset",
        "dx",
        "",
        "dy",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/window/embedding/EmbeddingBounds$Companion;-><init>()V

    return-void
.end method

.method private final offset(Landroidx/window/core/Bounds;II)Landroidx/window/core/Bounds;
    .locals 3

    new-instance p0, Landroidx/window/core/Bounds;

    invoke-virtual {p1}, Landroidx/window/core/Bounds;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Landroidx/window/core/Bounds;->getTop()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p1}, Landroidx/window/core/Bounds;->getRight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p1}, Landroidx/window/core/Bounds;->getBottom()I

    move-result p1

    add-int/2addr p1, p3

    invoke-direct {p0, v0, v1, v2, p1}, Landroidx/window/core/Bounds;-><init>(IIII)V

    return-object p0
.end method


# virtual methods
.method public final translateEmbeddingBounds$window_release(Landroidx/window/embedding/EmbeddingBounds;Landroidx/window/core/Bounds;Landroidx/window/layout/WindowLayoutInfo;)Landroidx/window/core/Bounds;
    .locals 5

    const-string p0, "embeddingBounds"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parentContainerBounds"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "windowLayoutInfo"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/window/embedding/EmbeddingBounds;->getWidth()Landroidx/window/embedding/EmbeddingBounds$Dimension;

    move-result-object p0

    sget-object v0, Landroidx/window/embedding/EmbeddingBounds$Dimension;->DIMENSION_EXPANDED:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/window/embedding/EmbeddingBounds;->getHeight()Landroidx/window/embedding/EmbeddingBounds$Dimension;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/window/core/Bounds;->Companion:Landroidx/window/core/Bounds$Companion;

    invoke-virtual {p0}, Landroidx/window/core/Bounds$Companion;->getEMPTY_BOUNDS()Landroidx/window/core/Bounds;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1, p3}, Landroidx/window/embedding/EmbeddingBounds;->shouldUseFallbackDimensionForWidth$window_release(Landroidx/window/layout/WindowLayoutInfo;)Z

    move-result p0

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz p0, :cond_1

    sget-object p0, Landroidx/window/embedding/EmbeddingBounds$Dimension;->Companion:Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion;

    invoke-virtual {p0, v0}, Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion;->ratio(F)Landroidx/window/embedding/EmbeddingBounds$Dimension;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/window/embedding/EmbeddingBounds;->getWidth()Landroidx/window/embedding/EmbeddingBounds$Dimension;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p3}, Landroidx/window/embedding/EmbeddingBounds;->shouldUseFallbackDimensionForHeight$window_release(Landroidx/window/layout/WindowLayoutInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroidx/window/embedding/EmbeddingBounds$Dimension;->Companion:Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion;

    invoke-virtual {v1, v0}, Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion;->ratio(F)Landroidx/window/embedding/EmbeddingBounds$Dimension;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroidx/window/embedding/EmbeddingBounds;->getHeight()Landroidx/window/embedding/EmbeddingBounds$Dimension;

    move-result-object v0

    :goto_1
    new-instance v1, Landroidx/window/embedding/EmbeddingBounds;

    invoke-virtual {p1}, Landroidx/window/embedding/EmbeddingBounds;->getAlignment()Landroidx/window/embedding/EmbeddingBounds$Alignment;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Landroidx/window/embedding/EmbeddingBounds;-><init>(Landroidx/window/embedding/EmbeddingBounds$Alignment;Landroidx/window/embedding/EmbeddingBounds$Dimension;Landroidx/window/embedding/EmbeddingBounds$Dimension;)V

    invoke-virtual {v1, p2, p3}, Landroidx/window/embedding/EmbeddingBounds;->getWidthInPixel$window_release(Landroidx/window/core/Bounds;Landroidx/window/layout/WindowLayoutInfo;)I

    move-result p0

    invoke-virtual {v1, p2, p3}, Landroidx/window/embedding/EmbeddingBounds;->getHeightInPixel$window_release(Landroidx/window/core/Bounds;Landroidx/window/layout/WindowLayoutInfo;)I

    move-result p3

    invoke-virtual {p2}, Landroidx/window/core/Bounds;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroidx/window/core/Bounds;->getHeight()I

    move-result p2

    if-ne p0, v0, :cond_3

    if-ne p3, p2, :cond_3

    sget-object p0, Landroidx/window/core/Bounds;->Companion:Landroidx/window/core/Bounds$Companion;

    invoke-virtual {p0}, Landroidx/window/core/Bounds$Companion;->getEMPTY_BOUNDS()Landroidx/window/core/Bounds;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v1, Landroidx/window/core/Bounds;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p0, p3}, Landroidx/window/core/Bounds;-><init>(IIII)V

    invoke-virtual {p1}, Landroidx/window/embedding/EmbeddingBounds;->getAlignment()Landroidx/window/embedding/EmbeddingBounds$Alignment;

    move-result-object v3

    sget-object v4, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_TOP:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object p1, Landroidx/window/embedding/EmbeddingBounds;->Companion:Landroidx/window/embedding/EmbeddingBounds$Companion;

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p1, v1, v0, v2}, Landroidx/window/embedding/EmbeddingBounds$Companion;->offset(Landroidx/window/core/Bounds;II)Landroidx/window/core/Bounds;

    move-result-object p0

    goto :goto_2

    :cond_4
    sget-object v4, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_LEFT:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object p0, Landroidx/window/embedding/EmbeddingBounds;->Companion:Landroidx/window/embedding/EmbeddingBounds$Companion;

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    invoke-direct {p0, v1, v2, p2}, Landroidx/window/embedding/EmbeddingBounds$Companion;->offset(Landroidx/window/core/Bounds;II)Landroidx/window/core/Bounds;

    move-result-object p0

    goto :goto_2

    :cond_5
    sget-object v2, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_BOTTOM:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object p1, Landroidx/window/embedding/EmbeddingBounds;->Companion:Landroidx/window/embedding/EmbeddingBounds$Companion;

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, p3

    invoke-direct {p1, v1, v0, p2}, Landroidx/window/embedding/EmbeddingBounds$Companion;->offset(Landroidx/window/core/Bounds;II)Landroidx/window/core/Bounds;

    move-result-object p0

    goto :goto_2

    :cond_6
    sget-object v2, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_RIGHT:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object p1, Landroidx/window/embedding/EmbeddingBounds;->Companion:Landroidx/window/embedding/EmbeddingBounds$Companion;

    sub-int/2addr v0, p0

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    invoke-direct {p1, v1, v0, p2}, Landroidx/window/embedding/EmbeddingBounds$Companion;->offset(Landroidx/window/core/Bounds;II)Landroidx/window/core/Bounds;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unknown alignment: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/window/embedding/EmbeddingBounds;->getAlignment()Landroidx/window/embedding/EmbeddingBounds$Alignment;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final translateEmbeddingBounds$window_release(Landroidx/window/embedding/EmbeddingBounds;Landroidx/window/embedding/ParentContainerInfo;)Landroidx/window/core/Bounds;
    .locals 1

    const-string v0, "embeddingBounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentContainerInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/window/embedding/ParentContainerInfo;->getWindowBounds()Landroidx/window/core/Bounds;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/window/embedding/ParentContainerInfo;->getWindowLayoutInfo()Landroidx/window/layout/WindowLayoutInfo;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Landroidx/window/embedding/EmbeddingBounds$Companion;->translateEmbeddingBounds$window_release(Landroidx/window/embedding/EmbeddingBounds;Landroidx/window/core/Bounds;Landroidx/window/layout/WindowLayoutInfo;)Landroidx/window/core/Bounds;

    move-result-object p0

    return-object p0
.end method
