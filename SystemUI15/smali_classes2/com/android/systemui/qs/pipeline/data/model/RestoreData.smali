.class public final Lcom/android/systemui/qs/pipeline/data/model/RestoreData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final restoredAutoAddedTiles:Ljava/util/Set;

.field public final restoredTiles:Ljava/util/List;

.field public final userId:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Set;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/qs/pipeline/shared/TileSpec;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/systemui/qs/pipeline/shared/TileSpec;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/data/model/RestoreData;->restoredTiles:Ljava/util/List;

    iput-object p2, p0, Lcom/android/systemui/qs/pipeline/data/model/RestoreData;->restoredAutoAddedTiles:Ljava/util/Set;

    iput p3, p0, Lcom/android/systemui/qs/pipeline/data/model/RestoreData;->userId:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/qs/pipeline/data/model/RestoreData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/qs/pipeline/data/model/RestoreData;

    iget-object v1, p0, Lcom/android/systemui/qs/pipeline/data/model/RestoreData;->restoredTiles:Ljava/util/List;

    iget-object v3, p1, Lcom/android/systemui/qs/pipeline/data/model/RestoreData;->restoredTiles:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/pipeline/data/model/RestoreData;->restoredAutoAddedTiles:Ljava/util/Set;

    iget-object v3, p1, Lcom/android/systemui/qs/pipeline/data/model/RestoreData;->restoredAutoAddedTiles:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/android/systemui/qs/pipeline/data/model/RestoreData;->userId:I

    iget p1, p1, Lcom/android/systemui/qs/pipeline/data/model/RestoreData;->userId:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/pipeline/data/model/RestoreData;->restoredTiles:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/qs/pipeline/data/model/RestoreData;->restoredAutoAddedTiles:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Lcom/android/systemui/qs/pipeline/data/model/RestoreData;->userId:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/pipeline/data/model/RestoreData;->restoredTiles:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/qs/pipeline/data/model/RestoreData;->restoredAutoAddedTiles:Ljava/util/Set;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RestoreData(restoredTiles="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", restoredAutoAddedTiles="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", userId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/qs/pipeline/data/model/RestoreData;->userId:I

    const-string v0, ")"

    invoke-static {p0, v0, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
