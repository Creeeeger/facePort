.class public final synthetic Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Landroid/app/people/PeopleSpaceTile;

    check-cast p2, Landroid/app/people/PeopleSpaceTile;

    new-instance p0, Ljava/lang/Long;

    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getLastInteractionTimestamp()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/lang/Long;-><init>(J)V

    new-instance p2, Ljava/lang/Long;

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getLastInteractionTimestamp()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method
