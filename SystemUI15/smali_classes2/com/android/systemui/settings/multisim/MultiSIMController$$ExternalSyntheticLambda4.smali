.class public final synthetic Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;

    invoke-virtual {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;->getNumeric()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
