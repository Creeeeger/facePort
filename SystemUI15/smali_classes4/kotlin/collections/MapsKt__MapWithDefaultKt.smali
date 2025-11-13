.class public Lkotlin/collections/MapsKt__MapWithDefaultKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static withDefault(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;
    .locals 1

    instance-of v0, p0, Lkotlin/collections/MapWithDefaultImpl;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/collections/MapWithDefaultImpl;

    iget-object p0, p0, Lkotlin/collections/MapWithDefaultImpl;->map:Ljava/util/Map;

    invoke-static {p0, p1}, Lkotlin/collections/MapsKt__MapWithDefaultKt;->withDefault(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/collections/MapWithDefaultImpl;

    invoke-direct {v0, p0, p1}, Lkotlin/collections/MapWithDefaultImpl;-><init>(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
