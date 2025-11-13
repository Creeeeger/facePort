.class public final Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$RestoreTiles;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final currentAutoAdded:Ljava/util/Set;

.field public final restoreData:Lcom/android/systemui/qs/pipeline/data/model/RestoreData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/pipeline/data/model/RestoreData;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/pipeline/data/model/RestoreData;",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/systemui/qs/pipeline/shared/TileSpec;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$RestoreTiles;->restoreData:Lcom/android/systemui/qs/pipeline/data/model/RestoreData;

    iput-object p2, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$RestoreTiles;->currentAutoAdded:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$RestoreTiles;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$RestoreTiles;

    iget-object v1, p1, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$RestoreTiles;->restoreData:Lcom/android/systemui/qs/pipeline/data/model/RestoreData;

    iget-object v3, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$RestoreTiles;->restoreData:Lcom/android/systemui/qs/pipeline/data/model/RestoreData;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$RestoreTiles;->currentAutoAdded:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$RestoreTiles;->currentAutoAdded:Ljava/util/Set;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$RestoreTiles;->restoreData:Lcom/android/systemui/qs/pipeline/data/model/RestoreData;

    invoke-virtual {v0}, Lcom/android/systemui/qs/pipeline/data/model/RestoreData;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$RestoreTiles;->currentAutoAdded:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$RestoreTiles;->currentAutoAdded:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RestoreTiles(restoreData="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$RestoreTiles;->restoreData:Lcom/android/systemui/qs/pipeline/data/model/RestoreData;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", currentAutoAdded="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
