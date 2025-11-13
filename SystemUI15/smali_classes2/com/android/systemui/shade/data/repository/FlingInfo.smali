.class public final Lcom/android/systemui/shade/data/repository/FlingInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final expand:Z

.field public final id:Ljava/util/UUID;

.field public final velocity:F


# direct methods
.method public constructor <init>(Z)V
    .locals 6

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shade/data/repository/FlingInfo;-><init>(ZFLjava/util/UUID;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZF)V
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shade/data/repository/FlingInfo;-><init>(ZFLjava/util/UUID;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZFLjava/util/UUID;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/shade/data/repository/FlingInfo;->expand:Z

    iput p2, p0, Lcom/android/systemui/shade/data/repository/FlingInfo;->velocity:F

    iput-object p3, p0, Lcom/android/systemui/shade/data/repository/FlingInfo;->id:Ljava/util/UUID;

    return-void
.end method

.method public synthetic constructor <init>(ZFLjava/util/UUID;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/shade/data/repository/FlingInfo;-><init>(ZFLjava/util/UUID;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/shade/data/repository/FlingInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/shade/data/repository/FlingInfo;

    iget-boolean v1, p1, Lcom/android/systemui/shade/data/repository/FlingInfo;->expand:Z

    iget-boolean v3, p0, Lcom/android/systemui/shade/data/repository/FlingInfo;->expand:Z

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/shade/data/repository/FlingInfo;->velocity:F

    iget v3, p1, Lcom/android/systemui/shade/data/repository/FlingInfo;->velocity:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/FlingInfo;->id:Ljava/util/UUID;

    iget-object p1, p1, Lcom/android/systemui/shade/data/repository/FlingInfo;->id:Ljava/util/UUID;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/shade/data/repository/FlingInfo;->expand:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/shade/data/repository/FlingInfo;->velocity:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/FlingInfo;->id:Ljava/util/UUID;

    invoke-virtual {p0}, Ljava/util/UUID;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shade/data/repository/FlingInfo;->id:Ljava/util/UUID;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FlingInfo(expand="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/shade/data/repository/FlingInfo;->expand:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", velocity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/shade/data/repository/FlingInfo;->velocity:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", id="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
