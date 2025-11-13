.class public final Lcom/android/systemui/navigationbar/gestural/Step;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final factor:F

.field public hasCrossedUpperBoundAtLeastOnce:Z

.field public final lowerFactor:F

.field public final postThreshold:Ljava/lang/Object;

.field public final preThreshold:Ljava/lang/Object;

.field public previousValue:Lcom/android/systemui/navigationbar/gestural/Step$Value;

.field public final startValue:Lcom/android/systemui/navigationbar/gestural/Step$Value;

.field public final threshold:F


# direct methods
.method public constructor <init>(FFLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/Step;->threshold:F

    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/Step;->factor:F

    iput-object p3, p0, Lcom/android/systemui/navigationbar/gestural/Step;->postThreshold:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/navigationbar/gestural/Step;->preThreshold:Ljava/lang/Object;

    const/4 p1, 0x2

    int-to-float p1, p1

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/Step;->lowerFactor:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/Step;->hasCrossedUpperBoundAtLeastOnce:Z

    new-instance p2, Lcom/android/systemui/navigationbar/gestural/Step$Value;

    invoke-direct {p2, p4, p1}, Lcom/android/systemui/navigationbar/gestural/Step$Value;-><init>(Ljava/lang/Object;Z)V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/Step;->startValue:Lcom/android/systemui/navigationbar/gestural/Step$Value;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/Step;->previousValue:Lcom/android/systemui/navigationbar/gestural/Step$Value;

    return-void
.end method

.method public synthetic constructor <init>(FFLjava/lang/Object;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const p2, 0x3f8ccccd    # 1.1f

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/navigationbar/gestural/Step;-><init>(FFLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final get(F)Lcom/android/systemui/navigationbar/gestural/Step$Value;
    .locals 5

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/Step;->factor:F

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/Step;->threshold:F

    mul-float/2addr v0, v1

    cmpl-float v0, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/Step;->lowerFactor:F

    mul-float/2addr v1, v4

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/Step;->hasCrossedUpperBoundAtLeastOnce:Z

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/gestural/Step;->hasCrossedUpperBoundAtLeastOnce:Z

    new-instance p1, Lcom/android/systemui/navigationbar/gestural/Step$Value;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/Step;->postThreshold:Ljava/lang/Object;

    invoke-direct {p1, v0, v3}, Lcom/android/systemui/navigationbar/gestural/Step$Value;-><init>(Ljava/lang/Object;Z)V

    goto :goto_4

    :cond_2
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/Step;->previousValue:Lcom/android/systemui/navigationbar/gestural/Step$Value;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, p1

    :goto_2
    iget-object p1, v0, Lcom/android/systemui/navigationbar/gestural/Step$Value;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/navigationbar/gestural/Step$Value;

    invoke-direct {v0, p1, v2}, Lcom/android/systemui/navigationbar/gestural/Step$Value;-><init>(Ljava/lang/Object;Z)V

    :goto_3
    move-object p1, v0

    goto :goto_4

    :cond_4
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/Step;->hasCrossedUpperBoundAtLeastOnce:Z

    if-eqz p1, :cond_5

    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/Step;->hasCrossedUpperBoundAtLeastOnce:Z

    new-instance p1, Lcom/android/systemui/navigationbar/gestural/Step$Value;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/Step;->preThreshold:Ljava/lang/Object;

    invoke-direct {p1, v0, v3}, Lcom/android/systemui/navigationbar/gestural/Step$Value;-><init>(Ljava/lang/Object;Z)V

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/Step;->startValue:Lcom/android/systemui/navigationbar/gestural/Step$Value;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    :goto_4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/Step;->previousValue:Lcom/android/systemui/navigationbar/gestural/Step$Value;

    return-object p1
.end method
