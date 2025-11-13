.class public final Landroidx/compose/material3/DefaultDrawerItemsColor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/material3/NavigationDrawerItemColors;


# instance fields
.field public final selectedBadgeColor:J

.field public final selectedContainerColor:J

.field public final selectedIconColor:J

.field public final selectedTextColor:J

.field public final unselectedBadgeColor:J

.field public final unselectedContainerColor:J

.field public final unselectedIconColor:J

.field public final unselectedTextColor:J


# direct methods
.method private constructor <init>(JJJJJJJJ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedIconColor:J

    move-wide v1, p3

    iput-wide v1, v0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedIconColor:J

    move-wide v1, p5

    iput-wide v1, v0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedTextColor:J

    move-wide v1, p7

    iput-wide v1, v0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedTextColor:J

    move-wide v1, p9

    iput-wide v1, v0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedContainerColor:J

    move-wide v1, p11

    iput-wide v1, v0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedContainerColor:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedBadgeColor:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedBadgeColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p16}, Landroidx/compose/material3/DefaultDrawerItemsColor;-><init>(JJJJJJJJ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/compose/material3/DefaultDrawerItemsColor;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Landroidx/compose/material3/DefaultDrawerItemsColor;

    iget-wide v2, p1, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedIconColor:J

    iget-wide v4, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedIconColor:J

    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedIconColor:J

    iget-wide v4, p1, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedIconColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedTextColor:J

    iget-wide v4, p1, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedTextColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedTextColor:J

    iget-wide v4, p1, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedTextColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget-wide v2, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedContainerColor:J

    iget-wide v4, p1, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedContainerColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-wide v2, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedContainerColor:J

    iget-wide v4, p1, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedContainerColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_7
    iget-wide v2, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedBadgeColor:J

    iget-wide v4, p1, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedBadgeColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-wide v0, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedBadgeColor:J

    iget-wide p0, p1, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedBadgeColor:J

    invoke-static {v0, v1, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    sget v0, Lkotlin/ULong;->$r8$clinit:I

    iget-wide v0, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedIconColor:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedIconColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedTextColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedTextColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedContainerColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedContainerColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedBadgeColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedBadgeColor:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
