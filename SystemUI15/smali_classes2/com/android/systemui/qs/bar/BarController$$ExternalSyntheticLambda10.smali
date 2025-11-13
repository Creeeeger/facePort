.class public final synthetic Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/bar/BarItemImpl;

    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarHeight()I

    move-result p0

    return p0
.end method
