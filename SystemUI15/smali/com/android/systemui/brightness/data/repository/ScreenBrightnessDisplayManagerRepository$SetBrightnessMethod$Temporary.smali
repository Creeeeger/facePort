.class public final Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$SetBrightnessMethod$Temporary;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$SetBrightnessMethod;


# instance fields
.field public final value:F


# direct methods
.method private synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$SetBrightnessMethod$Temporary;->value:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$SetBrightnessMethod$Temporary;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$SetBrightnessMethod$Temporary;

    iget p1, p1, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$SetBrightnessMethod$Temporary;->value:F

    iget p0, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$SetBrightnessMethod$Temporary;->value:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public final getValue--foLk1o()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$SetBrightnessMethod$Temporary;->value:F

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$SetBrightnessMethod$Temporary;->value:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget p0, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$SetBrightnessMethod$Temporary;->value:F

    invoke-static {p0}, Lcom/android/systemui/brightness/shared/model/LinearBrightness;->toString-impl(F)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Temporary(value="

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
