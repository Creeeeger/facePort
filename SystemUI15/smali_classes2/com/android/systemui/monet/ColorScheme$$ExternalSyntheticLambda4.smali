.class public final synthetic Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda4;->f$0:Ljava/util/Map;

    iput p2, p0, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda4;->f$1:I

    iput p3, p0, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda4;->f$0:Ljava/util/Map;

    iget v1, p0, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda4;->f$1:I

    iget p0, p0, Lcom/android/systemui/monet/ColorScheme$$ExternalSyntheticLambda4;->f$2:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ux/material/libmonet/hct/Hct;

    iget-wide v1, v1, Lcom/google/ux/material/libmonet/hct/Hct;->hue:D

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ux/material/libmonet/hct/Hct;

    iget-wide v3, p1, Lcom/google/ux/material/libmonet/hct/Hct;->hue:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    sub-double/2addr v0, v2

    sub-double/2addr v2, v0

    int-to-double p0, p0

    cmpg-double p0, v2, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
