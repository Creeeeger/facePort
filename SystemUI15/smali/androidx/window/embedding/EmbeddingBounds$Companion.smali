.class public final Landroidx/window/embedding/EmbeddingBounds$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


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

.method public static offset(Landroidx/window/core/Bounds;II)Landroidx/window/core/Bounds;
    .locals 4

    new-instance v0, Landroidx/window/core/Bounds;

    iget v1, p0, Landroidx/window/core/Bounds;->left:I

    add-int/2addr v1, p1

    iget v2, p0, Landroidx/window/core/Bounds;->top:I

    add-int/2addr v2, p2

    iget v3, p0, Landroidx/window/core/Bounds;->right:I

    add-int/2addr v3, p1

    iget p0, p0, Landroidx/window/core/Bounds;->bottom:I

    add-int/2addr p0, p2

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/window/core/Bounds;-><init>(IIII)V

    return-object v0
.end method
