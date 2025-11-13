.class public final synthetic Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/decor/DecorProvider;

    invoke-virtual {p1}, Lcom/android/systemui/decor/DecorProvider;->getViewId()I

    move-result p0

    return p0
.end method
