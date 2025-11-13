.class public final Lcom/android/systemui/plugins/clocks/ClockFaceConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final hasCustomPositionUpdatedAnimation:Z

.field private final hasCustomWeatherDataDisplay:Z

.field private final tickRate:Lcom/android/systemui/plugins/clocks/ClockTickRate;

.field private final useCustomClockScene:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;-><init>(Lcom/android/systemui/plugins/clocks/ClockTickRate;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/plugins/clocks/ClockTickRate;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->tickRate:Lcom/android/systemui/plugins/clocks/ClockTickRate;

    iput-boolean p2, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->hasCustomWeatherDataDisplay:Z

    iput-boolean p3, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->hasCustomPositionUpdatedAnimation:Z

    iput-boolean p4, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->useCustomClockScene:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/plugins/clocks/ClockTickRate;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    sget-object p1, Lcom/android/systemui/plugins/clocks/ClockTickRate;->PER_MINUTE:Lcom/android/systemui/plugins/clocks/ClockTickRate;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;-><init>(Lcom/android/systemui/plugins/clocks/ClockTickRate;ZZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/plugins/clocks/ClockFaceConfig;Lcom/android/systemui/plugins/clocks/ClockTickRate;ZZZILjava/lang/Object;)Lcom/android/systemui/plugins/clocks/ClockFaceConfig;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->tickRate:Lcom/android/systemui/plugins/clocks/ClockTickRate;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->hasCustomWeatherDataDisplay:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->hasCustomPositionUpdatedAnimation:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->useCustomClockScene:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->copy(Lcom/android/systemui/plugins/clocks/ClockTickRate;ZZZ)Lcom/android/systemui/plugins/clocks/ClockFaceConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/android/systemui/plugins/clocks/ClockTickRate;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->tickRate:Lcom/android/systemui/plugins/clocks/ClockTickRate;

    return-object p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->hasCustomWeatherDataDisplay:Z

    return p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->hasCustomPositionUpdatedAnimation:Z

    return p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->useCustomClockScene:Z

    return p0
.end method

.method public final copy(Lcom/android/systemui/plugins/clocks/ClockTickRate;ZZZ)Lcom/android/systemui/plugins/clocks/ClockFaceConfig;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;-><init>(Lcom/android/systemui/plugins/clocks/ClockTickRate;ZZZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;

    iget-object v1, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->tickRate:Lcom/android/systemui/plugins/clocks/ClockTickRate;

    iget-object v3, p1, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->tickRate:Lcom/android/systemui/plugins/clocks/ClockTickRate;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->hasCustomWeatherDataDisplay:Z

    iget-boolean v3, p1, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->hasCustomWeatherDataDisplay:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->hasCustomPositionUpdatedAnimation:Z

    iget-boolean v3, p1, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->hasCustomPositionUpdatedAnimation:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->useCustomClockScene:Z

    iget-boolean p1, p1, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->useCustomClockScene:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getHasCustomPositionUpdatedAnimation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->hasCustomPositionUpdatedAnimation:Z

    return p0
.end method

.method public final getHasCustomWeatherDataDisplay()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->hasCustomWeatherDataDisplay:Z

    return p0
.end method

.method public final getTickRate()Lcom/android/systemui/plugins/clocks/ClockTickRate;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->tickRate:Lcom/android/systemui/plugins/clocks/ClockTickRate;

    return-object p0
.end method

.method public final getUseCustomClockScene()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->useCustomClockScene:Z

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->tickRate:Lcom/android/systemui/plugins/clocks/ClockTickRate;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->hasCustomWeatherDataDisplay:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->hasCustomPositionUpdatedAnimation:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->useCustomClockScene:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->tickRate:Lcom/android/systemui/plugins/clocks/ClockTickRate;

    iget-boolean v1, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->hasCustomWeatherDataDisplay:Z

    iget-boolean v2, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->hasCustomPositionUpdatedAnimation:Z

    iget-boolean p0, p0, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->useCustomClockScene:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ClockFaceConfig(tickRate="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", hasCustomWeatherDataDisplay="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hasCustomPositionUpdatedAnimation="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", useCustomClockScene="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
