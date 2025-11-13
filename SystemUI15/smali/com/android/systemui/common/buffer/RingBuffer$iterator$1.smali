.class public final Lcom/android/systemui/common/buffer/RingBuffer$iterator$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public position:I

.field public final synthetic this$0:Lcom/android/systemui/common/buffer/RingBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/common/buffer/RingBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/common/buffer/RingBuffer;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/common/buffer/RingBuffer$iterator$1;->this$0:Lcom/android/systemui/common/buffer/RingBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/common/buffer/RingBuffer$iterator$1;->position:I

    iget-object p0, p0, Lcom/android/systemui/common/buffer/RingBuffer$iterator$1;->this$0:Lcom/android/systemui/common/buffer/RingBuffer;

    invoke-virtual {p0}, Lcom/android/systemui/common/buffer/RingBuffer;->getSize()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/systemui/common/buffer/RingBuffer$iterator$1;->position:I

    iget-object v1, p0, Lcom/android/systemui/common/buffer/RingBuffer$iterator$1;->this$0:Lcom/android/systemui/common/buffer/RingBuffer;

    invoke-virtual {v1}, Lcom/android/systemui/common/buffer/RingBuffer;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/common/buffer/RingBuffer$iterator$1;->this$0:Lcom/android/systemui/common/buffer/RingBuffer;

    iget v1, p0, Lcom/android/systemui/common/buffer/RingBuffer$iterator$1;->position:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/common/buffer/RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/common/buffer/RingBuffer$iterator$1;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/common/buffer/RingBuffer$iterator$1;->position:I

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
