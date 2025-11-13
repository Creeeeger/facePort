.class public final Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;
.super Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mProperty:Landroid/util/Property;

.field public final mValues:[F


# direct methods
.method public constructor <init>(Landroid/util/Property;[F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "Ljava/lang/Object;",
            "Ljava/lang/Float;",
            ">;[F)V"
        }
    .end annotation

    array-length v0, p2

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;->mProperty:Landroid/util/Property;

    iput-object p2, p0, Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;->mValues:[F

    return-void
.end method


# virtual methods
.method public final interpolate(IFLjava/lang/Object;)V
    .locals 2

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;->mValues:[F

    aget v0, v1, v0

    aget p1, v1, p1

    iget-object p0, p0, Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;->mProperty:Landroid/util/Property;

    sub-float/2addr p1, v0

    mul-float/2addr p1, p2

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
