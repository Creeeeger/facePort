.class public final Lcom/android/systemui/flags/UnreleasedFlag;
.super Lcom/android/systemui/flags/BooleanFlag;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final name:Ljava/lang/String;

.field public final namespace:Ljava/lang/String;

.field public final overridden:Z

.field public final teamfood:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/flags/BooleanFlag;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    iput-object p1, p0, Lcom/android/systemui/flags/UnreleasedFlag;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/flags/UnreleasedFlag;->namespace:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/systemui/flags/UnreleasedFlag;->teamfood:Z

    iput-boolean p4, p0, Lcom/android/systemui/flags/UnreleasedFlag;->overridden:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move p4, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/flags/UnreleasedFlag;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/flags/UnreleasedFlag;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/flags/UnreleasedFlag;

    iget-object v1, p0, Lcom/android/systemui/flags/UnreleasedFlag;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/flags/UnreleasedFlag;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/flags/UnreleasedFlag;->namespace:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/flags/UnreleasedFlag;->namespace:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/flags/UnreleasedFlag;->teamfood:Z

    iget-boolean v3, p1, Lcom/android/systemui/flags/UnreleasedFlag;->teamfood:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/flags/UnreleasedFlag;->overridden:Z

    iget-boolean p1, p1, Lcom/android/systemui/flags/UnreleasedFlag;->overridden:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/flags/UnreleasedFlag;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/flags/UnreleasedFlag;->namespace:Ljava/lang/String;

    return-object p0
.end method

.method public final getOverridden()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/flags/UnreleasedFlag;->overridden:Z

    return p0
.end method

.method public final getTeamfood()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/flags/UnreleasedFlag;->teamfood:Z

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/flags/UnreleasedFlag;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/flags/UnreleasedFlag;->namespace:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/flags/UnreleasedFlag;->teamfood:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/flags/UnreleasedFlag;->overridden:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/flags/UnreleasedFlag;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/flags/UnreleasedFlag;->namespace:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/systemui/flags/UnreleasedFlag;->teamfood:Z

    iget-boolean p0, p0, Lcom/android/systemui/flags/UnreleasedFlag;->overridden:Z

    const-string v3, "UnreleasedFlag(name="

    const-string v4, ", namespace="

    const-string v5, ", teamfood="

    invoke-static {v3, v0, v4, v1, v5}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", overridden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
