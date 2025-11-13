.class public final Lcom/android/systemui/brightness/shared/model/LinearBrightness;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final floatValue:F


# direct methods
.method private synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/brightness/shared/model/LinearBrightness;->floatValue:F

    return-void
.end method

.method public static final synthetic box-impl(F)Lcom/android/systemui/brightness/shared/model/LinearBrightness;
    .locals 1

    new-instance v0, Lcom/android/systemui/brightness/shared/model/LinearBrightness;

    invoke-direct {v0, p0}, Lcom/android/systemui/brightness/shared/model/LinearBrightness;-><init>(F)V

    return-object v0
.end method

.method public static toString-impl(F)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LinearBrightness(floatValue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/brightness/shared/model/LinearBrightness;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/systemui/brightness/shared/model/LinearBrightness;

    iget p1, p1, Lcom/android/systemui/brightness/shared/model/LinearBrightness;->floatValue:F

    iget p0, p0, Lcom/android/systemui/brightness/shared/model/LinearBrightness;->floatValue:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/brightness/shared/model/LinearBrightness;->floatValue:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/android/systemui/brightness/shared/model/LinearBrightness;->floatValue:F

    invoke-static {p0}, Lcom/android/systemui/brightness/shared/model/LinearBrightness;->toString-impl(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
