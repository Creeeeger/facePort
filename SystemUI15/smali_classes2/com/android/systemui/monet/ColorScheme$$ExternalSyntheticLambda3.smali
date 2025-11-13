.class public final synthetic Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda3;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda3;->f$0:Ljava/util/Map;

    check-cast p1, Ljava/util/Map$Entry;

    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ux/material/libmonet/hct/Hct;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    const-wide v3, 0x4051800000000000L    # 70.0

    mul-double/2addr p0, v3

    iget-wide v2, v2, Lcom/google/ux/material/libmonet/hct/Hct;->chroma:D

    const-wide/high16 v4, 0x4048000000000000L    # 48.0

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    sub-double/2addr v2, v4

    const-wide v4, 0x3fb999999999999aL    # 0.1

    :goto_0
    mul-double/2addr v2, v4

    goto :goto_1

    :cond_0
    sub-double/2addr v2, v4

    const-wide v4, 0x3fd3333333333333L    # 0.3

    goto :goto_0

    :goto_1
    add-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
