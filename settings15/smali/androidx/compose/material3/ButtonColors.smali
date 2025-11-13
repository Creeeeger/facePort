.class public final Landroidx/compose/material3/ButtonColors;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final containerColor:J

.field public final contentColor:J

.field public final disabledContainerColor:J

.field public final disabledContentColor:J


# direct methods
.method public constructor <init>(JJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/material3/ButtonColors;->containerColor:J

    iput-wide p3, p0, Landroidx/compose/material3/ButtonColors;->contentColor:J

    iput-wide p5, p0, Landroidx/compose/material3/ButtonColors;->disabledContainerColor:J

    iput-wide p7, p0, Landroidx/compose/material3/ButtonColors;->disabledContentColor:J

    return-void
.end method


# virtual methods
.method public final copy-jRlVdoo(JJJJ)Landroidx/compose/material3/ButtonColors;
    .locals 9

    move-object v0, p0

    const-wide/16 v1, 0x10

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    move-wide v3, p1

    goto :goto_0

    :cond_0
    iget-wide v3, v0, Landroidx/compose/material3/ButtonColors;->containerColor:J

    :goto_0
    cmp-long v5, p3, v1

    if-eqz v5, :cond_1

    move-wide v5, p3

    goto :goto_1

    :cond_1
    iget-wide v5, v0, Landroidx/compose/material3/ButtonColors;->contentColor:J

    :goto_1
    cmp-long v7, p5, v1

    if-eqz v7, :cond_2

    move-wide v7, p5

    goto :goto_2

    :cond_2
    iget-wide v7, v0, Landroidx/compose/material3/ButtonColors;->disabledContainerColor:J

    :goto_2
    cmp-long v1, p7, v1

    if-eqz v1, :cond_3

    move-wide/from16 v0, p7

    goto :goto_3

    :cond_3
    iget-wide v0, v0, Landroidx/compose/material3/ButtonColors;->disabledContentColor:J

    :goto_3
    new-instance v2, Landroidx/compose/material3/ButtonColors;

    move-object p0, v2

    move-wide p1, v3

    move-wide p3, v5

    move-wide p5, v7

    move-wide/from16 p7, v0

    invoke-direct/range {p0 .. p8}, Landroidx/compose/material3/ButtonColors;-><init>(JJJJ)V

    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    instance-of v2, p1, Landroidx/compose/material3/ButtonColors;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/material3/ButtonColors;

    iget-wide v2, p1, Landroidx/compose/material3/ButtonColors;->containerColor:J

    iget-wide v4, p0, Landroidx/compose/material3/ButtonColors;->containerColor:J

    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Landroidx/compose/material3/ButtonColors;->contentColor:J

    iget-wide v4, p1, Landroidx/compose/material3/ButtonColors;->contentColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Landroidx/compose/material3/ButtonColors;->disabledContainerColor:J

    iget-wide v4, p1, Landroidx/compose/material3/ButtonColors;->disabledContainerColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Landroidx/compose/material3/ButtonColors;->disabledContentColor:J

    iget-wide p0, p1, Landroidx/compose/material3/ButtonColors;->disabledContentColor:J

    invoke-static {v2, v3, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    iget-wide v0, p0, Landroidx/compose/material3/ButtonColors;->containerColor:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroidx/compose/material3/ButtonColors;->contentColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/ButtonColors;->disabledContainerColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/material3/ButtonColors;->disabledContentColor:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
