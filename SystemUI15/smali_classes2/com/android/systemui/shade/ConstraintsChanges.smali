.class public final Lcom/android/systemui/shade/ConstraintsChanges;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final largeScreenConstraintsChanges:Lkotlin/jvm/functions/Function1;

.field public final qqsConstraintsChanges:Lkotlin/jvm/functions/Function1;

.field public final qsConstraintsChanges:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shade/ConstraintsChanges;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/ConstraintsChanges;->qqsConstraintsChanges:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/android/systemui/shade/ConstraintsChanges;->qsConstraintsChanges:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/android/systemui/shade/ConstraintsChanges;->largeScreenConstraintsChanges:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/shade/ConstraintsChanges;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/shade/ConstraintsChanges;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/shade/ConstraintsChanges;

    iget-object v1, p1, Lcom/android/systemui/shade/ConstraintsChanges;->qqsConstraintsChanges:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/android/systemui/shade/ConstraintsChanges;->qqsConstraintsChanges:Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/shade/ConstraintsChanges;->qsConstraintsChanges:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Lcom/android/systemui/shade/ConstraintsChanges;->qsConstraintsChanges:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/shade/ConstraintsChanges;->largeScreenConstraintsChanges:Lkotlin/jvm/functions/Function1;

    iget-object p1, p1, Lcom/android/systemui/shade/ConstraintsChanges;->largeScreenConstraintsChanges:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/shade/ConstraintsChanges;->qqsConstraintsChanges:Lkotlin/jvm/functions/Function1;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/android/systemui/shade/ConstraintsChanges;->qsConstraintsChanges:Lkotlin/jvm/functions/Function1;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/android/systemui/shade/ConstraintsChanges;->largeScreenConstraintsChanges:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    return v1
.end method

.method public final plus(Lcom/android/systemui/shade/ConstraintsChanges;)Lcom/android/systemui/shade/ConstraintsChanges;
    .locals 5

    new-instance v0, Lcom/android/systemui/shade/ConstraintsChanges;

    iget-object v1, p0, Lcom/android/systemui/shade/ConstraintsChanges;->qqsConstraintsChanges:Lkotlin/jvm/functions/Function1;

    iget-object v2, p1, Lcom/android/systemui/shade/ConstraintsChanges;->qqsConstraintsChanges:Lkotlin/jvm/functions/Function1;

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerKt$plus$1;

    invoke-direct {v3, v1, v2}, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerKt$plus$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    move-object v1, v3

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/shade/ConstraintsChanges;->qsConstraintsChanges:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Lcom/android/systemui/shade/ConstraintsChanges;->qsConstraintsChanges:Lkotlin/jvm/functions/Function1;

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerKt$plus$1;

    invoke-direct {v4, v2, v3}, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerKt$plus$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    move-object v2, v4

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/shade/ConstraintsChanges;->largeScreenConstraintsChanges:Lkotlin/jvm/functions/Function1;

    iget-object p1, p1, Lcom/android/systemui/shade/ConstraintsChanges;->largeScreenConstraintsChanges:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_4

    move-object p0, p1

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    new-instance v3, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerKt$plus$1;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerKt$plus$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    move-object p0, v3

    :goto_2
    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/shade/ConstraintsChanges;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConstraintsChanges(qqsConstraintsChanges="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/shade/ConstraintsChanges;->qqsConstraintsChanges:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", qsConstraintsChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shade/ConstraintsChanges;->qsConstraintsChanges:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", largeScreenConstraintsChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/shade/ConstraintsChanges;->largeScreenConstraintsChanges:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
