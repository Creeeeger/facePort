.class public final synthetic Lcom/android/systemui/qs/tiles/UserDetailView$Adapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/systemui/user/data/source/UserRecord;

    iget-boolean p0, p1, Lcom/android/systemui/user/data/source/UserRecord;->isManageUsers:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
