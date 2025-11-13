.class final Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Integer;",
        "TT;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# instance fields
.field private final key:I

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;->key:I

    iput-object p2, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;->value:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;ILjava/lang/Object;ILjava/lang/Object;)Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;->key:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;->value:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;->copy(ILjava/lang/Object;)Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;->key:I

    return p0
.end method

.method public final component2()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public final copy(ILjava/lang/Object;)Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)",
            "Lcom/android/systemui/util/SparseArrayMapWrapper$Entry<",
            "TT;>;"
        }
    .end annotation

    new-instance p0, Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;-><init>(ILjava/lang/Object;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;

    iget v1, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;->key:I

    iget v3, p1, Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;->key:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;->value:Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getKey()Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;->key:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;->getKey()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;->key:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;->value:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;->key:I

    iget-object p0, p0, Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;->value:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Entry(key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", value="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
