.class public final Lcom/android/systemui/plugins/clocks/ClockConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final description:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final isReactiveToTone:Z

.field private final name:Ljava/lang/String;

.field private final useAlternateSmartspaceAODTransition:Z

.field private final useCustomClockScene:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->description:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->useAlternateSmartspaceAODTransition:Z

    iput-boolean p5, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->isReactiveToTone:Z

    iput-boolean p6, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->useCustomClockScene:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, p4

    :goto_0
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v7, v0

    goto :goto_1

    :cond_1
    move v7, p5

    :goto_1
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_2

    move v8, v1

    goto :goto_2

    :cond_2
    move v8, p6

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/plugins/clocks/ClockConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/plugins/clocks/ClockConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)Lcom/android/systemui/plugins/clocks/ClockConfig;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->name:Ljava/lang/String;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->description:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->useAlternateSmartspaceAODTransition:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->isReactiveToTone:Z

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-boolean p6, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->useCustomClockScene:Z

    :cond_5
    move v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/android/systemui/plugins/clocks/ClockConfig;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/android/systemui/plugins/clocks/ClockConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->useAlternateSmartspaceAODTransition:Z

    return p0
.end method

.method public final component5()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->isReactiveToTone:Z

    return p0
.end method

.method public final component6()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->useCustomClockScene:Z

    return p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/android/systemui/plugins/clocks/ClockConfig;
    .locals 7

    new-instance p0, Lcom/android/systemui/plugins/clocks/ClockConfig;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/plugins/clocks/ClockConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/plugins/clocks/ClockConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/plugins/clocks/ClockConfig;

    iget-object v1, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/plugins/clocks/ClockConfig;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/plugins/clocks/ClockConfig;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/plugins/clocks/ClockConfig;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->useAlternateSmartspaceAODTransition:Z

    iget-boolean v3, p1, Lcom/android/systemui/plugins/clocks/ClockConfig;->useAlternateSmartspaceAODTransition:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->isReactiveToTone:Z

    iget-boolean v3, p1, Lcom/android/systemui/plugins/clocks/ClockConfig;->isReactiveToTone:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean p0, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->useCustomClockScene:Z

    iget-boolean p1, p1, Lcom/android/systemui/plugins/clocks/ClockConfig;->useCustomClockScene:Z

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getUseAlternateSmartspaceAODTransition()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->useAlternateSmartspaceAODTransition:Z

    return p0
.end method

.method public final getUseCustomClockScene()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->useCustomClockScene:Z

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->description:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->useAlternateSmartspaceAODTransition:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->isReactiveToTone:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->useCustomClockScene:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isReactiveToTone()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->isReactiveToTone:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->description:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->useAlternateSmartspaceAODTransition:Z

    iget-boolean v4, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->isReactiveToTone:Z

    iget-boolean p0, p0, Lcom/android/systemui/plugins/clocks/ClockConfig;->useCustomClockScene:Z

    const-string v5, "ClockConfig(id="

    const-string v6, ", name="

    const-string v7, ", description="

    invoke-static {v5, v0, v6, v1, v7}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", useAlternateSmartspaceAODTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isReactiveToTone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", useCustomClockScene="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
