.class public final Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final background:J

.field public final controlNormal:J

.field public final mainText:J

.field public final pointText:J

.field public final primary:J

.field public final ripple:J

.field public final roundedCorner:J

.field public final subText:J


# direct methods
.method private constructor <init>(JJJJJJJJ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->primary:J

    move-wide v1, p3

    iput-wide v1, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->mainText:J

    move-wide v1, p5

    iput-wide v1, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->subText:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->pointText:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->background:J

    move-wide v1, p11

    iput-wide v1, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->roundedCorner:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->ripple:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->controlNormal:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p16}, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;-><init>(JJJJJJJJ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;

    iget-wide v3, p1, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->primary:J

    iget-wide v5, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->primary:J

    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->mainText:J

    iget-wide v5, p1, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->mainText:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->subText:J

    iget-wide v5, p1, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->subText:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->pointText:J

    iget-wide v5, p1, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->pointText:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->background:J

    iget-wide v5, p1, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->background:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->roundedCorner:J

    iget-wide v5, p1, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->roundedCorner:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->ripple:J

    iget-wide v5, p1, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->ripple:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->controlNormal:J

    iget-wide p0, p1, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->controlNormal:J

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

    iget-wide v0, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->primary:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->mainText:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->subText:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->pointText:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->background:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->roundedCorner:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->ripple:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v1, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->controlNormal:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    iget-wide v0, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->primary:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->mainText:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->subText:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->pointText:J

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->background:J

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->roundedCorner:J

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->ripple:J

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->controlNormal:J

    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    const-string v7, "SeslBasicColorScheme(primary="

    const-string v8, ", mainText="

    const-string v9, ", subText="

    invoke-static {v7, v0, v8, v1, v9}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pointText="

    const-string v7, ", background="

    invoke-static {v0, v2, v1, v3, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", roundedCorner="

    const-string v2, ", ripple="

    invoke-static {v0, v4, v1, v5, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", controlNormal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
