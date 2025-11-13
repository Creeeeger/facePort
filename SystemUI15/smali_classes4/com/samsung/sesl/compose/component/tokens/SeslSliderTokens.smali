.class public final Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens$Companion;

.field public static final darkSliderTokens:Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;

.field public static final lightSliderTokens:Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;


# instance fields
.field public final activateThumbStrokeColor:J

.field public final activateTickColor:J

.field public final activateTrackColor:J

.field public final inactivateTrackColor:J

.field public final inactiveThumbStrokeColor:J

.field public final inactiveTickColor:J

.field public final overlapActivateColor:J

.field public final overlapInactiveColor:J

.field public final thumbFillColor:J


# direct methods
.method static constructor <clinit>()V
    .locals 32

    new-instance v0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->Companion:Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens$Companion;

    new-instance v0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;

    sget-object v1, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->INSTANCE:Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v22, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_L1:J

    sget-wide v24, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->Primary_Blue:J

    sget-wide v7, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_L7:J

    sget-wide v13, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_L8:J

    const v1, 0x3ee66666    # 0.45f

    invoke-static {v1, v13, v14}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v11

    sget-wide v15, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->Functional_Orange_Light:J

    invoke-static {v1, v13, v14}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v17

    sget-wide v26, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_D9:J

    sget-wide v9, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_L9:J

    invoke-static {v1, v9, v10}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v19

    const/16 v21, 0x0

    move-object v2, v0

    move-wide/from16 v3, v22

    move-wide/from16 v5, v24

    move-wide/from16 v28, v9

    move-wide/from16 v9, v24

    move-wide/from16 v30, v13

    move-wide v13, v15

    move-wide/from16 v15, v17

    move-wide/from16 v17, v26

    invoke-direct/range {v2 .. v21}, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;-><init>(JJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->lightSliderTokens:Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;

    new-instance v0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;

    sget-wide v7, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_D7:J

    const v1, 0x3ecccccd    # 0.4f

    move-wide/from16 v2, v30

    invoke-static {v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v11

    sget-wide v13, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->Functional_Orange_Dark:J

    invoke-static {v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v15

    move-wide/from16 v2, v28

    invoke-static {v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v19

    const/16 v21, 0x0

    move-object v2, v0

    move-wide/from16 v3, v22

    move-wide/from16 v5, v24

    move-wide/from16 v9, v24

    move-wide/from16 v17, v26

    invoke-direct/range {v2 .. v21}, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;-><init>(JJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->darkSliderTokens:Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;

    return-void
.end method

.method private constructor <init>(JJJJJJJJJ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->thumbFillColor:J

    move-wide v1, p3

    iput-wide v1, v0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->activateThumbStrokeColor:J

    move-wide v1, p5

    iput-wide v1, v0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->inactiveThumbStrokeColor:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->activateTrackColor:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->inactivateTrackColor:J

    move-wide v1, p11

    iput-wide v1, v0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->overlapActivateColor:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->overlapInactiveColor:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->activateTickColor:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->inactiveTickColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p18}, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;-><init>(JJJJJJJJJ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;

    iget-wide v3, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->thumbFillColor:J

    iget-wide v5, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->thumbFillColor:J

    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->activateThumbStrokeColor:J

    iget-wide v5, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->activateThumbStrokeColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->inactiveThumbStrokeColor:J

    iget-wide v5, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->inactiveThumbStrokeColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->activateTrackColor:J

    iget-wide v5, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->activateTrackColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->inactivateTrackColor:J

    iget-wide v5, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->inactivateTrackColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->overlapActivateColor:J

    iget-wide v5, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->overlapActivateColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->overlapInactiveColor:J

    iget-wide v5, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->overlapInactiveColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->activateTickColor:J

    iget-wide v5, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->activateTickColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->inactiveTickColor:J

    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->inactiveTickColor:J

    invoke-static {v3, v4, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    sget v0, Lkotlin/ULong;->$r8$clinit:I

    iget-wide v0, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->thumbFillColor:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->activateThumbStrokeColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->inactiveThumbStrokeColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->activateTrackColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->inactivateTrackColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->overlapActivateColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->overlapInactiveColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->activateTickColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v1, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->inactiveTickColor:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    iget-wide v0, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->thumbFillColor:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->activateThumbStrokeColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->inactiveThumbStrokeColor:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->activateTrackColor:J

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->inactivateTrackColor:J

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->overlapActivateColor:J

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->overlapInactiveColor:J

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->activateTickColor:J

    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->inactiveTickColor:J

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    const-string v8, "SeslSliderTokens(thumbFillColor="

    const-string v9, ", activateThumbStrokeColor="

    const-string v10, ", inactiveThumbStrokeColor="

    invoke-static {v8, v0, v9, v1, v10}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activateTrackColor="

    const-string v8, ", inactivateTrackColor="

    invoke-static {v0, v2, v1, v3, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", overlapActivateColor="

    const-string v2, ", overlapInactiveColor="

    invoke-static {v0, v4, v1, v5, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", activateTickColor="

    const-string v2, ", inactiveTickColor="

    invoke-static {v0, v6, v1, v7, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
