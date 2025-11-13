.class public final Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize$setSizeAtProgresses$$inlined$sortBy$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    iget p0, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->t:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    check-cast p2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    iget p1, p2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;->t:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
