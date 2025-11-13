.class public final synthetic Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda9;->f$0:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda9;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda9;->f$0:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda9;->f$1:Ljava/util/List;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ux/material/libmonet/hct/Hct;

    iget-wide v0, p1, Lcom/google/ux/material/libmonet/hct/Hct;->hue:D

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p1, v0

    add-int/lit8 v0, p1, -0xf

    const-wide/16 v1, 0x0

    :goto_0
    add-int/lit8 v3, p1, 0xf

    if-gt v0, v3, :cond_2

    const/16 v3, 0x168

    if-gez v0, :cond_0

    rem-int/lit16 v4, v0, 0x168

    add-int/2addr v4, v3

    goto :goto_1

    :cond_0
    if-lt v0, v3, :cond_1

    rem-int/lit16 v4, v0, 0x168

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    add-double/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method
