.class public final Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;
.super Landroidx/window/embedding/EmbeddingBounds$Dimension;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/EmbeddingBounds$Dimension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pixel"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0003H\u0080\u0002\u00a2\u0006\u0002\u0008\tR\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;",
        "Landroidx/window/embedding/EmbeddingBounds$Dimension;",
        "value",
        "",
        "(I)V",
        "getValue$window_release",
        "()I",
        "compareTo",
        "dimen",
        "compareTo$window_release",
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
.field private final value:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const-string v0, "dimension in pixel:"

    invoke-static {p1, v0}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/window/embedding/EmbeddingBounds$Dimension;-><init>(Ljava/lang/String;)V

    iput p1, p0, Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;->value:I

    const/4 p0, 0x1

    if-lt p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pixel value must be a positive integer."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final compareTo$window_release(I)I
    .locals 0

    iget p0, p0, Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;->value:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public final getValue$window_release()I
    .locals 0

    iget p0, p0, Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;->value:I

    return p0
.end method
