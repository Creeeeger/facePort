.class public final Landroidx/compose/material3/MenuItemColors;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final disabledLeadingIconColor:J

.field public final disabledTextColor:J

.field public final disabledTrailingIconColor:J

.field public final leadingIconColor:J

.field public final textColor:J

.field public final trailingIconColor:J


# direct methods
.method public constructor <init>(JJJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/material3/MenuItemColors;->textColor:J

    iput-wide p3, p0, Landroidx/compose/material3/MenuItemColors;->leadingIconColor:J

    iput-wide p5, p0, Landroidx/compose/material3/MenuItemColors;->trailingIconColor:J

    iput-wide p7, p0, Landroidx/compose/material3/MenuItemColors;->disabledTextColor:J

    iput-wide p9, p0, Landroidx/compose/material3/MenuItemColors;->disabledLeadingIconColor:J

    iput-wide p11, p0, Landroidx/compose/material3/MenuItemColors;->disabledTrailingIconColor:J

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

    if-eqz p1, :cond_8

    instance-of v2, p1, Landroidx/compose/material3/MenuItemColors;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/material3/MenuItemColors;

    iget-wide v2, p1, Landroidx/compose/material3/MenuItemColors;->textColor:J

    iget-wide v4, p0, Landroidx/compose/material3/MenuItemColors;->textColor:J

    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Landroidx/compose/material3/MenuItemColors;->leadingIconColor:J

    iget-wide v4, p1, Landroidx/compose/material3/MenuItemColors;->leadingIconColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Landroidx/compose/material3/MenuItemColors;->trailingIconColor:J

    iget-wide v4, p1, Landroidx/compose/material3/MenuItemColors;->trailingIconColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Landroidx/compose/material3/MenuItemColors;->disabledTextColor:J

    iget-wide v4, p1, Landroidx/compose/material3/MenuItemColors;->disabledTextColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-wide v2, p0, Landroidx/compose/material3/MenuItemColors;->disabledLeadingIconColor:J

    iget-wide v4, p1, Landroidx/compose/material3/MenuItemColors;->disabledLeadingIconColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-wide v2, p0, Landroidx/compose/material3/MenuItemColors;->disabledTrailingIconColor:J

    iget-wide p0, p1, Landroidx/compose/material3/MenuItemColors;->disabledTrailingIconColor:J

    invoke-static {v2, v3, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_7

    return v1

    :cond_7
    return v0

    :cond_8
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    iget-wide v0, p0, Landroidx/compose/material3/MenuItemColors;->textColor:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroidx/compose/material3/MenuItemColors;->leadingIconColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/MenuItemColors;->trailingIconColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/MenuItemColors;->disabledTextColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/MenuItemColors;->disabledLeadingIconColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/material3/MenuItemColors;->disabledTrailingIconColor:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
