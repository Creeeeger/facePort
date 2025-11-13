.class public final Lcom/android/systemui/assist/ui/EdgeLight;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mColor:I

.field public mLength:F

.field public mStart:F


# direct methods
.method public constructor <init>(IFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    iput p2, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    iput p3, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/assist/ui/EdgeLight;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    iput v0, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    iget v0, p1, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    iput v0, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    iget p1, p1, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    return-void
.end method


# virtual methods
.method public final setEndpoints(FF)V
    .locals 1

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Endpoint must be >= start (add 1 if necessary). Got [%f, %f]"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "EdgeLight"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    return-void
.end method
