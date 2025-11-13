.class public final synthetic Lcom/android/settings/homepage/contextualcards/ContextualCardManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    check-cast p2, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iget-wide v0, p2, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mRankingScore:D

    iget-wide p0, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mRankingScore:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method
