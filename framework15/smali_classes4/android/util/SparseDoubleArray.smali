.class public Landroid/util/SparseDoubleArray;
.super Ljava/lang/Object;
.source "SparseDoubleArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private blacklist mValues:Landroid/util/SparseLongArray;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/SparseDoubleArray;-><init>(I)V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, p1}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .locals 1

    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    return-void
.end method

.method public blacklist clone()Landroid/util/SparseDoubleArray;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseDoubleArray;

    move-object v0, v1

    iget-object v1, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->clone()Landroid/util/SparseLongArray;

    move-result-object v1

    iput-object v1, v0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/SparseDoubleArray;->clone()Landroid/util/SparseDoubleArray;

    move-result-object v0

    return-object v0
.end method

.method public blacklist delete(I)V
    .locals 1

    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    return-void
.end method

.method public blacklist get(I)D
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseDoubleArray;->get(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist get(ID)D
    .locals 3

    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    return-wide p2

    :cond_0
    invoke-virtual {p0, v0}, Landroid/util/SparseDoubleArray;->valueAt(I)D

    move-result-wide v1

    return-wide v1
.end method

.method public blacklist incrementValue(ID)V
    .locals 4

    invoke-virtual {p0, p1}, Landroid/util/SparseDoubleArray;->get(I)D

    move-result-wide v0

    add-double v2, v0, p2

    invoke-virtual {p0, p1, v2, v3}, Landroid/util/SparseDoubleArray;->put(ID)V

    return-void
.end method

.method public blacklist indexOfKey(I)I
    .locals 1

    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    return v0
.end method

.method public blacklist keyAt(I)I
    .locals 1

    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public blacklist put(ID)V
    .locals 3

    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    return-void
.end method

.method public blacklist removeAt(I)V
    .locals 1

    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->removeAt(I)V

    return-void
.end method

.method public blacklist setValueAt(ID)V
    .locals 3

    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->setValueAt(IJ)V

    return-void
.end method

.method public blacklist size()I
    .locals 1

    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Landroid/util/SparseDoubleArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const-string/jumbo v0, "{}"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/SparseDoubleArray;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseDoubleArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/SparseDoubleArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/util/SparseDoubleArray;->valueAt(I)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist valueAt(I)D
    .locals 2

    iget-object v0, p0, Landroid/util/SparseDoubleArray;->mValues:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method
