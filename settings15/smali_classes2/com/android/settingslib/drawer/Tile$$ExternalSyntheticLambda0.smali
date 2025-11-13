.class public final synthetic Lcom/android/settingslib/drawer/Tile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settingslib/drawer/Tile;

    check-cast p2, Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getOrder()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->getOrder()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method
