.class public final Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens$Companion;

.field public static final darkTabTokens:Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;

.field public static final lightTabTokens:Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;


# instance fields
.field public final selectedTextColor:J

.field public final subtabSelectedTextColor:J

.field public final subtabTextColor:J

.field public final subtabTwoLineSelectedTextColor:J

.field public final subtabTwoLineSubSelectedTextColor:J

.field public final subtabTwoLineSubTextColor:J

.field public final subtabTwoLineTextColor:J

.field public final textColor:J


# direct methods
.method static constructor <clinit>()V
    .locals 35

    new-instance v0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->Companion:Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens$Companion;

    new-instance v0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;

    sget-object v1, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->INSTANCE:Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v15, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAY_TEXT_L5:J

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v24, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAY_TEXT_L1:J

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v13, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAY_TEXT_L2:J

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v17, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->Primary_Blue_Point_Light:J

    const/16 v19, 0x0

    move-object v2, v0

    move-wide v3, v15

    move-wide/from16 v5, v24

    move-wide v7, v15

    move-wide/from16 v9, v24

    move-wide v11, v15

    invoke-direct/range {v2 .. v19}, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;-><init>(JJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->lightTabTokens:Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;

    new-instance v0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v30, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAY_TEXT_D6:J

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v20, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAY_TEXT_D1:J

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v28, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAY_TEXT_D2:J

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v32, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->Primary_Blue_Point_Dark:J

    const/16 v34, 0x0

    move-object/from16 v17, v0

    move-wide/from16 v18, v30

    move-wide/from16 v22, v30

    move-wide/from16 v26, v30

    invoke-direct/range {v17 .. v34}, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;-><init>(JJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->darkTabTokens:Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;

    return-void
.end method

.method private constructor <init>(JJJJJJJJ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->textColor:J

    move-wide v1, p3

    iput-wide v1, v0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->selectedTextColor:J

    move-wide v1, p5

    iput-wide v1, v0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTextColor:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabSelectedTextColor:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineTextColor:J

    move-wide v1, p11

    iput-wide v1, v0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineSelectedTextColor:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineSubTextColor:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineSubSelectedTextColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p16}, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;-><init>(JJJJJJJJ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;

    iget-wide v3, p1, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->textColor:J

    iget-wide v5, p0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->textColor:J

    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->selectedTextColor:J

    iget-wide v5, p1, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->selectedTextColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTextColor:J

    iget-wide v5, p1, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTextColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabSelectedTextColor:J

    iget-wide v5, p1, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabSelectedTextColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineTextColor:J

    iget-wide v5, p1, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineTextColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineSelectedTextColor:J

    iget-wide v5, p1, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineSelectedTextColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineSubTextColor:J

    iget-wide v5, p1, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineSubTextColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineSubSelectedTextColor:J

    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineSubSelectedTextColor:J

    invoke-static {v3, v4, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    sget v0, Lkotlin/ULong;->$r8$clinit:I

    iget-wide v0, p0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->textColor:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->selectedTextColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTextColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabSelectedTextColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineTextColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineSelectedTextColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineSubTextColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v1, p0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineSubSelectedTextColor:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    iget-wide v0, p0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->textColor:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->selectedTextColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTextColor:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabSelectedTextColor:J

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineTextColor:J

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineSelectedTextColor:J

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineSubTextColor:J

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, p0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineSubSelectedTextColor:J

    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    const-string v7, "SeslTabTokens(textColor="

    const-string v8, ", selectedTextColor="

    const-string v9, ", subtabTextColor="

    invoke-static {v7, v0, v8, v1, v9}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subtabSelectedTextColor="

    const-string v7, ", subtabTwoLineTextColor="

    invoke-static {v0, v2, v1, v3, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", subtabTwoLineSelectedTextColor="

    const-string v2, ", subtabTwoLineSubTextColor="

    invoke-static {v0, v4, v1, v5, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subtabTwoLineSubSelectedTextColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
