.class public final Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final thumb:Landroidx/compose/ui/graphics/painter/Painter;

.field public final thumbDisabledOff:Landroidx/compose/ui/graphics/painter/Painter;

.field public final thumbDisabledOn:Landroidx/compose/ui/graphics/painter/Painter;

.field public final thumbOff:Landroidx/compose/ui/graphics/painter/Painter;

.field public final thumbOn:Landroidx/compose/ui/graphics/painter/Painter;

.field public final trackDisabledOff:Landroidx/compose/ui/graphics/painter/Painter;

.field public final trackDisabledOn:Landroidx/compose/ui/graphics/painter/Painter;

.field public final trackOff:Landroidx/compose/ui/graphics/painter/Painter;

.field public final trackOn:Landroidx/compose/ui/graphics/painter/Painter;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->trackOn:Landroidx/compose/ui/graphics/painter/Painter;

    iput-object p2, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->trackDisabledOn:Landroidx/compose/ui/graphics/painter/Painter;

    iput-object p3, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->trackOff:Landroidx/compose/ui/graphics/painter/Painter;

    iput-object p4, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->trackDisabledOff:Landroidx/compose/ui/graphics/painter/Painter;

    iput-object p5, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumbOn:Landroidx/compose/ui/graphics/painter/Painter;

    iput-object p6, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumbDisabledOn:Landroidx/compose/ui/graphics/painter/Painter;

    iput-object p7, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumbOff:Landroidx/compose/ui/graphics/painter/Painter;

    iput-object p8, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumbDisabledOff:Landroidx/compose/ui/graphics/painter/Painter;

    iput-object p9, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumb:Landroidx/compose/ui/graphics/painter/Painter;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;

    iget-object v1, p1, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->trackOn:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v3, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->trackOn:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->trackDisabledOn:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v3, p1, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->trackDisabledOn:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->trackOff:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v3, p1, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->trackOff:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->trackDisabledOff:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v3, p1, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->trackDisabledOff:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumbOn:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v3, p1, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumbOn:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumbDisabledOn:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v3, p1, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumbDisabledOn:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumbOff:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v3, p1, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumbOff:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumbDisabledOff:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v3, p1, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumbDisabledOff:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumb:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object p1, p1, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumb:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->trackOn:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->trackDisabledOn:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->trackOff:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->trackDisabledOff:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumbOn:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumbDisabledOn:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumbOff:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumbDisabledOff:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumb:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SeslSwitchOpenThemeTokens(trackOn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->trackOn:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trackDisabledOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->trackDisabledOn:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trackOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->trackOff:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trackDisabledOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->trackDisabledOff:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", thumbOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumbOn:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", thumbDisabledOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumbDisabledOn:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", thumbOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumbOff:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", thumbDisabledOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumbDisabledOff:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", thumb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumb:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
