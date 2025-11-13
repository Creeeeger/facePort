.class public final Landroidx/compose/material3/SearchBarColors;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final containerColor:J

.field public final dividerColor:J

.field public final inputFieldColors:Landroidx/compose/material3/TextFieldColors;


# direct methods
.method private constructor <init>(JJ)V
    .locals 7

    sget-object v5, Landroidx/compose/material3/SearchBar_androidKt;->UnspecifiedTextFieldColors:Landroidx/compose/material3/TextFieldColors;

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/SearchBarColors;-><init>(JJLandroidx/compose/material3/TextFieldColors;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(JJLandroidx/compose/material3/TextFieldColors;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/material3/SearchBarColors;->containerColor:J

    iput-wide p3, p0, Landroidx/compose/material3/SearchBarColors;->dividerColor:J

    iput-object p5, p0, Landroidx/compose/material3/SearchBarColors;->inputFieldColors:Landroidx/compose/material3/TextFieldColors;

    return-void
.end method

.method public synthetic constructor <init>(JJLandroidx/compose/material3/TextFieldColors;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/material3/SearchBarColors;-><init>(JJLandroidx/compose/material3/TextFieldColors;)V

    return-void
.end method

.method public synthetic constructor <init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/material3/SearchBarColors;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/material3/SearchBarColors;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/material3/SearchBarColors;

    iget-wide v3, p1, Landroidx/compose/material3/SearchBarColors;->containerColor:J

    iget-wide v5, p0, Landroidx/compose/material3/SearchBarColors;->containerColor:J

    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Landroidx/compose/material3/SearchBarColors;->dividerColor:J

    iget-wide v5, p1, Landroidx/compose/material3/SearchBarColors;->dividerColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Landroidx/compose/material3/SearchBarColors;->inputFieldColors:Landroidx/compose/material3/TextFieldColors;

    iget-object p1, p1, Landroidx/compose/material3/SearchBarColors;->inputFieldColors:Landroidx/compose/material3/TextFieldColors;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    sget v0, Lkotlin/ULong;->$r8$clinit:I

    iget-wide v0, p0, Landroidx/compose/material3/SearchBarColors;->containerColor:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroidx/compose/material3/SearchBarColors;->dividerColor:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/material3/SearchBarColors;->inputFieldColors:Landroidx/compose/material3/TextFieldColors;

    invoke-virtual {p0}, Landroidx/compose/material3/TextFieldColors;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
