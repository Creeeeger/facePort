.class public final Landroidx/compose/material3/SwitchColors;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final checkedBorderColor:J

.field public final checkedIconColor:J

.field public final checkedThumbColor:J

.field public final checkedTrackColor:J

.field public final disabledCheckedBorderColor:J

.field public final disabledCheckedIconColor:J

.field public final disabledCheckedThumbColor:J

.field public final disabledCheckedTrackColor:J

.field public final disabledUncheckedBorderColor:J

.field public final disabledUncheckedIconColor:J

.field public final disabledUncheckedThumbColor:J

.field public final disabledUncheckedTrackColor:J

.field public final uncheckedBorderColor:J

.field public final uncheckedIconColor:J

.field public final uncheckedThumbColor:J

.field public final uncheckedTrackColor:J


# direct methods
.method public constructor <init>(JJJJJJJJJJJJJJJJ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->checkedThumbColor:J

    move-wide v1, p3

    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->checkedTrackColor:J

    move-wide v1, p5

    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->checkedBorderColor:J

    move-wide v1, p7

    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->checkedIconColor:J

    move-wide v1, p9

    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->uncheckedThumbColor:J

    move-wide v1, p11

    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->uncheckedTrackColor:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->uncheckedBorderColor:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->uncheckedIconColor:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->disabledCheckedThumbColor:J

    move-wide/from16 v1, p19

    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->disabledCheckedTrackColor:J

    move-wide/from16 v1, p21

    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->disabledCheckedBorderColor:J

    move-wide/from16 v1, p23

    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->disabledCheckedIconColor:J

    move-wide/from16 v1, p25

    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedThumbColor:J

    move-wide/from16 v1, p27

    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedTrackColor:J

    move-wide/from16 v1, p29

    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedBorderColor:J

    move-wide/from16 v1, p31

    iput-wide v1, v0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedIconColor:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_12

    instance-of v2, p1, Landroidx/compose/material3/SwitchColors;

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/material3/SwitchColors;

    iget-wide v2, p1, Landroidx/compose/material3/SwitchColors;->checkedThumbColor:J

    iget-wide v4, p0, Landroidx/compose/material3/SwitchColors;->checkedThumbColor:J

    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->checkedTrackColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->checkedTrackColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->checkedBorderColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->checkedBorderColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->checkedIconColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->checkedIconColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->uncheckedThumbColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->uncheckedThumbColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->uncheckedTrackColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->uncheckedTrackColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->uncheckedBorderColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->uncheckedBorderColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->uncheckedIconColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->uncheckedIconColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    :cond_9
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->disabledCheckedThumbColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->disabledCheckedThumbColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    :cond_a
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->disabledCheckedTrackColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->disabledCheckedTrackColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    :cond_b
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->disabledCheckedBorderColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->disabledCheckedBorderColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    :cond_c
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->disabledCheckedIconColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->disabledCheckedIconColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    :cond_d
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedThumbColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->disabledUncheckedThumbColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    :cond_e
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedTrackColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->disabledUncheckedTrackColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    :cond_f
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedBorderColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SwitchColors;->disabledUncheckedBorderColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    :cond_10
    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedIconColor:J

    iget-wide p0, p1, Landroidx/compose/material3/SwitchColors;->disabledUncheckedIconColor:J

    invoke-static {v2, v3, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_11

    return v1

    :cond_11
    return v0

    :cond_12
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    iget-wide v0, p0, Landroidx/compose/material3/SwitchColors;->checkedThumbColor:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->checkedTrackColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->checkedBorderColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->checkedIconColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->uncheckedThumbColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->uncheckedTrackColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->uncheckedBorderColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->uncheckedIconColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->disabledCheckedThumbColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->disabledCheckedTrackColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->disabledCheckedBorderColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->disabledCheckedIconColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedThumbColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedTrackColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedBorderColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/material3/SwitchColors;->disabledUncheckedIconColor:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
