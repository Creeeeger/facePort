.class public final Landroidx/window/embedding/EmbeddingBounds$Alignment;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ALIGN_BOTTOM:Landroidx/window/embedding/EmbeddingBounds$Alignment;

.field public static final ALIGN_LEFT:Landroidx/window/embedding/EmbeddingBounds$Alignment;

.field public static final ALIGN_RIGHT:Landroidx/window/embedding/EmbeddingBounds$Alignment;

.field public static final ALIGN_TOP:Landroidx/window/embedding/EmbeddingBounds$Alignment;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/embedding/EmbeddingBounds$Alignment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/EmbeddingBounds$Alignment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroidx/window/embedding/EmbeddingBounds$Alignment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/EmbeddingBounds$Alignment;-><init>(I)V

    sput-object v0, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_TOP:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    new-instance v0, Landroidx/window/embedding/EmbeddingBounds$Alignment;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/window/embedding/EmbeddingBounds$Alignment;-><init>(I)V

    sput-object v0, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_LEFT:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    new-instance v0, Landroidx/window/embedding/EmbeddingBounds$Alignment;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/window/embedding/EmbeddingBounds$Alignment;-><init>(I)V

    sput-object v0, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_BOTTOM:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    new-instance v0, Landroidx/window/embedding/EmbeddingBounds$Alignment;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/window/embedding/EmbeddingBounds$Alignment;-><init>(I)V

    sput-object v0, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_RIGHT:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/window/embedding/EmbeddingBounds$Alignment;->value:I

    if-ltz p1, :cond_0

    const/4 p0, 0x4

    if-ge p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/window/embedding/EmbeddingBounds$Alignment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/window/embedding/EmbeddingBounds$Alignment;

    iget p1, p1, Landroidx/window/embedding/EmbeddingBounds$Alignment;->value:I

    iget p0, p0, Landroidx/window/embedding/EmbeddingBounds$Alignment;->value:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Landroidx/window/embedding/EmbeddingBounds$Alignment;->value:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget p0, p0, Landroidx/window/embedding/EmbeddingBounds$Alignment;->value:I

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown position:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "right"

    goto :goto_0

    :cond_1
    const-string p0, "bottom"

    goto :goto_0

    :cond_2
    const-string p0, "left"

    goto :goto_0

    :cond_3
    const-string/jumbo p0, "top"

    :goto_0
    return-object p0
.end method
