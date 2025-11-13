.class public final Landroidx/compose/ui/text/font/ResourceFont;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/text/font/Font;


# instance fields
.field public final loadingStrategy:I

.field public final resId:I

.field public final style:I

.field public final variationSettings:Landroidx/compose/ui/text/font/FontVariation$Settings;

.field public final weight:Landroidx/compose/ui/text/font/FontWeight;


# direct methods
.method private constructor <init>(ILandroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/font/ResourceFont;->resId:I

    iput-object p2, p0, Landroidx/compose/ui/text/font/ResourceFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    iput p3, p0, Landroidx/compose/ui/text/font/ResourceFont;->style:I

    iput-object p4, p0, Landroidx/compose/ui/text/font/ResourceFont;->variationSettings:Landroidx/compose/ui/text/font/FontVariation$Settings;

    iput p5, p0, Landroidx/compose/ui/text/font/ResourceFont;->loadingStrategy:I

    return-void
.end method

.method public constructor <init>(ILandroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    sget-object p2, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p6, 0x4

    const/4 p7, 0x0

    if-eqz p2, :cond_1

    sget-object p2, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v3, p7

    goto :goto_0

    :cond_1
    move v3, p3

    :goto_0
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    sget-object p2, Landroidx/compose/ui/text/font/FontVariation;->INSTANCE:Landroidx/compose/ui/text/font/FontVariation;

    new-array p3, p7, [Landroidx/compose/ui/text/font/FontVariation$Setting;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Landroidx/compose/ui/text/font/FontVariation$Settings;

    new-instance p2, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 p7, 0x3

    invoke-direct {p2, p7}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    iget p7, v2, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    const/4 v0, 0x1

    if-gt v0, p7, :cond_4

    const/16 v0, 0x3e9

    if-ge p7, v0, :cond_4

    new-instance v0, Landroidx/compose/ui/text/font/FontVariation$SettingInt;

    const-string/jumbo v1, "wght"

    invoke-direct {v0, v1, p7}, Landroidx/compose/ui/text/font/FontVariation$SettingInt;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    int-to-float p7, v3

    const/4 v0, 0x0

    cmpg-float v0, v0, p7

    if-gtz v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p7, v0

    if-gtz v0, :cond_3

    new-instance v0, Landroidx/compose/ui/text/font/FontVariation$SettingFloat;

    const-string v1, "ital"

    invoke-direct {v0, v1, p7}, Landroidx/compose/ui/text/font/FontVariation$SettingFloat;-><init>(Ljava/lang/String;F)V

    invoke-virtual {p2, v0}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    iget-object p3, p2, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array p3, p3, [Landroidx/compose/ui/text/font/FontVariation$Setting;

    iget-object p2, p2, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroidx/compose/ui/text/font/FontVariation$Setting;

    invoke-direct {p4, p2}, Landroidx/compose/ui/text/font/FontVariation$Settings;-><init>([Landroidx/compose/ui/text/font/FontVariation$Setting;)V

    :cond_2
    move-object v4, p4

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "\'ital\' must be in 0.0f..1.0f. Actual: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p0, "\'wght\' value must be in [1, 1000]. Actual: "

    invoke-static {p7, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_5

    sget-object p2, Landroidx/compose/ui/text/font/FontLoadingStrategy;->Companion:Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p5, Landroidx/compose/ui/text/font/FontLoadingStrategy;->Async:I

    :cond_5
    move v5, p5

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/font/ResourceFont;-><init>(ILandroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/ui/text/font/ResourceFont;-><init>(ILandroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;I)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/font/ResourceFont;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/text/font/ResourceFont;

    iget v1, p1, Landroidx/compose/ui/text/font/ResourceFont;->resId:I

    iget v3, p0, Landroidx/compose/ui/text/font/ResourceFont;->resId:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p1, Landroidx/compose/ui/text/font/ResourceFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    iget-object v3, p0, Landroidx/compose/ui/text/font/ResourceFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p1, Landroidx/compose/ui/text/font/ResourceFont;->style:I

    iget v3, p0, Landroidx/compose/ui/text/font/ResourceFont;->style:I

    invoke-static {v3, v1}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/compose/ui/text/font/ResourceFont;->variationSettings:Landroidx/compose/ui/text/font/FontVariation$Settings;

    iget-object v3, p1, Landroidx/compose/ui/text/font/ResourceFont;->variationSettings:Landroidx/compose/ui/text/font/FontVariation$Settings;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget p1, p1, Landroidx/compose/ui/text/font/ResourceFont;->loadingStrategy:I

    iget p0, p0, Landroidx/compose/ui/text/font/ResourceFont;->loadingStrategy:I

    invoke-static {p0, p1}, Landroidx/compose/ui/text/font/FontLoadingStrategy;->equals-impl0(II)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getLoadingStrategy-PKNRLFQ()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/font/ResourceFont;->loadingStrategy:I

    return p0
.end method

.method public final getStyle-_-LCdwA()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/font/ResourceFont;->style:I

    return p0
.end method

.method public final getWeight()Landroidx/compose/ui/text/font/FontWeight;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/font/ResourceFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Landroidx/compose/ui/text/font/ResourceFont;->resId:I

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/compose/ui/text/font/ResourceFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    iget v2, v2, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    sget-object v2, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    iget v2, p0, Landroidx/compose/ui/text/font/ResourceFont;->style:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    sget-object v2, Landroidx/compose/ui/text/font/FontLoadingStrategy;->Companion:Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;

    iget v2, p0, Landroidx/compose/ui/text/font/ResourceFont;->loadingStrategy:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/ui/text/font/ResourceFont;->variationSettings:Landroidx/compose/ui/text/font/FontVariation$Settings;

    iget-object p0, p0, Landroidx/compose/ui/text/font/FontVariation$Settings;->settings:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResourceFont(resId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/ui/text/font/ResourceFont;->resId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/font/ResourceFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/font/ResourceFont;->style:I

    invoke-static {v1}, Landroidx/compose/ui/text/font/FontStyle;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", loadingStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/ui/text/font/ResourceFont;->loadingStrategy:I

    invoke-static {p0}, Landroidx/compose/ui/text/font/FontLoadingStrategy;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
