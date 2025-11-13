.class public final synthetic Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/external/TileServiceManager;

    check-cast p2, Lcom/android/systemui/qs/external/TileServiceManager;

    iget p0, p1, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    iget p1, p2, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    neg-int p0, p0

    return p0
.end method
