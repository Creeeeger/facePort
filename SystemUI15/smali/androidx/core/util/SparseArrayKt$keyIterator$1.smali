.class public final Landroidx/core/util/SparseArrayKt$keyIterator$1;
.super Lkotlin/collections/IntIterator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $this_keyIterator:Landroid/util/SparseArray;

.field public index:I


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/core/util/SparseArrayKt$keyIterator$1;->$this_keyIterator:Landroid/util/SparseArray;

    invoke-direct {p0}, Lkotlin/collections/IntIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Landroidx/core/util/SparseArrayKt$keyIterator$1;->index:I

    iget-object p0, p0, Landroidx/core/util/SparseArrayKt$keyIterator$1;->$this_keyIterator:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final nextInt()I
    .locals 3

    iget-object v0, p0, Landroidx/core/util/SparseArrayKt$keyIterator$1;->$this_keyIterator:Landroid/util/SparseArray;

    iget v1, p0, Landroidx/core/util/SparseArrayKt$keyIterator$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/core/util/SparseArrayKt$keyIterator$1;->index:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0
.end method
