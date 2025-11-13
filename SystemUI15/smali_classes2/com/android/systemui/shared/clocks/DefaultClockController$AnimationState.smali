.class public final Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public fraction:F

.field public isActive:Z


# direct methods
.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->fraction:F

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->isActive:Z

    return-void
.end method


# virtual methods
.method public final update(F)Lkotlin/Pair;
    .locals 7

    iget v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->fraction:F

    cmpg-float v1, p1, v0

    if-nez v1, :cond_0

    new-instance p1, Lkotlin/Pair;

    iget-boolean p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->isActive:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->isActive:Z

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_1

    cmpg-float v3, p1, v4

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    cmpg-float v3, v0, v4

    if-nez v3, :cond_2

    cmpg-float v2, p1, v2

    if-nez v2, :cond_2

    :goto_0
    move v2, v6

    goto :goto_1

    :cond_2
    move v2, v5

    :goto_1
    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    move v0, v6

    goto :goto_2

    :cond_3
    move v0, v5

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->isActive:Z

    iput p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->fraction:F

    new-instance p0, Lkotlin/Pair;

    if-eq v1, v0, :cond_4

    move v5, v6

    :cond_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
