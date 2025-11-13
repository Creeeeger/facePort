.class public final Lcom/android/compose/PlatformSliderColors;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final disabledIconColor:J

.field public final disabledIndicatorColor:J

.field public final disabledLabelColor:J

.field public final disabledTrackColor:J

.field public final iconColor:J

.field public final indicatorColor:J

.field public final labelColorOnIndicator:J

.field public final labelColorOnTrack:J

.field public final trackColor:J


# direct methods
.method private constructor <init>(JJJJJJJJJ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Lcom/android/compose/PlatformSliderColors;->trackColor:J

    move-wide v1, p3

    iput-wide v1, v0, Lcom/android/compose/PlatformSliderColors;->indicatorColor:J

    move-wide v1, p5

    iput-wide v1, v0, Lcom/android/compose/PlatformSliderColors;->iconColor:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/android/compose/PlatformSliderColors;->labelColorOnIndicator:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/android/compose/PlatformSliderColors;->labelColorOnTrack:J

    move-wide v1, p11

    iput-wide v1, v0, Lcom/android/compose/PlatformSliderColors;->disabledTrackColor:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/android/compose/PlatformSliderColors;->disabledIndicatorColor:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/android/compose/PlatformSliderColors;->disabledIconColor:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/android/compose/PlatformSliderColors;->disabledLabelColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p18}, Lcom/android/compose/PlatformSliderColors;-><init>(JJJJJJJJJ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/compose/PlatformSliderColors;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/compose/PlatformSliderColors;

    iget-wide v3, p1, Lcom/android/compose/PlatformSliderColors;->trackColor:J

    iget-wide v5, p0, Lcom/android/compose/PlatformSliderColors;->trackColor:J

    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/android/compose/PlatformSliderColors;->indicatorColor:J

    iget-wide v5, p1, Lcom/android/compose/PlatformSliderColors;->indicatorColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/android/compose/PlatformSliderColors;->iconColor:J

    iget-wide v5, p1, Lcom/android/compose/PlatformSliderColors;->iconColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/android/compose/PlatformSliderColors;->labelColorOnIndicator:J

    iget-wide v5, p1, Lcom/android/compose/PlatformSliderColors;->labelColorOnIndicator:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/android/compose/PlatformSliderColors;->labelColorOnTrack:J

    iget-wide v5, p1, Lcom/android/compose/PlatformSliderColors;->labelColorOnTrack:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/android/compose/PlatformSliderColors;->disabledTrackColor:J

    iget-wide v5, p1, Lcom/android/compose/PlatformSliderColors;->disabledTrackColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/android/compose/PlatformSliderColors;->disabledIndicatorColor:J

    iget-wide v5, p1, Lcom/android/compose/PlatformSliderColors;->disabledIndicatorColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/android/compose/PlatformSliderColors;->disabledIconColor:J

    iget-wide v5, p1, Lcom/android/compose/PlatformSliderColors;->disabledIconColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/android/compose/PlatformSliderColors;->disabledLabelColor:J

    iget-wide p0, p1, Lcom/android/compose/PlatformSliderColors;->disabledLabelColor:J

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

    iget-wide v0, p0, Lcom/android/compose/PlatformSliderColors;->trackColor:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/android/compose/PlatformSliderColors;->indicatorColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/android/compose/PlatformSliderColors;->iconColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/android/compose/PlatformSliderColors;->labelColorOnIndicator:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/android/compose/PlatformSliderColors;->labelColorOnTrack:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/android/compose/PlatformSliderColors;->disabledTrackColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/android/compose/PlatformSliderColors;->disabledIndicatorColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/android/compose/PlatformSliderColors;->disabledIconColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v1, p0, Lcom/android/compose/PlatformSliderColors;->disabledLabelColor:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    iget-wide v0, p0, Lcom/android/compose/PlatformSliderColors;->trackColor:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/compose/PlatformSliderColors;->indicatorColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/compose/PlatformSliderColors;->iconColor:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/compose/PlatformSliderColors;->labelColorOnIndicator:J

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/compose/PlatformSliderColors;->labelColorOnTrack:J

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/compose/PlatformSliderColors;->disabledTrackColor:J

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/compose/PlatformSliderColors;->disabledIndicatorColor:J

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/compose/PlatformSliderColors;->disabledIconColor:J

    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/compose/PlatformSliderColors;->disabledLabelColor:J

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    const-string v8, "PlatformSliderColors(trackColor="

    const-string v9, ", indicatorColor="

    const-string v10, ", iconColor="

    invoke-static {v8, v0, v9, v1, v10}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", labelColorOnIndicator="

    const-string v8, ", labelColorOnTrack="

    invoke-static {v0, v2, v1, v3, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", disabledTrackColor="

    const-string v2, ", disabledIndicatorColor="

    invoke-static {v0, v4, v1, v5, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", disabledIconColor="

    const-string v2, ", disabledLabelColor="

    invoke-static {v0, v6, v1, v7, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
