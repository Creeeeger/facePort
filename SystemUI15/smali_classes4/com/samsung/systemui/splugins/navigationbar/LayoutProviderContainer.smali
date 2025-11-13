.class public interface abstract Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static synthetic updateLayoutProvider$default(Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;ZZILjava/lang/Object;)Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;->updateLayoutProvider(ZZ)Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateLayoutProvider"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public updateLayoutProvider(ZZ)Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
